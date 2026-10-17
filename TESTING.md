# French Grammar Renew — in-game test scenarios

Mod never watched run in colony. File lists what must be seen there, what counts as pass.

Test suite runs beside it, `Tests/Run-Tests.ps1`, not substitute. Covers more than static check: game's own `LanguageWorker_French` loads outside RimWorld, so suite runs each correction sandwiched around real vanilla rules, exactly as Harmony arranges them in game. Tested input/output cases in `Tests/RESULTS.md`.

Suite cannot load mod into game. Harmony never runs there, no pawn exists, no window drawn, no translation resolved through engine's own call chain. Patch target resolving in suite can still fail to patch in game; rule right on test string can still never be reached by on-screen text. Scenarios exist for that.

Neither file shipped: both live beside `Mod/`, never inside, so Steam never receives them.

## Before starting

- RimWorld 1.6 with **Harmony** active, game **in French** — Options → Language →
  Français. Two patches target `LanguageWorker_French`; global pawn-rule patch checks active worker before rewriting anything. Other-language isolation is scenario 12.
- No DLC required. Word lists cover every expansion, so run with all on worth doing once.
- Development mode on, so silent failures become red text. Mod settings → French Grammar Renew →
  **Verbose log** on for first pass; turns scenarios 1 and 2 into readable answer instead of guess.
- Log to read afterwards, attach to any report:
  `C:\Users\nelim\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`

Every line mod writes begins `[FrenchGrammarPlus]`, so one search finds all.

## The numbers these scenarios rest on

Read out of game's own files on 2026-09-12, not copied from mod's prose.

| Claim | Where it was checked | Value |
|---|---|---|
| Aspirated-h prefixes | `Mod/Data/aspirated-h.txt` | 77 |
| Species genders | `Mod/Data/pawnkind-gender.txt` | 115: 25 feminine, 90 masculine |
| Animal pawn kinds the game ships | `Data/*/Defs/ThingDefs_Races/Races_Animal*.xml` | 115 |
| Listed kinds missing from the game | set difference, both directions | 0 |
| French strings with a space before `:` | official `French (Français).tar`, `Keyed/` | 488 |
| French strings with a space before `!` `?` `;` | same | 215 |
| French strings carrying a colour tag | same, whole translation | **0** |

Last row decides how scenario 9 runs: **vanilla French text never contains rich text tag**, so nothing in base game can trigger elision-across-tags correction. Needs mod that colours labels, which is what mod's own description says it is for.

Two lists agree exactly with game: all 115 listed species exist, no shipped animal missing. Cannot check outside game whether each *gender* right, since French translation carries label but never its gender. Editorial; scenarios 6 and 7 only audit of it.

## 1. It loads, and all three patches take

Mod is five corrections hanging off three patch targets. If target failed to resolve, matching correction goes quiet, everything else still works — by design, and also why silent pass here would mislead.

1. Launch with mod active, French, verbose log on.
2. Search log for `[FrenchGrammarPlus]`.

**Pass:** three `patched.` lines, naming `LanguageWorker_French.PostProcessed`,
`LanguageWorker_French.WithDefiniteArticle` and `GrammarUtility.RulesForPawn`.

**Fail:** any `is not present in this version of the game` line, or any `failed to patch`. Both errors by design not crashes, both name correction that stopped working. `failed to patch` almost always means Ludeon renamed parameter: Harmony matches arguments by name, mod assumes `str`, `gender`, `pawnSymbol` and `kind`.

**Also fail:** game refusing to start, or any red line mentioning `FrenchGrammarPlus` other than the two above.

## 2. Both word lists load, and a bad line is survivable

1. Same launch, same log.

**Pass:** one line reading `77 aspirated-h words, 115 species genders loaded.`

Any other pair of numbers means file edited, or read in wrong encoding.

2. Break it on purpose. Add junk line to `Mod/Data/pawnkind-gender.txt` — `Muffalo` with no
   `=`, then `Muffalo=x` — restart.

**Pass:** two warnings, `line ignored, expected defName=f|m` and `unknown gender 'x'`, mod still loads with 114 genders. Missing file must give `data file missing:` and working mod with one correction short.

**Fail:** exception, or mod failing to load. Word list is data; nothing in it should ever take game down.

Undo edits before going on.

## 3. Aspirated h keeps its article, in running text

This is the shield: zero-width space slipped in front of aspirated word before vanilla rules run, taken out after. Three real vanilla labels exercise it.

1. Spawn **breach axe** (`MeleeWeapon_BreachAxe`, "hache de brèche"), some **hops**
   (`RawHops`, "houblon") and stand colonist in **tall grass** (`Plant_TallGrass`,
   "hautes herbes").
2. Read them wherever game builds sentence around label rather than showing it bare:
   stack's inspect string, bill, caravan's contents, letter about item.

**Pass:** "de la hache de brèche", "le houblon", "les hautes herbes". Article stays whole.

**Fail:** "d'hache de brèche", "l'houblon". Vanilla behaviour this correction exists to stop, so seeing it means shield never fired — check **Aspirated h** ticked and scenario 1 showed `PostProcessed` patched.

**Also fail, and worse:** stray invisible character left in text. Guard removed on way out; if a `​` survives into UI it shows as gap or box. Copy suspect string out, look at its length.

## 4. Aspirated h in the definite article

`WithDefiniteArticle` builds `l'` itself instead of going through post-processing rules, so shield never sees it. Separate patch, separate test.

1. Tame or spawn **husky**. Species in both lists: aspirated h, masculine.
2. Find it named with definite article — letter about it, tale, caravan listing.

**Pass:** "le husky". **Fail:** "l'husky".

## 5. Mute h still elides — the test that matters most

Word list that over-matches worse than no word list: breaks text game already got right, everywhere, silently. This is negative test.

1. Look at **medicine** (`herbe médicinale`), **human** (`humain`), **hyperweave**
   (`hyperfibre`), any colonist backstory mentioning `histoire`, `heure` or `homme`, and, with Anomaly or
Odyssey, any sentence naming **hallucination** (mute h, see defect recorded in `STATUS.md`).

**Pass:** "l'herbe médicinale", "l'humain", "l'hyperfibre", "l'hallucination" — elision as before, exactly as without
mod.

**Fail:** "la herbe médicinale", "le humain". One of 77 prefixes catching mute-h word.

List checked against ten commonest mute-h words and every French item label game ships beginning with `h`, none collided. **Check missed `hallucination`** (fixed on 2026-09-28, by dropping the `hall` prefix; recorded in
`STATUS.md`): read item labels, not text of hediffs, thoughts, letters. Scenario here for what check cannot see: those texts, and word DLC or other mod adds.

## 6. A species noun keeps its own gender

Engine gives species noun sex of animal wearing it, so male megaspider becomes
"le mégaraignée". Correction with largest word list behind it, smallest chance of being noticed if it silently stops.

1. Spawn **male megaspider** (`Megaspider`, listed feminine, French "mégaraignée") and **male cow** (`Cow`, listed feminine, "vache" — game calls it bull in English but noun is what matters).
2. Find each in generated text: letter, hunting alert, art description, tale.

**Pass:** "la mégaraignée" and "la vache" whatever animal's sex.

**Fail:** "le mégaraignée". Check **Grammatical gender of species** box, check verbose log, which writes one `gender overridden for '<label>' (<symbol>): <gender>` line each time rule fires. No line means patch never ran on that pawn.

3. Reverse direction matters too: spawn **female muffalo** (listed masculine), confirm
   "le muffalo", not "la muffalo".

## 7. The article rules rebuilt, seen in a tale

Scenario 6 watches label. This watches three rules patch actually rewrites —
`definite`, `indefinite` and `possessive` — through the one vanilla French string using them on animal.

String lives in `TaleDef` art descriptions: `[TRAINER_nameDef] se transforme en
[ANIMAL_definite].`

1. Have colonist train animal whose gender overridden — megaspider clearest.
2. Get sculpture carved about it. Debug actions → generate art with tale much faster than waiting.
3. Read sculpture's description.

**Pass:** "se transforme en **la** mégaraignée" for male. **Fail:** "en le mégaraignée".

Also catches patch rebuilding rules from wrong label: if description shows English label, or animal's given name where species belongs, rewrite reading wrong rule.

## 8. Possessive before a vowel

Engine has no such rule at all, so anything seen here entirely this mod's doing. No vanilla French keyed string of form "sa {0}", so trigger must be built.

1. Give colonist item whose French label starts with vowel — **épée** (longsword,
   "épée"), or **armure** — find text putting possessive in front of it. Combat logs and art descriptions usual source.

**Pass:** "son épée", "son armure". **Fail:** "sa épée".

2. And case guard protects: possessive before **aspirated** h. "sa hache de brèche"
   must stay, never "son hache".

If no vanilla sentence found putting possessive before vowel, say so and mark scenario unreachable rather than passed. Untriggered rule not working rule.

## 9. Elision across a colour tag

No vanilla French string carries rich text tag, so correction cannot be tested with base game alone. Not defect — description says mods colouring labels are beneficiaries — but test needs one.

1. Add any mod putting `<color=...>` in `label`. Most quality-of-life and faction mods colouring item names will do.
2. Find label after "de", "à" or "la" in generated text.

**Pass:** "d'`<color>`Éclat", "du `<color>`marteau", elision reaching across tag, tag still hugging noun rather than floating off alone.

**Fail:** "de Éclat", vanilla result. Or mangled tag, shown as raw `<color=...>`
text on screen — replacement put tag back in wrong place, the one failure here uglier than doing nothing.

3. Turn **Elision across colour tags** off, confirm text returns to "de Éclat". Toggling back cheapest proof correction doing the work.

## 10. Typography, which is off by default

1. Confirm **off** on fresh install: Mod settings → **Non-breaking spaces** unticked. Matters — narrow no-break space missing from some fonts, shows as blank box.
2. Tick it. Look at any of 488 French strings putting space before colon. Alert
   "Ces colons sont affamés :" and date tooltip "Jours depuis votre arrivée : {0}" are two.

**Pass:** space before colon becomes unbreakable, colon never begins line. Visually spacing unchanged, the point: rule absorbs space already there rather than adding second.

**Fail:** doubled space, or blank box where space was. Blank box means font lacks
U+202F, setting should go back off — reason it ships off.

3. Two things it must not touch: **clock time** and **URL**. Find "12:00" in any schedule
   or letter, any `http://` in mod list or credits screen.

**Pass:** both unchanged, no space inserted. Colon rule only fires when colon ends clause.

## 11. Settings take effect at once; word lists do not

1. With game running, untick **Aspirated h**, look again at breach axe from scenario 3.

**Pass:** text goes back to vanilla "d'hache de brèche" without restart. Every setting read on each call, so all five switches behave this way.

2. Edit `Mod/Data/aspirated-h.txt` — remove `hache` — look again **without** restarting.

**Pass:** nothing changes. Lists read once, in mod's constructor.

3. Restart, look again.

**Pass:** now "d'hache de brèche", verbose line reads 76 not 77. Put word back.

This pair is what settings screen promises in so many words: *edit without recompiling; restart
game to reload*.

## 12. Inert in every other language

1. Options → Language → English. Restart when asked.

**Pass:** English grammar unchanged, no species-gender override logged.
Startup patch and lexicon diagnostics may still appear. Worker-specific patches do not run,
global pawn-rule patch returns original rules without rewriting.

**Fail:** any English text acquiring French no-break space or changed article. Would mean
patch resolved to base `LanguageWorker` instead of French one, what
`DeclaredMethod` exists to prevent, and would affect every language in game.

2. Worth one pass in third language with own worker — German or Russian — same
   reason.

## 13. Added to and removed from a running colony

Description promises no save data and free removal.

1. Load save without mod, note few animal and item names, add mod, load again.

**Pass:** save loads with no missing-def warning, names read correctly.

2. Remove mod, load same save again.

**Pass:** loads clean, text back to vanilla French, no `Could not find` line naming
`nelim.frenchgrammar` or `FGP.`.

## 14. Settings access, persistence and translated layout

**Preconditions:** separate test configuration with no saved French Grammar Renew settings;
Harmony and mod enabled, initially without button customization mod. Use new colony
and repeat persistence check on existing test save. Keep current DLL hash with log.

1. Open Options -> Mod options -> French Grammar Renew in French. Check first four
   switches enabled, typography/verbose logging disabled. Read every label, tooltip and
   scope/data-file note. Repeat in English. No raw keys, fallback French/English, clipping or
   overlap; close and reopen page without exceptions.
2. Toggle each grammar switch off/on, trigger its corresponding scenario above on newly
   generated text. Toggle verbose logging, trigger species override, confirm diagnostic
   appears only when enabled. Enable it and restart to inspect startup patch/lexicon messages.
3. Set mixed combination of values, close dialog, reopen it, restart game, load
   both test saves. Same global values survive every step; opening different save does
   not reset them. Return to defaults before remaining scenarios.
4. Confirm no visible or greyed-out French Grammar Renew MainButton by default.
   Add RIMMSQOL, record exact version. Reveal `FGP_Settings`, activate it, verify
   it opens same native dialog. Change values, close it, reopen from Mod options:
   values agree, persist after restart. Hide shortcut again, verify customization tool retains that choice. Repeat only for other integrations actually claimed.
5. Inspect Player.log throughout: no settings/shortcut exceptions or repeated errors. Record
   language, game/Harmony/customization versions, observed values, screenshots of both routes.

**Expected:** useful controls, shared configuration, native saving work through both routes,
no required customization dependency for primary route. Missing runtime environment
or integration not exercised remains unverified, not passed test.

## What `tested` requires

Written 2026-09-28 from `AUDIT.md` (done -> tested), checked item by item 2026-10-02. Everything below
runs in game, never by reading code.

**Standing on 2026-10-02:** scenarios run and passed, yes (48 of 48, `exitReason: passed` read on each, every
`@review` capture opened); no `@wip` in any feature (searched); every `@requires` has had its pass (RIMMSQOL, pass 4;
ScreenshotMode and LoadAudit in passes 1 and 2); logs read; both languages, restart persistence and MainButton
done. **"No manual test is left to tick" not met on that date; met since 2026-10-11** ("Manual checks left" below).

- **Every scenario above has run in game and passed**, through Pickle suite where running game is
  only thing that can show it. Green Pickle run says path walked, not that on-screen text right: read `exitReason` before counts, compare scenarios played with features discovered, open every `@review` capture.
- **No scenario left `@wip`.** One set aside is repaired and replayed, or deleted with
  reason. `@wip` scenario waiting, not passed.
- **Every conditional scenario has run.** Each `@requires:<packageId>` had own pass, with map
  mounting that mod, report read (`setName`, suite and scenario names checked
  before quoting: report folder shared by whole machine). Scenario skipped for lack of
  its condition not passed.
- **No manual test left to tick.** Each of fourteen scenarios either automated and green, or
  listed below as not applicable with reason. `@review` captures still read by person,
  but that is reading image scenario already proved in wanted state, not one more
  manual test.
- Logs read, both languages, settings persistence and MainButton checked, new colony and existing
  save covered where relevant, regression pass after any correction.

## Manual checks left

None. Six open on 2026-10-02 automated (2026-10-11, ticket `20261011-223954-920-e4ca`, feature `02-french-grammar`, 31 of 31, `exitReason: passed`):

| Rows | Was | Now |
|---|---|---|
| 3, 4, 5, 8 | A sentence the engine builds and displays | `SentenceSteps`: the game's grammar resolver builds the sentence from a rule and a word, and the text it writes is read |
| 9 | Elision across a tag on a real label | The real label of `Gold` and `Steel`, wrapped in a colour tag, through the same resolver; no third-party mod needed |
| 10 | Whether the font draws the no-break space | The game's three fonts are asked for U+00A0 and U+202F, no capture needed |

## Passes

Pickle suite written (`Tests/Pickle/`, 2026-09-28), every pass played and green: pass 1 French
31/34 (3 skipped are RIMMSQOL feature, now excluded by filter), pass 2b English 12/12, pass 3b restart 2/2,
pass 4 RIMMSQOL 3/3. Pass filed as request, one per pass; commands, maps, what deliberately left out in `Tests/Pickle/README.md`.
Skipped scenario not passed: every `@requires` scenario needs own pass.

| Pass | Mod set | Language | Plays |
|---|---|---|---|
| 1. French, minimal | Core, the DLCs, Harmony, RimLogging, Pickle, this mod, ScreenshotMode and LoadAudit | French | features 01, 02 and 04: scenarios 1, 3 to 8, 10, 11 and 14 |
| 2. English, minimal | the same set | English | features 01, 03 and 04: scenario 12 and the English layout of 14 |
| 3. Restart | the same set | French | features 05 then 06, in two launches under one lock: scenario 14, step 3 |
| 4. RIMMSQOL | pass 1 plus RIMMSQOL (Workshop 1084452457) and its Pickle steps | French | feature 07: scenario 14, step 4 |

**Not planned:** pass with mod colouring label (scenario 9's rule asserted on string carrying tag, mod not chosen); German pass (mod ships English and French, so load audit would report missing
keys by design, German worker proved offline); pass without DLC (mod reads no DLC def); pass
for incompatibility (none declared; b606's old mod not, see `BACKLOG.md`).

## Where each scenario stands

"Offline" means `Tests/Run-Tests.ps1`, runs mod's own code around game's own French rules without
starting game. "In game" is what only running colony can show. "Written as" is Pickle feature
asserting it. All four passes played and green (48 of 48); what they deliberately do not show in
"Not shown" cells and "Manual checks left" above.

| # | Offline today | Only a game can show | Written as |
|---|---|---|---|
| 1 | The three targets exist with the parameter names Harmony matches by (4 tests) | That Harmony actually patches them | `01-loads`: Harmony's own patch record, a load with no error, the load audit |
| 2 | The lists parse and agree with the game's defs (6 tests) | `Lexicon.Load` itself, which needs the game's `ModContentPack`; the survival of a junk line | Not written: the junk-line step edits a shipped file, so it is dropped with its reason; the count line is not asserted (no step reads an info message) |
| 3, 4, 5, 8 | Each correction, around the real vanilla rules, on strings (8 tests) | That the patched worker of a running game applies them | `02-french-grammar`: the worker's `PostProcessed` and `WithDefiniteArticle`, on seventeen table rows and eight scenarios. **Not shown:** a sentence the engine builds and displays |
| 6, 7 | Species gender on/off, other languages, unlisted species (1 test) | The article on a real animal | `02-french-grammar`: a real pawn, the rules the game builds for it. The tale text is not read back |
| 9 | Elision across a tag, on strings | A real label that carries a tag | The rule on a string that carries the tag, in `02-french-grammar`. **A real label is not covered** |
| 10 | Typography off by default, colon and clock rules | That the font draws the no-break spaces | The spacing by value in `02-french-grammar`; whether the font draws it is for a person, on a capture, and none is taken |
| 11 | Every switch turns off its own correction (1 test) | The same on the next string, and the lists on restart | `02-french-grammar`, every switch read on each call; the lists on restart are not written |
| 12 | English, German and null workers leave the rules alone | The same in a running English game | `03-english-isolation`, pass 2 |
| 13 | The mod stores nothing in a save: only `ModSettings` uses `Scribe`, no game component | Nothing: how the game loads a save with or without a mod is the game's, not the mod's | **Not applicable**, per "On ne teste pas le jeu" in `AUDIT.md` |
| 14 | Defaults, 64 combinations round-trip, the shortcut Def and worker contract (5 tests) | Both routes, persistence across a restart, the shortcut through RIMMSQOL, layout in both languages | `04-settings` and its two `@review` captures, `05` and `06`, `07`, and the load audit's language check |

## What to keep after a test, and what to delete

Rule of collection's `AGENTS.md`: report about superseded build proves nothing about
current one, reports can reach gigabytes on full disk. `PickleTools/TESTING.md` has long form.

**Keep, on disk, per pass** (in `Tests/Pickle/Evidence/`, ignored by git): `summary.json` and
`summary.md`, `junit.xml`, `messages.ndjson`, `Player.log`, `evidence-complete.txt` or `no-report.txt`,
and `@review` captures pass exists to produce, **minified to JPEG**. Ask for folder with
`-EvidenceDir` so report copied out of shared, rolling `pickle-reports` before next run
overwrites it. Never copy that folder whole.

**Keep in git, one text line per run** in `docs/runs/history.md`: date, pass, revision, `exitReason`,
scenarios played of discovered, verdict, what was opened.

**Delete**: `screenshots/` folder copied whole, `report.html`, report of failed or
infrastructure-error attempt once its line written, report superseded by newer one for
same scenario and revision (unless older is only proof of check newer did not repeat: a
language, an optional-mod pass), any report of superseded build once pass repeated on
current one. **Never delete report that `STATUS.md` still points to**: repoint field first.
List what goes and what stays before deleting. Plain recursive delete stalls on capture names past
MAX_PATH: mirror empty folder over target with robocopy first, then delete empty shell.
**Proofs this mod keeps, 2026-10-02**, one folder per pass under `Tests/Pickle/Evidence/`, about 2 MB in all:
`2026-09-28-pass1-french` (French, 31/34), `2026-09-29-pass2b-english` (English, 12/12, only English proof and
one superseding failed pass 2), `2026-09-29-pass3b-restart` (`seq1` write and `seq2` read, 2/2) and
`2026-09-28-pass4-rimmsqol` (3/3, only RIMMSQOL proof). Each holds summary, junit, `messages.ndjson`,
`Player.log` and `@review` JPEGs. Deleted 2026-10-02: pass 3 attempt that crashed in Mono GC
(`2026-09-28-pass3-restart`, only a `Player.log`), its line staying in `docs/runs/history.md`. Next run of pass
replaces its folder; pass never kept twice. No `.dds` and no evidence in git (`.gitignore` covers both).

## What none of this can prove

- **That every one of 115 genders is right.** Scenarios check machinery
  on perhaps a dozen species. Other hundred are reading of official translation, only French speaker looking at generated text over long game will find wrong one.
- **That 77 prefixes complete.** Scenario 5 catches over-matching, the dangerous
  direction. Under-matching — missing aspirated word — shows as vanilla behaviour, looks
  like nothing at all.
- **That future version still resolves.** Scenario 1 is whole of that check, must be
  re-run on every game update.