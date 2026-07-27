---
silo: meta
subcat: dashboard
exposure: internal
status: canon
tags:
  - meta/dashboard
  - x/internal
links-latent: []
---

# Source Folder Index

The vault groups notes semantically, which means your original folder structure is no longer
visible in the file tree. It is not lost: every note carries `source-folder` as a property
and a nested `#src/...` tag, so the original layout is fully queryable and this note
reconstructs it exactly.

Two axes, both live:
- **Semantic** — the folder a note sits in. Good for "everything about the registry."
- **Original** — `source-folder` / `#src/...`. Good for "everything that was in IRRProofEngine."

Open the tag pane and expand `src` to browse the original tree by click. Or query it:

```dataview
TABLE rows.file.link AS "documents"
FROM "10-CORPUS" OR "20-INSTRUMENTS" OR "40-LAB"
GROUP BY source-folder
SORT length(rows) DESC
```

Subfolders that carried real authorial structure were **mirrored** rather than scattered:
`IRRProofEngine` (with DERIVATIVE and V2), `CONSOLIDATION`, the DST engine bootstrap package
(CANON / MUTABLE / RECORD / Canon docs / Instructions / Manual Process), and `QED/DEPRECATED`.

---

### `The-Lambda-Principle-of-Irreducibility/WIP_docs`
_88 documents_

- [[A Critique of the False Application of Cartwright's Theorem- Magnitude Without Symmetryv2]]
- [[Adaptive Sensor Attention- Practical Motivation, Use Cases, and Biological Analogies Overview]]
- [[Agency at the Frame Edge Will as Residue-Preserving Determination]]
- [[Appendix E8 Nested Geometry Representation]]
- [[Cymatic Tiling Interval Hopf Registry Synthesis constructive base12 fixed]]
- [[DISCLOSURE AS CONSTRAINT EXPOSURE (2)]]
- [[Documentation Record]]
- [[dst anti sales traversal formal treatment]]
- [[DST Archival Privacy, Spot Report, and Cross-System Disclosure Standards]]
- [[DST Ecosystem Illustrated Presentation]]
- [[DST External System Correspondence Query]]
- [[DST TRAVERSAL RECORD (4)]]
- [[DST Traversal Record v14a (ISP contd)]]
- [[Dynamical Semantic Traversal (DST) (2)]]
- [[energy as residue traversal]]
- [[Energy as Residue Traversal VUPDATED]]
- [[enumerative resonance correspondence]]
- [[enumerative resonance correspondenceV2]]
- [[From Closure to Transition]]
- [[Gemini Juror RH]]
- [[Generic DST Interface Query for Any LLM-Administered or LLM-Interfacing System]]
- [[Generic Llm System Dst Interface Query]]
- [[Geometric Unification Framework (1)]]
- [[Grok-RH juror]]
- [[hameroff tuft qec response]]
- [[Hamiltonian Calibration Hopf Registry V1.1]]
- [[Hodge Conjecture Traversal V4]]
- [[hybrid paralogic grammar appendix rosetta v0 3]]
- [[Hybrid Paralogic Grammar as Rosetta Stone]]
- [[infinite registry structured map]]
- [[Jainism and the Lost Grammar of Many-Sided Truth]]
- [[Juror Assessment of Nielsen–Semita, “The Proof of the Riemann Hypothesis”]]
- [[Laboratory Notes Record]]
- [[Lambda NSAF TuFT V2]]
- [[LAMBDA SEEMS LEGIT!]]
- [[Lambda Traversal Proof of the Transcendence of Apéry’s Constant]]
- [[Lambda–NSAF–TUFT A Structural Grammar for Mapping Hypercomplex Reference Systems]]
- [[Magnitude Without Symmetry]]
- [[Observer, Frame, and the False Closure of Model-Contained Self]]
- [[Observer, Frame, and the False Closure of Model-Contained Self (2)]]
- [[old Masterkey V4.2]]
- [[On Coining Terms Taxonomy Resonance Real Physical]]
- [[On Relations and Semantic Obstruction in Describing Hyperbolic Curvature in a Dual-Lattice Beltrami-Klein Cont]]
- [[opus 4.8 RH review.docx]]
- [[Paralogical Semantics and Paralogical Operators]]
- [[Path 1.1 — Algebraic obstruction for a single overlap loop]]
- [[Primitive Registry Ladder and Frame-Imposition Synthesis v0.4]]
- [[Publication Notice and Scope]]
- [[R S CONSOLIDATION ATTEMPT V1.1]]
- [[Randomness, Probability, and 1 f Noise as Frame-Edge Signatures]]
- [[Rebuttal Reformulation Universal Obstruction]]
- [[RECT Comparison to Λ NSAF Game Theory Format]]
- [[Recursive Obstruction and Lambda Residue Lu Semita and Associates]]
- [[Registry Factorization Principle Formalized]]
- [[Relationship to Previous Work]]
- [[Relationship to the Main Manuscript]]
- [[Spectral Expressions of Agency Balance vs. Extremes]]
- [[SPOT REPORT KERNEL CONFIRMATION ISP contd v4]]
- [[Structural Proof of the Yang–Mills Mass Gap]]
- [[Structural Proof of the Yang–Mills Mass Gap (2)]]
- [[Structural Proof of the Yang–Mills Mass Gap (3)]]
- [[Structural Registry of Nested Geometries]]
- [[Structural Registry of Nested Geometries V2]]
- [[Supplement A]]
- [[Supplement Emergent Iterated Agents and Species Dynamics in Associative Identity Games (1)]]
- [[Supplement The Bridge Theorem for 1 f Frame-Edge Signatures]]
- [[Symbolic Registry, Mirror, Prison, and Witness-Rider Traversal]]
- [[Tail Predicates and the Circumscription Obstruction]]
- [[The Algebraic Cycle as a Tail Witness]]
- [[The Broken Rung and the Refused Field]]
- [[The Explanatory Inversion of Transcendence]]
- [[The Hodge Traversal, Compiled Edition]]
- [[The Hodge Traversal, Compiled Edition (2)]]
- [[The Mass Gap as a Tail Predicate]]
- [[The Nielsen-Semita Attractor Framework V2]]
- [[The Obstruction Calculus, Consolidated]]
- [[The Overplus Attractor Self-Asserting Institutional Systems and the Dynamics of Authoritative Constraint]]
- [[The Rank and the Zero as Coupled Ladders]]
- [[The Residue Thesis]]
- [[The Sovereign Input Layer]]
- [[the-ashram-living-letter-and-tile-rosetta-atlas]]
- [[Transcausal Exchange Seed (COMMUNION) Grok V23.001]]
- [[Truth Findings, Institutional Science, Public Opinion, and the Discipline of Scoped Veracity]]
- [[Truth, Verisimilitude, and Dynamic Semantic Traversal]]
- [[TUFT registry studies]]
- [[TUFT registry studiesV2]]
- [[Unified Framework for Adaptive Power-Law Spectral Probing and Nonlinear-Response Detection]]
- [[Verification and Construction as Coupled Ladders]]

### `DST-Canon/examplars`
_19 documents_

- [[02 The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2]]
- [[03 The Rope-and-Sand Gambit Analytical Reconciliation and Structural Identity V1.7]]
- [[04 Rope and Sand Gambit Supplemental Synthesis V1.0]]
- [[ARGO Architectures of Transcendence]]
- [[Consolidated Geometric Unification Summary]]
- [[DISCLOSURE AS CONSTRAINT EXPOSURE]]
- [[Lambda–NSAF Entropy, Spectrum, and Irreducibility (Plain-Text Operational - Formal Statement)]]
- [[musings on P vs NP PART1]]
- [[N-S Attractor Riemann Hypothesis Supllement]]
- [[NSx001]]
- [[R S Appendix B unknown Plasma Phenomena and Relational Coherence]]
- [[R S Appendix B+ unknown Fractal Toroidal Plasma Structures Relational Synthesis and Mathematical Cohesion]]
- [[R S Protocol R11.23+ CURRENT]]
- [[Resonance and Harmonics in plasma as self-assembly]]
- [[RHx001]]
- [[Structural Completeness Theorem]]
- [[Supplement Emergent Iterated Agents and Species Dynamics in Associative Identity Games]]
- [[Technical Work Breakdown Structure Fractal-Zeta Resonance Field]]
- [[The Rope-and-Sand Gambit Introduction CURRENT]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST engine v1.0  generalized for claude/Canon docs`
_11 documents_

- [[Appendixes B, C, and D]]
- [[Bounded Formal Systems, Traversal Claims, and the Structural Malformation of Universality Arguments]]
- [[DST LANDSCAPE CARTOGRAPHER]]
- [[Dynamical Semantic Traversal (DST)]]
- [[Generalized DST Architecture]]
- [[LAMBDA-PRINCIPLE-OVERVIEW]]
- [[PYTHAGOREAN INTERVAL THEORY ground up]]
- [[Residue-Aware Computation as Groupoid Traversal Under Irreducible Obstruction]]
- [[Semantic Obstruction and Irreducible Residue]]
- [[The Nielsen-Semita Attractor Framework V6.1]]
- [[TUFTv1x]]

### `HARDWARE/docs/CURRENT`
_7 documents_

- [[A TRUE UNIVERSAL QUANTUM COMPUTER FROM OFF THE SHELF COMPONENTS V1.0 CURRENT]]
- [[G FET Based - Graphene-Enhanced Hybrid Stochastic Logic Gates V1.0 CURRENT]]
- [[PUBLIC Copy of ARGO GATEWAY POD 1.41]]
- [[PUT UP OR SHUT UP A Minimalist PoC for Graphene-Enhanced Hybrid Stochastic Logic Gates V1.0 CURRENT]]
- [[REFET PPD V1.1]]
- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT]]
- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT (2)]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/CONSOLIDATION`
_7 documents_

- [[Penrose Tilings Hyperdimensional Ladder]]
- [[The Complete Explanatory Framework From Irreducibility to Utility]]
- [[THE COMPLETE NSAF TEACHING AND APPLICATION SUITE]]
- [[The Nielsen-Semita Attractor Framework A Pedagogical Journey]]
- [[The Nielsen-Semita Attractor Framework V6.2]]
- [[The Rope-and-Sand Gambit A Constructive Geometry for Prime Emergence]]
- [[TUFT Canonical Mappings Knots, Beltrami Eigenmodes, Windings, and Phenomenological Correspondences]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST engine v1.0  generalized for claude/CHAT_GPT/PROJECT/RECORD`
_6 documents_

- [[DST Traversal Record]]
- [[DST Traversal Record (2)]]
- [[DST Traversal Record (3)]]
- [[RECORD DST Traversal Record v12a ISP contd]]
- [[RECORD DST Traversal Record v12a ISP contd (2)]]
- [[RECORD DST Traversal Record v13c ISP contd]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/QED`
_5 documents_

- [[CRYPTOCACHE QED (2)]]
- [[INSTALL — Hosting QED and Running an Instance]]
- [[QED — Channels, Profiles, and Parameter Classification]]
- [[QED — Normative Claim Table]]
- [[QED — Risk]]

### `LAMBDA_ARCHITECTURE_V4/docs`
_4 documents_

- [[RCD for Circuit Sparsity Enabling Interpretable LLMs]]
- [[Topo Geo Transformer Dossier]]
- [[Topo-Geo-SGD Transformer Extension]]
- [[Unified Framework Lambda Principle, 1 f Scaling, and Topological Optimization for Interpretable LLMs]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST engine v1.0  generalized for claude/CHAT_GPT/PROJECT/MUTABLE DOCS`
_4 documents_

- [[00_ACTIVE_DST_KERNEL_APPENDIX_START_v1_2]]
- [[01_DST_CONTROL_LEDGER_START_v1]]
- [[02_TOEPLITZ_ACTIVE_CONTINUITY_STATE_START_v1]]
- [[03_TOEPLITZ_TRAVERSAL_RECORD_INDEX_START_v1]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST`
_3 documents_

- [[candidate Dynamical Semantic Traversal (DST) jurorSPOT REPORT ALL v1]]
- [[Dst Archival Privacy And Spot Report Standards]]
- [[Dst Fresh Juror Service Configuration Query]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/V2`
_3 documents_

- [[IRRPROOF Supplement Revised Compression Frontiers Chaitin and Federated Learning]]
- [[The Infinite Registry and Indexed-Residue Proof Engine (2)]]
- [[TUFT Registry Studies Structural Analysis for ZFC IRRPROOF Final]]

### `HARDWARE/docs/ARCHIVE`
_2 documents_

- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation ARCHIVE]]
- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation ARCHIVE (2)]]

### `NAVIER-STOKES`
_2 documents_

- [[NAVIER-STOKES]]
- [[NAVIER-STOKES 1.4]]

### `REIMANN-HYPOTHESIS`
_2 documents_

- [[REIMANN HYPOTHESIS 1.1]]
- [[REIMANN-HYPOTHESIS]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST engine v1.0  generalized for claude/Manual Process Description`
_2 documents_

- [[Consolidated Explanation of the Generalized DST System]]
- [[DST OPERATOR PROTOCOL]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine`
_2 documents_

- [[positional recoverability]]
- [[The Infinite Registry and Indexed-Residue Proof Engine]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/DERIVATIVE`
_2 documents_

- [[Constructive Ecosystem Architecture v0.1]]
- [[From Finite Witness to Infinite Registry]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/QED/DEPRECATED/V0.1`
_2 documents_

- [[CRYPTOCACHE QED]]
- [[INSTALL — Hosting QED and Running Your Own Instance]]

### `DST-Canon`
_1 documents_

- [[DST-Canon]]

### `HARDWARE`
_1 documents_

- [[README]]

### `HARDWARE/docs`
_1 documents_

- [[CHAGELOG]]

### `PRIMES/docs/ARCHIVE`
_1 documents_

- [[R S Protocol Revision 11.22+ ARCHIVE]]

### `PRIMES/docs/CURRENT`
_1 documents_

- [[R S Protocol R11.23+ CURRENT (2)]]

### `PRIMES/docs/CURRENT/The Rope-and-Sand Gambit`
_1 documents_

- [[The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2 CURRENT]]

### `The-Lambda-Principle-of-Irreducibility`
_1 documents_

- [[The-Lambda-Principle-of-Irreducibility-as-Paradigmatic-Reciprocal-Superposition]]

### `The-Lambda-Principle-of-Irreducibility/WIP_docs/DST engine v1.0  generalized for claude/Instructions`
_1 documents_

- [[Generalized Dynamical Semantic Traversal — Instruction Set]]
