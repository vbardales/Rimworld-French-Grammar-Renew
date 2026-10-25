---
localization: complete
translation_en: complete
translation_fr: complete
settings_audit: passed
mod:          French Grammar Renew (unofficial)
packageId:    nelim.frenchgrammar
repo:         Rimworld-French-Grammar-Renew
visibility:   public
detached:     yes
workflow_stage: shootGallery[1.0.0]
licence:      silent
licence_at:   b606's repository and Workshop item carry no licence (checked again on 2026-09-28), and the source has declared only RimWorld 1.0 to 1.2 since its last update on 2020-11-30. No file, no line and no word list of his is copied. One idea is his and is credited in ATTRIBUTION.md: the zero-width guard that keeps the vanilla elision rules off an aspirated word. This mod's own LICENSE is a bare MIT.
upstream_mod_remotes:
  - https://github.com/b606/RimWorld-LanguageWorker_French
dependencies: declared
showcase:     complete
tested_on:    4be6004 (2026-10-11 and 12: Pickle passes 1b, 1c, 2c green; 1, 2b, 3b, 4 of 2026-09-28 to 30 on the same code)
workshop:     3806761557 (0.1.0, creation of the publishIdFile only; Steam keeps every new item private, and switching it to public is the owner's)
remaining:
  - feature: for `writeDocs` and `prepareRelease`, not yet started. No `PUBLICATION.md`; the description in `About.xml`
    lacks the `IF I GO QUIET`, `AI-GENERATED` and `THANKS` sections and the attribution line that
    AUDIT.md orders after the body; no thank-you comment for b606's page (2081845369, absent from the
    register); this mod is not yet in the `Covers` of the Harmony, Pickle, RimLogging and RIMMSQOL rows.
  - feature: pull request to the origin's repository (`b606/RimWorld-LanguageWorker_French`), systematic since
    PUBLISHING.md's rule of 2026-09-28; in `BACKLOG.md`. Public, so not before the owner's word. The mod cannot
    be based on his code (licence `silent`).
  - unverified: nothing has been uploaded since the 0.1.0 creation, so the page's description, gallery
    and change notes have never been seen in place.
  - ticket 20261025-182501-478-7e03 queued (feature 09, French, sanctuary map, tree 04a5aab). Preview regenerated from the new panel config and validated by the owner 2026-10-25; echo still to validate at `mountPreview`.
  - defect: story-1 of feature 09 failed 2026-10-19/20 (run 20261019-gallery-story-2, single-scenario): `the cell (140, 72) already holds Stool`. Bean moved to (140, 71) 2026-10-25, NOT replayed; scenarios 2 to 5 never played; Inbox folder deleted after study. Ticket to file for the five scenarios.
  - unverified: gallery story (feature 09) not yet seen. Ticket 20261019-184214-288-8c52 queued (the first, 0a46, stalled at startup with no report: suspect one of the three added mods, bisect if it stalls again). Judge each capture against 4, redo weak scenes in small tickets, keep serious ones as candidates, reindex, then burn subtitles (lines in PUBLICATION.md).
  - feature: after the accepted gallery, redo Art/echo-source.png by the owner, then echo_review_sha; PUBLICATION.md open points (illustration tool for AI-GENERATED, THANKS for gallery staging mods, register rows for b606, Harmony, Pickle, RimLogging, RIMMSQOL); NPT to extract More Rodents, Fort Firefighter, VGP into GALLERY-PROPS.md (done by NPT, unplayed).
session:      local_82860736-8ac6-4da1-8b6b-542b87bbe12e
code_review_sha: 4be6004674e1a962a87e03134d6a2828a56dabae
updated:      2026-10-18, gallery reopened by the owner (two letters were not a story), shootGallery[1.0.0]
protocols_read_sha: 65f1477c389ca6e741af05b7745aa30f6b26b595
---
# French Grammar Renew (unofficial): status

Session title `frenchgrammar / done`: packageId without `nelim.`, then `workflow_stage`.

## Earlier audits

Audit 2026-10-02, verdict, ordered gates of 2026-09-28 in `docs/runs/2026-10-02-status-audits.md` (folded 2026-10-13). History only; current state below.

## Revision and changes

- Audited: `ab7e776` (adds `PublishedFileId.txt`, 0.1.0 entry) on top of `acf1b47`, plus working-tree changes this session, committed with this sheet.
- **Renamed** on owner's word, repository (`Rimworld-French-Grammar-Renew`, old address redirects) and folder (`FrenchGrammarRenew`) included: name `French Grammar Renew (unofficial)` (was `French Grammar Plus`), packageId `nelim.frenchgrammar` (was `nelim.frenchgrammarplus`). Follows collection's `Renew` for mod continuing dead one, and 2026-09-27 rule: packageId carries neither `Renew` nor suffix. Checked before change: new id free among 126 mods of collection; no save (29) and no active `ModsConfig.xml` names old one (only old backups). Touched `About.xml`, one C# constant, settings title and shortcut label in both languages, README and TESTING titles, `Art/preview.template.html`. DLL rebuilt, Workshop preview recomposed with existing renderer (illustration unchanged; only suffix word differs). `0.1.0` item still carries old id and old name until next upload.
- **Wrote Pickle suite** (`Tests/Pickle/`): seven features, four local step classes bound against shipped DLL (built, 23,552 bytes, tracked), two pass maps, README with scope and omissions, and `Check-Steps.ps1`, which compiles all 120 step patterns, shared ones included, with Pickle's own expression engine (none invalid, none declared twice). Modelled on Flavor Text Extended - Francais suite; RIMMSQOL feature reuses shared steps of `PickleTools/RimmsqolSteps` unchanged. Not played.
- Added `docs/PROTOCOLS-READ.md`, `BACKLOG.md`, `docs/runs/history.md`; archived 2026-09-13 sections; wrote `tested` criteria, pass plan, coverage map, evidence rule into `TESTING.md`; wrote provenance section into both `ATTRIBUTION.md` copies; refreshed `Tests/artifact-sha256.json` (`About.xml` and `Mod/LICENSE` entries stale since 2026-09-20 commits).
- `.gitignore` now also ignores `*.ico`, `*.dds` / `*.DDS`, evidence folders. No `.dds` in repository, tracked or not, no test evidence anywhere; two folder-icon `.ico` files were untracked, now ignored.

## Checks run

| Check | Result |
|---|---|
| `_tools/Run-Tests.ps1` | 33 of 33, exit 0, before and after rename |
| `dotnet build` to scratch folder, before rename | DLL SHA-256 `DE2793A5...`, **identical** to delivered one |
| `dotnet build` of renamed sources | delivered DLL SHA-256 `32876E61...`, new id present, old one absent |
| `Check-DefInjected`, `Check-XmlFields`, `Check-DefRefs`, `Check-TypeRefs`, `Check-ConfigErrors` | exit 0 each, before and after rename |
| `Tests/artifact-sha256.json` against disk | two entries stale, refreshed |
| Images | Preview 896 x 504, 490,927 B, contrast minima 14.14 / 8.83 / 7.21 / 10.67, badge 8.72, thumbnail read at 268 px, now carries cut-out ModIcon flush bottom-left at +15° as HTML layer above veil (see #3), after three owner-rejected passes; ModIcon 128 x 128, 26,932 B, read at 32 px |
| Explorer folder icons | `desktop.ini` at root and in `Mod/` point at `Art/ModIcon.ico` and `Art/Preview.ico`, which exist; attributes as required. `Art/Preview.ico` still shows old suffix (local only) |
| Game | **not started, not touched.** No RimWorld launched, no Pickle request filed |

## Translation audit

Audited 2026-09-30 against `FrenchGrammarRenew` revision `23a392e`. Inventory: two files carry player-facing text, `Mod/Languages/*/Keyed/FrenchGrammarPlus.xml` (15 keys: settings title, scope note, six setting labels and tips, data-files note) and `Mod/Languages/*/DefInjected/MainButtonDef/FrenchGrammarPlus.xml` (hidden shortcut's label and description; C# reads no other translatable text — two word lists in `Data/` are grammar data, not player-facing, and `Data/pawnkind-gender.txt` comment lines never shown). Every key resolves to nonempty English and French; no duplicate keys, no fallback.

**French gender agreement (TRANSLATIONS.md, 2026-09-30): not applicable.** None of mod's fifteen Keyed strings or two DefInjected fields refer to a pawn; settings UI text only (titles, tips, shortcut label). No text needs `{PAWN_gender ? ... : ... : ...}` switch, nothing to flag. (Mod's *subject* is pawn-referring grammar generated by game's own engine, corrected through Harmony patches, not through own Keyed or DefInjected strings.)

**`FRENCH_REVIEW.md`** regenerated 2026-10-02 by collection's `scripts/Make-FrenchReview.ps1` (replaces mod's own `_tools/Generate-FrenchReview.ps1`, removed), from revision `0e072bb`. Two tables, one per file, 17 rows, Original column equal to English throughout: mod has no source in another language. No row flagged `?`.

**Systematic French review by Virginie, 2026-10-11, revision `9d786c2`: done (full reading).** No gender-switch branch needed (species-noun gender distinct from pawn gender). Four corrections, applied same day: `FGP.KindGender.Tip` (French: explicit referent), `FGP.Possessive.Tip` (English: accents kept in example), two lines of `CHANGELOG.md` ("Deliberately absent" item, last paragraph). No upstream pull request needed (local texts of port). `FGP.RichText.Tip` (French text shows literal `<color>` example English does not) read, left as is.
**ChatGPT review of French texts, 2026-10-18, revision `b8847ad`+: no correction.** Only finding: `PUBLICATION.md` absent from input (expected, written at `writeDocs`). Read and validated by Virginie the same day ("relu, validé"); nothing applied.

## The original mod, looked at

`b606/RimWorld-LanguageWorker_French`: public, master, created 2020-03-25, last pushed 2020-11-30, not archived, issues enabled none open, no licence file, GitHub reports no licence, one fork (Elevator89's). Workshop item (2081845369) last updated 2020-11-30 (Steam manifest), declares 1.0, 1.1, 1.2; shipped files and README carry no licence wording. So `silent`. Starting from its repository impossible (no licence; history unfit for publication), pull request would be rewrite, not correction; reasons in `ATTRIBUTION.md`. **No issue or pull request sent**: public, owner's to allow.

## The 0.1.0 upload

`Mod/About/PublishedFileId.txt` (3806761557, dated 2026-09-23) untracked until today. Committed and pushed as `Add published Workshop file ID for 0.1.0`, with `## [0.1.0]` entry in `CHANGELOG.md` under unreleased 1.0.0. Upload carried `Mod/` as at `acf1b47`, apart from `desktop.ini`, which appeared 2026-09-27, after it. `Mod/desktop.ini` ignored by git, would be sent by upload from game (`BACKLOG.md`). No tag, no GitHub release made.

## Next transitions

**`done` -> `tested`: all four passes now played, 48 of 48 scenarios green.** Pass 1 French (2026-09-28, `20260928-140036-944-e88b`, tree `5064be6`): 31/34, 3 skipped (RIMMSQOL). Pass 2 English first attempt (`20260928-191312-686-d0fb`) failed one scenario on step bug (rich-text colour tag step never stripped before comparing, not mod defect); fixed in `Tests/Pickle/Source/GrammarSteps.cs`, re-filed as pass 2b (2026-09-29, `20260929-135332-712-b8e6`, tree `ba50a84`): 12/12. Pass 3 restart first attempt (`20260928-191314-912-05b4`) crashed before any scenario, `SIGSEGV` in Mono GC, cross-mod signature seen on several other mods that day; re-filed unchanged as pass 3b (2026-09-30, `20260929-135532-799-5bc8`, tree `16493a0`): 2/2. Pass 4 RIMMSQOL (2026-09-28, `20260928-191315-350-63f2`, tree `5064be6`): 3/3. Evidence for each under `Tests/Pickle/Evidence/`, one line per run in `docs/runs/history.md`.

**Not yet done: `done -> tested` transition itself.** Passes satisfy "every scenario has run and passed" and "every conditional scenario has run" (TESTING.md, "What `tested` requires"). Not yet re-checked against that section, item by item, with transition written up here as `done` was: "no manual test left to tick" (rows 3/4/5/8/9/10 above still read as genuinely unverified, not merely un-run, so needs decision — mark `not_applicable` with reason, or find way to check — before box can be ticked) and "both languages, logs read, regression pass after any correction" as closing statement, not scattered across passes. `translation_fr` also still needs Virginie's own review (see French-review entry in `remaining`), independent of this gate.

## Reservations, not blockers

- **`hall` prefix** dropped 2026-09-28, at owner's "case by case": caught `hallucination(s)`, `hallucinogene`, `hallux`, which take mute h, so mod wrote "la hallucination" where vanilla was right. List has 77 entries, both negative tests now know those words and were seen to fail with prefix back. Loanword `hall` itself, aspirated, no longer corrected: handful of occurrences in game's French text, add back only when real sentence needs it (`BACKLOG.md`).
- Two aspirated-h words, `hachis` and `harissa`, added same day; `Pluralize` finding in `BACKLOG.md`. Latter verified: game's French worker returns `recettes` for count of 1.

## Pointers

`TESTING.md`, `Tests/RESULTS.md`, `Tests/artifact-sha256.json`, `docs/runs/history.md`, `docs/PROTOCOLS-READ.md`, `docs/audits/2026-09-13-status-sections.md`, `BACKLOG.md`, `CHANGELOG.md`.

## Vocabulary

`stage`: `port`, `showcase`, `preTest`, `done`, `tested`, `published`, matching AUDIT.md states of same names. `licence`: `open`, `silent`, `alive`, `forbidden`, `original`. `remaining`: `feature` (missing), `defect` (known fault), `unverified` (could not be checked). `upstream_mod_remotes`: git repositories of mods this one is French-grammar port or fork of, one list entry each; `N/A` if none found. Distinct from `repo` (this mod's own repository) and `origin` (this checkout's git remote).


## Earlier sections

Preview source migration (2026-10-03) and reaudit of 2026-10-11 in `docs/runs/2026-10-11-status-reaudit.md` (folded 2026-10-15).

## playTests closed, 2026-10-12 (AUDIT.md 8.a to 8.n)

Tested revision `4be6004` (code unchanged since passes; `Source/` last touched before them, corrections of 2026-10-11 were texts). 8.b: `Mods/FrenchGrammarRenew` is junction to `Mod/`, so game runs repository's texts; French and English readings done. 8.c/8.d: Pickle 1b French 02 31/31, 1c French 01 and 04 9/9, 2c English 12/12, earlier 3b restart 2/2 and 4 RIMMSQOL 3/3; every `@review` capture opened (settings page in French and English through both routes: no raw key, no clipping, four switches on, two off). 8.e: no `@wip`. 8.f: every `@requires` has run. 8.g/8.k: fourteen scenarios automated and green, or not applicable with reason (13); no manual check left. 8.h/8.i: settings `passed` in both languages, persistence over restart, MainButton through RIMMSQOL; logs read. 8.l: evidence kept minified, one line per run in `docs/runs/history.md`. **8.m code review**, `0.1.0` to HEAD, `Source/` read whole (`FrenchGrammar.cs`, `Settings.cs`, `FrenchGrammarPlusMod.cs`, patches): no defect found; regexes guarded by settings, zero-width guard always leaves, no unguarded null path. `code_review_sha` set.
No full final pass here (AUDIT.md 8.c): everything stays green after commit checked at `followUp`.

## Preview regenerated with the new echo, 2026-10-12

`Art/echo-preview.png` (owner's line-art, drawn from `Art/Preview-source.png`: open book and lamp) replaces `Art/echo.png` and `echo-source.svg`. `Art/Preview.config.json`: `echo.file` is `echo-preview.png`, `flipX` true, `panelTop` 24 / `panelWidth` 42 (was 16 / 48: at 48 lamp touched last R of GRAMMAR). Rendered by `node ../scripts/Render-Preview.cjs`: `Mod/About/Preview.png` 896 x 504, 507,6 KB, `Art/Gallery/0-preview.png` byte-identical, both `.ico` regenerated. Opened at full size and 268 px: title, tagline, badge clear, book reads at 268 px, lamp small but legible. Still to do at `mountPreview`: validate echo against accepted gallery (`echo_review_sha`), and GitHub social preview (`social_preview_sha256`) once repository public.

## Audit replayed, 2026-10-15 (AUDIT.md 1 to 9, against the current protocols)

Revision `2cbc1eb` (master, pushed), tree clean. Verdict: **`shootGallery[1.0.0]` holds; nothing moves back.** Criteria 1 to 8 established; 9 (gallery) work in progress. Replayed today, offline only (no game started): `Tests/Run-Tests.ps1` 33 of 33; `Check-ModBasics` pass; `Check-XmlFields`, `Check-DefRefs`, `Check-TypeRefs` clean; `Check-DefInjected` 2 keys 0 errors; `Check-Status` 0 error.

| Step | Verdict |
|---|---|
| 1 setupRepo | validated: own repository and remote, `.gitignore`, `.gitattributes`, README, ATTRIBUTION, LICENSE, CHANGELOG; licence `silent` with `(unofficial)` suffix and `UNOFFICIAL` paragraph first in description; names consistent (`nelim.frenchgrammar`) |
| 2 makeSources | validated: both sources and `echo-preview.png` in `Art/`, `ModIcon.png` 128 x 128, `Preview.png` 896 x 504 under 1 MiB, `Art/Gallery/0-preview.png` byte-identical to it. `ModIcon.png` 31,148 B: fine, weight only guards against the absurd (AUDIT.md 2.c, 2026-10-13) |
| 3 code | validated: no `feature` left for version; DLL equal to sources (checked 2026-10-11, `Source/` untouched since). Reservations: CHANGELOG heads section `[1.0.0] - unreleased`, not `[Unreleased]`, and first paragraph still says "a few manual checks remain", out of date |
| 4 declareDependencies | validated: Harmony only hard dependency (`brrainz.harmony`, Workshop id given), `loadAfter` Harmony and Core, no `LoadFolders`, `Check-TypeRefs` clean today |
| 5 settings | validated: `settings_audit: passed` (six settings, 64 combinations round-tripped, MainButton hidden by default, both languages in game) |
| 6 localize | validated, one point **corrected**: `Check-Translations` reports `FGP.RichText.Tip` (French shows literal `<color>` example English lacks). Not a defect: Virginie read it 2026-10-11 and left as is (see French review above). Linter finding is accepted exception, not to be re-opened |
| 7 writeTests | validated: tests replayed today, Pickle suite written (eight features with gallery one), scope justified. Naming gap: AUDIT.md says `TEST_SCENARIOS.md`, mod keeps scenarios in `TESTING.md` (settle with Audit workflow session) |
| 8 playTests | validated: 8.a tested `4be6004`, `Mod/` changed since only through `Preview.png`; 8.c to 8.l as written in "playTests closed"; 8.m review done (`code_review_sha` `4be6004`; `Mod/About` images do not reopen it, AUDIT.md 8.m, 2026-10-13) |
| 9 shootGallery | validated 2026-10-15: both candidates accepted by Virginie, `candidate` dropped, indexes `0-`, `1-`, `2-` contiguous (9.a to 9.e), table below |

**Rules read today bearing on next states** (protocols of 2026-10-13 to 15): Nelim is protagonist of Sanctuary gallery, animals, when shown, face camera at least once (GALLERY.md, 2026-10-14); once gallery holds accepted capture besides `0-`, `Art/echo-preview.png` invalidated, echo redone from gallery at `mountPreview` (`echo-source.png`, then `echo_review_sha`); session name carries no marker, Workflow Board computes colour (AGENTS.md, 2026-10-15).

## Gallery, accepted 2026-10-15

| # | File | Shows | Why this order |
|---|---|---|---|
| 0 | `0-preview.png` | Preview, byte copy of `Mod/About/Preview.png` | Steam shows first image large |
| 1 | `1-letter-with-the-mod.png` | letter of 12 paragraphs as game writes it with mod (`le husky`, `de haricots`, `son épée`, `d'Éclat`) | mod's result first |
| 2 | `2-letter-without-the-mod.png` | same letter with three corrections off (`l'husky`, `d'haricots`, `sa épée`, `de Éclat`) | contrast explaining why mod exists |

Both 630 x 1080, cropped sideways to window on `window-backdrop-for-height`, under 900 KB. Next, at `mountPreview`: provisional `Art/echo-preview.png` invalidated by accepted gallery (AUDIT.md 9.f); echo redone from it by Virginie (`echo-source.png`), then `echo_review_sha`.

**Open before `mountPreview` (closed):** gallery (9); `social_preview_sha256` missing (AUDIT.md 10.f, repository public). **Open before `writeDocs`/`prepareRelease`:** `About.xml` description names RimWorld 1.6 and 1.7 (owner rule 2026-10-13: write "the latest RimWorld version"); `Check-Status` warns `rimworld-version`. `tested_1_7` absent: 1.7 pass not made, not a defect.
## Shotlist, 2026-10-25, fourth version (rate-gallery 3.0 on v1, 3.8 on v3, scene 5 and criteria f and j reworked)

SCENES REWRITTEN 2026-10-25 (commit 5d2fb3e, NOT PLAYED): forced job, then `I advance the paused game by exactly N ticks` (StudioSteps, confirmed by NPT via the TM), big grammar-resolved message last; Yuki follows Nelim in 1 and 5, lies down in 3. rate-gallery of v4: mean 4.2, scene 3 at 3.5 (Yuki activity and Nelim position, fixed in the scenes: Yuki lies down, Nelim at (142, 72)), j weak everywhere (message at 268 px unproven). Ticket 7e03 plays the tree of its start, so it plays these scenes if not yet started.
Rating history: v1 (2026-10-18) mean 3.0; v3 mean 3.8 (scene 5 at 3.0: decor contradictory, no instant; f and j weak everywhere). This version writes foreground, background and off-centre subject for every scene, gives scene 5 its decor and its instant, and a thumbnail test with a fallback for j. The scenes of `09-gallery-story.feature` are rewritten once the "advance N ticks and pause" step is confirmed: NPT named `advance N ticks` in FilmTicks, which does not exist in `FilmTickSteps.cs`; question relayed through the TM (NPT is archived). Plan B: normal speed, forced job, `I wait N ticks`, `time is paused for the capture`. Ticket 7e03 (old scenes) still plays placements and frames.

Story: one autumn evening (17h, 18h, 19h, 21h) and the morning after (7h) in the tea room (`hut`), Nelim protagonist, husky Yuki and hamster Noisette guests. Same outfit and hair all evening (forest green collar shirt (46, 98, 74), FancyBun); next morning mustard basic shirt (232, 190, 70), Pigtails (dressed overnight). Scene 5 is a deliberate bookend of 1 (same frame and gesture, three settings off).

| # | a time | b decor | c living | d pawn | e action, instant, how | f frame (fore / back / off-centre / light) | g says | j message (source text) | Est. |
|---|---|---|---|---|---|---|---|---|---|
| 1 | 17h Clear | Rawbean (140, 71), table, shelves | Yuki (143, 71), Noisette (139, 73) South | green collar, FancyBun, smile | `Ingest` Rawbean from the stool, 40 ticks; just sat | WIDE zoom 4 (141, 72): animals / wall and shelves / Nelim off-centre / doorway daylight | she shares her supper | "Le husky et le hamster attendent." | 4.5 |
| 2 | 18h Clear | fire axe (140, 74), lit torch (142, 74), sword | Yuki (142, 73) | same, smug | haul LongSword to (141, 74), 25 ticks; sword just left her hands | MEDIUM zoom 6 (140, 73): Yuki / torch and axe / Nelim left / torch pool | sword is hers | "Elle pose sa épée." (shows "son épée") | 4.5 |
| 3 | 19h Rain | harp (144, 74), lit torch (141, 76), sword, PsychiteTea | Yuki (141, 73) lies down and listens | same, calm | `Ingest` PsychiteTea, 30 ticks; first sip | TIGHT zoom 7 (142, 72): cup / harp and torch / Nelim at (142, 72) off-centre, Yuki lying behind / dusk | music in the rain | "Nelim écoute la harpe." | 4.5 (was 3.5 before this fix) |
| 4 | 21h Clear | two lit torches (142, 74), (138, 70), cold tea | Yuki (143, 72) facing her | same, sad | haul Kibble to Yuki, 25 ticks; bowl lowered | MEDIUM zoom 5 (141, 72): Yuki / torches / Nelim centre-left / torchlight | she feeds the husky | "Elle sert le husky." | 4.5 |
| 5 | 7h Fog | Rawbean (140, 71), cold cup, sword, torch out | Yuki (142, 72), Noisette (139, 73) South | mustard, Pigtails, neutral | `Ingest` Rawbean from the stool, 40 ticks; just sat after dressing | WIDE zoom 4 (141, 72), bookend of 1: animals / wall and shelves / Nelim off-centre / grey morning | same sentence, no mod | same text, shows "L'husky et l'hamster attendent." | 4.5 |

k (series): one story written, wide 1 and 5, medium 2 and 4, tight 3, opening 1, closing 5, 1-and-5 echo intentional; ok. Estimate: 5, minus 0.5 each for the thumbnail test of j (written as a test with a fallback, not proven at 268 px) = 4.5. No -1 step: the big message exists (NPT, ae91fde, not played), `Ingest` and haul exist (StagingSteps.cs, not played); the "advance N ticks" step is unconfirmed, so plan B (`I wait N ticks`) stands.
Risks, not rated: zoom 4 and 7 never tried; gesture ticks depend on walking distance; `Ingest` on PsychiteTea may be blocked by drug policy; harp cell (144, 74) a guess; fog and rain may not show in a roofed hut; message size at 268 px.
Opus director pass of this day kept as in v3; this version adds no second pass (one call per shotlist).
