# Publication sheet

**Written 2026-10-18 at `shootGallery[1.0.0]`, on the owner's word, ahead of `writeDocs`.** It holds what the Workshop page asks for and the repository holds nowhere else, so that it can be used at the next update and by whoever picks the mod up. Not yet read by the owner (`publication_changelog_review_sha` absent, due at `writeDocs`). The Workshop item exists (`3806761557`, private, created by the 0.1.0 upload); nothing has been sent since.

Rules that apply, and where they are written: `PUBLISHING.md` and `AUDIT.md` (protocols repository, read versions in `docs/PROTOCOLS-READ.md`), `Rimworld-Release-Admin/docs/OPERATIONS.md` for the CI.

## Before publishing

- **Stage.** `prepareRelease` first (`AUDIT.md` 12): gallery accepted, echo validated (`echo_review_sha`), social preview uploaded (`social_preview_sha256`, the repository is public), this sheet and `CHANGELOG.md` read by the owner, dry-run green on the exact commit.
- **Publication goes through the CI, not the in-game button.** The item exists, so the manual workflow of `Rimworld-Release-Admin/scripts/generate-publish-workflow.sh` applies. Not generated yet: `.github/` is absent from this repository. Planned command, to run from the protocols root once `writeDocs` is reached:

  ```bash
  Rimworld-Release-Admin/scripts/generate-publish-workflow.sh FrenchGrammarRenew \
    --workshop-id 3806761557 --package-id nelim.frenchgrammar \
    --release-title "French Grammar Renew {version}" \
    --require Assemblies/FrenchGrammarPlus.dll --require Data \
    --gallery-dir Art/Gallery --description-markdown PUBLICATION.md --description-heading '^## Steam description$' \
    --about-from-description
  ```

  Check the DLL file name and the folders to require against `Mod/` first (the DLL is still called `FrenchGrammarPlus.dll`, the old name; the packageId and the display name are the new ones). Only the owner approves `steam-production`. The CI creates the tag `v1.0.0` and the GitHub release after the upload, never by hand.
- **Payload.** `Mod/` as committed: `Assemblies/`, `Data/` (the two word lists), `Defs/`, `Languages/` (English and French), `About/` (`About.xml`, `Preview.png`, `ModIcon.png`, `PublishedFileId.txt`), `LICENSE`, `ATTRIBUTION.md`. `Mod/desktop.ini` is ignored by git and would travel with an in-game upload (`BACKLOG.md`): another reason to publish by CI.
- **Upstream.** The pull request to `b606/RimWorld-LanguageWorker_French` is in `BACKLOG.md` and waits for the owner's word. Not a condition of this publication.

## Steam description

**One source** (`PUBLISHING.md`, 2026-09-25): written once, in Markdown, in the block below. The CI converts it to Steam BBCode and generates the plain-text `<description>` of `Mod/About/About.xml` from it; `About.xml` must then be identical to it (`node .github/scripts/sync-about-description.mjs` once the workflow exists). No code fence inside, no double quote, no backslash, no em dash, no RimWorld version number (the page says «the latest RimWorld version»; the number lives in `supportedVersions`). The block ends with the source link.

The current `About.xml` description is the 0.1.0 text, in plain capitals. This block replaces it: it adds the three sections the audit orders after the body (`IF I GO QUIET`, `AI-GENERATED`, `THANKS`), the attribution line, Workshop links on every mod named, and the `UNOFFICIAL` paragraph in full as its first lines.

```markdown
UNOFFICIAL. This mod is published without the original author's explicit consent.
If the original author contacts me to request its removal, I undertake to take it down promptly.

Finishes the French grammar the game already does most of.

The latest RimWorld version handles elision, contraction and plurals natively: «le» before a vowel becomes «l'», «de le» becomes «du», «à les» becomes «aux». Those rules come from the old [LanguageWorker_French](https://steamcommunity.com/sharedfiles/filedetails/?id=2081845369) mod, and Ludeon adopted them. This mod deliberately does not reimplement them. It only covers what the engine still gets wrong.

## What it fixes

- **Rich text.** The engine's elision rules stop at a markup tag, so «de» before a coloured «Éclat» stays «de Éclat» instead of «d'Éclat». The same rules are applied again here, reaching across the tag. Mods that colour their labels benefit most.
- **Aspirated h.** The engine treats every h as elidable and writes «l'husky» and «d'haricots». A word list marks the aspirated ones, and they keep their article: «le husky», «de haricots».
- **Possessives.** «sa épée» becomes «son épée», as French requires before a vowel. The engine has no rule for it.
- **Gender of species.** A species noun has a gender of its own, unrelated to the sex of the animal wearing it: «la mégaraignée» stays feminine for a male. A word list gives each animal kind its gender and the generated text follows it.
- **Typography, optional and off by default.** Non-breaking spaces before : ; ! and ?. Left off because it depends on the font having those characters.

## Settings

Open Options, Mod settings, French Grammar Renew. Six switches: the four corrections above (on by default), the typography option and a verbose log (off by default). An optional shortcut in the bottom bar opens the same page. It is hidden by default and can be revealed by customization mods; none is needed to reach the settings. The two word lists are plain text files in the mod's Data folder: edit them without recompiling.

## Compatibility

Requires the latest RimWorld version and [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077). Active only when the game language is French: in any other language it changes nothing. No save data of its own, so it can be added to or removed from a game in progress.

## IF I GO QUIET

If I do not answer within a reasonable time after being contacted, anyone may freely update this or any other of my mods, including publishing a continuation of it. All credit must be preserved.

## AI-GENERATED

The code, the tests and the documentation were written with Claude Code (Anthropic), under human direction, review and testing. The French texts were read by me, and a review pass used ChatGPT (OpenAI). Stated openly: designing with these tools is my job.

## THANKS

- Adirelle and b606, for the [LanguageWorker_French](https://steamcommunity.com/sharedfiles/filedetails/?id=2081845369) rules that Ludeon adopted, and for the zero-width guard idea this mod still uses. Their repository carries no licence, so none of their code is copied.
- Andreas Pardeike, for [Harmony](https://steamcommunity.com/sharedfiles/filedetails/?id=2009463077), which this mod depends on.
- Malte Schulze, for [RIMMSQOL](https://steamcommunity.com/sharedfiles/filedetails/?id=1084452457), which the tests used to reveal and hide the settings shortcut.
- Claude Code (Anthropic) and ChatGPT (OpenAI).
- [Pickle](https://steamcommunity.com/sharedfiles/filedetails/?id=3791648678) and [RimLogging](https://steamcommunity.com/sharedfiles/filedetails/?id=3733484696) by RimWorks, and [PickleTools](https://steamcommunity.com/sharedfiles/filedetails/?id=3806142401) by the author of this mod, used for the in-game tests: development tools only, never a dependency of this mod.

No explicit permission from the original author has been established; ATTRIBUTION.md and LICENSE say what this mod studied, what it reproduced (nothing) and the exact scope of the MIT licence. Both are in the repository linked below.

[Source code on GitHub](https://github.com/vbardales/Rimworld-French-Grammar-Renew)
```

Open points on this block, to settle at `writeDocs`:

- (Fixed 2026-10-18: the double quote of the aspirated-h bullet is gone; the block holds none.)
- Pickle, RimLogging and RIMMSQOL are credited from the register's `Covers` rows (`STATUS.md`, `remaining`); check that the suite still stages them.
- The gallery captures stage body, trousers and facial-animation mods through `wsl-deps.sanctuary.map` (FemaleBodyVariants, FemaleApparelVariants, Realistic Bodies, Visible Pants, Venus Touch Waistlines, Facial Animation and its add-ons, EyeGenes3, Show Hair, SanctuaryBacklot). They dress the photographs and are not integrations of this mod. Whether they belong in `THANKS` is the owner's call (`PUBLISHING.md`, «Remerciements»).
- The illustration tool for the ModIcon and the Preview is not recorded anywhere I can read. `AI-GENERATED` must name the real tool: the owner to say.

## Steam change notes

One fenced block per version under `### <version>`; the CI sends it as written at every update. The first line carries the exact version in BBCode, or the run stops.

### 1.0.0

```
[b]1.0.0[/b]
[list]
[*] Elision across rich text tags: «d'Éclat» instead of «de Éclat», for «de», «la», «du», «des», «au» and «aux».
[*] Aspirated h keeps its article («le husky», «de haricots»), from an editable word list.
[*] Possessive before a vowel: «son épée» instead of «sa épée».
[*] A species keeps its own grammatical gender, whatever the sex of the animal.
[*] Optional French typography (non-breaking spaces), off by default.
[*] Six settings under Options, Mod settings; an optional shortcut, hidden by default, that customization mods can reveal.
[*] Active only in French. Requires Harmony.
[/list]
```

Confirm each line against the last green pass before sending: it says what the passes showed.

## Gallery (manual: no tool of the chain can send it)

The folder `Art/Gallery/` (outside `Mod/`, the workflow's `--gallery-dir`) holds only the images to upload, numbered `0-`, `1-`, `2-`, in page order. The Steam gallery is uploaded by hand. Image `0` is a byte copy of `Mod/About/Preview.png`.

**State, 2026-10-18.** The owner accepted two letter captures on 2026-10-15, then asked on 2026-10-18 for the gallery to be reworked: two windows are not a story (`GALLERY.md`, «Une seule histoire»). The series below is **planned and not yet played**; its feature is `Tests/Pickle/Mod/Pickle/Features/09-gallery-story.feature`, the plan is in its header, and the two letters (`08-gallery.feature`) stay as the last two images. The files in `Art/Gallery/` today are the old accepted ones, to be renamed and reindexed when the new series is accepted (`Art/Gallery-clean/` will hold the unsubtitled originals).

| index | file (to come) | shows |
|---|---|---|
| 0 | `0-preview.png` | the Preview, byte copy of `Mod/About/Preview.png` |
| 1 | `1-meal.jpg` | Nelim and her husky Yuki in the tea room at 17h, a message with `le husky` and `de haricots` |
| 2 | `2-sword.jpg` | Nelim with her sword and axe at 18h, a message with `son épée` and the gold `l'épée` |
| 3 | `3-door.jpg` | Nelim and Yuki at the door at 19h, a message with `d'Éclat` |
| 4 | `4-night.jpg` | the tea room at 21h, hair down, a message closing the evening |
| 5 | `5-without-the-mod.jpg` | scene 1 again with the three corrections off: `l'husky`, `d'haricots` |
| 6 | `6-letter-with-the-mod.png` | a letter of twelve paragraphs as the game writes it with the mod |
| 7 | `7-letter-without-the-mod.png` | the same letter with the corrections off |

Nobody sits or lies down in the pictures: no step for a pose exists. The weight rule applies once the series is accepted (2 MB per image, 8 MB for the folder; the scene captures are re-encoded as JPEG).

### Gallery subtitles

Each scene without an interface window carries one English line at the bottom, like a film subtitle (`GALLERY.md`, «Sous-titres»). The letters (windows) and `0-preview.png` have none. These lines are written before the pictures exist: each is re-read against its accepted picture before it is burned in with `scripts/Add-Subtitle.ps1` from `Art/Gallery-clean/`.

| index | file | line |
|---|---|---|
| 1 | `1-meal.jpg` | Nelim and Yuki share a quiet meal, and the game writes it the French way. |
| 2 | `2-sword.jpg` | Her sword stays hers: son épée, never sa épée. |
| 3 | `3-door.jpg` | Yuki follows Nelim home, and Éclat keeps its apostrophe. |
| 4 | `4-night.jpg` | The tea goes cold, the husky sleeps, and the sanctuary with it. |
| 5 | `5-without-the-mod.jpg` | The same evening with the game alone: l'husky, d'haricots. |

## Thank-you messages and the register

The register is `WORKSHOP_COMMENTS.md` at the protocols root (one main comment per recipient page for the whole collection). State on 2026-10-18, **not yet checked against the register's current rows**:

- **b606, LanguageWorker_French** (`2081845369`): absent from the register (`STATUS.md`). A row `drafted` is to be added, by path, in the protocols repository; the draft is below. This page is the source of the rules the mod finishes, and the comment says nothing the mod does not do. The author's page declares RimWorld 1.0 to 1.2 only and the repository has been quiet since 2020-11-30: the comment may well go unanswered.
- **Harmony** (`2009463077`), **Pickle** (`3791648678`), **RimLogging** (`3733484696`) and **RIMMSQOL** (`1084452457`): their rows exist; this mod is to be added to each `Covers`. Nothing to post if the row is `posted`.
- **PickleTools** (`3806142401`) and **SanctuaryBacklot**: the author's own projects, `not_applicable`.

### Thank-you comment to post (draft, 2026-10-18)

One main comment, in English, under Steam's 1,000-character limit, with this mod's link hidden behind the name. Only the owner posts, once the item is public. After posting, set the register row to `posted` with the date. Written in the owner's voice from one true detail of the page; to rework freely.

**b606 and Adirelle, LanguageWorker_French** ([Workshop 2081845369](https://steamcommunity.com/sharedfiles/filedetails/?id=2081845369)):

```
Your elision rules for French are now in the base game itself, which says everything about how good they were 🌿 I wrote a small add-on, [url=https://steamcommunity.com/sharedfiles/filedetails/?id=3806761557]French Grammar Renew[/url], for the few gaps left: elision across coloured labels, aspirated h, possessives. It copies none of your code, only the idea of the zero-width guard. Thank you b606 and Adirelle!
```

(Link to be checked once the item is public; the id is the one of the 0.1.0 upload.)

## Workshop page fields

- **Required items** (the page's «required items»): Harmony (`2009463077`). No DLC.
- **Content descriptors:** none applies. The mod changes the spelling of generated French sentences, and the ModIcon, the Preview and the gallery images were opened and looked at. Both adult-content checkboxes stay unchecked.

## Dependencies and DLC

**Hard dependency** (`modDependencies` in `About.xml`): `brrainz.harmony`, used directly by the patches in `Source/` (`steamWorkshopUrl` given). `loadAfter`: Harmony and `Ludeon.RimWorld`. No other mod, no DLC, no `LoadFolders.xml`. Supported version: the latest RimWorld version only. **No integration is claimed:** RIMMSQOL is used by the tests alone, never required. Verified in the sources and in `About.xml` (`Check-TypeRefs` clean, 2026-10-15).

## After the first real publication: do not forget

- Commit `About/PublishedFileId.txt` if it changes (it is already committed with `3806761557`).
- The item is private (Steam creates every item private): the owner subscribes, tests for real, then switches it to public by hand, subscribes to its comments and watches the activity of Harmony and of the original mod (`PUBLISHING.md`, «Mise en production d'une 1.0.0»).
- Post the thank-you comment only after the item is public: a link to a private item opens for no one.
