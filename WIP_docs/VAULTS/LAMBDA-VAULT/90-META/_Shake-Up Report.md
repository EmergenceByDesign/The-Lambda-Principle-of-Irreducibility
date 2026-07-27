---
silo: meta
subcat: analysis
exposure: internal
status: draft
tags:
  - meta/analysis
  - x/internal
links-latent: []
---

# Shake-Up Report — basin-hopping co-adjacency

Method: force-directed layout run from 70 random initialisations over the 179-document
reference graph (70 edges, 100 isolated nodes). For each run, record which pairs land in
each other's 6 nearest neighbours. Score is co-adjacency frequency, range 0–2 because the
relation is counted from both endpoints.

Corrected against a **degree-preserving null**: the edge set was rewired 5 times by
double-edge swaps holding every node's degree fixed, and the whole ensemble re-run.
`excess = observed − null`. This is what removes the orphan rim — isolated nodes pile up
against each other in the null exactly as much as in the real graph, so they cancel.

Second, independent channel: **TF-IDF cosine similarity over document text**, computed
without reference to the edge set. Gates were `excess > 0.08` and `sim` above the 97.5th
percentile (0.264). 90 pairs cleared both out of 15,861 evaluated.

## What this is not

Not proof of anything. A ranked shortlist of unlinked pairs the geometry keeps pushing
together, for you to judge by hand. Apply the re-description test: if you can restate the
connection in different terms and it still says something, it is structure. If it evaporates
when you try to write it down, it was the pattern-completion reflex.

## One negative result worth recording

Mean co-adjacency across all unlinked pairs was **0.060 observed against 0.067 null** — the
real edge set produces *slightly less* incidental clustering than a degree-matched random
rewire. So the reference graph carries no diffuse global signal. Everything below is local
structure or nothing.

## Near-duplicates — 10 pairs, content sim > 0.90

Not discoveries. Redundancy the byte-hash dedupe missed because the files differ in
whitespace or a header. Worth resolving before anything else.

- **1.000** — [[Supplement Emergent Iterated Agents and Species Dynamics in Associative Identity Games]] (893w) ↔ [[Supplement Emergent Iterated Agents and Species Dynamics in Associative Identity Games (1)]] (893w)
- **1.000** — [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation ARCHIVE]] (865w) ↔ [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation ARCHIVE (2)]] (865w)
- **1.000** — [[RECORD DST Traversal Record v12a ISP contd]] (19,173w) ↔ [[RECORD DST Traversal Record v12a ISP contd (2)]] (36,266w)
- **1.000** — [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT]] (810w) ↔ [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT (2)]] (820w)
- **1.000** — [[Generic DST Interface Query for Any LLM-Administered or LLM-Interfacing System]] (4,815w) ↔ [[Generic Llm System Dst Interface Query]] (4,780w)
- **1.000** — [[R S Protocol R11.23+ CURRENT]] (1,125w) ↔ [[R S Protocol R11.23+ CURRENT (2)]] (1,158w)
- **1.000** — [[DST Archival Privacy, Spot Report, and Cross-System Disclosure Standards]] (3,347w) ↔ [[Dst Archival Privacy And Spot Report Standards]] (3,294w)
- **0.998** — [[02 The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2]] (26,142w) ↔ [[The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2 CURRENT]] (25,292w)
- **0.993** — [[Consolidated Geometric Unification Summary]] (534w) ↔ [[Geometric Unification Framework (1)]] (420w)
- **0.923** — [[TUFT registry studies]] (2,846w) ↔ [[TUFT registry studiesV2]] (3,464w)

## Cross-silo pairs — 3

Pairs spanning different top-level folders. Only three, and one is a README artifact.

| excess | sim | shared terms | pair |
|---|---|---|---|
| +0.10 | 0.564 | relating, repository, progress, documents, working | [[README]] ↔ [[NAVIER-STOKES]] |
| +0.11 | 0.414 | lcac, rh, goodstein, zfc, analytic | [[Juror Assessment of Nielsen–Semita, “The Proof of the Riemann Hypothesis”]] ↔ [[opus 4.8 RH review.docx]] |
| +0.10 | 0.388 | zfc, rh, arithmetical, nonstandard, rigidity | [[Gemini Juror RH]] ↔ [[RHx001]] |

## Both endpoints isolated — 10

Neither document had any detected reference, so these connections exist in no edge anywhere.
The highest-value section if any of it holds.

| excess | sim | shared terms | pair |
|---|---|---|---|
| +0.10 | 0.564 | relating, repository, progress, documents, working | [[README]] ↔ [[NAVIER-STOKES]] |
| +0.16 | 0.423 | cryptocache, sealed, demo, lean, harness | [[INSTALL — Hosting QED and Running Your Own Instance]] ↔ [[CRYPTOCACHE QED]] |
| +0.17 | 0.388 | ambassador, agent, ecology, dst, governance | [[DST External System Correspondence Query]] ↔ [[DST Ecosystem Illustrated Presentation]] |
| +0.11 | 0.414 | lcac, rh, goodstein, zfc, analytic | [[Juror Assessment of Nielsen–Semita, “The Proof of the Riemann Hypothesis”]] ↔ [[opus 4.8 RH review.docx]] |
| +0.09 | 0.459 | refet, mosfet, stochastic, mosfets, quantum | [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation ARCHIVE]] ↔ [[REFET PPD V1.1]] |
| +0.11 | 0.368 | grain, torsion, recursive, resonances, spiral | [[Lambda–NSAF–TUFT A Structural Grammar for Mapping Hypercomplex Reference Systems]] ↔ [[The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2 CURRENT]] |
| +0.10 | 0.388 | zfc, rh, arithmetical, nonstandard, rigidity | [[Gemini Juror RH]] ↔ [[RHx001]] |
| +0.09 | 0.408 | paradoxes, klein, distant, quantum, particles | [[The Nielsen-Semita Attractor Framework A Pedagogical Journey]] ↔ [[The Complete Explanatory Framework From Irreducibility to Utility]] |
| +0.09 | 0.397 | slip, fractal, antinodes, si, resonances | [[old Masterkey V4.2]] ↔ [[The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2 CURRENT]] |
| +0.13 | 0.281 | settlement, qed, protocol, signed, verifier | [[INSTALL — Hosting QED and Running an Instance]] ↔ [[CRYPTOCACHE QED (2)]] |

## Version and apparatus families — 70

Mostly documents that are obviously related once seen. The exception worth attention is the
tail-witness cluster, where the same apparatus appears across different Millennium targets.

| excess | sim | shared terms | pair |
|---|---|---|---|
| +1.07 | 0.289 | incidence, registry, angular, lie, nested | [[Appendix E8 Nested Geometry Representation]] ↔ [[Structural Registry of Nested Geometries V2]] |
| +1.03 | 0.371 | fig, gcd, πm, tier, lk | [[energy as residue traversal]] ↔ [[enumerative resonance correspondenceV2]] |
| +0.86 | 0.541 | rect, rectangle, vaughan, jordan, perp | [[RECORD DST Traversal Record v13c ISP contd]] ↔ [[DST Traversal Record (2)]] |
| +0.91 | 0.306 | pilot, privacy, spot, archive, private | [[DST Archival Privacy, Spot Report, and Cross-System Disclosure Standards]] ↔ [[Dst Fresh Juror Service Configuration Query]] |
| +0.87 | 0.385 | weld, tail, welds, priced, circumscription | [[The Algebraic Cycle as a Tail Witness]] ↔ [[Tail Predicates and the Circumscription Obstruction]] |
| +0.84 | 0.439 | station, prong, weld, tail, circumscription | [[The Algebraic Cycle as a Tail Witness]] ↔ [[The Mass Gap as a Tail Predicate]] |
| +0.84 | 0.427 | rectangle, ivt, toeplitz, equivariant, reengagement | [[00_ACTIVE_DST_KERNEL_APPENDIX_START_v1_2]] ↔ [[02_TOEPLITZ_ACTIVE_CONTINUITY_STATE_START_v1]] |
| +0.73 | 0.624 | xbar, flag, equivariant, rect, ivt | [[RECORD DST Traversal Record v12a ISP contd (2)]] ↔ [[DST Traversal Record (3)]] |
| +0.89 | 0.306 | weld, hodge, welds, door, tier | [[The Hodge Traversal, Compiled Edition]] ↔ [[Verification and Construction as Coupled Ladders]] |
| +0.74 | 0.537 | rect, flag, equivariant, ivt, zsc | [[DST Traversal Record]] ↔ [[RECORD DST Traversal Record v12a ISP contd (2)]] |
| +0.73 | 0.541 | rect, rectangle, jordan, perp, ivt | [[DST Traversal Record]] ↔ [[RECORD DST Traversal Record v13c ISP contd]] |
| +0.69 | 0.624 | xbar, flag, equivariant, rect, ivt | [[RECORD DST Traversal Record v12a ISP contd]] ↔ [[DST Traversal Record (3)]] |
| +0.83 | 0.306 | pilot, spot, privacy, archive, private | [[Dst Archival Privacy And Spot Report Standards]] ↔ [[Dst Fresh Juror Service Configuration Query]] |
| +0.64 | 0.672 | sq, rect, equivariant, rectangle, perpendicularity | [[DST Traversal Record]] ↔ [[DST Traversal Record (2)]] |
| +0.74 | 0.466 | rect, ivt, equivariant, rectangle, perp | [[RECORD DST Traversal Record v12a ISP contd (2)]] ↔ [[DST Traversal Record (2)]] |
| +0.70 | 0.544 | rect, rectangle, jordan, counterclockwise, ivt | [[RECORD DST Traversal Record v13c ISP contd]] ↔ [[DST Traversal Record (3)]] |
| +0.69 | 0.537 | rect, flag, equivariant, ivt, zsc | [[DST Traversal Record]] ↔ [[RECORD DST Traversal Record v12a ISP contd]] |
| +0.70 | 0.493 | rect, ivt, rectangle, perp, counterclockwise | [[RECORD DST Traversal Record v12a ISP contd (2)]] ↔ [[RECORD DST Traversal Record v13c ISP contd]] |
| +0.76 | 0.374 | advisor, jury, thread, intake, claude | [[DST OPERATOR PROTOCOL]] ↔ [[Consolidated Explanation of the Generalized DST System]] |
| +0.66 | 0.466 | rect, ivt, equivariant, rectangle, perp | [[RECORD DST Traversal Record v12a ISP contd]] ↔ [[DST Traversal Record (2)]] |
| +0.49 | 0.778 | zsc, equivariant, sq, bz, rect | [[DST Traversal Record]] ↔ [[DST Traversal Record (3)]] |
| +0.51 | 0.680 | abelian, commutator, mills, scheme, yang | [[Structural Proof of the Yang–Mills Mass Gap]] ↔ [[Structural Proof of the Yang–Mills Mass Gap (2)]] |
| +0.60 | 0.493 | rect, ivt, rectangle, perp, counterclockwise | [[RECORD DST Traversal Record v12a ISP contd]] ↔ [[RECORD DST Traversal Record v13c ISP contd]] |
| +0.51 | 0.642 | sq, equivariant, rect, rectangle, perpendicularity | [[DST Traversal Record (2)]] ↔ [[DST Traversal Record (3)]] |
| +0.53 | 0.476 | weld, station, welds, delivered, blind | [[The Algebraic Cycle as a Tail Witness]] ↔ [[Verification and Construction as Coupled Ladders]] |
| +0.49 | 0.349 | schwartz, parabolic, toeplitz, rectangle, jury | [[DST Traversal Record v14a (ISP contd)]] ↔ [[03_TOEPLITZ_TRAVERSAL_RECORD_INDEX_START_v1]] |
| +0.36 | 0.452 | station, weld, tail, mills, circumscription | [[The Mass Gap as a Tail Predicate]] ↔ [[Verification and Construction as Coupled Ladders]] |
| +0.37 | 0.397 | shortest, nock, enlargement, certified, telemetry | [[The Infinite Registry and Indexed-Residue Proof Engine]] ↔ [[IRRPROOF Supplement Revised Compression Frontiers Chaitin and Federated Learning]] |
| +0.30 | 0.502 | hodge, weld, kuga, satake, weil | [[The Algebraic Cycle as a Tail Witness]] ↔ [[The Hodge Traversal, Compiled Edition]] |
| +0.34 | 0.353 | weld, priced, window, tail, reg | [[The Rank and the Zero as Coupled Ladders]] ↔ [[Tail Predicates and the Circumscription Obstruction]] |
| +0.30 | 0.401 | jordan, rectangle, perp, ivt, connectedness | [[RECORD DST Traversal Record v12a ISP contd]] ↔ [[DST Traversal Record v14a (ISP contd)]] |
| +0.26 | 0.473 | weld, station, prong, blind, priced | [[The Algebraic Cycle as a Tail Witness]] ↔ [[The Rank and the Zero as Coupled Ladders]] |
| +0.24 | 0.450 | rectangle, jordan, equivariant, greene, lobb | [[DST Traversal Record v14a (ISP contd)]] ↔ [[DST Traversal Record (3)]] |
| +0.27 | 0.387 | jury, advisor, intake, canon, dst | [[00_ACTIVE_DST_KERNEL_APPENDIX_START_v1_2]] ↔ [[Consolidated Explanation of the Generalized DST System]] |
| +0.30 | 0.322 | jury, advisor, kernel, dst, intake | [[01_DST_CONTROL_LEDGER_START_v1]] ↔ [[Consolidated Explanation of the Generalized DST System]] |
| +0.30 | 0.299 | universality, formed, remark, ch, regime | [[Appendixes B, C, and D]] ↔ [[Bounded Formal Systems, Traversal Claims, and the Structural Malformation of Universality Arguments]] |
| +0.24 | 0.410 | ivt, jury, simplex, blocking, rectangle | [[RECORD DST Traversal Record v12a ISP contd (2)]] ↔ [[00_ACTIVE_DST_KERNEL_APPENDIX_START_v1_2]] |
| +0.31 | 0.267 | weld, abelian, hodge, tier, priced | [[The Hodge Traversal, Compiled Edition]] ↔ [[The Mass Gap as a Tail Predicate]] |
| +0.21 | 0.425 | rectangle, jordan, perp, sq, greene | [[DST Traversal Record v14a (ISP contd)]] ↔ [[DST Traversal Record (2)]] |
| +0.17 | 0.507 | schwartz, rectangle, jordan, ccc, rectangles | [[RECORD DST Traversal Record v13c ISP contd]] ↔ [[DST Traversal Record v14a (ISP contd)]] |


---

# Addendum — oriented layout, chirality, and the dial sweep

Second pass. Three changes: a **chiral force term** (tangential component added to the
radial pair force, which breaks reflection symmetry and gives the system handedness),
**Procrustes alignment** across basins to seek a common base frame, and a **dial sweep** on
the attraction/repulsion ratio — convergence against differentiation.

Sweet-spot metric: Spearman rho between geometric distance and *independent* content
distance, over unlinked pairs only. The layout is driven by edges alone and never sees
content, so any positive rho is geometry recovering structure on its own.

## Sweep

| k_att | chirality | rho | sd across 12 seeds |
|---|---|---|---|
| 0.004 | 0.00 | +0.0416 | 0.0200 |
| 0.004 | 0.25 | +0.0466 | 0.0220 |
| 0.004 | 0.60 | +0.0454 | 0.0242 |
| 0.012 | 0.00 | +0.0636 | 0.0250 |
| 0.012 | 0.25 | +0.0695 | 0.0211 |
| 0.012 | 0.60 | +0.0714 | 0.0194 |
| 0.023 | 0.00 | +0.0731 | 0.0270 |
| 0.023 | 0.25 | +0.0745 | 0.0213 |
| 0.023 | 0.60 | +0.0727 | 0.0177 |
| 0.055 | 0.00 | +0.0728 | 0.0185 |
| 0.055 | 0.25 | +0.0737 | 0.0192 |
| 0.055 | 0.60 | +0.0789 | 0.0189 |
| 0.110 | 0.00 | +0.0777 | 0.0200 |
| 0.110 | 0.25 | +0.0777 | 0.0221 |
| 0.110 | 0.60 | +0.0807 | 0.0202 |
| 0.220 | 0.00 | +0.0768 | 0.0232 |
| 0.220 | 0.25 | +0.0753 | 0.0262 |
| 0.220 | 0.60 | +0.0799 | 0.0259 |

Sweet spot: `k_att=0.11`, `chirality=0.6`, rho `+0.0807` (sd 0.0202).

**Result 1 — the geometry does contribute independently.** rho rises monotonically from
+0.042 at weak convergence to a plateau near +0.080, roughly 4 sigma above zero measured
against between-seed variance. Small, but real and reproducible. Edge-driven geometry
recovers a little of the content structure it was never shown. Tier I on the measurement,
Tier II on what it means.

**Result 2 — chirality stabilises rather than improves.** It adds only ~+0.003 to rho, well
inside one sd. Its measurable effect is on *variance*: at `k_att=0.023` the between-seed sd
falls from 0.0270 achiral to 0.0177 at chirality 0.6. Breaking the reflection symmetry makes
basins more alike, not more accurate. The handedness is doing real work — just not the work
we expected.

## Result 3 — the base frame does not exist at this edge density

Procrustes over 40 basins: layout span **138**, median per-node positional scatter **280**.
Scatter exceeds the entire radius of the layout. Even the least mobile documents wander
further than the map is wide.

So the hypothesis is answered, negatively and cleanly: **adding chirality and aligning
frames does not produce a base alignment at 70 edges over 179 nodes.** Absolute position
remains uninterpretable. Only adjacency and distance *rank* carry signal.

The pinned/floating split confirms it — it tracks degree almost exactly. Every "pinned"
document is a traversal record with edges; every "floating" one has degree 0. That is not
new information, it is the edge set restated.

## What this licenses next

Two roads, and they are not interchangeable:

1. **More edges.** The frame is unpinnable because there is almost nothing to pin it with.
   Accepting candidate links raises density, which should pin the frame. The loop closes as
   designed; it just needs a denser start than 70 edges.
2. **Anchor the frame externally** — initialise from a content PCA and let edges perturb it.
   This produces a stable, readable, oriented map immediately. **But it forfeits discovery:**
   once content sets the frame, geometric proximity can no longer be evidence about content,
   because the circularity is built in. Good for browsing, useless for finding.

Road 1 keeps the two channels independent. Road 2 buys legibility with the thing that made
the result meaningful.


---

# Addendum 2 — substrate from the corpus's own vocabulary

No hypothesis this pass. The edge set was rebuilt from the corpus rather than from filenames:
**9,004 rare technical terms** (document frequency under 15%) and **456 notation tokens**
(Greek, `Lk`, `T7`, `MR-Q6`, `gcd`, symbol-bearing forms), combined 65/35 into a
relation-strength matrix. Edge threshold then swept from sparse to dense, observing two
properties the substrate has about itself.

| threshold | edges | mean deg | isolated | largest comp | share | components | eff dim / 16 |
|---|---|---|---|---|---|---|---|
| 0.400 | 106 | 1.2 | 68 | 12 | 0.07 | 103 | 14.59 |
| 0.320 | 333 | 3.7 | 38 | 22 | 0.12 | 75 | 13.13 |
| 0.260 | 398 | 4.4 | 25 | 39 | 0.22 | 51 | 11.91 |
| 0.210 | 518 | 5.8 | 10 | 116 | 0.65 | 24 | 8.84 |
| 0.170 | 702 | 7.8 | 1 | 159 | 0.89 | 7 | 6.71 |
| 0.135 | 1100 | 12.3 | 0 | 176 | 0.98 | 2 | 5.44 |
| **0.105** | **1885** | **21.1** | **0** | **179** | **1.00** | **1** | **3.86** |
| 0.080 | 3031 | 33.9 | 0 | 179 | 1.00 | 1 | 4.80 |
| 0.060 | 4414 | 49.3 | 0 | 179 | 1.00 | 1 | 5.25 |
| 0.045 | 5854 | 65.4 | 0 | 179 | 1.00 | 1 | 6.24 |

## Percolation

Sharp transition between 0.26 and 0.21: largest component 22% → 65%, at mean degree ≈ 5.
Full connectivity at 0.105. The corpus is a connected body of work; the earlier
title-matched edge set (70 edges, mean degree 0.8) sat far below the percolation threshold,
which is why every earlier geometric result was measuring islands.

## Dimensional capacity has a minimum

Non-monotone: 14.59 → **3.86** → 6.24. The minimum falls at 0.105 — the same threshold at
which the graph first becomes fully connected. Maximum connectivity coincides with maximum
dimensional compression. Not set up; fell out.

Shape-echo: the earlier embedding-dimension sweep also declined to a minimum near d=8 before
rising. Two non-monotone curves in independent parameters may share a cause. Unexplained.

## Competing readings

**Deflationary (must be ruled out first).** As the graph approaches complete, attraction
drives every pair toward the same rest length, and n points at uniform mutual distance form
a simplex requiring n−1 dimensions. The right-hand rise may be an artifact of the force law
rather than a property of the corpus.

**Structural.** The deflationary account does not predict the *location* of the turning
point. Below the minimum, eff dim measures disconnection — fragments occupying private
directions. Above it, homogenisation. Only at the minimum is it measuring structure: every
document reachable, nothing yet washed out. Tier II.

## Open, and what would settle it

- Run the same sweep on a degree-matched random graph with the same density ladder. If the
  minimum appears there too and at the same place, it is the force law. If not, it is the corpus.
- 4 seeds per point only. Effective dimension is a participation ratio, a soft measure.
- Threshold and density are confounded: the sweep varies one knob and reads two effects.
