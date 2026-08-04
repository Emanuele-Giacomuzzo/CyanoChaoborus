# Data folder

Raw and processed data for the project, one subfolder per data type.

- [OD/](OD/) — optical density readings paired with carbon (and nitrogen) measurements, used to fit the OD-to-carbon calibration curves in [Experimental Procedure](../1_experiment/6_experimental_procedure.qmd)
  - [OD_Microcystis_aeruginosa_in_COMBO.csv](OD/OD_Microcystis_aeruginosa_in_COMBO.csv) — dilution series for *Microcystis aeruginosa* and *Nannochloropsis limnetica* grown in COMBO medium. The *N. limnetica* OD<sub>480</sub> readings were taken without autozeroing the spectrophotometer against a medium blank; the medium itself read OD<sub>480</sub> = −0.019, so 0.019 has been added back to each of that species' readings to correct for it.

## Adding new data

Keep raw instrument exports as-is, and note any correction applied to a reading (like the autozero fix above) next to the file it applies to, rather than silently editing the numbers with no record of why.
