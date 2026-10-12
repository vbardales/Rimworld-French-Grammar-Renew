using System.Collections.Generic;
using System.Linq;
using RimWorks.Pickle;
using UnityEngine;
using RimWorld;
using Verse;
using Verse.Grammar;

namespace FrenchGrammarRenew.PickleSteps
{
    /// <summary>
    /// The three checks GrammarSteps leaves out: a sentence the engine BUILDS (its grammar resolver, the path of
    /// tales, letters and log entries), a REAL label carrying a colour tag, and whether the game's fonts draw
    /// the spaces the typography setting writes.
    /// </summary>
    [PickleSteps]
    public class SentenceSteps
    {
        private const string Root = "FGP_root";
        private const string Word = "FGP_word";

        /// <summary>
        /// The pattern is a grammar rule with [FGP_word] where the word goes. The engine resolves it the way it
        /// resolves any generated text, so the sentence is built and post-processed by the running game, then read.
        /// The first sentence is not capitalised, so an article at the start is compared as written.
        /// </summary>
        [Then("French Grammar Renew: the engine builds {string} around the word {string} and writes {string}")]
        public void AssertBuilt(PickleContext ctx, string pattern, string word, string expected)
        {
            pattern = Driver.Unescape(pattern);
            word = Driver.Unescape(word);
            expected = Driver.Unescape(expected);
            var got = Build(pattern, word);
            ctx.Assert(got == expected,
                $"in {Driver.Language(ctx)} the engine built '{Driver.Show(pattern)}' around '{Driver.Show(word)}' as "
                + $"'{Driver.Show(got)}', expected '{Driver.Show(expected)}'");
        }

        /// <summary>
        /// A real label: the Def's own label, in the language of the pass, wrapped in a colour tag the way a mod
        /// that colours a label would. The engine writes the sentence; the article must elide across the tag.
        /// </summary>
        [Then("French Grammar Renew: the engine builds {string} around the coloured label of the thing {string} and elides to {string}")]
        public void AssertColouredLabel(PickleContext ctx, string pattern, string defName, string elidedArticle)
        {
            var def = DefDatabase<ThingDef>.GetNamedSilentFail(defName);
            ctx.Require(def != null, $"no ThingDef named '{defName}' in this game");
            var label = def.label;
            ctx.Require(!string.IsNullOrEmpty(label), $"{defName} has no label");
            var tagged = "<color=#D09B61FF>" + label + "</color>";
            var got = Build(Driver.Unescape(pattern), tagged);
            var expected = Driver.Unescape(elidedArticle) + tagged;
            ctx.Assert(got == expected,
                $"in {Driver.Language(ctx)} the engine built '{Driver.Show(pattern)}' around the label '{Driver.Show(label)}' "
                + $"of {defName}, tagged, as '{Driver.Show(got)}', expected '{Driver.Show(expected)}'");
        }

        /// <summary>
        /// Asks every font the game draws text with, not the log: a character the font lacks is drawn as a box or
        /// not at all, and the setting is off by default for that reason.
        /// </summary>
        [Then("French Grammar Renew: every game font draws the character {string}")]
        public void AssertFontDraws(PickleContext ctx, string character)
        {
            var c = Driver.Unescape(character);
            ctx.Require(c.Length == 1, "write one character, as a backslash-u escape");
            var missing = new List<string>();
            var before = Text.Font;
            try
            {
                foreach (GameFont size in new[] { GameFont.Tiny, GameFont.Small, GameFont.Medium })
                {
                    Text.Font = size;
                    var font = Text.CurFontStyle.font;
                    if (font == null) { missing.Add(size + ": no font"); continue; }
                    font.RequestCharactersInTexture(c, Text.CurFontStyle.fontSize, Text.CurFontStyle.fontStyle);
                    CharacterInfo info;
                    var has = font.HasCharacter(c[0])
                        && font.GetCharacterInfo(c[0], out info, Text.CurFontStyle.fontSize, Text.CurFontStyle.fontStyle)
                        && info.advance > 0;
                    if (!has) missing.Add(size + " (" + font.name + ")");
                }
            }
            finally { Text.Font = before; }
            ctx.Assert(missing.Count == 0,
                $"'{Driver.Show(c)}' is not drawn by: {string.Join(", ", missing.ToArray())}");
        }

        /// <summary>
        /// A letter whose text the engine writes: the body goes through the grammar resolver like generated text,
        /// then the letter is received and opened, the way a player reads it. For the gallery: the image shows the
        /// dialog the game draws, not a string.
        /// </summary>
        [When("French Grammar Renew: a letter titled {string} is opened with the text {string}")]
        public void OpenLetter(PickleContext ctx, string title, string text)
        {
            ctx.Require(Current.Game != null, "no game is running: load the fixture before this step");
            var request = default(GrammarRequest);
            request.Rules.Add(new Rule_String(Root, Driver.Unescape(text)));
            var body = GrammarResolver.Resolve(Root, request, "French Grammar Renew letter", capitalizeFirstSentence: false);
            var letter = LetterMaker.MakeLetter(Driver.Unescape(title), body, LetterDefOf.NeutralEvent);
            Find.LetterStack.ReceiveLetter(letter);
            letter.OpenLetter();
        }

        private static string Build(string pattern, string word)
        {
            var request = default(GrammarRequest);
            request.Rules.Add(new Rule_String(Root, pattern));
            request.Rules.Add(new Rule_String(Word, word));
            return GrammarResolver.Resolve(Root, request, "French Grammar Renew test", capitalizeFirstSentence: false);
        }
    }
}
