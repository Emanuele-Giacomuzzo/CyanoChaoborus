# Overview of the project

> **New here?** Jump straight to [📄 Where to find the results](#-where-to-find-the-results) for the report and how to ask questions — then come back and read the rest whenever you like.

Welcome — you've reached the project folder / master file.

This is the central repository for the CyanoChaoborus project: the people behind it, the research questions we're asking, and — as the folders below fill up — the experiments, data, analyses, and results themselves.

Whether you're a new lab member, a BSc student, or simply curious about cyanobacteria, you're in the right place. Read on for an overview of the project and how it's organised.

---

## 📄 Where to find the results

This project is a **work in progress** — protocols, calculations, and results are still being built out and refined here as we go. The full write-up (background, protocols, calculations, and results) lives at [`1_experiment/Rendered_files/Rendered.html`](1_experiment/Rendered_files/Rendered.html) — it has a table of contents and collapsible code sections. GitHub can't display raw HTML pages in the browser, so open the link, then use the page's "Download raw file" button (⬇ icon) to save it, and open the downloaded file in your own browser.

If anything in the report is unclear, or you think something's missing, don't sit on it — ask in [Discussions](https://github.com/Emanuele-Giacomuzzo/CyanoChaoborus/discussions) (see below).

## 💬 Questions, ideas, and things to add → use Discussions

Whenever you don't understand something, or you'd like something added or changed, please ask in the repository's [Discussions](https://github.com/Emanuele-Giacomuzzo/CyanoChaoborus/discussions) tab rather than messaging someone individually — that way the answer gets written down and everyone on the team can see it and learn from it. There's no such thing as a silly question here.

A couple of ground rules to keep Discussions easy to browse:

- **One topic per Discussion.** Keep each Discussion focused on a single question or idea, so it's easy to find and link back to later.
- **Number tightly related questions.** If you have a few questions that only make sense answered together, group them in a single Discussion, numbered (1, 2, 3, ...), instead of opening a separate Discussion for each one.

This also goes for the project's folder structure, document structure, and general organization: none of it is set in stone. If you see a way to make it clearer or easier to navigate, open a Discussion with your suggestion — it's genuinely welcome.

## 🌿 Making changes → never push to `main`

To keep `main` always in a clean, working state, **never push directly to `main`.** Instead:

1. Create a new branch for your change (e.g., `git checkout -b your-name/short-description`).
2. If your change is meaningful to the project (not, say, fixing a typo), add a line to [`CHANGELOG.md`](CHANGELOG.md) describing what you changed and why, so anyone can see what happened without having to dig through commits.
3. Push your changes to that new branch, not `main`.
4. Open a Pull Request into `main` (a request to merge your branch in), with a short description of the change, so it can be reviewed before it becomes part of the project.

If you're not comfortable with git yet, that's exactly what Discussions are for — ask, and someone will walk you through it.

---

## 👥 Who's in this?

This project's team:

| Name | Role | Institution |
|---|---|---|
| Emanuele Giacomuzzo | Creator of this project, postdoc | University of Copenhagen, DK |
| Jana Isanta-Navarro | Professor | University of Copenhagen, DK |
| Kirsten Seestern | Professor | University of Copenhagen, DK |
| Ali Ger | Professor | Federal University of Rio Grande do Norte, Brazil |
| Irma Carvalho | Postdoc | Federal University of Rio Grande do Norte, Brazil |
| Mikael Kosmou | MSc student, writing his MSc thesis on this project | University of Copenhagen, DK |
| Tobias Hoffmann Jensen | BSc student, wrote his BSc thesis on this project | University of Copenhagen, DK |
| Tina Katherine Varis | BSc student, doing research assistanship within this project | Elon University, USA, exchange @ University of Copenhagen, DK |

The team spans Denmark, Brazil, and the US, and every career stage from BSc to PI, all working on the same research question.

---

## 🔬 What's this project actually about?

In one sentence: **we're trying to understand how cyanobacteria affect the connection between aquatic and terrestrial ecosystems.**

Here's the longer version:

Freshwater ecosystems, such as ponds, aren't isolated from the land around them — they're constantly exchanging resources with it. One of the most significant links is **emerging aquatic insects**: insects that spend their larval life underwater and then emerge as adults, flying out of the water and into terrestrial systems. When they emerge, they become food for spiders, birds, bats, and all sorts of land-based predators. In many ecosystems, this pulse of insects is a huge — and often irreplaceable — source of energy and nutrients (e.g., Omega-3) for terrestrial food webs. Cut off that pulse, make it low quality, or shift when it happens, and you can ripple effects all the way up terrestrial food webs.

Now bring in **cyanobacteria** (aka "blue-green algae"). Cyanobacterial blooms are becoming more common worldwide due to warming and nutrient pollution, and they can mess with aquatic food webs in (at least) two very different ways:

1. **Toxins** — many cyanobacteria produce toxins (like microcystins) that can directly harm the animals living in the water.
2. **Poor food quality** — even when they're not toxic, cyanobacteria tend to be nutritionally poor food (they lack certain essential fatty acids and other nutrients that animals need to grow and reproduce).

The tricky part: these two effects usually happen *at the same time* in nature, so it's really hard to know which one is actually driving the damage. Is it the toxicity, or is it the poor food quality effect (or both)? **Teasing these two mechanisms apart is the central goal of this project: the experimental design separates toxicity and nutritional quality — two properties that normally covary — and varies each independently.**

## 🧪 Why Chaoborus (the phantom midge)?

To study this, we use *Chaoborus* — commonly known as the **phantom midge** — as our model organism. A few reasons it's a great fit:

- It's a genus that's **widespread around the world**, found in lakes and ponds across many continents — a useful model for testing mechanisms that may help explain variation in aquatic–terrestrial linkages more broadly, even though results from a single species aren't assumed to generalize automatically.
- It's a well-established model in freshwater ecology, so there's a solid foundation of methods and knowledge to build on, and it's (relatively) easy to keep in the lab. 

*Chaoborus* is not fed cyanobacteria directly — it's fed *Daphnia* that were themselves raised on one of several treatment diets. By tracking how *Chaoborus* grows, survives, and eventually emerges under each diet, we can disentangle *toxicity* from *food quality* — and understand what that means for the animals waiting on land for their next meal to fly out of the water.

---

## 🧫 Experimental overview

To test whether toxicity and nutritional quality independently shape the resource pulse that *Chaoborus* exports from water to land, we use a laboratory food chain rather than manipulating cyanobacteria directly: *Chaoborus* larvae feed on *Daphnia* that have themselves been raised on one of four defined phytoplankton diets (full design in [Experimental Design](1_experiment/5_experimental_design.qmd)). Because *Chaoborus* never contacts cyanobacteria directly, both diet composition and the route by which any toxin reaches the predator become variables under experimental control rather than a confound, as they are in nature.

Two of the four diets are nutritionally low-quality, each combining a cyanobacterium with the high-quality green alga *Tetradesmus obliquus* in a fixed ratio by carbon: one pairs *Tetradesmus* with the toxic *Microcystis aeruginosa*, the other with the non-toxic *Synechococcus elongatus*. Contrasting these two diets isolates the effect of dietary toxin exposure while holding food quality constant, since both are equally poor in nutritional terms and differ only in whether *Microcystis* is present.

The remaining two diets are nutritionally high-quality, consisting entirely of *Nannochloropsis limnetica*, and are identical to one another except that the fourth additionally receives toxin from lysed *M. aeruginosa* dosed directly into the *Chaoborus* jar rather than delivered through the *Daphnia* diet. Because this route bypasses *Daphnia* — and with it any biodilution or biotransformation *Daphnia* would otherwise impose on the toxin — this contrast isolates the effect of toxin exposure itself, independent of food quality. Comparing the two non-toxic diets against one another isolates the food-quality contrast in the absence of any toxin. Each of the four treatments is replicated four times.

For every treatment, we track the quantity, quality, and timing of the resource pulse *Chaoborus* ultimately delivers to terrestrial consumers: survival, growth, and developmental rate through the larval and pupal stages; the timing and biomass of adult emergence; body size; and, at the biochemical level, polyunsaturated fatty acid and sterol content, carbon–nitrogen–phosphorus stoichiometry, and microcystin concentration. Together, these endpoints let us ask not only whether cyanobacterial toxicity and food quality affect *Chaoborus* performance, but whether — and how — they alter the nutritional value of what it exports to land.

The experiment has not yet begun. Diet treatments, replication, and most sizing calculations are fixed, while phytoplankton growth-rate calibration, toxin quantification, and *Chaoborus* sourcing are still being finalized (see [Overview](1_experiment/2_overview.qmd)).

---

## 📁 Folder structure

- `1_experiment/` — experimental design and protocols
- `2_data/` — raw and processed data
- `3_analysis/` — analysis scripts/code
- `4_results/` — outputs, figures, tables
- `5_other/` — everything else
- [`CHANGELOG.md`](CHANGELOG.md) — a running, plain-English log of notable changes to this repository

---

Thanks for reading, and welcome aboard.
