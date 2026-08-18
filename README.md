# Overview of the project

> **New here?** Jump straight to [📄 Where to find the results](#-where-to-find-the-results) for the report and how to ask questions — then come back and read the rest whenever you like.

Greetings, and welcome — you made it to the project folder / master file! 🎉

This is **the** project folder / master file, the one place where you can find all the information about the CyanoChaoborus project: the people behind it, the big questions we're asking, and (as the folders below fill up) the experiments, data, analyses, and results themselves.

Whether you're a new lab member, a curious second-year BSc student, or just cyaonabcteria-curious, you're in the right place. Grab a coffee ☕ and read on.

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
2. Add a line to [`CHANGELOG.md`](CHANGELOG.md) describing what you changed and why — every branch that gets pushed needs its change documented there, so anyone can see what happened without having to dig through commits.
3. Push your changes to that new branch, not `main`.
4. Open a Pull Request into `main` (a request to merge your branch in), with a short description of the change, so it can be reviewed before it becomes part of the project.

If you're not comfortable with git yet, that's exactly what Discussions are for — ask, and someone will walk you through it.

---

## 👥 Who's in this?

This project is powered by a small but very dedicated crew:

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

Basically, a small international team spanning Denmark, Brazil, and the US, at every career stage from BSc to PI — all digging into the same big question 🌍

---

## 🔬 What's this project actually about?

In one sentence: **we're trying to understand how cyanobacteria affect the connection between aquatic and terrestrial ecosystems.**

Here's the longer version:

Freshwater ecosystems, such as ponds, aren't isolated from the land around them — they're constantly exchanging resources with it. One of the most significant links is **emerging aquatic insects**: insects that spend their larval life underwater and then emerge as adults, flying out of the water and into terrestrial systems. When they emerge, they become food for spiders, birds, bats, and all sorts of land-based predators. In many ecosystems, this pulse of insects is a huge — and often irreplaceable — source of energy and nutrients (e.g., Omega-3) for terrestrial food webs. Cut off that pulse, make it low quality, or shift when it happens, and you can ripple effects all the way up terrestrial food webs.

Now bring in **cyanobacteria** (aka "blue-green algae"). Cyanobacterial blooms are becoming more common worldwide due to warming and nutrient pollution, and they can mess with aquatic food webs in (at least) two very different ways:

1. **Toxins** — many cyanobacteria produce toxins (like microcystins) that can directly harm the animals living in the water.
2. **Poor food quality** — even when they're not toxic, cyanobacteria tend to be nutritionally poor food (they lack certain essential fatty acids and other nutrients that animals need to grow and reproduce).

The tricky part: these two effects usually happen *at the same time* in nature, so it's really hard to know which one is actually driving the damage. Is it the toxic, or is it the poor quality food effect (or both)? **Teasing these two mechanisms apart is the central goal of this project.**

## 🧪 Why Chaoborus (the phantom midge)?

To study this, we use *Chaoborus* — commonly known as the **phantom midge** — as our model organism. A few reasons it's a great fit:

- It's a genus that's **widespread around the world**, found in lakes and ponds across many continents, so what we learn has broad relevance.
- It's a well-established model in freshwater ecology, so there's a solid foundation of methods and knowledge to build on, and it's (relatively) easy to keep in the lab. 

By feeding *Chaoborus* different cyanobacterial diets (toxic vs. non-toxic, nutritionally varied) and tracking how they grow, survive, and eventually emerge, we can start to disentangle *toxicity* from *food quality* — and understand what that means for the animals waiting on land for their next meal to fly out of the water.

---

## 📁 Folder structure

- `1_experiment/` — experimental design and protocols
- `2_data/` — raw and processed data
- `3_analysis/` — analysis scripts/code
- `4_results/` — outputs, figures, tables
- `5_other/` — everything else
- [`CHANGELOG.md`](CHANGELOG.md) — a running, plain-English log of notable changes to this repository

---

Thanks for stopping by — happy reading, and welcome aboard! 🔬🦟
