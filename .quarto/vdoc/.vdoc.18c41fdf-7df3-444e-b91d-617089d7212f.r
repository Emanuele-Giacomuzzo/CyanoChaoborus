#
#
#
#
#
#| label: parameters

# DW = dry weight

# 🌐 General 

Treatments <- 4
Replicates <- 4

# 🪜 Infrastructure

Shelves <- 16
Max_weight_per_shelf_kg <- 20
Small_jar_liquid_litres <- 0.08
Small_jar_with_liquid_kg <- 0.2
Large_jar_liquid_litres <- 0.8
Large_jar_with_liquid_kg <- 1.5
Large_jar_diameter_cm <- 9

# 🔥 Autoclaving

Autoclave_temperature_C <- 121 # Vana & Claudia defined this, as it's written on the autoclave at the Marine Biology Section, but I'm not sure where they got this from
Autoclave_solids_minutes <- 25 # Vana & Claudia defined this, as it's written on the autoclave at the Marine Biology Section, but I'm not sure where they got this from
Autoclave_1L_liquids_minutes <- 45 # Vana & Claudia defined this, as it's written on the autoclave at the Marine Biology Section, but I'm not sure where they got this from
Autoclave_2L_liquids_minutes <- 60 # I always autoclaved COMBO in 2L bottles for this amount of time and never had a problem with it
Autoclave_5L_liquids_minutes <- 85 # Vana & Claudia defined this, as it's written on the autoclave at the Marine Biology Section, but I'm not sure where they got this from

# 🦟 Chaoborus

Chaoborus_third_instar_DW_mg <- 0.79 # Lowest weight in the following paper: Parma, S. (1971). Chaoborus flavicans (Meigen)(Diptera, Chaoboridae): an autecological study.
Chaoborus_larvae_per_jar <- 10 # Initial density, within the upper range of natural peak densities (Xie et al., 1998)
Chaoborus_jar_liquid_litres <- 0.8
Chaoborus_jar_with_liquid_kg <- 1.5
Chaoborus_dead_to_alive_ratio_worst_tratment <- 2
Chaoborus_Daphnia_neonates_eaten_per_day <- 20 #Based on female fourth instar eating 1.25 mm D. magna babies (Büns & Ratte, 1991)
Chaoborus_Daphnia_neonates_eaten_max_recorded <- 25 # Highest single-feeding count observed
Chaoborus_cyanotoxin_biodilutin_from_Daphnia <- 5 # Based on a field study where toxins were detected with HPLC/PDA: Sotton, B., Guillard, J., Anneville, O., Maréchal, M., Savichtcheva, O., & Domaizon, I. (2014). Trophic transfer of microcystins through the lake pelagic food web: Evidence for the role of zooplankton as a vector in fish contamination. Science of the Total Environment, 466, 152-163.

# 🦐 Daphnia

Daphnia_adults_per_jar <- 15 # Suggested by Jana, as in her experience it's the highest density of Daphnia in the jars that 
Daphnia_individuals_per_new_cohort_jar <- 10 # Individuals pipetted from stock into each newly created cohort jar (protocol/3_create_Daphnia_jars.md)
Daphnia_fed_C_mg_per_litre_per_day <- 2 # Applies both to treatment cohort jars (fed the diet mixes above) and to the stock jars that found them (fed *Tetradesmus obliquus* alone, ad libitum, since the stock isn't part of the diet treatments; see 4_calculations.qmd)
Daphnia_neonates_per_mother_per_5_days <- 20
Daphnia_max_age_eaten_days <- 5 # Oldest a Daphnia neonate can be while still small enough for Chaoborus to eat
Daphnia_DW_adult_mg <- 0.18 # Average weight of an individual in the following paper: Simčič, T., & Brancelj, A. (1997). Electron transport system (ETS) activity and respiration rate in five Daphnia species at different temperatures. Hydrobiologia, 360(1), 117-125.
Daphnia_cyanotoxin_biodilution_from_Microcystis <- 80 # Based on an experiment: Thostrup & Christoffersen, 1999
Vana_Daphnia_starting_jars <- 2 # Jars available in Vana's stock cultures to start propagation from; placeholder, confirm actual count with Vana
Propagation_lead_time_days <- 30 # One month, the planned lead time for propagating Daphnia before the experiment starts

# 🧪 Phytoplankton 

Phytoplankton_growth_time_days <- 10
Phytoplankton_highest_concentration_mg_C_per_litres <- 50 # Based on the fact that M. aeruginosa is the one that grows the worst and that in Thostrup & Christophersen, 1999 grew up to 150, we use 50 to be conservative. Also, Vana told me that her T. obliquus grows at 28-150 mg C / L
Phytoplankton_low_quality_food_ratio <- 0.5 # I would go for 50% of both Microcystis and Synechococcus compared to Tetradesmus. Feeding Daphnia magna with 50% of Microcystis can keep cultures dense enough to perform experiment (Macke et al., 2017) but still have a negative effect (Schwarzenberger et al., 2012, 2013). Feeding Daphnia magna with 50% of Synechococcus can also keep cultures alive but still have a negative effect (Demott & Müller-Navarra, 1997).

Phytoplankton_species_count <- 4 # M. aeruginosa, S. elongatus, N. limnetica, T. obliquus
Phytoplankton_vessels_per_species <- 3 # Replicate stock flasks/bottles kept per species at each vessel size; once at experimental scale, these 3 experimental bottles are also what's alternated between for daily Daphnia-feeding harvests (see 4_calculations.qmd)
Phytoplankton_stock_flask_volume_mL <- 50
Phytoplankton_stock_flask_inoculation_volume_mL <- 30
Phytoplankton_stock_bottle_capacity_mL <- 500
Phytoplankton_stock_bottle_liquid_mL <- 300
Phytoplankton_stock_bottle_inoculation_volume_mL <- 200
Phytoplankton_experimental_bottle_volume_mL <- 2000
Phytoplankton_inoculation_interval_days <- 7
COMBO_batch_volume_litres <- 5 # Standard batch size per the COMBO protocol (protocol/1_create_COMBO.md)

# 🍽️ Diet treatments (Daphnia raised on each mix before being fed to Chaoborus; Figure 1)

Diet_names <- c("Low-quality toxic", "Low-quality", "High-quality", "High-quality (toxin-spiked)")

# Fraction of each species by carbon in the Daphnia diet for each treatment above, in the same order
Diet_Microcystis_fraction     <- c(Phytoplankton_low_quality_food_ratio, 0, 0, 0)
Diet_Synechococcus_fraction   <- c(0, Phytoplankton_low_quality_food_ratio, 0, 0)
Diet_Nannochloropsis_fraction <- c(0, 0, 1, 1)
Diet_Tetradesmus_fraction     <- c(1 - Phytoplankton_low_quality_food_ratio, 1 - Phytoplankton_low_quality_food_ratio, 0, 0)
# The 4th treatment's toxin exposure comes from lysed M. aeruginosa dosed directly into the Chaoborus
# jar (Figure 1), not through the Daphnia diet, so it adds no Microcystis to the fractions above — see
# the To do in 4_calculations.qmd about sizing that dose.

# OD-to-carbon calibration curves (mg C/L = slope x OD_480 - intercept), fitted per species from a
# dilution series read on the spectrophotometer and filtered onto pre-combusted GF/C filters for
# carbon analysis (method: protocol/quarto/22_2026_03_27_OD_curve_Microcystis.md); used by
# calculations/food_calculator.qmd to dose Daphnia feeding (see 6_experimental_procedure.qmd)
Tetradesmus_OD_to_C_slope <- 158.32
Tetradesmus_OD_to_C_intercept <- -10.991
Synechococcus_OD_to_C_slope <- 89.419
Synechococcus_OD_to_C_intercept <- -4.463

# ☠️ Toxins

Microcystins_mg_per_g_DW_phytoplankton <- 1 # In *Microcystis aeruginosa* (strain PCC 7806, grown in N-limited modified MLA medium) depending on growth phase. See Long, B. M., Jones, G. J., & Orr, P. T. (2001). Cellular microcystin content in N-limited Microcystis aeruginosa can be predicted from growth rate. Applied and Environmental Microbiology, 67(1), 278-283. 
Microcystins_biodilution_factor_Daphnia <- 80 # *Daphnia magna* shows roughly 80-fold biodilution relative to *M. aeruginosa* — about 2 mg g⁻¹ DW in the phytoplankton versus ~0.025 mg g⁻¹ DW in *D. magna* [@thostrup1999].
Microcystins_biodilution_factor_Chaoborus <- 5 # Based on a field study where toxins were detected with HPLC/PDA: Sotton, B., Guillard, J., Anneville, O., Maréchal, M., Savichtcheva, O., & Domaizon, I. (2014). Trophic transfer of microcystins through the lake pelagic food web: Evidence for the role of zooplankton as a vector in fish contamination. Science of the Total Environment, 466, 152-163. However, the literature reports also total biodilution. @lauren-maatta1995 found no detectable microcystins in *Chaoborus* fed Microcystis-exposed *Daphnia*, though they used HPLC (a comparatively high detection limit) and did not measure toxins in the *Daphnia* themselves; @sotton2014, a field study using HPLC/PDA, found roughly 5-fold biodilution from zooplankton (863 ng g⁻¹ FW) to *Chaoborus* (168 ng g⁻¹ FW); and @riehle2024, using high-resolution LC–MS/MS, detected microcystins in zooplankton (2.5–4.5 µg g⁻¹ DW) but not in *Chaoborus*.
Microcystins_detection_limit_ug_per_L <- 0.05 # Eurofins Microcystin Plate Kit detects down to 0.05 µg L⁻¹, the Abraxis Microcystins-ADDA ELISA Kit and the Beacon Microcystin ELISA Kit both detect down to 0.10 µg L⁻¹, and the Envirologix Microcystins Quantiplate Kit detects down to 0.15 µg L⁻¹.
Microcystins_extraction_volume_mL <- 1 # Placeholder — volume each freeze-dried Chaoborus sample will be extracted/reconstituted into before running the ELISA; not yet decided, so confirm against the chosen kit's protocol and update (see To do below).

# ⚖️ Biomass needed for analyses (dry biomass)

Biomass_needed_for_PUFAs_mg <- 1 # Tarn Preet Parmar, personal communication
Biomass_needed_for_sterols_mg <- 1 # Tarn Preet Parmar, personal communication
Biomass_needed_for_stoichiometry_mg <- 1.5 # Dominik Martin-Creuzburg, personal communication
# Biomass_needed_for_toxins_mg is calculated in 4_calculations.qmd from the microcystin biodilution chain, the ELISA detection limit, and Microcystins_extraction_volume_mL above.
# Biomass_needed_for_P_mg <- ... # The lowest Claudia recorded was 0.005 mg of phosphorus (but she doesn’t know for how much dry weight).
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
