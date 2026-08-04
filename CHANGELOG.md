# Changelog

All notable changes to this repository are recorded here, newest first, so they're easy to skim without digging through commit history. Format loosely follows [Keep a Changelog](https://keepachangelog.com/), adapted for a project without version numbers — entries are grouped by date instead.

## 2026-08-04

### Added

- Added a `CHANGELOG.md` (this file) and a rule in `CLAUDE.md` to keep it updated on every push, so future changes are easy to catch up on. Linked it from `README.md`'s folder-structure list.
- Added the first optical-density dataset (`2_data/OD/OD_Microcystis_aeruginosa_in_COMBO.csv`) for *Microcystis aeruginosa* grown in COMBO medium.
- Added parameters for Daphnia/Chaoborus feeding: how many individuals are seeded into each new Daphnia cohort jar, the oldest a Daphnia neonate can be while still small enough for Chaoborus to eat, and the highest number of neonates ever recorded eaten in a single feeding.
- Added a calculation for how many Daphnia babies need to be fed per Chaoborus jar per day (maximum neonates eaten per larva × larvae per jar), replacing a hardcoded, unexplained number in the "Initial conditions" section of the Calculations chapter.
- Added a rule in `CLAUDE.md` to comment code following Robert C. Martin's *Clean Code* philosophy: let clear naming do the explaining, and only comment the *why* that code can't express on its own.

### Changed

- Protocol files (`1_experiment/protocol/*.md`) are now knitted as child documents instead of pasted in as raw text, so they can reference the shared Parameters chapter via inline R code (e.g. pulling the "individuals per jar" number from a single source) instead of hardcoding numbers that could drift out of sync.
- Footnotes inside protocols now render right after the protocol they belong to (via Quarto's `reference-location: section`), instead of all being collected in one block at the very end of the whole rendered document.
- Cleaned up the cyanobacteria bloom definition sentence and citation formatting in the Experimental Design chapter, and removed a "finish adding icons" to-do that's now done.
- Updated figures in `1_experiment/figures/All_figures.pptx`.

### Fixed

- Removed a placeholder comment (`# ...`) on the toxin biomass parameter that carried no information — the same caveat is already covered by the existing "To do" note and Open Questions text.
- Stopped tracking `1_experiment/1_master.html` in git: the documented render workflow always moves it into `Rendered_files/Rendered.html`, so it should never actually sit at that path — it had been left committed there from before that workflow was in place.
- Added PowerPoint lock files (`~$*`) to `.gitignore` so the temporary file created while `All_figures.pptx` is open doesn't get committed by accident.
