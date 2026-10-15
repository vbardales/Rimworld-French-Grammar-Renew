# STATUS.md sections folded on 2026-10-15

Moved verbatim from STATUS.md (size rule): the Preview source migration of 2026-10-03 and the reaudit of 2026-10-11 (verdict then `writeTests`, since replaced by `playTests` closed on 2026-10-12).

## Preview source migration — 2026-10-03

Copy, typography, layout and palette are consolidated in `Art/Preview.config.json`. Canonical inputs are `Art/Preview-source.png`, `Art/echo.png` and `Art/ModIcon-source.png`; temporary renderer diagnostics belong under ignored `Art/.render/`. Existing Preview, gallery and ICO outputs were preserved because they were present and coherent; no render was run. Superseded JSON files and generated QA intermediates were removed. Nothing published.

## Reaudit, 2026-10-11 (AUDIT.md chain, `setupRepo` to `playTests`)

The old `done` is mapped to `playTests` by the table of AUDIT.md, which calls it indicative: the reaudit decides. **Verdict: `writeTests[1.0.0]`, not `playTests`.** Criterion 6.g / 7.g is not met: `translation_fr` is `partial` until Virginie has read `FRENCH_REVIEW.md` (regenerated today at `9d786c2`). Everything else of 1 to 7 holds or is minor:

- Held: 3.b DLL built and equal to the sources, 4 (Harmony the only hard dependency, `Check-TypeRefs` clean), 5 (six settings, all 64 combinations round-trip, `settings_audit: complete`), 6.a to 6.f (`Check-DefInjected` 2 keys 0 errors, `Check-XmlFields`, `Check-DefRefs`, `Check-ModBasics` pass), 7.b (`Tests/Run-Tests.ps1` 33 of 33), 7.c, 7.d (seven features, scope justified; four passes already played, 48 of 48), 7.f.
- Finding, `Check-Translations`: `FGP.RichText.Tip` differs in formatting tokens between English and French (the French text shows a literal `<color>` example the English lacks). To settle in Virginie's French reading: add the example to English or drop it from French.
- Finding, 7.a: the functional scenarios live in `TESTING.md`; AUDIT.md names `TEST_SCENARIOS.md`. Naming gap, to settle with the Audit workflow session.
- Finding, 3.c: `CHANGELOG.md` heads the pending section `## [1.0.0] - unreleased`, not `## [Unreleased]`.
- Finding, 2.a / 2.f: `Art/ModIcon-source.png` differs from its committed version (modified 2026-10-02, not by this session), and `Art/` holds `ModIcon-original.png` and `ModIcon-signature-candidate.png`, untracked. The source is Virginie's: left untouched, decision hers.
- Mod root: `_tools/` moved to `Tests/` and `.build/` replaced by `Source/obj` and `bin` (commit `253ccc3`).

