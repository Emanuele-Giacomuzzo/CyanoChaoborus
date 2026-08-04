# Changelog

All notable changes to this repository are recorded here, newest first, so they're easy to skim without digging through commit history. Format loosely follows [Keep a Changelog](https://keepachangelog.com/), adapted for a project without version numbers — entries are grouped by date instead.

## 2026-08-04

### Added

- Added a `CHANGELOG.md` (this file) and a rule in `CLAUDE.md` to keep it updated on every push, so future changes are easy to catch up on. Linked it from `README.md`'s folder-structure list.
- Added the first optical-density dataset (`2_data/OD/OD_Microcystis_aeruginosa_in_COMBO.csv`) for *Microcystis aeruginosa* grown in COMBO medium.
- Added parameters for Daphnia/Chaoborus feeding: how many individuals are seeded into each new Daphnia cohort jar, the oldest a Daphnia neonate can be while still small enough for Chaoborus to eat, and the highest number of neonates ever recorded eaten in a single feeding.
- Added a calculation for how many Daphnia babies need to be fed per Chaoborus jar per day (maximum neonates eaten per larva × larvae per jar), replacing a hardcoded, unexplained number in the "Initial conditions" section of the Calculations chapter.
- Added a rule in `CLAUDE.md` to comment code following Robert C. Martin's *Clean Code* philosophy: let clear naming do the explaining, and only comment the *why* that code can't express on its own.
- Added a "Carbon content from optical density" section under Daphnia in the Experimental Procedure chapter, explaining how OD readings are converted to mg C/L via a species-specific calibration curve, with fitted slope/intercept parameters for *Tetradesmus obliquus* and *Synechococcus elongatus* (added to `3_parameters.qmd`, also now referenced from `calculations/food_calculator.qmd`) and open to-dos for the still-uncalibrated *Microcystis aeruginosa* and *Nannochloropsis limnetica*.
- Added a diet-treatment table (Table 1) to the Experimental Design chapter, showing the carbon composition and toxin route of each of the 4 treatments' *Daphnia* diets, plus a paragraph clarifying that the stock *Daphnia* cultures which found each day's cohort jars are kept on a single, untreated *Tetradesmus obliquus* diet, separate from the treatment diets.
- Added *Daphnia* cohort-sizing and propagation calculations to the Calculations chapter: how many cohort jars and adult *Daphnia* are needed to keep up with *Chaoborus*' worst-case daily appetite, and how many propagation cycles it takes to grow that stock up from Vana's existing cultures within the one-month lead time.
- Added a calculation for the minimum *Chaoborus* biomass needed to detect microcystins by ELISA, replacing the previous 1 mg placeholder. It's derived from the toxin biodilution chain (phytoplankton → *Daphnia* → *Chaoborus*) and the ELISA kit's detection limit, and comes with new supporting parameters (`Microcystins_biodilution_factor_Daphnia`, `Microcystins_biodilution_factor_Chaoborus`, `Microcystins_detection_limit_ug_per_L`, `Microcystins_extraction_volume_mL`) in `3_parameters.qmd`.
- Added phytoplankton carbon-demand and daily-harvest-fraction calculations, showing how much of each experimental bottle's standing carbon needs to be harvested per day to feed the *Daphnia* cohorts, and flagging that *Nannochloropsis limnetica* leaves little headroom under the current 3-bottle rotation.
- Added a reference ([@lampert1978]) supporting the *Daphnia* feeding rate (2 mg C/L/day) used throughout the Experimental Procedure chapter.
- Added a GitHub Actions workflow (`.github/workflows/render.yml`) that renders the Quarto master document on every push or pull request touching a `.qmd` file, and a matching `build.sh` script for running the same reproducible build locally.

### Changed

- Protocol files (`1_experiment/protocol/*.md`) are now knitted as child documents instead of pasted in as raw text, so they can reference the shared Parameters chapter via inline R code (e.g. pulling the "individuals per jar" number from a single source) instead of hardcoding numbers that could drift out of sync.
- Footnotes inside protocols now render right after the protocol they belong to (via Quarto's `reference-location: section`), instead of all being collected in one block at the very end of the whole rendered document.
- Cleaned up the cyanobacteria bloom definition sentence and citation formatting in the Experimental Design chapter, and removed a "finish adding icons" to-do that's now done.
- Updated figures in `1_experiment/figures/All_figures.pptx`.
- Reordered and renumbered the book chapters so Calculations comes right after Parameters and before Experimental Design/Procedure, since those two chapters now quote calculated numbers (like cohort jar counts and diet fractions) inline rather than restating them: `2_intro.qmd` → `2_overview.qmd`, `3_experimental_design.qmd` → `5_experimental_design.qmd`, `4_experimental_procedure.qmd` → `6_experimental_procedure.qmd`, `8_bibliography.qmd` → `7_bibliography.qmd`, `9_protocols.qmd` → `8_protocols.qmd`, and the old `5_calculations.qmd` → `4_calculations.qmd`. Updated `1_master.qmd` and `README.md` to match.
- Retitled the Parameters chapter to "Parameters & calculations" and reorganized its parameter groups (Daphnia, Phytoplankton, the new Diet treatments group, Toxins, Biomass needed for analyses) to match the order they're used in the chapters that follow.
- Rewrote `2_data/README.md` from a placeholder ("Nothing here yet") into a description of what's actually in the folder.
- Restructured `2_data/OD/OD_Microcystis_aeruginosa_in_COMBO.csv`: replaced the ad hoc column names and combined "plate/species" label with separate `species`, `percentage`, and `OD480` columns, and added the *Nannochloropsis limnetica* dilution series alongside *Microcystis aeruginosa*. The *N. limnetica* OD<sub>480</sub> readings were corrected for a missed spectrophotometer autozero (the medium blank read −0.019, so 0.019 was added back to each reading), noted in `2_data/README.md`.
- Updated `calculations/food_calculator.qmd`'s introduction to reference the renumbered chapters and clarify it currently covers the "Low-quality" treatment's diet mix.

### Fixed

- Removed a placeholder comment (`# ...`) on the toxin biomass parameter that carried no information — the same caveat is already covered by the existing "To do" note and Open Questions text.
- Stopped tracking `1_experiment/1_master.html` in git: the documented render workflow always moves it into `Rendered_files/Rendered.html`, so it should never actually sit at that path — it had been left committed there from before that workflow was in place.
- Added PowerPoint lock files (`~$*`) to `.gitignore` so the temporary file created while `All_figures.pptx` is open doesn't get committed by accident.
- Fixed `Weight_per_shelf_kg` and `Jars_total` (Calculations chapter) auto-printing as bare `[1] NA` output blocks: they were left as unassigned lines at the end of their R chunk, which knitr always prints regardless of code-fold settings. Removed those bare lines there and in the two not-yet-finished `eval: false` chunks in the Experimental Procedure chapter (same latent issue, currently dormant), and tightened the `CLAUDE.md` rule on this so it names the exact pitfall (any bare variable/expression line, anywhere in a chunk) instead of just the general principle.
- Reverted `calculations/food_calculator.qmd`'s Shinylive app to plain hardcoded parameter values (mirroring `3_parameters.qmd`) instead of loading them from a `params.yml` file at "render time": the embedded app actually runs entirely client-side in the browser via webR, with no access to repository files at runtime, so that code path could never succeed and was always silently falling back to the same hardcoded defaults anyway. Removed the now-unused `params.yml`.
