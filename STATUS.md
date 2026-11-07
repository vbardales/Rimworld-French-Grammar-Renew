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
  - ticket 20261025-182501-478-7e03 DONE 2026-10-30, 3 of 5 (Tests/Pickle/Inbox/gallery-story-3). Scenes 2, 3, 4 passed, captures opened: 2 and 4 read well (message legible, torch pools), 3 shows two ghost-like animals beside Nelim (Yuki not lying down, sword on floor) and zoom looks unchanged from 2. Scenes 1 and 5 FAILED: step `the animal "Noisette" stands at (139, 73) facing South`, "the cell (139, 73) is not standable" (spawn at that cell passed; pick a free cell, lines 65-66 and 204-205 of 09-gallery-story.feature, and the comments at lines 14 and 27). Scene 2 message shows "son épée" (the shown-correct one).
  - ticket 20261030-162745-526-8432 DONE 2026-11-03, 2 of 2 passed, attempt 1 (Tests/Pickle/Inbox/gallery-story-4). Scenes 1 and 5 captures opened: message legible ("Le husky et le hamster attendent." / "L'husky et l'hamster attendent."), Yuki faces camera in 1, bookend frame holds. Player.log errors are Yorkshire terriers (JobDriver_Ingest/Wait NullReference), not this mod.
  - ticket 20261103-210348-747-0c67 DONE 2026-11-06, 1 of 1 passed, attempt 1 (Tests/Pickle/Inbox/gallery-story-5). Scene 3 capture opened: zoom 4.5 frames the hut well, message "Nelim écoute la harpe." legible, harp and torch visible, Yuki upright beside Nelim (not lying down, `is kept asleep` ran). DEFECTS: two blue-flame creatures in the hut corners (unplanned, same ones as story-3 review), cup on floor not in hand, no rain cue. Not accepted. NPT: blue flames probably buildings, not pawns; Yuki may need ticks.
  - ticket 20261106-130712-306-8816 queued (scene 3 alone, tree 25275c5): `things within 8 cells of (141, 72) are listed` probe, Yuki asleep 30 ticks before the cup. Read `[things-near]` in the log: defNames then `the things "<defName>" within 8 cells of (141, 72) are hidden` (NPT step), or pawns then ask NPT for a step.
  - 2026-11-06 evening, all five scenes replayed on tree 0f12 batch (Tests/Pickle/Inbox/gallery-story-7, 11, 12, 13; story-3 and -4 folders older): braziers (`DarklightBrazier`) hidden in every scene, Pécan (FoxSquirrel, Erin.Foxsquirrel 2092951979, cell (143, 69)) in 1 and 5, only the colony Yuki (the spawn step made a 2nd Yuki: removed in all scenes), scene 5 message "L'husky et Pécan attendent.". Looks clean; owner has not accepted. Open: cup `PsychiteTea` still on the floor in scene 3 (not in hand), no rain cue, Yuki in scene 3 pose to judge. Then reindex captures, burn subtitles.
  - 2026-11-07 run cba0 (gallery-story-16) FAILED 0 of 2: scenes 1 and 5, "the cell (139, 72) already holds Table2x2c" (decor step refuses an occupied cell). Fixed 69e4e57: `1 of the item "MealSimple" are spawned at (139, 72)` (new step, never played). Ticket 20261107-183805-419-3954 queued (scenes 1 and 5, wsl-deps.sanctuary.map, Tests/Pickle/Inbox/gallery-story-17). At RUN_DONE: read summary.json then junit.xml, open the captures (Nelim seated, face in view, MealSimple on the table), judge by GALLERY.md notes (image, adequacy, comprehension, decoration, all 4/5 or REDO), delete the run when read.
  - Local scripts cut 2026-11-06 done and validated by Audit.
  - OWNER 2026-11-06: Nelim keeps canon `Roo_HD_Hair_Highpony` unless justified (DONE in all five scenes, 2a0fc4a, Roo hair mod in the map). Noisette (hamster) becomes Pecan (NSB animal, female FoxSquirrel, Vesper's, from the mod "Foxsquirrel d'Erin"): NOT DONE. NPT answer 2026-11-06: mod "Erin's Fox Squirrel", packageId `Erin.Foxsquirrel`, workshopId 2092951979; PawnKindDef defName UNVERIFIED (mod not on disk, do not guess); no NSB map carries it. UNBLOCKED same day: mod on disk, defName `FoxSquirrel` confirmed by NPT, map line added, scenes 1 and 5 rewritten (768fe21, message "Le husky et Pécan attendent." / "L'husky et Pécan attendent."), ticket 20261106-172542-090-73df queued (scenes 1 and 5, Tests/Pickle/Inbox/gallery-story-7). Old captures untracked, nothing to `git rm`. Ticket 8816 read: the two blue flames are `DarklightBrazier` buildings at (136, 75) and (144, 70), cup `PsychiteTea` at (140, 71) is an item on the floor; scene 3 now hides the braziers (479ecf4), ticket 20261106-172622-046-fded queued (Tests/Pickle/Inbox/gallery-story-8). History of the plan: rewrite scenes 1 and 5 (no hamster in the message: proposed "Le husky et Pecan attendent." / "L'husky et Pecan attendent."), `git rm` the old scene 1 and 5 captures, add the mod to `wsl-deps.sanctuary.map`, refile 1 and 5.
  - Ideas from NPT steps and NSB catalogues (sub-agent read, unverified, none applied): hide `DarklightBrazier` near the hut braziers; `carries the item` for the cup; `the animal ... lies at (x, y) facing` for Yuki; `face is held neutral` plus smile kit; `sits on the building`; pajamas `Apparel_PonpecoPajamaB` for scene 5; head close-up `the camera frames the head of`; PlantPot Daylily and torches; Yuki leather dog collar. Note CATALOGUE-ANIMAUX says Yuki is Soren's husky (shotlist says Nelim's). Most steps compiled, not played.
  - unverified: then reindex the five captures, burn subtitles (lines in PUBLICATION.md). Still to check: message legible at 268 px; second grey animal behind Yuki in scenes 1 and 5 (unplanned, stray husky?). Inbox kept: story-3 (scenes 2, 4 captures) and story-4 (scenes 1, 5); minify to Evidence/ after the gallery is accepted.
  - feature: after the accepted gallery, redo Art/echo-source.png by the owner, then echo_review_sha; PUBLICATION.md open points (illustration tool for AI-GENERATED, THANKS for gallery staging mods, register rows for b606, Harmony, Pickle, RimLogging, RIMMSQOL); NPT to extract More Rodents, Fort Firefighter, VGP into GALLERY-PROPS.md (done by NPT, unplayed).
  - Preview re-rendered 2026-11-07 and committed: echo no longer overlaps the tagline; echo still to redo from the accepted gallery (`echo-source.png`).
session:      local_56f20dd4-a2b6-45bf-9572-f41986d52e86
code_review_sha: 4be6004674e1a962a87e03134d6a2828a56dabae
updated:      2026-10-18, gallery reopened by the owner (two letters were not a story), shootGallery[1.0.0]
protocols_read_sha: e50928000bb957ac07098875d03ff6097b1637de
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

2026-11-06 night review (director): ALL tickets since gallery-story-7 ran in ENGLISH (no `-Language French`): the French worker was inactive, so scene 2 shows "sa épée" instead of "son épée" (only gallery-story-3 was French). Verdicts: scene 1 and 5 keep (Nelim's face hidden by the bean sack, hut dark: weak but readable), scene 2 REFUSED until replayed in French, scene 4 keep, scene 3 REFUSED (cup on floor, no rain, Yuki pose). Refiled scenes 1, 2, 4, 5 with `-Language French`: ticket 20261106-232113-341-07aa, evidence Tests/Pickle/Inbox/gallery-story-14. Scene 3 waits for NPT (`carries the item` step).

2026-11-07 ticket 07aa+f4f2 DONE (one launch, French, 5/5 passed, evidence Tests/Pickle/Inbox/gallery-story-14; gallery-story-15 never existed, scene 3 is in 14). Captures opened: 2 now "Elle pose son épée." (mod works), 3 cup in hand + rain outside + Yuki lying, 1/4/5 as before. Weak: scenes 1 and 5 Nelim's face hidden by the bean sack, hut dark. Old Inbox runs 3 to 13 deleted (superseded). Next: owner accepts or refuses, then copy to Art/Gallery-clean, reindex, subtitles, minify 14 to Evidence.

## NSB (sync 2026-11-07)

Places read: 2026-11-07 (`SANCTUAIRE-LIEUX.md` sections 1, 4, `hut` row; `EMBELLISSEMENT-LIEUX.md` hut rows; `SANCTUAIRE-CASES.md` not opened). Tribe read: 2026-11-07 (`NELIM-PROFIL.md` hair and outfit rows, `APPARENCES-CANON.md` hair row, `YUKI-PROFIL.md`, `PECAN-PROFIL.md`, `CATALOGUE-ANIMAUX.md`); `NSB-ROSTER.md`, `HUMAINS-PROFILS.md`, `GALERIE-COLONS.md` not opened.
Steps read: 2026-11-07 (NPT `steps.md` and catalogues, log since 2026-11-07: new steps are warning-log marks, terrain probe, designator labels, put-down, Gender.None head; none serves the hut scenes; catalogue changes are skin gene, face tattoo, mouth, French captions). Re-sync 2026-11-07 late (after story-18): NSB changes since are play area, houses, workshops, plant-garden, sofa-corner, dining-nook validations (`VALIDE.md`, `SANCTUAIRE-LIEUX.md`); hut row, Nelim, Yuki, Pécan sheets untouched. Nothing updated.
Rules said back: NSB places, colonists, domestic animals free (1); outside NSB needs express validation (2); colonist properties need it too (3); outfits free (4); every animal the mod ships in a shot (5).
Changed in NSB since last sync: (a) the tea room `hut` was validated 2026-11-06 in its DECORATED form (tatami without border, low Korean table, cushions, oil andon lamp). That version lives in `PickleTools/Tests/Pickle/Inbox/sanctuary-hall-rework-2/Nelims-tribe-decor-mods.rws` with `wsl-deps.sanctuary-decor-mods.map` (19 decor mods, HAR, Yuran), loaded through the DecorBase test mod. The standard fixture `Nelims-tribe` is still the OLD hut (wooden floor, table, two stools): that is what our five captures show. NSB copies nothing into the fixture until the redecoration ends. (b) Yuki is a FEMALE husky bound to Soren (collar fuchsia, `Apparel_leatherdogcollar` default); our header says "her husky" (cosmetic, nothing rewritten). (c) Pécan is in the catalogue (Vesper's, no compatible apparel).
Updated: nothing in scenarios (cosmetic or pending). Left alone: the five scenes keep the old hut; switching to the decorated save changes the floor, table, stools and cell plan of every scene, so it is the owner's call with the gallery verdict.

| Place | Shots | Changes for gallery | Last read |
|---|---|---|---|
| hut (tea-room, frame (140, 73) in NSB, ours (141, 72)) | 1-5 | DarklightBrazier hidden, own torches, harp, sword, cup, kibble, decor removed after each shot; old hut layout | 2026-11-07 |

| Colonist | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| Nelim | 1-5 | forest green CollarShirt (46,98,74) evening (matches NSB daily look idea, free by rule 4); mustard shirt (232,190,70) morning; hair canon `Roo_HD_Hair_Highpony` (no hat) | 2026-11-07 (hair, outfit rows) | none; hair unchanged, canon |

| Animal | Shots | Outfit | Last read | Exceptions |
|---|---|---|---|---|
| Yuki (husky, female, Soren's) | 1-5 | none planned (default collar) | 2026-11-07 | none, in NSB; header wording "her husky" is off |
| Pécan (FoxSquirrel, female, Vesper's) | 1, 5 | none (profile: no compatible apparel) | 2026-11-07 | none, in NSB catalogue |

| Included animal | Shot |
|---|---|
| none (the mod is a grammar worker, ships no animal) | n/a |

## Shotlist estimate (2026-11-07, scenes already played, no rewrite: Opus pass skipped, owner verdict on hut pending)

Story unchanged: one autumn evening 17h, 18h, 19h, 21h then 7h the morning after, tea room `hut`, Nelim, Yuki (Soren's husky) and Pécan (Vesper's FoxSquirrel). k ok (wide 1/5, medium 2/4, tight 3, opening 1, closing 5).

| # | a | b | c | d | e | f | g | j | plan | capture verdict |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | hut 17h Clear, 40 ticks | Rawbean sack, table, stools, shelves | Yuki + Pécan facing S | green CollarShirt (46,98,74), Highpony, smile kit | forced Ingest, just sat | wide zoom 4 (141,72) | "Le husky et Pécan attendent." | ✘ same text without mod | 4.5 | keep, weak: face hidden by sack, dark |
| 2 | 18h Clear, 25 ticks | lit TorchLamp, fire axe, LongSword, shelves | Yuki front | same shirt, smug | hauls sword to (141,74) | medium zoom 6 (140,73) | "Elle pose son épée." | son épée | 5 | accepted |
| 3 | 19h Rain at once | Harp (144,74), TorchLamp, sword, cup in hand | Yuki kept asleep | same shirt, calm | carries PsychiteTea | tight zoom 4.5 (142,72) | "Nelim écoute la harpe." | ✘ same text without mod | 4.5 | accepted |
| 4 | 21h Clear, 25 ticks | 2 torches, jar, shelves | Yuki profile | same shirt | hauls Kibble | medium zoom 5 (141,72) | "Elle sert le husky." | ✘ same text without mod | 4.5 | accepted |
| 5 | 7h Fog | sword on floor, Rawbean, no torch | Yuki + Pécan front | mustard shirt (232,190,70), Highpony | forced Ingest | wide zoom 4 bookend | "L'husky et Pécan attendent." | L'husky contrast | 5 | keep, weak: face hidden, fog unseen |

Plan mean 4.7. Weak points: j on 1, 3, 4 (a message cannot show a grammar fix that is already right); scenes 1 and 5 hide Nelim's face; hut is the old layout (decorated version validated 2026-11-06 not in the fixture).

2026-11-07 owner "ok": scenes 1 and 5 recomposed in the OLD hut (Nelim seated at the table with a MealSimple at (139, 72), starts (141, 72) facing West, face in view; old captures of 1 and 5 deleted). Ticket 20261107-171309-504-cba0, French, evidence Tests/Pickle/Inbox/gallery-story-16. Scenes 2, 3, 4 kept (gallery-story-14). Risks: `Ingest` on the meal may not seat her on the stool (cell guess from the old capture); defName MealSimple. Hut stays old until NSB copies the decorated save into the fixture.

NEXT (2026-11-07, before sleep): when RUN_DONE cba0 lands (gallery-story-16): open scenes 1 and 5, check face visible and Nelim seated; if good copy to Art/Gallery-clean as 1-meal.jpg and 5-without-the-mod.jpg (2-sword, 3-harp, 4-night already there), send the two to Virginie for her word, then reindex (old letters 1/2 in Art/Gallery become 6/7), burn subtitles from PUBLICATION.md "Gallery subtitles", minify gallery-story-16 to Evidence with a RELEASE.md. Hut stays the old layout.

2026-11-07 ticket 3954 DONE (gallery-story-17, French, 2 of 2 passed, lane azure, peak 4067 MiB). Captures opened: MealSimple now on the table (cell fix worked), Pecan and Yuki in frame, message legible. Verdict NOT ACCEPTED, sent to Virginie: Nelim still seated back to camera (ponytail and bent head, face not readable), scene 1 dark, scene 5 identical bookend (mustard shirt not readable, fog unseen). Not copied to Art/Gallery-clean. Preview re-rendered 2026-11-07 (echo no longer overlaps the tagline, lamp close to "GRAMMAR"), committed with `titleSize` default removed.

2026-11-07 score-gallery on the 5 captures: 1 REDO, 5 REDO (story-17 captures deleted, Inbox now empty of read runs), 3 REDO on decoration 3.5 (owner had accepted it, her word awaited), 2 and 4 candidates. Scenes 1 and 5: Nelim seated facing West shows no readable face from above; 5 shows neither mustard shirt nor fog. Recompose both (seat her so her face turns to the camera, ask NPT for a step if none exists), run Check-ShotlistVsScenario.ps1, refile.

2026-11-07 owner "redo 1, 3 et 5". Scenes recomposed (28b3a84): 1 and 5 Nelim stands facing South carrying MealSimple (face to the camera, Yuki follows, no sit); 3 gets two more lit torches (142, 74), (138, 70), fire axe (140, 74), zoom 5.5 at (142, 73); `3-harp.jpg` removed. Check-ShotlistVsScenario OK. Ticket 20261107-232514-250-5c15 queued (scenes 1, 3, 5, French, wsl-deps.sanctuary.map, Tests/Pickle/Inbox/gallery-story-18). At RUN_DONE: summary.json, junit.xml, open the 3 captures, score-gallery (all four notes 4/5 or REDO). Risks: `carries the item` on MealSimple and a facing South pose never played; torch cells reused from scenes 2 and 4.

2026-11-07 ticket 5c15 DONE (gallery-story-18, French, 3 of 3 passed, lane azure). score-gallery on the captures: scene 3 candidate (cup in hand, rain, 3 torches, harp, axe, sword, Yuki beside her; face small, smile not readable; decoration 4); scenes 1 and 5 REDO (MealSimple carried in front covers Nelim's torso and mouth, mustard shirt not visible, hut dark, fog unseen, 5 identical to 1 except the sword). Captures of 1 and 5 deleted. Scene 3 capture kept in Tests/Pickle/Inbox/gallery-story-18 for the owner's word. Next: recompose 1 and 5 (idea: use `puts down what it carries` so the meal lies on the table and Nelim stands facing South, torso and face free; brighter light; fog cue for 5), Check-ShotlistVsScenario, refile.

2026-11-08 scenes 1 and 5 recomposed (de4223e): `puts down what it carries` at (139, 72) after `carries the item` MealSimple, so hands free, torso, mouth and mustard shirt in view; scene 1 gets two lit TorchLamp (142, 74), (138, 70); scene 5 gets a cold PsychiteTea cup (140, 71). Check-ShotlistVsScenario OK. Ticket 20261107-234249-294-b627 queued (scenes 1 and 5, French, wsl-deps.sanctuary.map, Tests/Pickle/Inbox/gallery-story-19). Risks: put-down on the table cell (139, 72) may land on the nearest free cell; fog still not visible in the roofed hut. At RUN_DONE: summary.json, junit.xml, open both captures, score-gallery. Scene 3 awaits the owner's word.

2026-11-08 OWNER "ok j'accepte" scene 3 (gallery-story-18 capture, harp, rain, three torches, cup in hand): copied to Art/Gallery-clean/3-harp.jpg. Accepted in Gallery-clean now: 2-sword, 3-harp, 4-night. Waiting ticket b627 for scenes 1 and 5, then reindex (old letters 1/2 in Art/Gallery become 6/7), burn subtitles, minify evidence.

2026-11-08 ticket b627 DONE (gallery-story-19, French, 2 of 2 passed). Captures opened: scene 1 candidate (Nelim standing, face in view, MealSimple on table, two lit torches, Yuki and Pécan; decoration 4), copied to Art/Gallery-clean/1-meal.jpg. Scene 5 REDO on decoration 3.5 (no torch, bare floor, fog unseen in the roofed hut; capture deleted): unlit TorchLamp (142, 74), (138, 70) and fire axe (140, 74) added (0225576). Ticket 20261108-001047-955-4eae queued (scene 5 only, French, Tests/Pickle/Inbox/gallery-story-20). Rule 2026-11-08: Virginie reviews ONCE, at the end: when all 5 are candidates, send one message with all images, then 🟠 accept or refuse each. Then reindex (letters 1/2 become 6/7), burn subtitles (`Add-Subtitle.ps1`, `Check-Status gallery-subtitles`), minify evidence.

2026-11-08 resume: ticket 4eae DONE (gallery-story-20, French, 1 of 1 passed). Scene 5 capture opened: message "L'husky et Pécan attendent." legible, Nelim face and mustard shirt in view, Yuki and Pécan in frame, axe and sword on the floor, cold cup on the floor. DEFECTS: both torches show a flame (the "unlit" intent did not hold: morning looks like the evening), fog not visible in the roofed hut. Verdict scene 5 REDO on adequacy (torch out, fog), not copied to Art/Gallery-clean. Next: ask NPT for a step that puts a torch out (or use a non-lit torch def), refile scene 5; scene 1 candidate, 2/3/4 accepted.
