# The interactive effects of toxicity and poor food quality of Cyanobacteria via indirect effects on Chaoborus


<!--
This file stitches the chapters below into a single rendered document
(Rendered_files/README.md and Rendered_files/Rendered.html) so that
numbers computed in one chapter (e.g. Calculations) can be quoted
inline everywhere else, instead of being retyped by hand. The output
is named README.md so GitHub renders it automatically when browsing
into Rendered_files/. Quarto renders to 1_master.md/1_master.html in
this folder by default (do NOT set output-file to README.md directly:
Quarto stages its render at the source-relative filename before any
--output-dir move, which would clobber this folder's own README.md).
To rebuild, run from this folder:
    quarto render 1_master.qmd
    mkdir -p Rendered_files
    mv 1_master.md Rendered_files/README.md
    mv 1_master.html Rendered_files/Rendered.html
Edit the chapters themselves, not this file — this file only decides
the reading order:
    2_intro.qmd                 — project introduction (includes the repo README)
    3_experimental_design.qmd   — treatments, Chaoborus setup, end points
    4_calculations.qmd          — biomass, organism, jar, and phytoplankton quantities
    5_experimental_organisms.qmd — culturing & sourcing organisms
    6_weekly_lab_work.qmd       — weekly laboratory schedule
    7_bibliography.qmd          — references
    Appendices                  — the numbered protocol files (8_ onward)
Protocols (the numbered files from 8_ onward) are stand-alone bench
SOPs: someone opens one of them at the bench, not this whole document.
They are still included in full at the very end, under Appendices, so
this document remains a single self-contained reference — but they
are appended after the bibliography rather than woven into the main
narrative, since none of them feed a number or a claim used earlier
in the text (unlike, say, 4_calculations.qmd).
-->

# Overview of the project

Greetings, and welcome — you made it to the project folder / master
file! 🎉

This is **the** project folder / master file, the one place where you
can find all the information about the CyanoChaoborus project: the
people behind it, the big questions we’re asking, and (as the folders
below fill up) the experiments, data, analyses, and results themselves.

Whether you’re a new lab member, a curious second-year BSc student, or
just cyaonabcteria-curious, you’re in the right place. Grab a coffee ☕
and read on.

------------------------------------------------------------------------

## 👥 Who’s in this?

This project is powered by a small but very dedicated crew:

| Name | Role | Institution |
|----|----|----|
| Emanuele Giacomuzzo | Creator of this project, postdoc | University of Copenhagen, DK |
| Jana Isanta-Navarro | Professor | University of Copenhagen, DK |
| Kirsten Seestern | Professor | University of Copenhagen, DK |
| Ali Ger | Professor | Federal University of Rio Grande do Norte, Brazil |
| Irma Carvalho | Postdoc | Federal University of Rio Grande do Norte, Brazil |
| Mikael Kosmou | MSc student, writing his MSc thesis on this project | University of Copenhagen, DK |
| Tobias Hoffmann Jensen | BSc student, wrote his BSc thesis on this project | University of Copenhagen, DK |
| Tina Katherine Varis | BSc student, doing research assistanship within this project | Elon University, USA, exchange @ University of Copenhagen, DK |

Basically, a small international team spanning Denmark, Brazil, and the
US, at every career stage from BSc to PI — all digging into the same big
question 🌍

------------------------------------------------------------------------

## 🔬 What’s this project actually about?

In one sentence: **we’re trying to understand how cyanobacteria affect
the connection between aquatic and terrestrial ecosystems.**

Here’s the longer version:

Freshwater ecosystems, such as ponds, aren’t isolated from the land
around them — they’re constantly exchanging resources with it. One of
the most significant links is **emerging aquatic insects**: insects that
spend their larval life underwater and then emerge as adults, flying out
of the water and into terrestrial systems. When they emerge, they become
food for spiders, birds, bats, and all sorts of land-based predators. In
many ecosystems, this pulse of insects is a huge — and often
irreplaceable — source of energy and nutrients (e.g., Omega-3) for
terrestrial food webs. Cut off that pulse, make it low quality, or shift
when it happens, and you can ripple effects all the way up terrestrial
food webs.

Now bring in **cyanobacteria** (aka “blue-green algae”). Cyanobacterial
blooms are becoming more common worldwide due to warming and nutrient
pollution, and they can mess with aquatic food webs in (at least) two
very different ways:

1.  **Toxins** — many cyanobacteria produce toxins (like microcystins)
    that can directly harm the animals living in the water.
2.  **Poor food quality** — even when they’re not toxic, cyanobacteria
    tend to be nutritionally poor food (they lack certain essential
    fatty acids and other nutrients that animals need to grow and
    reproduce).

The tricky part: these two effects usually happen *at the same time* in
nature, so it’s really hard to know which one is actually driving the
damage. Is it the toxic, or is it the poor quality food effect (or
both)? **Teasing these two mechanisms apart is the central goal of this
project.**

## 🧪 Why Chaoborus (the phantom midge)?

To study this, we use *Chaoborus* — commonly known as the **phantom
midge** — as our model organism. A few reasons it’s a great fit:

- It’s a genus that’s **widespread around the world**, found in lakes
  and ponds across many continents, so what we learn has broad
  relevance.
- It’s a well-established model in freshwater ecology, so there’s a
  solid foundation of methods and knowledge to build on, and it’s
  (relatively) easy to keep in the lab.

By feeding *Chaoborus* different cyanobacterial diets (toxic
vs. non-toxic, nutritionally varied) and tracking how they grow,
survive, and eventually emerge, we can start to disentangle *toxicity*
from *food quality* — and understand what that means for the animals
waiting on land for their next meal to fly out of the water.

------------------------------------------------------------------------

## 📁 Folder structure

- `1_experiment/` — experimental design and protocols
- `2_data/` — raw and processed data
- `3_analysis/` — analysis scripts/code
- `4_results/` — outputs, figures, tables
- `5_other/` — everything else

------------------------------------------------------------------------

Thanks for stopping by — happy reading, and welcome aboard! 🔬🦟

## Background & hypotheses

*(to be written — motivation and hypotheses for this experiment)*

# Experimental Design

## Aim

The aim of this experiment is to investigate how cyanobacteria affect
the predator *Chaoborus* through changes in the quality and toxicity of
its prey, *Daphnia magna* (Figure 1).

## Treatments

*Daphnia* are raised on one of four diets, fully crossing toxicity and
food quality (Figure 1).

<p align="center">

<img src="figures/Design_1.png" alt="Figure 1: Experimental design" width="700">
</p>

<p align="center">

<strong>Figure 1.</strong> Experimental design.
</p>

## Experiment overview

*Daphnia* are first raised on their assigned diet in individual jars (1
*Daphnia* per jar, ~200 jars per diet) to build up the stock needed for
the experiment. At assembly, replicates are set up by adding *Chaoborus*
larvae together with *Daphnia* prey into individual containers; for the
treatment isolating cyanotoxin effects, lysed *Microcystis aeruginosa*
is added directly to the container at this stage rather than being part
of the *Daphnia* diet. Throughout the experiment, *Daphnia* (and, where
relevant, lysed *Microcystis*) are replenished to maintain ad libitum
feeding, while samples are collected to track three types of end points
over time: quantity (survival/death), quality (body size, cyanotoxin
content, lipid composition, and elemental stoichiometry), and timing
(time to emergence).

<p align="center">

<img src="figures/Design_2.png" alt="Figure 2: Timeline of the experiment" width="700">
</p>

<p align="center">

<strong>Figure 2.</strong> Timeline of the experiment.
</p>

## Replicates

Each treatment will be replicated **4** times *(TODO: decide whether it
should be a block design)*.

## Understanding the effects of food quality

Food is always provided **ad libitum**, meaning that the predator
(*Chaoborus*) is provided across treatments with the same amount of
carbon and the difference between diets is due to the quality or
toxicity of preys rather than from the amount of food provided. **We
need to make sure that throghout the experiment Chaborus is never
without prey.**

## Measurement of resource flow dimensions (end points)

The experiment measures three dimensions of the effects of cyanobacteria
on the emergence of *Chaoborus*: **quantity**, **quality**, and
**timing**. **The following measurements are performed only on emerged
(winged adult) individuals.**

### Quantity

- ❌ **Survival**
  - Number of emerged individuals.
  - Biomass of emerged inviduals *(TODO: discuss with Jana if it’s
    possible to determine biomass before analysing samples)*

### Quality

- 💊 **Essential lipids**
  - PUFAs and sterols analysed using Gas Chromatography.
- 🔲 **Stoichiometry**
  - C, N, and P analysed using … *(TODO: check your notes which machines
    you need for which analysis)*
- 📏 **Body size**
  - Photograph individuals for body size measurements *(method under
    development)*.
- ☠️ **Toxicity**
  - Microcystin-LR concentration measured using **ELISA** *(TODO: ELISA
    kits to be decided, ordered, and tested)*.

### Timing

- 🌳 Emergence
  - Duration of emergence.
  - Timing of emergence peak.

## *Chaoborus*

**Initial conditions.** *Chaoborus* will be sourced in the form of
third-instar larvae *(add the size of the larvae and references that say
that’s a third instar)* from IT-Ichthyo Trophic, Poland. The initial
population density of *Chaoborus* will be 10, which is above what needed
for all the different analyses (4.5 mg, see [Box 1: Sample Collection
and Storage](8_sample_collection_and_storage.md)). This larval density,
which below 50 individuals per jar (9 cm diameter) corresponds to ~8,000
individuals m⁻², which falls within the upper range of peak natural
*Chaoborus* densities reported from eutrophic, fish-free systems (Xie et
al., 1998). *Chaoborus* will be fed ad libitum by providing them with 10
Daphnia of 1 to 5 days old (see [Box 1: Sample Collection and
Storage](8_sample_collection_and_storage.md)).

**Measurements.** At the beginning of the experiment and through the
experiment we will be measuring end points telling us about the
quantity, quality, and timing of resource flows (see Table 2). We will
pull larvae, pupae, and adults together, recording the number of larvae,
pupae, and adults. During this, we will also be taking out all the extra
Daphnia in the jars *(add whether should we do this every day or every
time we change the medium of Chaoborus)*. Also, we will need to measure
the ones at the beginning as well. See Table 2 and [Box 1: Sample
Collection and Storage](8_sample_collection_and_storage.md).

# Calculations

This chapter walks through the reasoning behind the experiment’s scale —
how many *Chaoborus*, *Daphnia*, and jars are needed, and how much
phytoplankton has to be cultured to support them. Each section states
the assumptions behind a number, then computes it, so that the
derivation stays reproducible and any figure quoted elsewhere in this
book can be traced back to its source instead of being retyped by hand.
Assumptions carry a confidence rating (`High` / `Medium` / `Low`)
reflecting how well they are supported by prior literature or in-house
data. The underlying R code is folded by default — click “Show
calculation code” under any section to inspect it.

## How much *Chaoborus* biomass is needed?

Every measurement (PUFAs, sterols, stoichiometry, and cyanotoxin
content) requires a minimum amount of dry biomass. Lipid analysis (fatty
acids and sterols combined) needs 2 mg, a high-confidence figure based
on Tarn’s personal communication. Stoichiometry needs a further 1.5 mg,
also high confidence, based on Dominik’s personal communication (email
to Claudia). Toxin analysis is assumed to need 1 mg, but this figure
carries low confidence: actual detectability depends on the ELISA kit
used and the Microcystin concentration in the tissue, and Jing
recommended running a validation test before relying on it.

``` r
Biomass_needed_for_lipids_mg <- 2
Biomass_needed_for_stoichiometry_mg <- 1.5
Biomass_needed_for_toxins_mg <- 1

Biomass_needed_total_mg <- Biomass_needed_for_lipids_mg +
  Biomass_needed_for_stoichiometry_mg +
  Biomass_needed_for_toxins_mg

Biomass_needed_total_mg
```

    [1] 4.5

So each measurement (one treatment × one replicate, at one time point)
requires **4.5 mg** of dry *Chaoborus* biomass across the three
analyses.

> **Open question.** This is a flat, literature-independent target. The
> biodilution and ELISA-sensitivity numbers below describe *why* toxin
> biomass is hard to guarantee, but they haven’t yet been folded into
> `Biomass_needed_for_toxins_mg` — right now that value is a placeholder
> pending the validation test. Treat the two as separate lines of
> evidence until reconciled.

### Context: biodilution of microcystins along the food chain

*Microcystis aeruginosa* (strain PCC 7806, grown in N-limited modified
MLA medium) contains 0.7–7 mg microcystins g⁻¹ DW depending on growth
phase (Long et al., 2001). Moving up the food chain, *Daphnia magna*
shows roughly 80-fold biodilution relative to *M. aeruginosa* — about 2
mg g⁻¹ DW in the algae versus ~0.025 mg g⁻¹ DW in *D. magna* (Thostrup &
Christoffersen, 1999). Evidence for *Chaoborus* spp. is more mixed:
Laurén-Määttä et al. (1995) found no detectable microcystins in
*Chaoborus* fed Microcystis-exposed *Daphnia*, though they used HPLC (a
comparatively high detection limit) and did not measure toxins in the
*Daphnia* themselves; Sotton et al. (2014), a field study using
HPLC/PDA, found roughly 5-fold biodilution from zooplankton (863 ng g⁻¹
FW) to *Chaoborus* (168 ng g⁻¹ FW); and Riehle et al. (2024), using
high-resolution LC–MS/MS, detected microcystins in zooplankton (2.5–4.5
µg g⁻¹ DW) but not in *Chaoborus*.

### Context: ELISA kit detection limits

Detection limits vary across commercial ELISA kits: the Eurofins
Microcystin Plate Kit detects down to 0.05 µg L⁻¹, the Abraxis
Microcystins-ADDA ELISA Kit and the Beacon Microcystin ELISA Kit both
detect down to 0.10 µg L⁻¹, and the Envirologix Microcystins Quantiplate
Kit detects down to 0.15 µg L⁻¹.

### From biomass to number of larvae

Converting that biomass target into a number of larvae starts from the
dry weight of a single third-instar *Chaoborus*: 0.79 mg, the lowest
weight reported for *Chaoborus flavicans* by Parma (1971), used here as
a high-confidence, conservative figure. Because not every larva placed
in a jar survives to the sampling point, the raw larvae-per-measurement
figure is inflated by the worst-case mortality ratio observed across
treatments — a 2-fold dead:alive ratio, held with medium confidence.

``` r
Chaoborus_third_instar_dry_weight_mg <- 0.79
Dead_alive_ratio_Chaoborus_worst_treatment <- 2

Treatments <- 4
Replicates <- 4

# Larvae needed for one measurement (one treatment x one replicate), inflated
# by the worst-treatment mortality ratio so enough survive to the end point.
Chaoborus_one_measurement <- ceiling(
  (Biomass_needed_total_mg / Chaoborus_third_instar_dry_weight_mg) *
    Dead_alive_ratio_Chaoborus_worst_treatment
)
Chaoborus_one_measurement
```

    [1] 12

``` r
Chaoborus_total <- Chaoborus_one_measurement * Treatments * Replicates
Chaoborus_total
```

    [1] 192

``` r
Jars_Chaoborus <- Treatments * Replicates
Jars_Chaoborus
```

    [1] 16

With 4 treatments × 4 replicates, the experiment needs **12 third-instar
larvae per jar** and **192 larvae in total**, housed in **16 *Chaoborus*
jars**.

## Keeping *Chaoborus* fed: how many *Daphnia* neonates are needed?

*Chaoborus* are fed *Daphnia* neonates ad libitum. *Daphnia* stock is
built up in individual jars ahead of assembly, so the stock has to be
sized to the neonate demand implied by the *Chaoborus* population above.
Sizing that stock starts from two feeding-and-reproduction assumptions,
both held with medium confidence: a fourth-instar *Chaoborus* larva eats
about 20 neonates (1.25 mm *D. magna*) per feeding (Büns & Ratte, 1991),
and an adult *Daphnia* produces about 20 neonates per 5-day clutch
cycle. Those small stock jars, each housing a single *Daphnia*, are in
turn fed from large (1000 mL) jars, each holding 15 adult *Daphnia* — a
high-confidence figure, though the source for it still needs tracking
down (see Open questions below).

``` r
Daphnia_neonates_per_feeding <- 20
Daphnia_neonates_born_per_5_days <- 20

# Small jars: 1 Daphnia per jar, used to build up the stock.
Jars_small_Daphnia <- ceiling(
  Chaoborus_total / (Daphnia_neonates_born_per_5_days / Daphnia_neonates_per_feeding)
)
Jars_small_Daphnia
```

    [1] 192

``` r
Daphnia_per_large_jar <- 15

# Large jars: used to house adults producing the neonate stock.
Jars_big_Daphnia <- ceiling(
  Jars_small_Daphnia / (Daphnia_per_large_jar * Daphnia_neonates_born_per_5_days)
)
Jars_big_Daphnia
```

    [1] 1

This works out to **192 small (100 mL) *Daphnia* jars** and **1 large
(1000 mL) *Daphnia* jars**.

## Feeding the *Daphnia*: how much phytoplankton medium is needed?

Each 100 mL small *Daphnia* jar is treated as needing 0.08 L of medium
replaced per change (high confidence), and *Daphnia* are fed 2 mg C L⁻¹
per day ad libitum (high confidence). Converting that carbon ration into
a phytoplankton volume requires an assumed culture density, set
conservatively at 50 mg C L⁻¹ (low confidence): *M. aeruginosa*, the
slowest grower, tops out around 150 mg C L⁻¹ and *T. obliquus* grows at
28–150 mg C L⁻¹ (Thostrup & Christoffersen, 1999), so 50 mg C L⁻¹ is
used as a conservative planning figure rather than either species’ true
density.

``` r
Jars_small_Daphnia_l <- 0.08

# Volume of medium replaced each time small jars are changed.
Daphnia_total_medium_l <- Jars_small_Daphnia * Jars_small_Daphnia_l
Daphnia_total_medium_l
```

    [1] 15.36

``` r
Phyto_C_to_Daphnia_mg_per_l <- 2
Phytoplankton_concentration_mgC_l <- 50

Daily_phytoplankton_volume_l <- (Daphnia_total_medium_l * Phyto_C_to_Daphnia_mg_per_l) /
  Phytoplankton_concentration_mgC_l
Daily_phytoplankton_volume_l
```

    [1] 0.6144

Changing the small *Daphnia* jars uses **15.36 L** of medium each time,
which requires culturing **0.61 L of phytoplankton per day** at the
assumed culture density.

## Infrastructure: shelves and total jar count

Checking that jar weight stays within shelf limits uses high-confidence
weight figures for each jar type, including its liquid: 1.5 kg for a
*Chaoborus* jar, 0.2 kg for a small *Daphnia* jar, and 1.5 kg for a
large *Daphnia* jar. Of the 18 shelves available in the lab, 2 are
allocated to Claudia’s work, leaving 16 for this experiment.

``` r
Jar_Chaoborus_weight_kg <- 1.5
Jar_small_Daphnia_weight_kg <- 0.2
Jar_large_Daphnia_weight_kg <- 1.5

Shelves <- 16

Weight_per_shelf_kg <- ceiling(
  ((Jar_Chaoborus_weight_kg * Jars_Chaoborus) +
    (Jar_small_Daphnia_weight_kg * Jars_small_Daphnia) +
    (Jar_large_Daphnia_weight_kg * Jars_big_Daphnia)) / Shelves
)
Weight_per_shelf_kg
```

    [1] 4

``` r
Jars_total <- Jars_Chaoborus + Jars_small_Daphnia + Jars_big_Daphnia
Jars_total
```

    [1] 209

Across *Chaoborus*, small, and large *Daphnia* jars, the experiment
needs **209 jars in total** (this excludes phytoplankton culture
vessels), at roughly **4 kg per shelf** across 16 shelves — within the
20 kg/shelf limit.

## Open questions

A few assumptions above are still unresolved and should be tightened
before the numbers are treated as final. The toxin biomass target
(`Biomass_needed_for_toxins_mg`) is currently a placeholder (1 mg, low
confidence) pending the validation test recommended by Jing, rather than
a figure derived from the biodilution and detection-limit context
discussed above. The cyanotoxin concentration used for biodilution is
also unsettled: Long et al. (2001) report a range of 0.7–7 mg g⁻¹ DW for
*M. aeruginosa*, but the assumption sheet currently uses a single point
value that hasn’t been reconciled with that range. The *Synechococcus
elongatus* growth time is set to 14 days, though the supporting note
describes an 11-day lab trial (5 mL inoculum in 2 L) — worth
double-checking which value is correct. Finally, no source is recorded
for the assumed 15 *Daphnia* per large jar; a rationale or reference
should be added if one exists.

# Culturing Organisms

See [Experimental design](3_experimental_design.qmd) for the Chaoborus
setup that these cultures feed into.

## Phytoplankton

We will be growing 800 Daphnia babies per day in 10 jars per day (10 L).
Therefore, we need to make sure to have enough food to feed 10 L with 2
g C/L/day.

## Zooplankton

**Stock populations.** At the beginning of the experiment, Daphnia magna
we will increase the amount of stock cultures *(add where do cultures
come from)* kept in 0.8 mL of COMBO Medium (without nutrients —
phosphorus and nitrogen — to stop the growth of algae) in 1 litre jars.
We are aiming at having about 15 adult Daphnia per jar *(add why this
number and how we keep this number)*. Every two days we change the
medium.

**Creation of single-clutch jars.** Daphnia will be monitored for when
they give birth. Throughout the experiment, we will check every *(add
how often)* if an adult has given babies. If it has, we will take it out
and write when the clutches were given so that we can make sure we are
giving two-day-old babies *(add whether you think if maybe it would be
better to have another age of the babies, say if it reduces the amount
of work)*. If the adult is pregnant, it will probably hatch within the
next 24 hours. On the day of the assembly, pregnant Daphnia are
transferred in *(add number of jars per food item)* 100 mL jars with
food, which was one of the three algal diet treatments: Microcystis
aeruginosa, Synechococcus elongatus, Nannochloropsis limnetica. Starting
from the day of the experiment, every day we feed Daphnia. This is
realistic in nature compared to the percentage of biomass made out of
cyanobacteria (ref) (bloom defined as \> 50% of biomass constituted by
cyanobacteria, Molot et al., 2014).

**Measurements.** The quality of Daphnia will be monitored throughout
the experiment. We will be collecting *(add here how many total Daphnia
are needed for analysing PUFAs, sterols, stoichiometry, and toxins)*
Daphnia each *(add here how often you want to collect Daphnia to analyse
their quality)*. We will be measuring their toxicity, PUFAs, sterols,
stoichiometry, and body size, as in Chaoborus.

## Chaoborus

**Initial conditions.** Chaoborus will be sourced in the form of
third-instar larvae *(add the size of the larvae and references that say
that’s a third instar)* from IT-Ichthyo Trophic, Poland.

------------------------------------------------------------------------

See [Box 1: Sample Collection and
Storage](8_sample_collection_and_storage.md) for the full protocol on
measuring, storing, and freeze-drying samples throughout the experiment,
and the [Bibliography](7_bibliography.qmd) for references.

# Weekly Laboratory Schedule

> \[!NOTE\] **Notation**
>
> - <div align="center">
>
>   “
>
>   </div>
>
>   indicates **the same task as in the time slot directly above** (used
>   in place of merged cells from the original Excel schedule).
>
> - Empty cells indicate **no scheduled activity**.

| Time | Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday |
|:--:|:---|:--:|:---|:--:|:---|:--:|:---|
| **08–09** | Make Zoo-COMBO 🫙 | Change Zoo-COMBO 🫙🔁 | Make Zoo-COMBO 🫙 | Change Zoo-COMBO 🫙🔁 | Make Zoo-COMBO 🫙 | Change Zoo-COMBO 🫙🔁 | Make Zoo-COMBO 🫙 |
| **09–10** |  |  |  |  |  |  |  |
| **10–11** | Feed *Chaoborus* 🥪🦟 |  | Feed *Chaoborus* 🥪🦟 |  | Feed *Chaoborus* 🥪🦟 |  | Feed *Chaoborus* 🥪🦟 |
| **11–12** |  |  |  |  |  |  |  |
| **12–13** |  |  |  |  |  |  |  |
| **13–14** |  |  |  |  |  |  |  |
| **14–15** |  |  |  |  |  |  |  |
| **15–16** | Prepare *Daphnia* food 🧪 |  | Prepare *Daphnia* food 🧪 |  | Prepare *Daphnia* food 🧪 |  | Prepare *Daphnia* food 🧪 |
| **16–17** | Feed *Daphnia* 🥪🦐 |  | Feed *Daphnia* 🥪🦐 |  | Feed *Daphnia* 🥪🦐 |  | Feed *Daphnia* 🥪🦐 |
| **17–18** | Cleaning 🧹 | Prepare *Daphnia* food 🧪 | Cleaning 🧹 | Prepare *Daphnia* food 🧪 | Cleaning 🧹 | Prepare *Daphnia* food 🧪 | Cleaning 🧹 |
| **18–19** |  | Feed *Daphnia* 🥪🦐 |  | Feed *Daphnia* 🥪🦐 |  | Feed *Daphnia* 🥪🦐 |  |
| **19–20** |  | Cleaning 🧹 |  | Cleaning 🧹 |  | Cleaning 🧹 |  |
| **20–21** |  |  |  |  |  |  |  |
| **21–22** |  | Make sure that there’s enough food to remain *ad libitum*. |  | Make sure that there’s enough food to remain *ad libitum*. |  | Make sure that there’s enough food to remain *ad libitum*. |  |

# Bibliography

References for [Experimental design](3_experimental_design.qmd),
[Culturing & sourcing organisms](5_experimental_organisms.qmd), and
related protocols.

Büns, M., & Ratte, H. T. (1991). The combined effects of temperature and
food consumption on body weight, egg production and developmental time
in Chaoborus crystallinus De Geer (Diptera: Chaoboridae): Some new
evidence for the adaptive value of vertical migration. *Oecologia*,
88(4), 470–476. https://doi.org/10.1007/BF00317708

Chen, W., Song, L., Ou, D., & Gan, N. (2005). Chronic toxicity and
responses of several important enzymes in Daphnia magna on exposure to
sublethal microcystin-LR. *Environmental Toxicology*, 20(3), 323–330.
https://doi.org/10.1002/tox.20108

DeMott, W. R. (1999). Foraging strategies and growth inhibition in five
daphnids feeding on mixtures of a toxic cyanobacterium and a green alga.
*Freshwater Biology*, 42(2), 263–274.
https://doi.org/10.1046/j.1365-2427.1999.444494.x

Kilham, S. S., Kreeger, D. A., Lynn, S. G., Goulden, C. E., & Herrera,
L. (1998). COMBO: A defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*, 377(1–3), 147–159.
https://doi.org/10.1023/A:1003231628456

Lampert, W. (1981). Inhibitory and Toxic Effects of Blue-green Algae on
Daphnia. *Internationale Revue Der Gesamten Hydrobiologie Und
Hydrographie*, 66(3), 285–298. https://doi.org/10.1002/iroh.19810660302

Laurén-Määttä, C., Hietala, J., Reinikainen, M., & Walls, M. (1995). Do
Microcystis aeruginosa toxins accumulate in the food web: A laboratory
study. *Hydrobiologia*, 304(1), 23–27.
https://doi.org/10.1007/BF02530700

Long, B. M., Jones, G. J., & Orr, P. T. (2001). Cellular Microcystin
Content in N-Limited Microcystis aeruginosa Can Be Predicted from Growth
Rate. *Applied and Environmental Microbiology*, 67(1), 278–283.
https://doi.org/10.1128/AEM.67.1.278-283.2001

Lu, N., Sun, Y., Wei, J., Gu, L., Zhang, L., Yang, Z., & Huang, Y.
(2021). Toxic Microcystis aeruginosa alters the resource allocation in
Daphnia mitsukuri responding to fish predation cues. *Environmental
Pollution*, 278, 116918. https://doi.org/10.1016/j.envpol.2021.116918

Lürling, M. (2003). Daphnia growth on microcystin-producing and
microcystin-free Microcystis aeruginosa in different mixtures with the
green alga Scenedesmus obliquus. *Limnology and Oceanography*, 48(6),
2214–2220. https://doi.org/10.4319/lo.2003.48.6.2214

Martin-Creuzburg, D., Wacker, A., & Von Elert, E. (2005). Life history
consequences of sterol availability in the aquatic keystone species
Daphnia. *Oecologia*, 144(3), 362–372.
https://doi.org/10.1007/s00442-005-0090-8

Molot, L. A., Watson, S. B., Creed, I. F., Trick, C. G., McCabe, S. K.,
Verschoor, M. J., Sorichetti, R. J., Powe, C., Venkiteswaran, J. J., &
Schiff, S. L. (2014). A novel model for cyanobacteria bloom formation:
The critical role of anoxia and ferrous iron. *Freshwater Biology*,
59(6), 1323–1340. https://doi.org/10.1111/fwb.12334

Riehle, E., Beach, D. G., Multrus, S., Parmar, T. P., Martin-Creuzburg,
D., & Dietrich, D. R. (2024). Fate of Planktothrix-derived toxins in
aquatic food webs: A case study in Lake Mindelsee (Germany).
*Ecotoxicology and Environmental Safety*, 273, 116154.
https://doi.org/10.1016/j.ecoenv.2024.116154

Sotton, B., Guillard, J., Anneville, O., Maréchal, M., Savichtcheva, O.,
& Domaizon, I. (2014). Trophic transfer of microcystins through the lake
pelagic food web: Evidence for the role of zooplankton as a vector in
fish contamination. *The Science of the Total Environment*, 466–467,
152–163. https://doi.org/10.1016/j.scitotenv.2013.07.020

Thostrup, L., & Christoffersen, K. (1999). Accumulation of microcystin
in Daphnia magna feeding on toxic Microcystis. *Fundamental and Applied
Limnology*, 145(4), 447–467.
https://doi.org/10.1127/archiv-hydrobiol/145/1999/447

Von Elert, E., Zitt, A., & Schwarzenberger, A. (2012). Inducible
tolerance to dietary protease inhibitors in Daphnia magna. *Journal of
Experimental Biology*, 215(12), 2051–2059.
https://doi.org/10.1242/jeb.068742

Wacker, A., & Martin-Creuzburg, D. (2007). Allocation of essential
lipids in Daphnia magna during exposure to poor food quality.
*Functional Ecology*, 21(4), 738–747.
https://doi.org/10.1111/j.1365-2435.2007.01274.x

Wang, S., Liu, Z., Su, X., Jin, X., Jin, H., Su, Y., Wang, J., Jeppesen,
E., Zhang, X., & Tang, Y. (2025). Differentiated fatty acid allocation
of Daphnia magna helped to maintain their population under food quality
deterioration. *Frontiers in Microbiology*, 16, 1544005.

Xie, P., Iwakuma, T., & Fujii, K. (1998). Studies on the biology of
Chaoborus flavicans (Meigen) (Diptera: Chaoboridae) in a fish-free
eutrophic pond, Japan.

# Appendices

Stand-alone bench SOPs, numbered 8 onward in the folder
(e.g. `8_sample_collection_and_storage.md`) and included here in full so
this document is self-contained. Each is a dated, independent record of
what was done on that day at the bench, not a continuous narrative —
open the section you need rather than reading start to finish.

## Box 1: Measuring, Storing, and Freeze-Drying Samples Throughout the Experiment

Referenced from [Experimental design](3_experimental_design.qmd).

Every day we’ll be looking at the following things:

1.  **Emerged Chaoborus adults**

    Once adults have emerged, we’ll take them out and measure their body
    size. To do so, we’ll take them with forceps and put them into
    Eppendorf tubes which we’ll put into the fridge to kill them. Once
    they are dead, we’ll measure their body size *(add whether under the
    microscope)* and then put them into the freezer. But then it seems
    like we are going to need a different set of tubes, as otherwise the
    other ones will be with other individuals.

2.  **Dead Chaoborus larvae**

    During the experiment we want to take care of all the samples we
    need to take both in terms of the adults and the larvae of
    Chaoborus, but also maybe of Daphnia and the algae, but let’s see.
    Okay so what we want to do is to really go for the samples to be
    taken into the different Eppendorf tubes which will be in the
    freezer. So, what we want to do is whenever we have to take samples
    to be stored, we will put them into some Eppendorf tubes which are
    labelled with the different things. Every time we put a new
    individual inside, we should have tally marks on them (卌) to keep
    track of how many are in each sample. About 50 Chaoborus larvae can
    be stored in 1.5 mL Eppendorf tubes, with the new tubes being 2 mL,
    therefore bringing up this number even higher.

3.  **Taken all together**

    Take out the water from the samples using a Pasteur pipette.

    Okay, so now let’s think about how to split the samples. So, we will
    have for each sample:

    E.g., samples for Chaoborus in bad quality treatment:

    - CN (to send to Dominik)
    - P (done in-house)
    - Sterols
    - Fatty acids
    - Toxicity

    This should be applied to five organisms, which are: Chaoborus
    adults, Chaoborus larvae, Daphnia, algae *(add whether we should
    measure Daphnia and algae and how often)*. Which means we should
    have 250 Eppendorf tubes:

    **4 Treatments × 4 Replicates × 5 Analyses × 4 Organisms = 320
    Eppendorf tubes**

    To do so, we need to basically go about it by taking the different
    individuals and putting them inside the tubes one after the other,
    one individual per analysis and then go back to it. For example,
    individual 1 goes in CN, 2 in P, 3 in sterols, 4 in fatty acids, 5
    in toxicity, 6 in CN, 7 in P, etc.

    One thing that we could actually do is after the freeze-drying, to
    have powders for the different analyses.

## 2026-01-14 — Phytoplankton COMBO medium for *Microcystis aeruginosa*

**Title:** Phytoplankton COMBO medium for *Microcystis aeruginosa*

**Date:**

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to grow
the alga *Microcystis aeruginosa*, which will be fed to *Daphnia* for
the toxic low-quality treatment. We grow *Microcystis aeruginosa* well
in advance to reconstruct an optical density (OD) curve which is
necessary to know from optical density how much carbon we are feeding to
*Daphnia*. The following protocol is to create <u>5 litres</u> of
medium.

**Material:**

Name Concentration

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 3 – Potassium phosphate dibasic (K<sub>2</sub>HPO<sub>4</sub>)
  8.71 g/l

- Stock 4 – Sodium nitrate (NaNO<sub>3</sub>) 85.01 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

- TES buffer

\*If empty, notify Vana.

**Steps:**

*Day of making the medium*

1.  Prepare a solution of water, stocks, trace elements, and vitamins.
    Every time you use a chemical, rinse the pipette tips with
    ultra-pure water.

    1.  Fill a Duran bottle with 5 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 5 ml of each stock solution and trace elements (ATE,
        ANIMATE).

    3.  Add 2.5 ml of VIM.

    4.  Add 0.575 g of TES buffer

2.  Prepare the bottle. Add tubes, lid, and slightly let the metal part
    unscrew.

3.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

4.  Autoclave overnight.

*The day after making the medium*

1.  Get the medium out of the autoclave, screwing the metal part tight.

2.  Label the bottle.

\*\*References:\*\*

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-01-15 — Grow *Microcystis aeruginosa*

**Title:** Grow *Microcystis aeruginosa.*

**Date:** Thursday 15th January 2026

**Aim:** Inoculate *Microcystin aeruginosa* in Phytoplankton COMBO to
grow it enough so that we can calculate an optical density (OD) curve.
The climate room we refer to throughout this protocol is room 20-1-145
and is kept at 20 degrees Celsius.

**Material:**

- Phytoplankton COMBO medium

- *Microcystin* starter culture

**Steps:**

1.  Bring material from the climate room (Phytoplankton COMBO medium,
    *Microcystin* starter culture).

2.  Sterilise material.

    1)  Clean bench with ethanol.

    2)  Put the following material under UV light in the flow hood for
        20 minutes:

        - Phytoplankton COMBO medium

        - Pipettes with tips

        - Skandi burner

3.  Inoculate.

    1)  Place *Microcystis aeruginosa* starter culture under the flow
        hood.

    2)  Use Skandi burner to burn around the stock culture lid (not too
        close to the aluminium foil).

    3)  Add 1 ml of it to 2 L of Phytoplankton COMBO medium (remember to
        shake).

4.  Clean bench with ethanol.

5.  Label bottle.

6.  Aerate. Set up the *Microcystis aeruginosa* culture (in
    Phytoplankton COMBO medium) to get oxygenated by plugging its tube
    into an aquarium pump using a tube connector. Remember to first get
    air in and then open the clump.

## 2026-01-26 — Create Zoo-COMBO

**Title:** Create Zoo-COMBO

**Date:** 26th January 2026

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to feed
Daphnia. We refer to it as Zoo-COMBO. As we do not want the excessive
growth of phytoplankton, as it would clog Daphnia’s respiratory system,
we’ll leave out the source of nitrogen (sodium nitrate) and phosphorus
(potassium phosphate dibasic) present in the phytoplankton COMBO medium
(Phyto-COMBO), also not to have different growths of phytoplankton.

**Use of Zoo-COMBO:** As the Zoo-COMBO needs to air for at least 24
hours before it can be used, it’s better to make it at least two days
before using it. The following protocol is to create 10 litres (but
normally make 7 litres) of Zoo-COMBO, so if you want to create a
different amount of Zoo-COMBO, you need to adjust this protocol. Let the
Zoo-COMBO aerate for 24 hours before you can use it. You can leave the
Zoo-COMBO on the countertop for up 10-14 days.

**Material:**

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

\*If empty notify Vana.

**Steps:**

1.  If the VIM is not in the fridge, get it from the freezer, and thaw
    it with your hands.

2.  Prepare a solution of water, stocks, trace elements, and vitamins.
    <u>Every time you use a chemical, rinse the pipette tips with
    ultra-pure water</u>.

    1.  Fill a Duran bottle with 10 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 10 ml of each stock solution (1-2, 5-7) and trace elements.

    3.  Add 5 ml of VIM.

3.  Set up the bottle to get oxygenated

    1.  Place an aerating tube with an aquarium bubbler in the Duran
        bottle and plug it into an aquarium pump.

    2.  Cover with aluminium foil.

    3.  Label the bottle.

4.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

**References:**

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-01-27 — Daphnia propagation

**Title:** Daphnia propagation

**Date:** 27th January 2026

**Aim:** Propagating my *Daphnia* monoculture to have organisms for the
experiment.

**Material:**

- Zoo-COMBO medium (1 litre per new jar)

**Steps:**

1.  Bring *Daphnia* monoculture up to the experimental lab 1.

2.  Pour about **150 ml of medium in each jar** (to make it easier to
    pour, transfer the medium from the large bottle into a smaller
    Becker).

3.  Transfer the lines. For each line:

    1.  Take the two replicates and a new jar with inside medium.

    2.  Under a light and above a black cloth, use a glass pipette to
        pipette into the new jar about 7 small Daphnia, 7 medium
        Daphnia, and 7 large Daphnia from the most recent culture. If
        the most recent culture is not doing well, transfer from the
        older culture.

    3.  Put the used glass pipette into a glass jar with written “used”.

    4.  Write with a sharpy today’s date on the newest culture.

    5.  Transfer the label and lid from the older jar to the newest
        culture (if the lid has fungi growing on it, replace it).

4.  Bring Daphnia back.

    1.  Place the two replicates of each line on two different trays,
        matching their order, so that next time it’s easy to find them
        (randomise where each line is on each tray).

    2.  Bring Daphnia back to the room.

5.  Clean

    1.  Feed Jana’s fish. Keep in a large jar about 300 ml of old
        culture, filter with a funnel and filter the Daphnia from the
        old cultures, resuspend Daphnia in the 300 ml, and feed them to
        the fish.

    2.  Plug the medium back into the aquarium pump in the experimental
        lab 1.

    3.  Rinse jars with demineralised water and scrub the bottom with a
        scrub brush.

    4.  Place the used jars in the dish washer with dish-wash specific
        lab soap, press program F.

    5.  Leave glass pipette in demineralised water for 24 hours.

    6.  Rinse the pipes by pulling the pipette holder up and down 10
        times.

    7.  Bring glass pipettes to be autoclaved.

## 2026-01-27 — *Daphnia magna* transfer

**Title:** *Daphnia magna* transfer

**Date:**

**Aim:** Transferring Daphnia monocultures (as part of Daphnia
culturing, which should happen every 14 days).

**Material:**

- Medium (Daphnia COMBO medium)

**Steps:**

1.  Bring all Daphnia up to the experimental lab 1.

2.  Pour about 800 ml of medium in each jar (to make it easier to pour,
    transfer the medium from the large bottle into a smaller Becker).

3.  Transfer the lines. For each line:

    1.  Take the two replicates and a new jar with inside medium.

    2.  Under a light and above a black cloth, use a glass pipette to
        pipette into the new jar about 10 big Daphnia from the most
        recent culture.

    3.  Put the used glass pipette into a glass jar with written “used”.

    4.  Write with a sharpy today’s date on the newest culture.

    5.  Transfer the label and lid from the older jar to the newest
        culture (if the lid has fungi growing on it, replace it).

4.  Bring Daphnia back.

    1.  Place the two replicates of each line on two different trays,
        matching their order, so that next time it’s easy to find them
        (randomise where each line is on each tray).

    2.  Bring Daphnia back to the room.

5.  Clean

    1.  Feed Jana’s fish. Keep in a large jar about 300 ml of old
        culture, filter with a funnel and filter the Daphnia from the
        old cultures, resuspend Daphnia in the 300 ml, and feed them to
        the fish.

    2.  Plug the medium back into the aquarium pump in the experimental
        lab 1.

    3.  Rinse jars with demineralised water and scrub the bottom with a
        scrub brush.

    4.  Place the used jars in the dish washer with dish-wash specific
        lab soap, press program F.

    5.  Leave glass pipette in demineralised water for 24 hours.

    6.  Rinse the pipes by pulling the pipette holder up and down 10
        times.

    7.  Bring glass pipettes to be autoclaved.

## 2026-02-02 — Grow *Nannochloropsis limnetica*

**Title:** Grow *Nannochloropsis limnetica.*

**Date:** Monday 2nd February 2026

**Aim:** Inoculate *Nannochloropsis limnetica* (SAG 18.99) in
Phytoplankton COMBO to grow it enough so that we can calculate an
optical density (OD) curve. The climate room we refer to throughout this
protocol is room 20-1-145 and is kept at 20 degrees Celsius.

**Material:**

- Phytoplankton COMBO medium

- *Nannochloropsis limnetica* stock culture

**Steps:**

1.  Sterilise material.

    1)  Clean bench with ethanol.

    2)  Put the following material under UV light in the flow hood for
        20 minutes:

        - Phytoplankton COMBO medium

        - Pipettes with tips

        - Skandi burner

        - Tubes to be attached inside the bottle.

2.  Attach tubes inside the bottle.

3.  Inoculate.

    1)  Place *Nannochloropsis limnetica* starter culture under the flow
        hood.

    2)  Use Skandi burner to burn around the stock culture lid.

    3)  Add 10 ml of it to 2 L of Phytoplankton COMBO medium (remember
        to shake).

4.  Clean bench with ethanol.

5.  Label bottle.

6.  Aerate. Set up the *Microcystis aeruginosa* culture (in
    Phytoplankton COMBO medium) to get oxygenated by plugging its tube
    into an aquarium pump using a tube connector. Remember to first get
    air in and then open the clump.

## 2026-02-03 — Phytoplankton COMBO medium for *Microcystis aeruginosa*

**Title:** Phytoplankton COMBO medium for *<mark>Microcystis
aeruginosa</mark>*

**Date:** Tuesday 3rd February 2026

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to grow
the alga *<mark>Microcystis aeruginosa</mark>*, which will be fed to
*Daphnia* for the <mark>toxic low-quality</mark> treatment. We grow
*<mark>Microcystis aeruginosa</mark>* well in advance to reconstruct an
optical density (OD) curve which is necessary to know from optical
density how much carbon we are feeding to *Daphnia*. The following
protocol is to create <u>10 litres</u> of medium.

**Material:**

Name Concentration

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 3 – Potassium phosphate dibasic (K<sub>2</sub>HPO<sub>4</sub>)
  8.71 g/l

- Stock 4 – Sodium nitrate (NaNO<sub>3</sub>) 85.01 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

- TES buffer

\*If empty, notify Vana.

**Steps:**

*Same day*

1.  Prepare a solution of water, stocks, trace elements, and vitamins.
    <u>Every time you use a chemical, rinse the pipette tips with
    ultra-pure water.</u>

    1.  Fill a Duran bottle with 10 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 10 ml of each stock solution and trace elements (ATE,
        ANIMATE).

    3.  Add 5 ml of VIM.

    4.  Add 1.150 g of TES buffer

2.  Prepare the bottle. Add tubes, lid, and slightly let the metal part
    unscrew.

3.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

4.  Autoclave overnight.

*Day after*

1.  Get the medium out of the autoclave, screwing the metal part tight.

2.  Label the bottle.

\*\*References:\*\*

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-02-04 — Phytoplankton COMBO medium

**Title:** Phytoplankton COMBO medium

**Date:** Wednesday 4th February 2026

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to grow
phytoplankton to then be fed to Daphnia. The following is to create 5
litres of medium, so if you want to create a different amount of medium,
you need to adjust this protocol.

**Material:**

Name Concentration

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 3 – Potassium phosphate dibasic (K<sub>2</sub>HPO<sub>4</sub>)
  8.71 g/l

- Stock 4 – Sodium nitrate (NaNO<sub>3</sub>) 85.01 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

- TES buffer

\*If empty, notify Vana.

**Steps:**

*Same day*

1.  If the VIM is not in the fridge, thaw it with your hands.

<!-- -->

1.  Prepare a solution of water, stocks, trace elements, and vitamins.
    Every time you use a chemical, rinse the pipette tips with
    ultra-pure water.

    1.  Fill a Duran bottle with 5 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 5 ml of each stock solution and trace elements (ATE,
        ANIMATE). Each time you use a pipette tip, rinse it with
        distilled water before putting it back.

    3.  Add 2.5 ml of VIM. Rinse pipette tip with distilled water before
        putting it back.

    4.  Add 0.575 g of TES buffer.

2.  Prepare the bottle. Add tubes, lid, and slightly let the metal part
    unscrew.

3.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

4.  Autoclave overnight.

*Day after*

1.  Get the medium out of the autoclave, screwing the metal part tight.

2.  Label the bottle.

\*\*References:\*\*

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-02-04 — Phytoplankton propagation

**Title:** phytoplankton propagation

**Date:** Wednesday 4th February 2026

**Aim:** adding COMBO medium to phytoplankton stock cultures and
propagating them. From each stock culture, we are going to create two
new stock cultures of also approximately 40 ml.

**Material:**

☐ Phytoplankton stock cultures  
☐ Cell flasks

☐ COMBO Medium  
☐ Laminar flow bench  
☐ Spray flask with 70% ethanol

☐ Spray flask with 10% Bleach (10% of commercial concentration)  
☐ SKANDI burner  
☐ Pipette 20-200 µL and sterile tips  
☐ Paper towels

**Steps:**

1.  Prepare the laminar flow bench.

    1)  Clean the laminar flow bench with bleach, then ethanol. 

    2)  Place the material you’ll need it for transfer on the bench:

        1.  Cell flasks (labelled with culture number & today’s date)

        2.  COMBO medium

        3.  SKANDI burner

        4.  Pipette 20-200 µL and sterile tips

    3)  Turn on the UV-light for 30 minutes.

2.  Place the old cultures on the bench.

3.  For each flask where you are going to create a new culture:

    1)  Burn around the top with the SKANDI burner for a few seconds.

    2)  Fill with approximately 20 ml COMBO medium.

4.  Add old culture to each of the new cultures.

5.  Clean the laminar flow bench with bleach, then ethanol.

6.  Place the two newest cultures in front of each other in the culture
    room.

7.  Dispose of waste

    1)  Carry the oldest backup cultures upstairs to the experimental
        lab. Plug the sink and pour the contents out. Shake the flasks
        as well as you can to empty them as much as possible. Add “3
        seconds” of dish soap to the sink and mix lightly. Drain the
        sink after app. 2 hours. 

    2)  Remove the marker from the flasks with 96% ethanol.

    3)  Wash the flasks with water to make sure there are no visible
        remnants of the algae in them.

    4)  Load the flasks into the dishwasher and notify the lab
        technicians that you’ve filled the dishwasher. If the dishwasher
        isn’t free, please talk to the lab technicians. 

## 2026-02-05 — Create Zoo-COMBO

**Title:** Create Zoo-COMBO

**Date:** Thursday 5th February

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to feed
Daphnia. We refer to it as Zoo-COMBO. As we do not want the excessive
growth of phytoplankton, as it would clog Daphnia’s respiratory system,
we’ll leave out the source of nitrogen (sodium nitrate) and phosphorus
(potassium phosphate dibasic) present in the phytoplankton COMBO medium
(Phyto-COMBO), also not to have different growths of phytoplankton.

**Use of Zoo-COMBO:** As the Zoo-COMBO needs to air for at least 24
hours before it can be used, it’s better to make it at least two days
before using it. The following protocol is to create 10 litres (but
normally make 7 litres) of Zoo-COMBO, so if you want to create a
different amount of Zoo-COMBO, you need to adjust this protocol. Let the
Zoo-COMBO aerate for 24 hours before you can use it. You can leave the
Zoo-COMBO on the countertop for up 10-14 days.

**Material:**

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

\*If empty notify Vana.

**Steps:**

1.  If the VIM is not in the fridge, get it from the freezer, and thaw
    it with your hands.

2.  Prepare a solution of water, stocks, trace elements, and vitamins.
    <u>Every time you use a chemical, rinse the pipette tips with
    ultra-pure water</u>.

    1.  Fill a Duran bottle with 10 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 10 ml of each stock solution (1-2, 5-7) and trace elements.

    3.  Add 5 ml of VIM.

3.  Set up the bottle to get oxygenated

    1.  Place an aerating tube with an aquarium bubbler in the Duran
        bottle and plug it into an aquarium pump.

    2.  Cover with aluminium foil.

    3.  Label the bottle.

4.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

**References:**

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-02-10 — Phytoplankton COMBO medium

**Title:** Phytoplankton COMBO medium

**Date:** Tuesday 10th February 2026

**Aim:** Creating a COMBO medium (Kilham et al. 1998) to be used to grow
phytoplankton to then be fed to Daphnia. The following is to create 5
litres of medium, so if you want to create a different amount of medium,
you need to adjust this protocol.

**Material:**

Name Concentration

- Stock 1 – Calcium chloride dihydrate (CaCl<sub>2</sub>
  2H<sub>2</sub>O) 36.76 g/l

- Stock 2 – [Magnesium sulphate
  heptahydrate](https://www.sigmaaldrich.com/DK/en/substance/magnesiumsulfateheptahydrate2464710034998)
  (MgSO<sub>4</sub> 7H<sub>2</sub>O) 36.97 g/l

- Stock 3 – Potassium phosphate dibasic (K<sub>2</sub>HPO<sub>4</sub>)
  8.71 g/l

- Stock 4 – Sodium nitrate (NaNO<sub>3</sub>) 85.01 g/l

- Stock 5 – Sodium bicarbonate (NaHCO<sub>3</sub>) 12.60 g/l

- Stock 6 – Sodium metasilicate nonahydrate
  (Na<sub>2</sub>SiO<sub>3</sub> 9H<sub>2</sub>O) 28.42 g/l

- Stock 7 – Boric acid (H<sub>3</sub>BO<sub>3</sub>) 24.00 g/l

- Algae trace element (ATE, see Kilham et al. 1998) <sup>\*</sup>

- Animal trace elements (ANIMATE, see Kilham et al. 1998) <sup>\*</sup>

- Vitamin solution (VIM, see Kilham et al. 1998) <sup>\*</sup>

- TES buffer

\*If empty, notify Vana.

**Steps:**

*Same day*

1.  If the VIM is not in the fridge, thaw it with your hands.

<!-- -->

1.  Prepare a solution of water, stocks, trace elements, and vitamins.
    Every time you use a chemical, rinse the pipette tips with
    ultra-pure water.

    1.  Fill a Duran bottle with 5 litres of ultra-pure water (MQ)
        (rinse beforehand)

    2.  Add 5 ml of each stock solution and trace elements (ATE,
        ANIMATE). Each time you use a pipette tip, rinse it with
        distilled water before putting it back.

    3.  Add 2.5 ml of VIM. Rinse pipette tip with distilled water before
        putting it back.

    4.  Add 0.575 g of TES buffer.

2.  Prepare the bottle. Add tubes, lid, and slightly let the metal part
    unscrew.

3.  Put material back into place (stock solutions on their shelves and
    ANIMATE, ATE, and VIM in the fridge) and bring to wash the Beckers
    used to rinse the pipette tips.

4.  Autoclave overnight.

*Day after*

1.  Get the medium out of the autoclave, screwing the metal part tight.

2.  Label the bottle.

\*\*References:\*\*

Kilham, S.S., Kreeger, D.A., Lynn, S.G., Goulden, C.E. & Herrera, L.
1998. COMBO: a defined freshwater culture medium for algae and
zooplankton. *Hydrobiologia*. 377:147–59.

## 2026-02-10 — Grow *Microcystis aeruginosa* & *Synechococcus elongatus*

**Title:** Grow *Microcystis aeruginosa* & *Synechococcus elongatus.*

**Date:** Tuesday 10th February 2026

**Aim:** Inoculate *Microcystin aeruginosa* & *Synechococcus elongatus*
in Phytoplankton COMBO. The climate room we refer to throughout this
protocol is room 20-1-145 and is kept at 20 degrees Celsius.

**Material:**

- Phytoplankton COMBO medium

- *Microcystis aeruginosa* & *Synechococcus elongatus* starter cultures

**Steps:**

1.  Sterilise material.

    1)  Clean bench with ethanol.

    2)  Put the following material under UV light in the flow hood for
        20 minutes:

        - Phytoplankton COMBO medium

        - Pipettes with tips

        - Skandi burner

2.  Inoculate.

    1)  Place *Microcystis aeruginosa* starter culture under the flow
        hood.

    2)  Use Skandi burner to burn around the stock culture lid (not too
        close to the aluminium foil).

    3)  Add 5 ml of it to 2 L of Phytoplankton COMBO medium (remember to
        shake).

3.  Clean bench with ethanol.

4.  Label bottle.

5.  Aerate. Set up cultures to get oxygenated by plugging their tubes
    into an aquarium pump using a tube connector. <u>Remember to first
    get air in and then open the clump.</u>

## 2026-03-27 — Reconstruction of OD curve for *Microcystis aeruginosa* in Zoo-COMBO medium

**Title:** Reconstruction of OD curve for Microcystis aeruginosa in
Zoo-COMBO medium

**Date:** Friday 27th March 2026

**Aim:** Having the optical density of different densities of
Microcystis aeruginosa in Zoo-COMBO medium. We will then send out the
samples to know how much carbon was exactly at each density. Algae
throughout the protocol refers to Microcystis aeruginosa.

**Material:**

| *Prepared* | *Amount* | *Material* | *Purpose* |
|----|----|----|----|
| ☐ | 1 | Vacuum filtration pump | To pull phytoplankton through the GF/C filter |
| ☐ |  | Pre-combusted (2h in 550°C) GF/C filters (25mm)  | To capture the phytoplankton |
| ☐ | 2 | Forceps | To manipulate the filters |
| ☐ | 1 | 24-well plate | To store the filters to then be dried |
| ☐ | 1 | 96-well plate | To store the filters to then be analysed |
| ☐ | 1 | Pipette and tips | To pipette phytoplankton on filters |
| ☐ | 1 | Metal block | To wrap the aluminium foil around the filters |
| ☐ |  | Aluminium cartridges | To wrap the filters so that they can be already analysed |

**Steps:**

*Part I – Take out Algae & replace COMBO with Zoo-COMBO*

1.  Create *Algae* pellets.

    1.  Add 48 ml of algae to each centrifuge tube (<u>use the auto
        pipette and the pipette tip with the written the name of the
        algae</u>).

    2.  Transform the inoculated algae into a pellet by spinning the
        Falcon tubes for 10 minutes at 28,000 revolutions per minute.

    3.  Meanwhile you are waiting for the centrifuge to be done, turn on
        the spectrophotometer.

    4.  Throw out the liquid (phytoplankton COMBO) from the falcon
        tubes. <u>Do this as quickly as possible after the spinning to
        avoid resuspension.</u>

    5.  Add 48 ml of Zoo-COMBO to each of the falcon tubes. Then mix
        them into a Becker.

*Part II – Perform dilutions*

Create different bottles of 50 ml each, with Zoo-COMBO, algae in
Zoo-COMBO, and algae diluted in Zoo-COMBO at 10, 25, 35, 50, and 75% of
the original density.

| **What**                | **Algae (ml)**       | **Zoo-COMBO (ml)**     |
|-------------------------|----------------------|------------------------|
| Zoo-COMBO               | 0                    | 50                     |
| 10% of original density | 5 (50 ml \* 0.1)     | 45 (50 ml – 5 ml)      |
| 25% of original density | 12.5 (50 ml \* 0.25) | 37.5 (50 ml – 12.5 ml) |
| 35% of original density | 17.5 (50 ml \* 0.35) | 32.5 (50 ml – 17.5 ml) |
| 50% of original density | 25 (50 ml \* 0.5)    | 25 (50 ml – 25 ml)     |
| 75% of original density | 37.5 (50 ml \* 0.75) | 12.5 (50 ml – 37.5 ml) |
| Original density        | 50                   | 0                      |

*Part III – Record optical density*

Record the optical density of the algae in Zoo-COMBO at different
densities.

| **What**                | **Absorbance (480 λ)** |
|-------------------------|------------------------|
| Zoo-COMBO               |                        |
| 10% of original density |                        |
| 25% of original density |                        |
| 35% of original density |                        |
| 50% of original density |                        |
| 75% of original density |                        |
| Original density        |                        |

*Part IV – Set up the vacuum filtration pump and filtration system*

1.  Set up material.

    1.  Set up the vacuum filtration pump and connect its tube to the
        wall gas supply (the tube sucks air in, allowing the liquids to
        come more easily through the filter).

    2.  Add GF/C filters (<u>they should have been burnt at 550 °C for 2
        hours</u>) on the filtration unit using <u>clean</u>
        <u>forceps</u> (cleaned with ethanol and fire – hold forceps
        horizontally while burning).

    3.  Add cylinder weights on top of the filters.

    4.  Turn on suction slowly, checking on the filtration unit that the
        pressure doesn’t exceed 0.2 bar.

2.  Add samples to the filters. For each of the samples:

    1.  Pipette culture on the filter (remember to mix well the sample,
        and make sure that the liquid goes through, otherwise adjust the
        tap until no liquid is left on top of the filter). <u>Write down
        how much volume you added to the filter in the below table.</u>

    2.  Move the filters to a 24-well plate. To do so, turn off the
        suction, take off the cylinder weights, and move filters to the
        24-well plate with <u>clean forceps</u> (cleaned with ethanol
        and fire)[^1]. Place each sample in the plate position noted in
        the below table.

    3.  Clean. Put back cylinder weights and turn on suction. Then,
        clean meshes and cylinders by pouring ethanol and demineralised
        water on them.

3.  Repeat previous point with the remaining filters.

| **What**                | **Volume added (ml)** | **Plate position** |
|-------------------------|-----------------------|--------------------|
| Zoo-COMBO               |                       | A1                 |
| Zoo-COMBO               |                       | A2                 |
| 10% of original density |                       | A3                 |
| 10% of original density |                       | A4                 |
| 25% of original density |                       | A5                 |
| 25% of original density |                       | A6                 |
| 35% of original density |                       | B1                 |
| 35% of original density |                       | B2                 |
| 50% of original density |                       | B3                 |
| 50% of original density |                       | B4                 |
| 75% of original density |                       | B5                 |
| 75% of original density |                       | B6                 |
| Original density        |                       | C1                 |
| Original density        |                       | C2                 |

Originaldensity

Originaldensity

75%

75%

50%

50%

35%

35%

25%

25%

10%

10%

Zoo-COMBO

<figure>

<img src="media/21_2026_03_27_OD_curve_Microcystis/image2.svg" style="width:6.5in;height:4.48611in" />
<figcaption>

<p>

Zoo-COMBO
</p>

</figcaption>

</figure>

*Part V – Dry filters overnight*

Place 24-well plate with filters inside in an oven at 50 °C overnight to
dry.

## 2026-03-27 — Checking whether *Daphnia* can be raised on 50% *M. aeruginosa* + 50% *T. obliquus*

**Title:** Checking whether Daphnia can be raised on 50% M. aeruginosa +
50% T. obliquus

**Date:** Friday 27th March 2026

**Aim:** Checking whether Daphnia can be raised on 50% M. aeruginosa +
50% T. obliquus. We grow five replicates of 200 ml jars of Daphnia with
two individuals per jar. I want to mix in same density 75% Microcystis
aeruginosa and Tetradesmus obliquus, as they have same OD<sub>480</sub>
(0.65). As I’ve calculated (using Vana’s excel sheet) that we need 2.18
ml per 100 ml, then it means that we need:

5 jars \* 0.18 l/jar \* 21.8 ml food/l = 19.62 ml

So, then I’m going to make 40 ml, with 20 ml of 75% of M. aeruginosa +
20 ml of T. obliquus.

**Steps:**

1.  Create the 75% M. aeruginosa. Add to a bottle:

    1.  15 ml of M. aeruginosa.

    2.  5 ml of Zoo COMBO.

2.  Mix M. aeruginosa and T. obliquus. Add to a bottle:

    1.  20 ml of 75% of M. aeruginosa

    2.  20 ml of T. obliquus.

3.  Feed this mix to the Daphnia with 3.92 ml per jar (21.8 ml/l\* 0.18
    = 3.92 ml).

## 2026-04-14 — Create a new cohort of *Daphnia* jars

**Title:** Create a new cohort of Daphnia jars

**Date:** Tuesday 14th April 2026

**Aim:** Creating jars to start Daphnia cultures, which will be raised
on a mix of *Tetradesmus* and *Synechococcus* for 5 days and then
provided to Chaoborus.

**Material:**

- Daphnia stock populations

- Zoo-COMBO (7 L)

- Glass pipette and pipette bulb

- Daphnia light table

- Colourful tape

**Steps:**

1.  Create 7 jars with 800 ml of Zoo COMBO, labelled as “EG – Today’s
    date – Daphnia magna – Mixed diet”.

2.  Pipette 10 individuals from the stock cultures into each newly
    created jar.

3.  Use some of the Daphnia jars depleted of adults to feed the
    Chaoborus cultures.

## 2026-04-15 — Create Chaoborus jars, sample *Chaoborus* & *Daphnia*

**Title:** Create Chaoborus jars, sample *Chaoborus* & *Daphnia*

**Date:** Wednesday 15th April 2026

**Aim:** Starting the Chaoborus cultures, feeding them, and sampling
Daphnia and Chaoborus.

**Material:**

| *Prepared* | *Amount* | *Material* | *Purpose* |
|----|----|----|----|
| ☐ | 7 | Falcon tubes (50 ml) | To sample and distributing Daphnia and Chaoborus |
| ☐ |  | Eppendorf tubes | To put the Chaoborus inside |
| ☐ | 11 L | Zoo COMBO | To create new Daphnia and Chaoborus jars |
| ☐ |  | Pasteur pipette | To suck water out of samples to be frozen |
| ☐ |  | Becker (3L) | To mix the Chaoborus larvae |

**Steps:**

1.  Prepare the Daphnia.

    1.  *Create jars.* Create 7 jars with 800 ml for the new Daphnia
        cohort, labelled as “EG – Today’s date – Daphnia magna – Mixed
        diet”.

    2.  *Pipette into newly created jars.* Pipette the adults from the
        oldest cohort (5 days old babies) to the new Daphnia jars. If
        there are less than 10 adults left, take some from the Daphnia
        stock populations.

    3.  *Prepare the falcon tubes for feeding & sampling.*

        1.  Pipette 15 babies from each jar of the oldest cohort into a
            falcon tube. Do this with six falcon tubes (4 for feeding
            Chaoborus, 2 for quality analysis). Remove as much water as
            possible from the analysis falcon tubes by using a Pasteur
            pipette.

        2.  Pipette 20 individuals from one of the analysis tubes into
            one for body size analysis.

2.  Prepare the Chaoborus.

    1.  *Take off dead.* Take off the dead larvae from the stock
        cultures.

    2.  *Mix.* Mix all larvae inside a 3 L Becker.

    3.  *Sample* (remove as much water as possible using a Pasteur
        pipette).

        1.  Take 4 times 10 Chaoborus larvae and place them inside
            Eppendorf tubes labelled “CLi”.

        2.  Take 10 larvae and place them in a falcon tube for body size
            analysis.

    4.  *Create jars.* Create 4 jars with 800 ml of Zoo COMBO for
        Chaoborus to be fed with Daphnia.

    5.  *Pipette into newly created jars.* Add 10 Chaoborus larvae in
        each of the jars.

    6.  *Feed with Daphnia.* Add from the falcon tubes created at step
        1.

## 2026-04-15 — Create food mix for Daphnia

**Title:** Create food mix for Daphnia

**Date:** Tuesday 14th April 2026

**Aim:** Feeding *Tetradesmus obliquus* and *Synechococcus elongatus*
(both in Zoo-COMBO) in equal amount of carbon to Daphnia to provide them
with 2 mg C/L.

**Material:**

- *Tetradesmus obliquus* and *Synechococcus elongatus* large cultures

- 2 L COMBO medium (sterilised)

- 2 Beckers (≥ 1 L)

- Burner

**Steps:**

*Take out the food*

1.  Prepare the material.

    1.  Prepare material to be sterilised in the laminar flow hood.

        1.  Clean your hands and flow hood with ethanol.

        2.  Put a in the flow hood:

            1.  2 Beckers

            2.  COMBO (to replace what we took out)

            3.  Burner

    2.  Turn on the UV light for 20 minutes.

2.  Bring up the large algae culture. <u>When disconnecting the tube,
    use the clamp to prevent medium from entering the filter.</u>

3.  Take out algae into the Becker. For each culture:

    1.  Burn the top of the algal culture and take off its lid.

    2.  Add 1 litre of the algal culture to the Becker

    3.  Add 1 litre of COMBO to the large algal culture*.*

4.  Connect the large algal culture back to the pump.

5.  Reclean the bench with ethanol and put away stuff.

*Replace the COMBO with the Zoo-COMBO*

6.  Create algal pellets.

    1.  Add 48 ml of algae to each centrifuge tube (<u>use the auto
        pipette and the pipette tip with written the name of the species
        of algae you are working with</u>).

    2.  Transform the inoculated algae into a pellet by spinning the
        Falcon tubes for 10 minutes at 28,000 revolutions per minute.

    3.  Meanwhile you are waiting for the centrifuge to be done, turn on
        the spectrophotometer.

    4.  Throw out the liquid (phytoplankton COMBO) from the algal
        cultures. <u>Do this as quickly as possible after the spinning
        to avoid resuspension.</u>

    5.  Add 48 ml of Zoo COMBO to each of the falcon tubes. Then mix
        them into a Becker.

*Calculate how much you need to mix and give to the Daphnia*

7.  Measure the optical density (OD) of the algae using a
    spectrophotometer (needs 15 minutes from when you turn it on to when
    you can use it). <u>The cuvette is kept inside ethanol and is washed
    first with demi water and then again with ethanol.</u> The cuvette
    is cleaned with specific paper.

    1.  Measure Zoo-COMBO alone by selecting photometric \> enter.

    2.  Measure the algae by selecting GOTOWL: 480 nm; start.

8.  Mix the algae so that half of carbon comes from *Tetradesmus* and
    half comes from *Synechococcus*.

9.  Provide with 2 mg C/L the Daphnia cultures kept on mixed diet.

## 2026-04-15 — Phytoplankton sample of day 0

**Title:** Phytoplankton sample of day 0

**Date:** Wednesday 15th April 2026

**Aim:** Sampling the phytoplankton we are providing the Daphnia with.

**Material:**

| *Prepared* | *Amount* | *Material* | *Purpose* |
|----|----|----|----|
| ☐ | 1 | Mix of Tetradesmus + Synechococcus in <u>Zoo-COMBO</u> | To be sampled |
| ☐ | 1 | Tetradesmus in <u>Zoo-COMBO</u> | To be sampled |
| ☐ | 1 | Synechococcus in <u>Zoo-COMBO</u> | To be sampled |
| ☐ | 1 | Vacuum filtration pump | To pull phytoplankton through the GF/C filter |
| ☐ |  | Pre-combusted (2h in 550°C) GF/C filters (25mm)  | To capture the phytoplankton |
| ☐ | 2 | Forceps | To manipulate the filters |
| ☐ | 1 | 24-well plate | To store the filters to then be dried |
| ☐ | 1 | 96-well plate | To store the filters to then be analysed |
| ☐ | 1 | Pipette and tips | To pipette phytoplankton on filters |
| ☐ | 1 | Metal block | To wrap the aluminium foil around the filters |
| ☐ |  | Aluminium cartridges | To wrap the filters so that they can be already analysed |

**Steps:**

1.  Set up material.

    1.  Set up the vacuum filtration pump and connect its tube to the
        wall gas supply (the tube sucks air in, allowing the liquids to
        come more easily through the filter).

    2.  Add GF/C filters (<u>they should have been burnt at 550 °C for 2
        hours</u>) on the filtration unit using <u>clean</u>
        <u>forceps</u> (cleaned with ethanol and fire – hold forceps
        horizontally while burning).

    3.  Add cylinder weights on top of the filters.

    4.  Turn on suction slowly, checking on the filtration unit that the
        pressure doesn’t exceed 0.2 bar.

2.  Add samples to the filters. For each of the samples:

    1.  Pipette culture on the filter (remember to mix well the sample,
        and make sure that the liquid goes through, otherwise adjust the
        tap until no liquid is left on top of the filter). <u>Write down
        how much volume you added to the filter in the below figure.</u>

<img src="media/26_2026_04_15_sample_phyto/image1.png" style="width:4.88889in;height:4.375in" />

1.  Move the filters to a 24-well plate. To do so, turn off the suction,
    take off the cylinder weights, and move filters to the 24-well plate
    with <u>clean forceps</u> (cleaned with ethanol and fire)[^2]. Place
    each sample in the plate position noted in the below table.

Syn

Syn

Syn

Tetr

Mix

Tetr

Tetr

Mix

<figure>

<img src="media/26_2026_04_15_sample_phyto/image3.svg" style="width:6.5in;height:4.48611in" />
<figcaption>

<p>

Mix
</p>

</figcaption>

</figure>

2.  Clean. Put back cylinder weights and turn on suction. Then, clean
    meshes and cylinders by pouring ethanol and demineralised water on
    them.

3.  Place 24-well plate with filters inside in an oven at 50 °C
    overnight to dry.

*Pack filters (day after)*

For each filter (always using forceps), place an aluminium cartridge on
one of the wells of the metal block, unwrapping it. Then, add to it a
filter and wrap it into a small sphere, with a shape that is as round as
possible. Add then the sphere into a well in the 96-well plate in the
position described in the below table.

| **What**      | **Plate position** |
|---------------|--------------------|
| Mix           | A1                 |
| Mix           | A2                 |
| Mix           | A3                 |
| Synechococcus | A4                 |
| Synechococcus | A5                 |
| Synechococcus | A6                 |
| Tetradesmus   | A7                 |
| Tetradesmus   | A8                 |
| Tetradesmus   | A9                 |

## 2026-04-28 — Create food mix for Daphnia

**Title:** Create food mix for Daphnia

**Date:** Tuesday 28th April 2026

**Aim:** Feeding *Tetradesmus obliquus* and *Synechococcus elongatus*
(both in Zoo-COMBO) in equal amounts of carbon to Daphnia to provide
them with 2 mg C/L.

**Material:**

- *Tetradesmus obliquus* and *Synechococcus elongatus* large cultures

- 2 L COMBO medium (sterilised)

- 2 Beckers (≥ 1 L)

- Burner

**Steps:**

*Take out the food*

1.  Prepare the material.

    1.  Prepare material to be sterilised in the laminar flow hood.

        1.  Clean your hands and flow hood with ethanol.

        2.  Put a in the flow hood:

            1.  2 Beckers

            2.  COMBO (to replace what we took out)

            3.  Burner

    2.  Turn on the UV light for 20 minutes.

2.  Bring up the large algae culture. <u>When disconnecting the tube,
    use the clamp to prevent medium from entering the filter.</u>

3.  Take out algae into the Becker. For each culture:

    1.  Burn the top of the algal culture and take off its lid.

    2.  Add 1 litre of the algal culture to the Becker

    3.  Add 1 litre of COMBO to the large algal culture*.*

4.  Connect the large algal culture back to the pump.

5.  Reclean the bench with ethanol and put away stuff.

*Replace the COMBO with the Zoo-COMBO*

6.  Create algal pellets. For each alga:

    1.  Add 48 ml of algae to each centrifuge tube (<u>use the auto
        pipette and the pipette tip with written the name of the species
        of algae you are working with</u>).

    2.  Transform the inoculated algae into a pellet by spinning the
        Falcon tubes for 10 minutes at 28,000 revolutions per minute.

    3.  Meanwhile you are waiting for the centrifuge to be done, turn on
        the spectrophotometer.

    4.  Throw out the liquid (phytoplankton COMBO) from the algal
        cultures. <u>Do this as quickly as possible after the spinning
        to avoid resuspension.</u>

    5.  Add 48 ml of Zoo COMBO to each of the falcon tubes. Then mix
        them into a Becker.

*Calculate how much you need to mix and give to the Daphnia*

7.  Measure the optical density (OD) of the algae using a
    spectrophotometer (needs 15 minutes from when you turn it on to when
    you can use it). <u>The cuvette is kept inside ethanol and is washed
    first with demi water and then again with ethanol.</u> The cuvette
    is cleaned with specific paper.

    1.  Measure Zoo-COMBO alone by selecting photometric \> enter.

    2.  Measure the algae by selecting GOTOWL: 480 nm; start.

8.  Mix the algae so that half of carbon comes from *Tetradesmus* and
    half comes from *Synechococcus*.

9.  Provide with 2 mg C/L the Daphnia cultures kept on mixed diet.

## 2026-04-28 — Create Chaoborus jars

**Title:** Create Chaoborus jars

**Date:** Tuesday 28th April 2026

**Aim:** Create new jars for Chaoborus and feed them with Daphnia.

**Material:**

| *Prepared* | *Amount* | *Material* | *Purpose* |
|----|----|----|----|
| ☐ | 7 | Falcon tubes (50 ml) | To sample and distributing Daphnia and Chaoborus |
| ☐ |  | Eppendorf tubes | To put the Chaoborus inside |
| ☐ | 11 L | Zoo COMBO | To create new Daphnia and Chaoborus jars |
| ☐ |  | Pasteur pipette | To suck water out of samples to be frozen |
| ☐ |  | Becker (3L) | To mix the Chaoborus larvae |

**Steps:**

1.  Prepare the Daphnia.

    1.  *Prepare the falcon tubes for feeding & sampling.*

        1.  Mix the Daphnia babies from the oldest cohort into a 10 L
            bucket and then split it into two 5 L buckets.

        2.  Pipette 100 babies into each of four Falcon tubes.

        3.  Pipette 20 babies into a Falcon tube to later analyse their
            body size (pipette out as much COMBO as possible and add 70%
            ethanol).

2.  Prepare the Chaoborus.

    1.  *Create jars.* Create 4 jars with 800 ml of Zoo COMBO for
        Chaoborus to be fed with Daphnia.

    2.  *Record Chaoborus.* Record how many Chaoborus died or pupated.
        If they died, take them away; if they pupated, keep them in a
        Falcon tube.

    3.  *Pipette Chaoborus into newly created jars.*

    4.  *Sample Daphnias left.* Filter the Daphnia left in each of the
        replicates and keep them in a Falcon tube with 70% ethanol.

    5.  *Feed with Daphnia.* Add from the falcon tubes created at step
        1.

**Results:**

| **Replicate** | **Dead larvae** | **Alive pupae** | **Dead pupae** | **Remaining larvae** |
|:--:|:--:|:--:|:--:|:--:|
| 1 |  |  |  |  |
| 2 |  |  |  |  |
| 3 |  |  |  |  |
| 4 |  |  |  |  |

## Sample the Last Time Point

**Date:** …

### Aim

To sample the final time point of the experiment.

------------------------------------------------------------------------

## Sample the algae

### 1. Prepare a mix of the two algae

1.  Bring up the large algal cultures.

2.  Transfer algae into two beakers.

3.  Replace the phytoplankton COMBO medium with Zoo-COMBO for each alga:

    1.  Add **48 mL** of algae to **8 Falcon tubes** using the
        autopipette and the pipette tip labelled with the species name.
    2.  Centrifuge the Falcon tubes for **10 minutes at 28,000 rpm** to
        pellet the algae.
    3.  While the centrifuge is running, switch on the
        spectrophotometer.
    4.  Carefully discard the phytoplankton COMBO immediately after
        centrifugation to avoid resuspending the pellet.
    5.  Add **48 mL** of Zoo-COMBO to each Falcon tube and combine all
        tubes into one beaker.

4.  Measure the optical density (OD) of the algae.

    - The spectrophotometer requires approximately **15 minutes** to
      warm up.
    - The cuvette is stored in ethanol.
    - Before use, rinse the cuvette with demineralised water followed by
      ethanol.
    - Dry the cuvette using lens paper.

5.  Measure Zoo-COMBO alone by selecting:

        Photometric → Enter

6.  Measure the algae by selecting:

        GOTOWL
        Wavelength: 480 nm
        Start

7.  Mix the algae so that **50% of the carbon originates from
    *Tetradesmus obliquus*** and **50% from *Synechococcus elongatus***.

------------------------------------------------------------------------

### 2. Set up the filtration system

1.  Assemble the vacuum filtration unit and connect it to the wall gas
    supply.
2.  Place a **GF/C filter** (pre-combusted at **550 °C for 2 hours**)
    onto the filtration unit using clean forceps.
    - Clean forceps with ethanol.
    - Flame sterilise while holding the forceps horizontally.
3.  Place the cylinder weights on top of the filters.
4.  Slowly apply suction, ensuring that the pressure remains **below 0.2
    bar**.

------------------------------------------------------------------------

### 3. Filter the samples

For each sample:

1.  Mix the culture thoroughly.
2.  Pipette the culture onto the filter.
3.  Adjust the vacuum if necessary so that no liquid remains on top of
    the filter.
4.  Record the filtered volume.

**Volume filtered:** \_\_\_\_\_\_\_\_\_\_\_\_ mL

5.  Transfer the filter to a 24-well plate.
    - Turn off the suction.
    - Remove the cylinder weights.
    - Using clean flame-sterilised forceps, transfer the filter to the
      well plate.
6.  Clean the filtration unit.
    - Replace the cylinder weights.
    - Turn the suction back on.
    - Wash the meshes and cylinders with ethanol followed by
      demineralised water.
7.  Dry the filters overnight in a **50 °C oven**.

------------------------------------------------------------------------

## Sample *Chaoborus*

### 1. Record larvae and pupae

| Replicate | Dead larvae | Live pupae | Dead pupae | Remaining larvae |
|-----------|------------:|-----------:|-----------:|-----------------:|
| 1         |             |            |            |                  |
| 2         |             |            |            |                  |
| 3         |             |            |            |                  |
| 4         |             |            |            |                  |

### 2. Freeze specimens

Freeze all remaining larvae and pupae.

------------------------------------------------------------------------

## Sample *Daphnia*

1.  Collect the *Daphnia* remaining in each *Chaoborus* jar.
    - Filter each replicate separately.
    - Store each sample in a Falcon tube containing **70% ethanol**.
2.  Collect **1,000 *Daphnia*** from the cohorts started **five days
    earlier**.
    - Keep these animals in their original COMBO medium.
3.  Separate small and large *Daphnia* using a **1 mm mesh**.
4.  Preserve:
    - **20 small *Daphnia*** in ethanol.
    - **20 large *Daphnia*** in ethanol.

These individuals will later be measured to compare body size between
the two size classes.

------------------------------------------------------------------------

> \[!TIP\] **Folding filters**
>
> To transfer a filter: 1. Slide one arm of the forceps underneath the
> filter. 2. Hold the filter gently in place with a second pair of
> forceps. 3. Fold the filter in half. 4. Fold it in half again so it
> forms a quarter circle before placing it in the well plate.

[^1]: Lightly lift the filter by sliding one forceps arm underneath it.
    With the help of the other pair of forceps hold in place by lightly
    pressing on one point of the filter. Lift and push the filter with
    the pair that was underneath it, to fold in half. Fold in half again
    with the same technique. Now the filter is folded into a quarter of
    a circle.

[^2]: Lightly lift the filter by sliding one forceps arm underneath it.
    With the help of the other pair of forceps hold in place by lightly
    pressing on one point of the filter. Lift and push the filter with
    the pair that was underneath it, to fold in half. Fold in half again
    with the same technique. Now the filter is folded into a quarter of
    a circle.
