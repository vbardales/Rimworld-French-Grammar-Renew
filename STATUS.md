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
workflow_stage: mountPreview[1.0.0]
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
session:      local_82860736-8ac6-4da1-8b6b-542b87bbe12e
code_review_sha: 4be6004674e1a962a87e03134d6a2828a56dabae
updated:      2026-10-15, gallery accepted (AUDIT.md 9.a to 9.f), mountPreview[1.0.0]
protocols_read_sha: 117fb9642df7e57bece2318904c644a9c39296df
---

# French Grammar Renew (unofficial): status

The session title is `frenchgrammar / done`: the packageId without `nelim.`, then the `workflow_stage`.

## Earlier audits

The audit of 2026-10-02, the verdict and the ordered gates of 2026-09-28 are in `docs/runs/2026-10-02-status-audits.md` (folded 2026-10-13). They are history; the current state is below.

## Revision and changes

- Audited: `ab7e776` (adds `PublishedFileId.txt` and the 0.1.0 entry) on top of `acf1b47`, plus the
  working-tree changes of this session, committed together with this sheet.
- **Renamed** on the owner's word, the repository (`Rimworld-French-Grammar-Renew`, the old address redirects) and the folder (`FrenchGrammarRenew`) included: name `French Grammar Renew (unofficial)` (was `French Grammar Plus`),
  packageId `nelim.frenchgrammar` (was `nelim.frenchgrammarplus`), following the collection's `Renew` for a mod
  that continues a dead one and the 2026-09-27 rule that the packageId carries neither `Renew` nor a suffix.
  Checked before changing it: the new id is free among the 126 mods of the collection; no save (29) and no
  active `ModsConfig.xml` names the old one (only old backups of it do). It touched `About.xml`, one constant in
  the C#, the settings title and shortcut label in both languages, the README and TESTING titles and
  `Art/preview.template.html`. The DLL was rebuilt and the Workshop preview recomposed with the existing
  renderer (the illustration is unchanged; only the suffix word differs). The `0.1.0` item still carries the
  old id and the old name until the next upload.
- **Wrote the Pickle suite** (`Tests/Pickle/`): seven features, four local step classes bound against the shipped
  DLL (built, 23,552 bytes, tracked), two pass maps, a README with the scope and what is left out, and
  `Check-Steps.ps1`, which compiles all 120 step patterns, the shared ones included, with Pickle's own expression
  engine (none invalid, none declared twice). Modelled on the Flavor Text Extended - Francais suite; the
  RIMMSQOL feature reuses the shared steps of `PickleTools/RimmsqolSteps` unchanged. Not played.
- Added `docs/PROTOCOLS-READ.md`, `BACKLOG.md`, `docs/runs/history.md`; archived the 2026-09-13 sections;
  wrote the `tested` criteria, the pass plan, the coverage map and the evidence rule into `TESTING.md`;
  wrote the provenance section into both `ATTRIBUTION.md` copies; refreshed `Tests/artifact-sha256.json`,
  whose `About.xml` and `Mod/LICENSE` entries were stale since the commits of 2026-09-20.
- `.gitignore` now also ignores `*.ico`, `*.dds` / `*.DDS` and the evidence folders. There was no `.dds` in
  the repository, tracked or not, and no test evidence anywhere; the two `.ico` files of the folder icons
  were untracked and now ignored.

## Checks run

| Check | Result |
|---|---|
| `_tools/Run-Tests.ps1` | 33 of 33, exit 0, before and after the rename |
| `dotnet build` to a scratch folder, before the rename | DLL SHA-256 `DE2793A5...`, **identical** to the delivered one |
| `dotnet build` of the renamed sources | delivered DLL SHA-256 `32876E61...`, the new id present in it and the old one absent |
| `Check-DefInjected`, `Check-XmlFields`, `Check-DefRefs`, `Check-TypeRefs`, `Check-ConfigErrors` | exit 0 each, before and after the rename |
| `Tests/artifact-sha256.json` against the disk | two entries stale, refreshed |
| Images | Preview 896 x 504, 490,927 B, contrast minima 14.14 / 8.83 / 7.21 / 10.67 and badge 8.72, thumbnail read at 268 px, now carries the cut-out ModIcon flush bottom-left at +15° as an HTML layer above the veil (see #3), after three owner-rejected passes; ModIcon 128 x 128, 26,932 B, read at 32 px |
| Explorer folder icons | `desktop.ini` at the root and in `Mod/` point at `Art/ModIcon.ico` and `Art/Preview.ico`, which exist; attributes as required. `Art/Preview.ico` still shows the old suffix (local only) |
| Game | **not started, not touched.** No RimWorld was launched, no Pickle request filed |

## Translation audit

Audited 2026-09-30 against `FrenchGrammarRenew` revision `23a392e`. Inventory: two files carry player-facing
text, `Mod/Languages/*/Keyed/FrenchGrammarPlus.xml` (15 keys: the settings title, scope note, six setting
labels and their tips, and the data-files note) and `Mod/Languages/*/DefInjected/MainButtonDef/FrenchGrammarPlus.xml`
(the hidden shortcut's label and description; the mod's C# reads no other translatable text — the two word
lists in `Data/` are grammar data, not player-facing strings, and `Data/pawnkind-gender.txt`'s comment lines
are never shown). Every key resolves to nonempty English and French; no duplicate keys, no fallback.

**French gender agreement (TRANSLATIONS.md, 2026-09-30): not applicable.** None of the mod's own fifteen
Keyed strings or two DefInjected fields refer to a pawn; they are settings UI text (titles, tips, a shortcut
label). No text in this mod needs the `{PAWN_gender ? ... : ... : ...}` switch, so there is nothing to flag
against that rule. (The mod's *subject* is pawn-referring grammar generated by the game's own engine, which
this mod corrects through Harmony patches, not through its own Keyed or DefInjected strings.)

**`FRENCH_REVIEW.md`** regenerated on 2026-10-02 by the collection's `scripts/Make-FrenchReview.ps1` (it replaces
the mod's own `_tools/Generate-FrenchReview.ps1`, removed), from revision `0e072bb`. Two tables, one per file, 17
rows, Original column equal to English throughout: this mod has no source in another language. No row flagged `?`.

**Systematic French review by Virginie, 2026-10-11, revision `9d786c2`: done (full reading).** No gender-switch branch needed (the species-noun gender is distinct from the pawn gender). Four corrections, applied the same day: `FGP.KindGender.Tip` (French: explicit referent), `FGP.Possessive.Tip` (English: accents kept in the example), two lines of `CHANGELOG.md` (the "Deliberately absent" item and the last paragraph). No upstream pull request needed for them (local texts of the port). `FGP.RichText.Tip` (the French text shows a literal `<color>` example the English does not) was read and left as is.

## The original mod, looked at

`b606/RimWorld-LanguageWorker_French`: public, master, created 2020-03-25, last pushed 2020-11-30, not archived,
issues enabled and none open, no licence file, GitHub reports no licence, one fork (Elevator89's). Its Workshop
item (2081845369) was last updated 2020-11-30 (Steam manifest), declares 1.0, 1.1 and 1.2, and its shipped
files and README carry no licence wording. So it is `silent`. Starting from its repository was not possible
(no licence; a history not fit for publication) and a pull request would be a rewrite, not a correction; the
reasons are in `ATTRIBUTION.md`. **No issue or pull request has been sent**: that is public and is the
owner's to allow.

## The 0.1.0 upload

`Mod/About/PublishedFileId.txt` (3806761557, dated 2026-09-23) was untracked until today. Committed and pushed as
`Add published Workshop file ID for 0.1.0`, with a `## [0.1.0]` entry in `CHANGELOG.md` under the unreleased 1.0.0.
The upload carried `Mod/` as at `acf1b47`, apart from `desktop.ini`, which appeared on 2026-09-27, after it.
`Mod/desktop.ini` is ignored by git and would be sent by an upload from the game (`BACKLOG.md`).
No tag and no GitHub release were made for it.

## Next transitions

**`done` -> `tested`: all four passes are now played, 48 of 48 scenarios green.** Pass 1 French (2026-09-28,
`20260928-140036-944-e88b`, tree `5064be6`): 31/34, 3 skipped (RIMMSQOL). Pass 2 English's first attempt
(`20260928-191312-686-d0fb`) failed one scenario on a step bug (a rich-text colour tag the step never
stripped before comparing, not a mod defect); fixed in `Tests/Pickle/Source/GrammarSteps.cs` and re-filed as
pass 2b (2026-09-29, `20260929-135332-712-b8e6`, tree `ba50a84`): 12/12. Pass 3 restart's first attempt
(`20260928-191314-912-05b4`) crashed before any scenario, `SIGSEGV` in the Mono GC, a cross-mod signature
seen on several other mods that day; re-filed unchanged as pass 3b (2026-09-30, `20260929-135532-799-5bc8`,
tree `16493a0`): 2/2. Pass 4 RIMMSQOL (2026-09-28, `20260928-191315-350-63f2`, tree `5064be6`): 3/3.
Evidence for each under `Tests/Pickle/Evidence/`, one line per run in `docs/runs/history.md`.

**Not yet done: the `done -> tested` transition itself.** The passes above satisfy "every scenario has run
and passed" and "every conditional scenario has run" (TESTING.md, "What `tested` requires"). What is not yet
re-checked against that section, item by item, with the transition then written up here the way `done` was:
"no manual test left to tick" (rows 3/4/5/8/9/10 above still read as genuinely unverified, not merely
un-run, so this needs a decision — mark them `not_applicable` with a reason, or find a way to check them —
before the box can be ticked) and "both languages, logs read, a regression pass after any correction" as a
closing statement, not scattered across passes. `translation_fr` also still needs Virginie's own review
(see the French-review entry in `remaining`), independent of this gate.

## Reservations, not blockers

- **The `hall` prefix** was dropped on 2026-09-28, at the owner's "case by case": it caught `hallucination(s)`,
  `hallucinogene` and `hallux`, which take a mute h, so the mod wrote "la hallucination" where vanilla was right.
  The list has 77 entries, and both negative tests now know those words and were seen to fail with the prefix
  back. The loanword `hall` itself, aspirated, is no longer corrected: a handful of occurrences in the game's
  French text, to add back only when a real sentence needs it (`BACKLOG.md`).
- Two aspirated-h words, `hachis` and `harissa`, were added the same day, and the `Pluralize` finding is in
  `BACKLOG.md`. The latter was verified: the game's French worker returns `recettes` for a count of 1.

## Pointers

`TESTING.md`, `Tests/RESULTS.md`, `Tests/artifact-sha256.json`, `docs/runs/history.md`, `docs/PROTOCOLS-READ.md`,
`docs/audits/2026-09-13-status-sections.md`, `BACKLOG.md`, `CHANGELOG.md`.

## Vocabulary

`stage`: `port`, `showcase`, `preTest`, `done`, `tested`, `published`, matching the AUDIT.md states of the
same names. `licence`: `open`, `silent`, `alive`, `forbidden`, `original`. `remaining`: `feature` (missing),
`defect` (a known fault), `unverified` (could not be checked). `upstream_mod_remotes`: the git repositories of
the mods this one is a French-grammar port or fork of, one list entry each; `N/A` if none is found. Distinct
from `repo` (this mod's own repository) and from `origin` (this checkout's git remote).


## Earlier sections

The Preview source migration (2026-10-03) and the reaudit of 2026-10-11 are in `docs/runs/2026-10-11-status-reaudit.md` (folded 2026-10-15).

## playTests closed, 2026-10-12 (AUDIT.md 8.a to 8.n)

Tested revision `4be6004` (the code has not changed since the passes; `Source/` last touched before them, the corrections of 2026-10-11 were texts). 8.b: `Mods/FrenchGrammarRenew` is a junction to `Mod/`, so the game runs the repository's texts; the French and English readings are done. 8.c/8.d: Pickle 1b French 02 31/31, 1c French 01 and 04 9/9, 2c English 12/12, earlier 3b restart 2/2 and 4 RIMMSQOL 3/3; every `@review` capture opened (settings page in French and English through both routes: no raw key, no clipping, four switches on, two off). 8.e: no `@wip`. 8.f: every `@requires` has run. 8.g/8.k: the fourteen scenarios are automated and green, or not applicable with reason (13); no manual check left. 8.h/8.i: settings `passed` in both languages, persistence over a restart, MainButton through RIMMSQOL; logs read. 8.l: evidence kept minified, one line per run in `docs/runs/history.md`. **8.m code review**, `0.1.0` to HEAD, `Source/` read whole (`FrenchGrammar.cs`, `Settings.cs`, `FrenchGrammarPlusMod.cs`, patches): no defect found; the regexes are guarded by their settings, the zero-width guard always leaves, no unguarded null path. `code_review_sha` set.
No full final pass here (AUDIT.md 8.c): that everything stays green after the commit is checked at `followUp`.

## Preview regenerated with the new echo, 2026-10-12

`Art/echo-preview.png` (the owner's line-art, drawn from `Art/Preview-source.png`: the open book and the lamp) replaces `Art/echo.png` and `echo-source.svg`. `Art/Preview.config.json`: `echo.file` is `echo-preview.png`, `flipX` true, and `panelTop` 24 / `panelWidth` 42 (was 16 / 48: at 48 the lamp touched the last R of GRAMMAR). Rendered by `node ../scripts/Render-Preview.cjs`: `Mod/About/Preview.png` 896 x 504, 507,6 KB, `Art/Gallery/0-preview.png` byte-identical, both `.ico` regenerated. Opened at full size and at 268 px: title, tagline and badge clear, the book reads at 268 px, the lamp is small but legible. Still to do at `mountPreview`: validate the echo against the accepted gallery (`echo_review_sha`), and the GitHub social preview (`social_preview_sha256`) once the repository is public.

## Audit replayed, 2026-10-15 (AUDIT.md 1 to 9, against the current protocols)

Revision `2cbc1eb` (master, pushed), tree clean. Verdict: **`shootGallery[1.0.0]` holds; nothing moves back.** Criteria 1 to 8 are established; 9 (gallery) is the work in progress. Replayed today, offline only (no game started): `Tests/Run-Tests.ps1` 33 of 33; `Check-ModBasics` pass; `Check-XmlFields`, `Check-DefRefs`, `Check-TypeRefs` clean; `Check-DefInjected` 2 keys 0 errors; `Check-Status` 0 error.

| Step | Verdict |
|---|---|
| 1 setupRepo | validated: own repository and remote, `.gitignore`, `.gitattributes`, README, ATTRIBUTION, LICENSE, CHANGELOG; licence `silent` with `(unofficial)` suffix and the `UNOFFICIAL` paragraph first in the description; names consistent (`nelim.frenchgrammar`) |
| 2 makeSources | validated: both sources and `echo-preview.png` in `Art/`, `ModIcon.png` 128 x 128, `Preview.png` 896 x 504 under 1 MiB, `Art/Gallery/0-preview.png` byte-identical to it. `ModIcon.png` is 31,148 B: fine, the weight is only a guard against the absurd (AUDIT.md 2.c, 2026-10-13) |
| 3 code | validated: no `feature` left for the version; DLL equal to the sources (checked 2026-10-11, `Source/` untouched since). Reservations: CHANGELOG heads the section `[1.0.0] - unreleased`, not `[Unreleased]`, and its first paragraph still says "a few manual checks remain", which is out of date |
| 4 declareDependencies | validated: Harmony the only hard dependency (`brrainz.harmony`, Workshop id given), `loadAfter` Harmony and Core, no `LoadFolders`, `Check-TypeRefs` clean today |
| 5 settings | validated: `settings_audit: passed` (six settings, 64 combinations round-tripped, MainButton hidden by default, both languages in game) |
| 6 localize | validated, with one point **corrected**: `Check-Translations` reports `FGP.RichText.Tip` (French shows a literal `<color>` example the English lacks). That is not a defect: Virginie read it on 2026-10-11 and left it as is (see the French review above). The linter finding is an accepted exception, not to be re-opened |
| 7 writeTests | validated: tests replayed today, Pickle suite written (eight features with the gallery one) and its scope justified. Naming gap: AUDIT.md says `TEST_SCENARIOS.md`, the mod keeps its scenarios in `TESTING.md` (to settle with the Audit workflow session) |
| 8 playTests | validated: 8.a tested `4be6004`, and `Mod/` changed since only through `Preview.png`; 8.c to 8.l as written in "playTests closed"; 8.m review done (`code_review_sha` `4be6004`; the `Mod/About` images do not reopen it, AUDIT.md 8.m, 2026-10-13) |
| 9 shootGallery | validated 2026-10-15: both candidates accepted by Virginie, `candidate` dropped, indexes `0-`, `1-`, `2-` contiguous (9.a to 9.e), table below |

**Rules read today that bear on the next states** (protocols of 2026-10-13 to 15): Nelim is the protagonist of a Sanctuary gallery and animals, when shown, face the camera at least once (GALLERY.md, 2026-10-14); once the gallery holds an accepted capture besides `0-`, `Art/echo-preview.png` is invalidated and the echo is redone from the gallery at `mountPreview` (`echo-source.png`, then `echo_review_sha`); the session name carries no marker, the Workflow Board computes the colour (AGENTS.md, 2026-10-15).

## Gallery, accepted 2026-10-15

| # | File | Shows | Why this order |
|---|---|---|---|
| 0 | `0-preview.png` | the Preview, byte copy of `Mod/About/Preview.png` | Steam shows the first image large |
| 1 | `1-letter-with-the-mod.png` | a letter of 12 paragraphs as the game writes it with the mod (`le husky`, `de haricots`, `son épée`, `d'Éclat`) | the mod's result first |
| 2 | `2-letter-without-the-mod.png` | the same letter with the three corrections off (`l'husky`, `d'haricots`, `sa épée`, `de Éclat`) | the contrast that explains why the mod exists |

Both are 630 x 1080, cropped sideways to the window on `window-backdrop-for-height`, under 900 KB. Next, at `mountPreview`: the provisional `Art/echo-preview.png` is invalidated by the accepted gallery (AUDIT.md 9.f); the echo is redone from it by Virginie (`echo-source.png`), then `echo_review_sha`.

**Open before `mountPreview` (closed):** the gallery (9); `social_preview_sha256` missing (AUDIT.md 10.f, repository public). **Open before `writeDocs`/`prepareRelease`:** the `About.xml` description names RimWorld 1.6 and 1.7 (owner rule of 2026-10-13: write "the latest RimWorld version"); `Check-Status` warns `rimworld-version`. `tested_1_7` absent: the 1.7 pass is not made, which is not a defect.
