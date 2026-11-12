# STATUS.md sections folded on 2026-10-13

Moved verbatim from STATUS.md (size rule, AGENTS.md): the 2026-10-02 audit, the 2026-09-28 verdict and the ordered gates of 2026-09-28.

## Audit, 2026-10-02

Revision audited: `67d1c56` (master, equal to `origin/master`), tree clean at the start; this audit's own edits are
committed with this sheet. Against `AUDIT.md` at `d1fdbe1`. **`done` -> `done`: it holds; `tested` is not reached.**
The 2026-09-28 verdict below stays as written (the stage did not move, so nothing is marked replaced).

**Replayed for a `done` mod (step 12).** `options -> l10n` against the current `TRANSLATIONS.md`: the plural rule
(no key of this mod takes a number: no `{0}` in any Keyed text) and the French gender-switch rule (not applicable:
no text refers to a pawn) hold. `l10n -> preTest`: dependencies unchanged since 09-28 (Harmony the only hard one;
`Check-TypeRefs` clean today). `preTest -> done`: `_tools/Run-Tests.ps1` **33 of 33 today**, `Check-DefInjected` 2
keys 0 errors, `Check-XmlFields`, `Check-DefRefs`, `Check-TypeRefs`, `Check-ConfigErrors` clean, the Pickle suite
written (seven features) and its scope justified. Nothing started a game.

**`done -> tested`, item by item (AUDIT.md step 9 and `TESTING.md`, "What `tested` requires").**

| Criterion | Verdict |
|---|---|
| Scenarios run in game and passed; Pickle green; `exitReason` read; `@review` captures opened | validated: 48 of 48 over four passes, `exitReason: passed`, captures opened (one line per run in `docs/runs/history.md`) |
| Logs read, both languages, options, persistence and the MainButton | validated: passes 1 and 2b (languages), 3b (restart), 4 (RIMMSQOL) |
| No scenario `@wip` | validated: searched in the seven features, none |
| Every conditional scenario has run | validated: `@requires` are RIMMSQOL and its steps (pass 4, 3/3), ScreenshotMode and LoadAudit (passes 1, 2b); the 3 skipped scenarios of pass 1 are feature 07, played by pass 4 |
| **No manual test left to validate** | **not met**: rows 3, 4, 5, 8, 9, 10 are neither automated nor declared not applicable (`TESTING.md`, "Manual checks left"). A decision, not a defect |
| Regression pass after a correction | the correction (colour-tag step, pass 2) was replayed green as pass 2b; a final regression pass on the last revision comes with `tested` |

**Housekeeping done today.** Evidence kept to the four proofs that still prove something (about 2 MB, listed in
`TESTING.md`); the crashed pass 3 attempt deleted. No `.dds` and no evidence is tracked in git, none ever was
(history searched), and `.gitignore` covers `*.dds`, `*.DDS`, `*.ico` and both evidence folders. The gallery copy of the
Preview moved to `Art/Gallery/0-preview.png` (byte-identical to `Mod/About/Preview.png`, per PUBLISHING.md).
`FRENCH_REVIEW.md` regenerated with the collection's `scripts/Make-FrenchReview.ps1` (the mod's own copy removed).
The origin's repository was looked at again (last push 2020-11-30, no licence): a pull request is now a backlog line,
not started. `docs/PROTOCOLS-READ.md` rewritten with versions, what was read and what was of no use.

**Next transition.** `done -> tested` needs the six manual checks decided (automated, or declared not applicable with
a reason) and then a last regression pass on the final revision. `translation_fr` is a separate gate: Virginie's own
reading of `FRENCH_REVIEW.md`.

## Verdict, 2026-09-28

**`done`, reached the same day.** The stage codes of this sheet are the states of the AUDIT.md chain under the same
names. The audit of the morning found every state up to `preTest` established and `done` not, for one reason:
**the Pickle suite the workflow asks to be written did not exist.** It was written the same day, and `done` holds
again. The session title moved with it, `frenchgrammar / preTest` then `frenchgrammar / done`.

The previous audit (2026-09-13) had set `done`. Its text is archived unchanged in
`docs/audits/2026-09-13-status-sections.md`; what it says about the stage, the icon approval and the
workflow it quotes is superseded by this section.

### What `done` asks for, and where it stands

| Criterion (AUDIT.md, preTest -> done) | Verdict |
|---|---|
| Functional scenarios written with preconditions, actions and expected results | validated: fourteen in `TESTING.md` |
| Automated tests written, run and green | validated: 33 of 33, today, twice (before and after the rename) |
| **Pickle (Gherkin) tests written, their scope justified** | validated: seven features in `Tests/Pickle/`, the scope and what is left out justified in its `README.md`. Written, not played: execution is not asked at this step |
| XML tests written, run and green | validated: five checkers clean, all shipped XML parses |
| Non-applicability justified where claimed | validated: scenario 13, the German pass, the junk-line step and the real colour-tag label each carry their reason |
| Results match the delivered version | validated: the delivered DLL is what the sources build (below) |

## Ordered gates, 2026-09-28

Each verdict is what was checked today, not what an earlier sheet said.

1. **dansMonoRepo -> horsMonoRepo: validated.** Own git root, public GitHub repository, `origin/master` equal
   to the local head, STATUS.md present, licence `silent` justified and consistent, English documents,
   `LICENSE` and `ATTRIBUTION.md` byte-identical to their `Mod/` copies. Naming is coherent on purpose, not
   literally: `nelim.frenchgrammar`, `French Grammar Renew (unofficial)`, `Rimworld-French-Grammar-Renew`,
   `FrenchGrammarRenew`: all four now follow the name, the repository and the folder having been renamed on 2026-09-28.
   **New today: the origin's repository was looked at** (below) and the reason for not starting from it is in
   `ATTRIBUTION.md`.
2. **-> ModIcon generated: validated by the owner's decisions.** Build
   clean, the DLL current, `ModIcon.png` a 128 x 128 PNG of 26,932 bytes. Read at 32 px in a scratch copy
   (the file was not touched): the head, the book and the pen read; the bubble text, the book lettering and
   the flag do not. The owner approved that on 2026-09-13, and on 2026-09-28, asked about the bubble that
   says "plus" now that the mod is called Renew, she answered that the "Plus" suits her: the icon stays as it is.
   This audit generated, changed and asked nobody to generate anything.
3. **-> Preview generated: validated.** `Mod/About/Preview.png` is 896 x 504, 490,927 bytes (under 1 MB),
   opened and looked at: high oblique view, tiled floor, one lamp pool, a figure seen from behind, no face.
   Updated 2026-09-29 for the owner's new convention: a cut-out `ModIcon.png` sits in the bottom-left
   corner, rotated +15° (left corner = +15°, right corner = -15°; the bottom-left was chosen as the
   least-filled corner, both top corners already carrying the text block and the version badge). Three
   corrections after owner review, the first two baking the icon into `Art/Preview.png` with ffmpeg: 110 px
   inset unsaturated (too small, too dull, not flush), then 300 px `saturation=1.8` flush to the ffmpeg
   overlay's bounding box (still read as pale and not touching any edge — **the real causes**: the veil,
   `radial-gradient(ellipse 850px 680px at top left, …)`, still carries about a third of its opacity at the
   bottom-left corner and was baked on top of the icon in the final render; and `ow=rotw()/oh=roth()`
   keeps the rotated frame's own padding, so the flush overlay was flush to that padding, not to the
   mascot's own pixels). Moved to `Art/preview.template.html` instead: `Art/ModIcon-cutout.png` (a tight
   crop of the colour-keyed cutout, no transparent margin) as an `<img class="corner-icon">`, `position:
   absolute; left:0; bottom:0`, `transform-origin: bottom left`, painted **after** `.veil` in the DOM so it
   is never darkened by it, `filter: saturate(1.5) drop-shadow(...)`. 220 px wide, clearing the text block
   (bottom edge at y≈292) by a margin. `Art/Preview.png` itself is back to the plain illustration (renamed
   copy at `Art/Preview-source-no-icon.png` kept as the pre-icon reference; the two are now identical
   again). Rendered through `_tools/Render-Preview.cjs`; all four text
   regions stay above 4.5:1 (7.21 worst), badge 8.72. `Art/Gallery/0-preview.png` (first `Art/Screenshots/0.png`, moved on 2026-10-02) is a new file, a plain copy of
   this rendered `Mod/About/Preview.png`, per the owner's convention that the Workshop screenshot gallery's
   first image (index 0) is that copy; no further screenshots are staged yet.
4. **-> preOptions: validated.** Accent (blue) and secondary ink (amber) are distinct; `Renew` is the suffix at
   65 % in the secondary ink, `(unofficial)` the tag, the version badge reads 1.6 as declared. The description
   is English, opens with the unofficial notice and ends with `[url=...]Source code on GitHub[/url]`.
5. **-> options: validated, technically.** Six checkbox settings, defaults documented and tested (all 64
   combinations round-trip through the real Scribe), primary access Mod options, hidden `FGP_Settings`
   shortcut (`buttonVisible` false) opening the same dialog. Interactive checks (reveal through RIMMSQOL,
   restart) are `tested` work, as AUDIT.md says. `MOD_SETTINGS.md` would call this `partial` while runtime
   tests remain; the audit prevails and `settings_audit` stays `complete`.
6. **-> l10n: validated.** Every player-facing string goes through `.Translate()` (the source was scanned; the
   `Log.*` lines are technical and English). 15 Keyed keys in English and French, none duplicated, empty or
   mismatched; the shortcut's label is the Def's English text with two French DefInjected paths;
   `Check-DefInjected` 2 keys, 0 errors. Re-run after the rename.
7. **-> preTest: validated.** Harmony is the only hard dependency, declared as `brrainz.harmony` with its
   Workshop link and in `loadAfter` with Core; the code uses it and ships none of it. No third-party type
   is referenced (`Check-TypeRefs`), no `LoadFolders`, no conditional patch. RIMMSQOL is an optional
   integration and correctly not declared.
8. **-> done: validated** (above), once the Pickle suite was written.
9. **-> tested: unverified.** Nothing was played. See "Next transitions".
10. **-> prepublished, 11. -> published: not started.** A `0.1.0` upload exists (below). It is an act, not a
    step of the chain: it neither advances nor implies `prepublished`.

