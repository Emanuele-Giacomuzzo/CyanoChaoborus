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
    3_parameters.qmd            — shared biomass-per-analysis assumptions, must be
                                    included before 4_experimental_procedure.qmd,
                                    which sums them
    4_experimental_procedure.qmd — pre-experiment culturing & assembly steps
    5_calculations.qmd          — organism, jar, and infrastructure quantities
    8_bibliography.qmd          — references
    9_protocols.qmd             — auto-generated from protocol/, bench SOPs
-->

# Overview of the project

## 🔬 What’s this project about?

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

## 🧪 Why Chaoborus?

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

Thanks for stopping by — happy reading, and welcome aboard! 🔬🦟

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

# Parameters

> [!NOTE]
>
> ``` r
> # DW = dry weight
>
> # 🌐 General 
>
> Treatments <- 4
> Replicates <- 4
>
> # 🪜 Infrastructure
>
> Shelves <- 16
> Max_weight_per_shelf_kg <- 20
> Small_jar_liquid_litres <- 0.08
> Small_jar_with_liquid_kg <- 0.2
> Large_jar_liquid_litres <- 0.8
> Large_jar_with_liquid_kg <- 1.5
>
> # 🦟 Chaoborus
>
> Chaoborus_third_instar_DW_mg <- 0.79 # Lowest weight in the following paper: Parma, S. (1971). Chaoborus flavicans (Meigen)(Diptera, Chaoboridae): an autecological study.
> Chaoborus_jar_liquid_litres <- 0.8
> Chaoborus_jar_with_liquid_kg <- 1.5
> Chaoborus_dead_to_alive_ratio_worst_tratment <- 2
> Chaoborus_Daphnia_neonates_eaten_per_day <- 20 #Based on female fourth instar eating 1.25 mm D. magna babies (Büns & Ratte, 1991)
> Chaoborus_cyanotoxin_biodilutin_from_Daphnia <- 5 # Based on a field study where toxins were detected with HPLC/PDA: Sotton, B., Guillard, J., Anneville, O., Maréchal, M., Savichtcheva, O., & Domaizon, I. (2014). Trophic transfer of microcystins through the lake pelagic food web: Evidence for the role of zooplankton as a vector in fish contamination. Science of the Total Environment, 466, 152-163.
>
> # 🦐 Daphnia 
>
> Daphnia_adults_per_jar <- 15
> Daphnia_fed_C_mg_per_litre_per_day <- 2 
> Daphnia_neonates_per_mother_per_5_days <- 20 
> Daphnia_DW_adult_mg <- 0.18 # Average weight of an individual in the following paper: Simčič, T., & Brancelj, A. (1997). Electron transport system (ETS) activity and respiration rate in five Daphnia species at different temperatures. Hydrobiologia, 360(1), 117-125.
> Daphnia_cyanotoxin_biodilution_from_Microcystis <- 80 # Based on an experiment: Thostrup & Christoffersen, 1999
>
> # 🧪 Phytoplankton 
>
> Phytoplankton_growth_time_days <- 10
> Phytoplankton_highest_concentration_mg_C_per_litres <- 50 # Based on the fact that M. aeruginosa is the one that grows the worst and that in Thostrup & Christophersen, 1999 grew up to 150, we use 50 to be conservative. Also, Vana told me that her T. obliquus grows at 28-150 mg C / L
> Phytoplankton_low_quality_food_ratio <- 0.5 # I would go for 50% of both Microcystis and Synechococcus compared to Tetradesmus. Feeding Daphnia magna with 50% of Microcystis can keep cultures dense enough to perform experiment (Macke et al., 2017) but still have a negative effect (Schwarzenberger et al., 2012, 2013). Feeding Daphnia magna with 50% of Synechococcus can also keep cultures alive but still have a negative effect (Demott & Müller-Navarra, 1997). 
>
> # ☠️ Toxins 
>
> Microcystins_mg_per_g_DW <- 1 # Based on the following experiment, where toxins were 0-7-7 mg/g DW: Long, B. M., Jones, G. J., & Orr, P. T. (2001). Cellular microcystin content in N-limited Microcystis aeruginosa can be predicted from growth rate. Applied and Environmental Microbiology, 67(1), 278-283.
>
> # ⚖️ Biomass needed for analyses (dry biomass)
>
> Biomass_needed_for_PUFAs_mg <- 1 # Tarn Preet Parmar, personal communication
> Biomass_needed_for_sterols_mg <- 1 # Tarn Preet Parmar, personal communication
> Biomass_needed_for_stoichiometry_mg <- 1.5 # Dominik Martin-Creuzburg, personal communication
> Biomass_needed_for_toxins_mg <- 1 # ...
> ```
>
> > [!WARNING]
> >
> > ### To do
> >
> > - ⭐ Check the numbers of CN and P!!
> > - Check how I came up with Biomass_needed_for_toxins_mg

# Experimental Design

The aim of this experiment is to investigate how toxic cyanobacteria
affect the multidimensionality of the predator *Chaoborus* via changes
in its prey (Figure 1-2). This is realistic in nature compared to the
percentage of biomass made out of cyanobacteria (ref) (bloom defined as
\> 50% of biomass constituted by cyanobacteria, Molot et al., 2014).

<p align="center">

<img src="figures/Design_1.png" alt="Figure 1: Experimental design" width="700">
</p>

<p align="center">

<strong>Figure 1.</strong> Experimental design. Each treatment will be
replicated **4** times.
</p>

<p align="center">

<img src="figures/Design_2.png" alt="Figure 2: Timeline of the experiment" width="700">
</p>

<p align="center">

<strong>Figure 2.</strong> Timeline of the experiment.
</p>

> [!WARNING]
>
> ### To do
>
> - Finish adding Daphnia and Chaoborus icons.

> [!WARNING]
>
> ### To do
>
> - ⭐ Decide whether it should be a block design.

# Experimental Procedure

## Grow species

Before starting the experiment, we need to grow the following species:

- Phytoplankton
  - *Microcystis aeruginosa* (enough for toxins)
  - *Synechococcus elongatus*
  - *Nannochloropsis limnetica*
  - *Tetradesmus obliquus*
- *Daphnia magna*

### Phytoplankton

There are three bottles. I assume that it takes 10 days for the
phytoplankton to grow.

> [!WARNING]
>
> ### To do
>
> - ⭐ Finish writing this plan by looking into your notebook.

> [!WARNING]
>
> ### To do
>
> - ⭐ @Ali, Kirsten: how do I make sure that my *M. aeruginosa* has
>   toxins?

### Daphnia

*Daphnia magna* is fed ad libitum with 2 g C/L/day.

> [!WARNING]
>
> ### To do
>
> - Check the data of Microcystis aeruginosa for Carbon-OD relationship.

> [!WARNING]
>
> ### To do
>
> - ⭐ Come up with a plan for how to grow Daphnia.

### Chaoborus

Chaoborus will be sourced in the form of third-instar larvae from
IT-Ichthyo Trophic, Poland.

> [!WARNING]
>
> ### To do
>
> - ⭐ Add the size of the larvae.
> - ⭐ Find references that say how to determine it’s a third instar.

## Assemble experiment

``` r
Chaoborus_one_measurement <- ceiling(
  (Biomass_needed_total_mg / Chaoborus_third_instar_DW_mg) *
    Chaoborus_dead_to_alive_ratio_worst_tratment
)
Chaoborus_one_measurement

Chaoborus_total <- Chaoborus_one_measurement * Treatments * Replicates
Chaoborus_total

Jars_Chaoborus <- Treatments * Replicates
Jars_Chaoborus
```

> [!WARNING]
>
> ### To do
>
> - ⭐ Check here the code on how many Chaoborus are needed

The number of Chaoborus will be … per replicate per treatment. This will
ensure that there will be enough biomass to be analysed.

> [!WARNING]
>
> ### To do
>
> - Add how many jars.
> - Add how many Chaoborus per jar.

## Feed Chaoborus

> [!TIP]
>
> ### Protocol 1

*Chaoborus* is fed ad libitum with … Daphnia babies / day.

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
# Small jars: 1 Daphnia per jar, used to build up the stock.
Jars_small_Daphnia <- ceiling(
  Chaoborus_total / (Daphnia_neonates_born_per_5_days / Daphnia_neonates_per_feeding)
)
Jars_small_Daphnia

Daphnia_per_large_jar <- 15

# Large jars: used to house adults producing the neonate stock.
Jars_big_Daphnia <- ceiling(
  Jars_small_Daphnia / (Daphnia_per_large_jar * Daphnia_neonates_born_per_5_days)
)
Jars_big_Daphnia
```

> [!WARNING]
>
> ### To do
>
> - Review this previous section.
> - Add what’s the size of babies that Chaoborus eats.
> - Add how many Daphnia babies Chaoborus eats.

## Collect data

**Important not to use alchool for lipids as it can degrade the sample’s
lipids!**

> [!WARNING]
>
> ### To do
>
> - Check whether we should store samples together.

### Phytoplankton

> [!WARNING]
>
> ### To do
>
> - @Ali, Kirsten: would it be okay if I sample phytoplankton only once
>   throughout the experiment?
> - @Ali, Kirsten: should I use alchool for subsamples to measure cell
>   size?

### Daphnia

Daphnia quality will be monitored on day …. by collecting … number of
Daphnia. For each sampling, I will keep a sample in ethanol for quality
and one without it for body size measurment.

> [!WARNING]
>
> ### To do
>
> - @Ali, Kirsten: would it be okay to measure the quality of Daphnia on
>   the first and last day?
> - Calculate how many Daphnia I should keep for body size.
> - Add how many total Daphnia are needed for analysing PUFAs, sterols,
>   stoichiometry, and toxins.
> - Decide which container to use to store Daphnia.
> - Decide how to count the number of Daphnia.

### Chaoborus (emerged)

Chaoborus quality will be monitored thorughout the experiment and
individuals will be collected whenever they emerge.

> [!WARNING]
>
> ### To do
>
> - Add a plan on how to number the tubes.
> - Add how many Chaoborus adults are going to fit in one tube.

## End experiment

> [!WARNING]
>
> ### To do
>
> - Add a plan on when to end the experiment.  

> [!TIP]
>
> ### All checked until here

## Store samples

Samples are stored for up to 3 weeks at -20 °C, then dry frozen and put
back into -20 °C.

> [!WARNING]
>
> ### To do
>
> - @Jana: how should I package the samples for Germany?
> - @Jana: is it true that lipid samples can be stored only for up to 3
>   weeks at -20 °C?
> - @Jana: can you show me how to dry freeze?

## Lab analyses

The following analyses will be performed on *Chaoborus*, *Daphnia*, and
phytoplankton.

**Biomass.**

> [!WARNING]
>
> ### To do
>
> - @Jana: how could I measure the biomass of our samples?

**PUFAs & sterols.**

**C & N.**

> [!WARNING]
>
> ### To do
>
> - Check your notes which machines I need for which analysis.
> - @Jana: is it okay to store samples for stoichiometry at -20?

**P.**

> [!WARNING]
>
> ### To do
>
> - Check whether this is done by Germany.

**Body size.** Photograph individuals.

> [!WARNING]
>
> ### To do
>
> - @Ali, Kirsten: would it be easy to do this with phytoplankton?
> - Think about whether this should be done at the time point 0 and at
>   the last time point.

**Toxicity.** Microcystin-LR concentration will be measured using an
ELISA kit.

*Microcystis aeruginosa* (strain PCC 7806, grown in N-limited modified
MLA medium) contains 0.7–7 mg microcystins g⁻¹ DW depending on growth
phase (Long et al., 2001). Moving up the food chain, *Daphnia magna*
shows roughly 80-fold biodilution relative to *M. aeruginosa* — about 2
mg g⁻¹ DW in the phytoplankton versus ~0.025 mg g⁻¹ DW in *D. magna*
(Thostrup & Christoffersen, 1999). Evidence for *Chaoborus* spp. is more
mixed: Laurén-Määttä et al. (1995) found no detectable microcystins in
*Chaoborus* fed Microcystis-exposed *Daphnia*, though they used HPLC (a
comparatively high detection limit) and did not measure toxins in the
*Daphnia* themselves; Sotton et al. (2014), a field study using
HPLC/PDA, found roughly 5-fold biodilution from zooplankton (863 ng g⁻¹
FW) to *Chaoborus* (168 ng g⁻¹ FW); and Riehle et al. (2024), using
high-resolution LC–MS/MS, detected microcystins in zooplankton (2.5–4.5
µg g⁻¹ DW) but not in *Chaoborus*.

Detection limits vary across commercial ELISA kits: the Eurofins
Microcystin Plate Kit detects down to 0.05 µg L⁻¹, the Abraxis
Microcystins-ADDA ELISA Kit and the Beacon Microcystin ELISA Kit both
detect down to 0.10 µg L⁻¹, and the Envirologix Microcystins Quantiplate
Kit detects down to 0.15 µg L⁻¹.

> [!WARNING]
>
> ### To do
>
> - Why looking only at Microcystin-LR.
> - Write why using ELISA.
> - Decide which kit to order.
> - Test kit.
> - Check whether this  

# Calculations

## Feeding the *Daphnia*: how much phytoplankton medium is needed?

*Daphnia* culture jars are fed a 50:50 carbon mix of *Tetradesmus
obliquus* and *Synechococcus elongatus*
(`Phytoplankton_low_quality_food_ratio`), dosed to 2 mg C/L. Because the
carbon content of each medium varies from batch to batch, the volume
needed is recalculated from a fresh optical density reading before every
feeding — see the [Daphnia food
calculator](calculations/food_calculator.html) for the interactive tool
used to do this.

## Infrastructure: shelves and total jar count

Checking that jar weight stays within shelf limits uses high-confidence
weight figures for each jar type, including its liquid: 1.5 kg for a
*Chaoborus* jar, 0.2 kg for a small *Daphnia* jar, and 1.5 kg for a
large *Daphnia* jar. Of the 18 shelves available in the lab, 2 are
allocated to Claudia’s work, leaving 16 for this experiment.

``` r
# Jars_Chaoborus, Jars_small_Daphnia, and Jars_big_Daphnia are computed in
# 4_experimental_procedure.qmd, but those chunks are currently eval: false
# pending the open "To do" items there. Fall back to NA so this chunk (and
# the prose below) still renders instead of erroring out.
if (!exists("Jars_Chaoborus")) Jars_Chaoborus <- NA
if (!exists("Jars_small_Daphnia")) Jars_small_Daphnia <- NA
if (!exists("Jars_big_Daphnia")) Jars_big_Daphnia <- NA

Weight_per_shelf_kg <- ceiling(
  ((Chaoborus_jar_with_liquid_kg * Jars_Chaoborus) +
    (Small_jar_with_liquid_kg * Jars_small_Daphnia) +
    (Large_jar_with_liquid_kg * Jars_big_Daphnia)) / Shelves
)
Weight_per_shelf_kg
```

    [1] NA

``` r
Jars_total <- Jars_Chaoborus + Jars_small_Daphnia + Jars_big_Daphnia
Jars_total
```

    [1] NA

Across *Chaoborus*, small, and large *Daphnia* jars, the experiment
needs **NA jars in total** (this excludes phytoplankton culture
vessels), at roughly **NA kg per shelf** across 16 shelves — within the
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

**Initial conditions.** The initial population density of *Chaoborus*
will be 10, which is above what needed for all the different analyses
(4.5 mg, see [Box 1: Sample Collection and
Storage](other/protocols/Quarto_protocols/9_sample_collection_and_storage.md)).
This larval density, which below 50 individuals per jar (9 cm diameter)
corresponds to ~8,000 individuals m⁻², which falls within the upper
range of peak natural *Chaoborus* densities reported from eutrophic,
fish-free systems (Xie et al., 1998). *Chaoborus* will be fed ad libitum
by providing them with 10 Daphnia of 1 to 5 days old (see [Box 1: Sample
Collection and
Storage](other/protocols/Quarto_protocols/9_sample_collection_and_storage.md)).

**Measurements.** At the beginning of the experiment and through the
experiment we will be measuring end points telling us about the
quantity, quality, and timing of resource flows (see Table 2). We will
pull larvae, pupae, and adults together, recording the number of larvae,
pupae, and adults. During this, we will also be taking out all the extra
Daphnia in the jars *(add whether should we do this every day or every
time we change the medium of Chaoborus)*. Also, we will need to measure
the ones at the beginning as well. See Table 2 and [Box 1: Sample
Collection and
Storage](other/protocols/Quarto_protocols/9_sample_collection_and_storage.md).

# Bibliography

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

# Protocols

This section is generated automatically from every Markdown file in
[`protocol/`](protocol/): each time this document is rendered, it picks
up whatever protocols exist in that folder, in numerical order, without
needing to be edited by hand.

## Protocol 1 – Create Daphnia cohort

**Title:** Create a new cohort of Daphnia jars

**Date:**

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

## Protocol 2 – Create Chaoborus jars

**Title:** Create Chaoborus jars, sample *Chaoborus* & *Daphnia*

**Date:**

**Aim:** Start the Chaoborus cultures, feed them, and sample *Daphnia*
and *Chaoborus*.

**Material:**

| Prepared | Amount | Material | Purpose |
|----|---:|----|----|
| ☐ | 7 | Falcon tubes (50 mL) | Sample and distribute *Daphnia* and *Chaoborus* |
| ☐ |  | Eppendorf tubes | Store *Chaoborus* |
| ☐ | 11 L | Zoo COMBO | Prepare new cultures |
| ☐ |  | Pasteur pipette | Remove excess water |
| ☐ |  | 3 L beaker | Mix *Chaoborus* larvae |

**Steps:**

1.  **Prepare the Daphnia**
    1.  **Create jars.** Prepare seven 800 mL jars labelled “EG –
        Today’s date – *Daphnia magna* – Mixed diet”.
    2.  **Transfer adults.** Move adults from the oldest cohort
        (5-day-old offspring). If fewer than 10 adults remain,
        supplement from the stock cultures.
    3.  **Prepare falcon tubes.**
        1.  Place 15 babies from each oldest-cohort jar into six Falcon
            tubes (4 for feeding, 2 for quality analysis). Remove as
            much water as possible from the analysis tubes using a
            Pasteur pipette.
        2.  Transfer 20 individuals from one analysis tube into a
            separate tube for body size analysis.
2.  **Prepare the Chaoborus**
    1.  **Remove dead larvae.**
    2.  **Mix** all larvae in a 3 L beaker.
    3.  **Sample** (remove excess water with a Pasteur pipette).
        1.  Place four groups of 10 larvae into Eppendorf tubes labelled
            “CLi”.
        2.  Place 10 larvae into one Falcon tube for body size analysis.
    4.  **Create jars.** Prepare four 800 mL Zoo COMBO jars.
    5.  **Transfer larvae.** Add 10 *Chaoborus* larvae to each jar.
    6.  **Feed.** Add *Daphnia* from the Falcon tubes prepared in Step
        1.

> [!WARNING]
>
> ### To do
>
> …
