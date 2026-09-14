# Lambda Dictionary — successor R4

Lu Semita · EmergenceByDesign · 14 September 2026

R4 preserves the supplied dictionary and the marked R2/R3 notes, corrects internal name spelling, and adds entry 30 on institutional recognition. All 278 theorem declarations in the accompanying packet have fresh R4 execution receipts, including four new conditional signal results. The count excludes supporting definitions and does not certify the dictionary or its mappings wholesale. Earlier status notes below are explicitly historical. New notes take precedence at their named coordinates.

# THE LAMBDA DICTIONARY

## Terms in Dependency Order, with Declared Scope, Mappings-In, and Formalization Targets

**Lu Semita · EmergenceByDesign**
Snapshot edition · 12 September 2026 · **revise in place until sent to review**

---

## 0. Standing

### 0.1 What this is

A dictionary of the terms the Lambda program uses, in the order each becomes available, such that no entry uses a term defined later.

Each entry carries six fields:

| Field | Content |
|---|---|
| **Root** | Etymology, and whether the technical use recovers it, departs from it by declaration, or tracks the root against a later drift |
| **Declared** | The operative meaning, stated at the strength at which it is actually held |
| **Scope** | What the term holds within and what it does not claim |
| **Established** | Where the result licensing the term lives — a pointer, never a restatement |
| **Maps in** | What from other domains is a faithful realization of this entry |
| **Lean** | The declaration encoding it, existing or targeted |

### 0.2 What it claims, and the one thing it does not

The **Maps in** field is the substance. It is the claim that other descriptions are **admitted by** this registry, not replaced by it — that group theory, spectral analysis, thermodynamics, chemistry, music, and metrology are faithful realizations of a structure the registry also admits.

**This is not a claim of fundamentality.** The registry is not asserted to underlie those domains, to be prior to them, or to explain why they are as they are. Nothing here says the registry exists before its use. An axiom is chosen, not discovered; a first mark pronounces itself standard and has no comparator; and the registry is what admits relations, not an object found beneath them. A reader who takes **Maps in** as "therefore the registry is what these things really are" has made exactly the promotion the program blocks.

What is claimed is narrower and checkable: **the mapping exists, is faithful, and is exhibited.** That claim survives without fundamentality and would not be strengthened by it.

### 0.3 Snapshot status

This is a snapshot at a declared date and vocabulary. Match recognition is vocabulary-relative: a later reading of the same corpus may expose entries and mappings not visible now, without any file changing. It is expected to be extended, and it does not supersede or replace the papers it points at.

**It is a redundancy, declared as one.** Its content exists elsewhere in the corpus, in the established papers; what it adds is dependency order and cross-domain mapping in one place. It is produced knowingly for that reason.

### 0.4 Formalization status

Every entry names a Lean target. Some targets exist in submitted kernels; some are written here for the first time. **No kernel in this program has been executed.** Nothing below is asserted to have been machine-accepted, and the `Lean` field names an encoding target, not a certificate.

---

# TIER I — CONSTITUTION OF A REGISTRY

*Nothing in this tier presupposes number, space, time, quantity, or physics.*

---

## 1. distinction

**R2 successor note.** Conveyance extension: this instrument models distinct source/target positions while allowing the same carrier in both. The proposition that all meaningful reference requires an equivalent discrimination remains a declared bridge. See the R2 paper §1.1 and `LambdaConstitutive.role_positions_differ` / `one_carrier_can_fill_both_roles`.

**Root.** Latin *distinguere* — *dis-* apart + *stinguere*, to prick or mark. To separate by making a mark. **Faithful**: the root is an act, not a found boundary.

**Declared.** A distinction is **drawn**. It is the first act of a construction and takes nothing as given. Nothing is claimed about what it divides.

**Scope.** Undeniable only in the sense that denying it performs it — a denial distinguishes the denial from what it denies. It is *not* claimed to be fundamental, prior, or the bottom of anything. It is the first step of *this* construction; another construction may begin elsewhere and be compared by cost (§25), though two first marks cannot be compared directly (§2).

**Established.** Reference polarity: source-role and target-role remain distinct even when the carrier is the same, and remain distinct at any indexed repetition. *Lambda, Reference, and the Spatiotemporal Descriptive Frame*, §5–§6.

**Maps in.**

| Domain | Realization |
|---|---|
| Logic | The two sides of any binary predicate |
| Set theory | Membership versus non-membership under a given predicate |
| Physics | The measurement cut — what is registered versus what is not |
| Linguistics | Segmentation: any act of naming divides named from unnamed |
| Jain epistemology | A *naya* — a standpoint that attends to some invariants and suppresses others |
| Computation | The first bit |

**Lean.** `RefRole`, `asSource`, `asTarget`, `reference_polarity`, `reflexive_reference_preserves_role_distinction`.

---

## 2. mark

**Root.** Old English *mearc* — a boundary, a limit, a sign placed. **Faithful**: a mark is placed by someone, and the placing is the act.

**Declared.** A mark is a placed token that stands for a drawn distinction and persists long enough to be returned to.

**Scope.** A mark requires a substrate that holds it. That substrate is **decaying** — no medium is a perfect store — so a mark's legibility is a function of time, though its *having been placed* is not. A **first mark** has no comparator: it pronounces itself standard, so nothing yet stands as a standard against it. Registries are compared by cost; origins are not.

**Established.** No-absolute-store: a store is not decoder-free, capacity forces collision below cardinality, and inscription does not fix interpretation. *Lambda III*, L52, and the interpretation results.

**Maps in.**

| Domain | Realization |
|---|---|
| Metrology | A graduation on an instrument |
| Number theory | A residue class representative |
| Writing | A grapheme |
| Genetics | A base pair as a token in a sequence |
| Music | A named pitch |
| Computation | A stored bit; a content address |

---

## 3. criterion

**Root.** Greek *kritērion*, a means of judging, from *krinein*, to separate or decide. **Faithful and exact**: the root sense *is* separation, and the encoding is a separating function.

**Declared.** A criterion is a rule that sorts. Formally, a function from a domain to a set of outcomes; the minimal nontrivial case is Boolean.

**Scope.** A criterion is **distinct from a mark**. A mark is a token placed; a criterion is a rule for sorting. Neither is prior — asking which came first presumes an order in an object rather than in a construction, and the construction is chosen. The two are one act described from two sides, and are separated here because their roots differ and the difference is load-bearing.

An **exclusion** is criterion-relative: the excluded condition does not disappear, it remains present negatively through the predicate whose complement defines it. Forming an exclusion is free; re-including the excluded class costs strictly more logic (double-negation collapse is the classical step).

**Established.** Criterion, partition, complement, exclusion. *Lambda, Reference*, §7. Binary and k-ary inadequacy: *Lambda III*, L14–L15, L52–L55.

**Maps in.**

| Domain | Realization |
|---|---|
| Chemistry | Valence-count rules deciding whether a bond assignment is admissible |
| Crystallography | The restriction 2cos(2π/n) ∈ ℤ, deciding which rotation orders a periodic lattice hosts |
| Number theory | Divisibility; primality as the absence of an intermediate divisor |
| Statistics | A decision threshold |
| Law | A test of admissibility |
| Machine learning | A classifier's decision boundary |

**Lean.** `SelfSide`, `OtherSide`, `NontrivialCriterion`, `ExcludedBy`, `exclusion_is_criterion_relative`, `binary_criterion_has_collision`, `kary_criterion_has_collision`.

---

## 4. registry

**Root.** Late Latin *regesta*, things recorded, from *regerere*, to carry back. **Faithful**: the noun names the standing residue of an act of carrying back. It is a nominalized act, not a container.

**Declared.** A registry is what admits relations. It is constituted by marks and criteria; it does not pre-exist them.

**Scope.** **The registry is not asserted to be an object existing prior to its use.** Asking whether it is "really there first" requests a standpoint the framework says nobody occupies. It supplies relation; it never supplies scale. A registry is **registry-real**: real as stored, compared, named, measured and reused inside a declared frame — which is neither "really there" nor "merely constructed."

A registry may be **structured** (a low-complexity generative schema) or **inert** (descriptively complete, no selection principle, membership conveying ≈0 bits). Completeness without a schema lowers value rather than raising it; a schema is what forbids, and forbidding is content.

**Established.** *Completeness Is Not Comprehension*; the structured-map results; registry factorization.

**Maps in.**

| Domain | Realization |
|---|---|
| Group theory | ℤ/nℤ; any Lie group under left translation; a root lattice |
| Topology | The Hopf fibration's nested shells S¹ ⊂ S³ ⊂ S⁵ ⊂ S⁷ ⊂ S⁹ |
| Chemistry | The periodic table as shell structure |
| Music | The twelve-tone cyclic registry C₁₂ |
| Proof theory | An admitted set of proof objects with a cost |
| Metrology | The SI system of base and derived units |
| Computation | A content-addressed store; a binary-addressed registry |

**Lean.** `Registry` as (states, observables, operations, invariants); `UniqueOutcome`; `indexedResidue`.

---

## 5. admissible

**Root.** Latin *admittere*, to let in — *ad-* to + *mittere*, to send. **Faithful**: admission is a decision to let something in, made by whoever holds the gate.

**Declared.** The established predicate governing registry membership. A state, relation, mode, or procedure is admissible when the registry's declared criteria let it in.

**Scope.** Admissibility is **declared, not discovered**. The corpus's own count: *admissible* dominates over *permits* or *hosts* by an order of magnitude and is the term to use. Everything downstream is relative to the admitted set: enlarging it can defeat an obstruction, narrowing it can create one, and either move must be recorded (§13).

**Established.** Throughout; the predicate `Admissible` in the residual-selection kernel.

**Maps in.**

| Domain | Realization |
|---|---|
| Functional analysis | A declared function class — smooth, compactly supported, finite energy |
| Fluid dynamics | Admissible initial data in the Clay formulation |
| Proof theory | The admitted axiom basis of a formal system |
| Quantum mechanics | The domain of a self-adjoint operator |
| Chemistry | Which electron configurations are permitted by the counting rules |

**Lean.** `Admissible : J → Prop`; `FairStandard`; `DeclaredCriteria`.

---

## 6. transport

**R2 successor note.** A shared compendium records the predicate at each end of a translation. Composition requires the same middle predicate: `translation_composes`. The counterexample `changed_middle_predicate_breaks_composition` shows why independent success badges do not suffice.

**Root.** Latin *transportare*, to carry across. **Faithful**: a transport carries structure from one place to another without claiming the places are the same.

**Declared.** A relation that moves states within a registry, or carries structure between registries. Within one registry: a step, a generator, an action. Between registries: an encoding.

**Scope.** A transport preserves what it is shown to preserve and no more; its preserved structure must be **stated**. A transport between registries is a **translation**, and translation carries **residue** (§12).

**Established.** Registry morphism: not required to preserve all structure, preserved structure must be stated. Predicate preservation and its closure under the connectives: *Lambda III*, L19–L23.

**Maps in.**

| Domain | Realization |
|---|---|
| Group theory | Left translation L_g; the group action itself |
| Arithmetic | The step x ↦ x + k on ℤ/nℤ |
| Differential geometry | Parallel transport; a left-invariant vector field |
| Music | Transposition by a fixed interval |
| Number bases | Writing an integer in base 2, 10, 12, 60 — the numeral changes, divisors and primality do not |
| Dynamics | The time-evolution operator |

**Lean.** `PreservesPredicate`, `preserves_and/or/not/imp`, `orbit`, `relabeling_preserves_orbit`.

---

### Tier I result: coprimality decides reach

Not a term but the first theorem available once §1–§6 are in place, and it recurs in every later tier.

A step *s* on a cyclic registry of size *n* closes after **n / gcd(n, s)** states. It reaches the whole registry exactly when gcd(n, s) = 1.

**Maps in.** The circle of fifths is ⟨7⟩ = ℤ/12ℤ, and works *because* gcd(7,12) = 1 — a diagram is not doing the work, a coprimality is. Primality is the condition that *every* nonzero step traverses. Polygonal interference: gcd = 1 delays realignment maximally, gcd = d > 1 closes early. Chladni degeneracy is governed by r₂(N) = 4(d₁(N) − d₃(N)) and primes ≡ 3 mod 4.

**Lean target.** `addOrderOf (k : ZMod n) = n / gcd n k`; the prime TFAE.

---

# TIER II — REPRESENTATION AND ITS LOSS

*This tier is where the Lambda Principle proper lives.*

---

## 7. projection

**R2 successor note.** Tail-call frame reuse motivates a projection example; it does not itself prove that all retained data lose depth. Explicit arguments and accumulators may retain it. See `erased_depth_has_no_decoder`, `threaded_depth_has_decoder`, and `retained_argument_can_recover_depth`.

**Root.** Latin *proiectere*, to throw forward — *pro-* + *iacere*, to throw. **Faithful**: something is thrown onto a surface, and what lands is less than what was thrown.

**Declared.** A projection, or **readout**, is a map from a source to a report. Capture *is* projection: whatever is not in the readout's separating power is absent from the record at the moment of recording.

**Scope.** **Projection is not sequestration.** Absence from the report is not absence from the source. A projection may be perfectly **exact for its declared target** while non-injective on its source — target adequacy and source exhaustion are different predicates, and a one-bit answer may completely solve the question it was built for.

**Established.** The Lambda Enlargement Law; target-exact compression can lose other distinctions. *Lambda, Reference*, §9–§10.

**Maps in.**

| Domain | Realization |
|---|---|
| Topology | The Hopf map π : S³ → CP¹ |
| Geometry | Stereographic projection |
| Analysis | Littlewood–Paley band projection; the Leray projector |
| Spectral theory | The readout λ(z) = 2 − z − z⁻¹ |
| Relativity | Taking one coordinate of a spacetime separation |
| Cartography | A Thomas guide: target-exact for driving, lossy about the globe, and better for the trip |
| Publishing | A public label; a status badge |

**Lean.** `FactorsThrough`, `collision_blocks_factorization`, `target_exact_compression_can_lose_other_distinctions`.

---

## 8. recoverability

**R3 successor note.** Recovery now has a temporal scope: `ExactAt` and `Through` state the target and horizon. A source-to-receipt correspondence is not an unconditional claim about future access.

**R2 successor note.** For repeated use, snapshot recovery needs an additional update obligation. `AppendCompatible` requires equal encoded histories to remain equal after the same appended event. The two update-existence theorems and `online_target_recovery` make this temporal condition explicit.

**Root.** Latin *recuperare*, to get back. **Faithful.**

**Declared.** A target *Q* is recoverable from a readout *P* when some decoder returns *Q* given only what *P* reports: ∃ g, g ∘ P = Q. Written **factors-through**.

**Scope.** **Terminological guard.** *Factors-through* is not *factorization pair* — the corpus uses the root for two operations, and the bare noun should never appear. No restriction is placed on the decoder: it need not be computable, efficient, or finitely presented. The obstruction is therefore not a complexity claim.

**Established.** The collision dichotomy. *Lambda III*, L01–L05.

**Maps in.**

| Domain | Realization |
|---|---|
| Information theory | Sufficiency of a statistic |
| Coding | Decodability |
| Category theory | Factoring a morphism through an epimorphism |
| Cryptography | The distinguishing advantage of an adversary given only a transcript |

**Lean.** `FactorsThrough`, `factorization_dichotomy`, `injective_factors_all`.

---

## 9. collision

**Root.** Latin *collidere*, to strike together — *com-* + *laedere*, to strike. **Faithful**: two things arrive at the same place.

**Declared.** Two source states with the same report. A readout either has none — and then recovers every target — or has one, exhibitable as a named pair.

**Scope.** **The dichotomy is exhaustive for nonempty domains**; there is no third case. Over an empty domain every map is vacuously injective while the decoder cannot be constructed, so nonemptiness is load-bearing and is not decoration.

**Established.** *Lambda III*, L01–L05, L59.

**Maps in.**

| Domain | Realization |
|---|---|
| Reference | A public label exposing two operative meanings |
| Spectra | λ identifying z with z⁻¹ |
| Relativity | Two separations with different causal class sharing one coordinate |
| Search | "Not found" — same value on *absent* and *present but unsearched* |
| Adjudication | Two claims sharing declared criteria and receiving different verdicts |
| Editing | A claim stripped of its scope index |

**Lean.** `not_injective_iff_collision`, `same_label_can_hide_different_meanings`.

---

## 10. symmetry

**Root.** Greek *summetria* — *syn-* together + *metron*, measure. **Common measure.** Strikingly faithful: a symmetry is exactly what two configurations share a measure under, and the obstruction below is that a shared measure cannot separate what it does not measure.

**Declared.** A transformation under which a declared vocabulary is invariant. An **involution** is a symmetry that is its own inverse: σ∘σ = id.

**Scope.** The symmetry route to non-recoverability is **stronger than the collision route** and requires no witness: if the vocabulary is symmetric, an antisymmetric target is unrecoverable — for every layout, every decoder including non-computable ones, every symmetric vocabulary including infinite ones. A failed search is then **provably futile**, not insufficiently thorough.

Its price: **symmetric structure may be free, but orientation is never free.** Every relation distinguishing (u,v) from (v,u) costs at least one supplementary datum.

**Established.** *Positional Recoverability*, Theorem 5.1, Remark 5.2, Corollary 5.3. Imported with provenance as *Lambda III* L72–L73. **This is not a result of the Lambda III kernel.**

**Maps in — and the cost is attained in each.**

| Domain | Involution or symmetry | Cost |
|---|---|---|
| Lie theory | Inversion on the non-simply-laced Cartan types | exactly 1 datum, all 15 cases |
| Spectra | z ↦ z⁻¹ on the spectral readout | exactly 1 bit off the square roots of unity |
| Adjudication | Semantic reversal, D² = id — flips accumulate no new facts | 1 bit, unrecoverable from the flip count |
| Priority claims | Exchange of relata | 1 admitted antisymmetric primitive |
| Chemistry | Chirality: enantiomers share every scalar observable | 1 supplementary orientation datum |
| Physics | Parity; time-reversal | 1 orientation choice |

**Lean.** `symmetry_blocks_recovery`, `exchange_invariant_readout_loses_priority`, `spectral_fibre_at_most_pair`, `spectral_fibre_singleton_iff`.

---

## 11. fibre

**Root.** Latin *fibra*, a filament or thread. **Faithful**: a thread of states lying over one point of the report.

**Declared.** The set of source states sharing a report value. Loss is exactly the non-singleton fibres.

**Scope.** A fibre is a fact about a **declared** projection, not about the source. Changing the readout changes the fibres. Deterministic post-processing cannot split a fibre already identified.

**Established.** `postprocessing_cannot_split_fibre`; `target_difference_blocks_factorization`.

**Maps in.**

| Domain | Realization |
|---|---|
| Topology | The Hopf fibre S¹ over a point of CP¹ |
| Spectra | {z, z⁻¹} over one spectral value |
| Statistics | A level set of a statistic |
| Cryptography | The preimage set of a hash value |
| Reference | The two meanings under one label |

---

## 12. residue

**Root.** Latin *residuum*, that which sits back — *re-* + *sedere*, to sit. **Faithful**, and explicitly guarded in the corpus as an **indexed cost, not an unqualified substance**.

**Declared.** What a representation does not carry. **Five distinct objects share this word and must not be collapsed:**

| Kind | Definition | Type |
|---|---|---|
| **Residual will** | selection not forced by the registered conditions | a *selection* |
| **Indexed residue** | inf of a declared cost over admitted representations | an *extended real* |
| **Positional residue** | least number of pairs carried outside the schema | a *cardinal count* |
| **Supplementary residue** | Tgt ∖ Rec_Γ(Tgt) | a *set* |
| **Directional translation residue** | S_B ∖ Im(τ) | a *set*, direction-indexed |

Positional and supplementary residue are the **count and the set of one thing**. The other three are genuinely distinct.

**Scope.** Only positional residue is a sharp count with an attained lower bound. The others are not comparable to it and must not be cited as though they were.

**Established.** *Lambda, Reference* §8; the cost-index discussion; *Positional Recoverability* Def 4.4; *Before the Proof* §17.3 and §26.

**Maps in.**

| Domain | Realization |
|---|---|
| Thermodynamics | Entropy as unrecovered microstate distinction |
| Information theory | Kolmogorov complexity of the unexplained part |
| Translation | What a rendering drops, recorded rather than ignored |
| Numerical analysis | The residual of a scheme |
| Fluid dynamics | The force defined as the residual of a constructed flow |

**Lean.** `ResidualWill`, `indexedResidue`, `residue_monotone`, `nat_cost_registry_attains_minimum`.

---

## 13. enlargement

**Root.** Latin *largus*, abundant, via *enlarge*. **Faithful**: the admitted set grows.

**Declared.** Adding a relation that separates a fibre the current projection collapses. **The dimensional ladder is the method**: where a description meets an obstruction, reach into a higher dimension, and the obstruction resolves as structure rather than as failure.

**Scope — the most misread entry, and the guard is the corpus's own.**

An enlargement is **not free**, and the accounting must record the admission. Whatever antisymmetric information a scheme recovers, it recovers **because an antisymmetric primitive was admitted**. Discharging an obligation by proving it from a new premise **transfers** the obligation; it does not reduce it.

An enlargement also **preserves what was true at the old scope**. It does not reverse a prior assignment — that would be error, the one operation that reaches back and carries the highest burden. A *flip* presented as an enlargement is the tell that a standing assumption was reassigned rather than declared.

And the ladder is **not a universal escape**. The crystallographic restriction and gcd closure say precisely which obstructions are resolvable by which enlargement.

**Established.** The Lambda Enlargement Law; *Positional Recoverability* Remark 5.4; the admission-accounting result `discharge_does_not_reduce_adoptions`.

**Maps in.**

| Domain | Realization |
|---|---|
| Topology | S³ → S⁵ → S⁷ → S⁹: SU(3) cannot act on S³, so the shell rises |
| Analysis | Complexifying time to admit semigroup damping |
| Set theory | Large cardinals collapsing an independence obstruction |
| Algebra | Field extension to admit a root |
| Crystallography | Quasiperiodic projection where a periodic lattice cannot host 5-fold symmetry |
| Measurement | Adding an instrument that separates a previously merged pair |

**Lean.** `discharge_does_not_reduce_adoptions`, `symmetry_blocks_recovery` with the vocabulary as parameter.

---

# TIER III — MEASUREMENT AND SCALE

*Nothing in Tier I or II supplies a number. This tier is where quantity enters, and it enters once, by declaration.*

---

## 14. operator

**Root.** Latin *operari*, to work. **Faithful**: an operator is what *does* something to a registry state.

**Declared.** A map acting on registry states whose structure selects a readout. The registry organizes; the **operator interrogates**.

**Scope.** **A registry does not select an operator.** Cyclic symmetry fixes a useful eigenbasis; it does not fix the eigenvalues. Different operators on the same registry give different physics and different spectra. An operator is an **admission**, and the admission is recorded.

**Established.** *Operator Calibration over the Hopf Registry*; the cyclic Laplacian derivation.

**Maps in.**

| Domain | Realization |
|---|---|
| Geometry | Beltrami, B = ⋆d on the contact distribution |
| Quantum mechanics | Dirac; any Hamiltonian |
| Graph theory | The cyclic Laplacian 2I − S − S* |
| Vector calculus | curl, acting diagonally on Beltrami modes |
| Acoustics | The membrane Laplacian generating Chladni figures |

**Lean.** Operator as a declared map with a `RegistryCompatible` predicate; `spectralRead`.

---

## 15. spectrum

**Root.** Latin *spectrum*, an appearance, from *specere*, to look. **Tracks the root against a later drift**: the optical sense is a specialization, and the corpus uses the general one — what an operator shows when it looks.

**Declared.** The eigenvalue family an operator produces on a registry. The **dimensionless ratios** within a spectrum are registry-determined; the units are not.

**Scope.** A bare spectrum determines its gap ratios and nothing more. Its gauge group is exactly the positive affine maps E ↦ aE + b with a > 0; the complete invariant is the family of gap ratios; the residual freedom is exactly two real parameters, reduced to one by fixing a scale and to zero by fixing a scale and a zero.

**Established.** `gaps_determine_up_to_shift`, `affine_calibration_unique`; the cyclic spectral derivation.

**Maps in.**

| Domain | Realization |
|---|---|
| Finite geometry | Λ(m,k) = m² + k(k+1) on the Hopf shells |
| Graph theory | 4sin²(πa/n) for the cyclic Laplacian |
| Particle physics | Shell mass scales from zeta-regularized determinants |
| Chemistry | Atomic energy levels |
| Acoustics | Modal frequencies of a membrane |
| Music | The overtone series |

---

## 16. invariant

**Root.** Latin *in-* not + *variare*, to change. **Faithful.**

**Declared.** What survives a declared re-description. An invariant is always **relative to a stated transformation class** — there is no invariance simpliciter.

**Scope.** Naming a quantity invariant without naming the class is the commonest unmarked scope drift in this vocabulary.

**Maps in.**

| Domain | Realization |
|---|---|
| Relativity | The interval x² − T², preserved under boosts |
| Topology | Linking number; the Hopf invariant; Chern number |
| Knot theory | Lk = Tw + Wr, with the sum invariant and the terms not |
| Arithmetic | Divisors and primality under base change |
| Dynamics | Minimal period under conjugation |

**Lean.** `lorentz_interval_preserved`, `boost_normalization_composes`, `relabeling_preserves_return`.

---

## 17. calibration

**Root.** Via French *calibre*, a bore or mould — a standard form against which others are cut. **Faithful**: a calibration is the declared mould.

**Declared.** The single declared correspondence between a dimensionless registry ratio and a unit-bearing quantity. **Registry gives relation; calibration gives scale; connection carries it across the connected spectrum.**

**Scope — the load-bearing entry of Tier III.**

Scale does not emerge from relation. It enters **once**, by declaration, and propagates only where the spectrum is **connected** — one anchor per connected component, not one globally. A registry does not select which operator is physical, and an operator in dimensionless units does not determine a joule.

Because the registry is not a pre-existing object (§4), **scale could only ever enter by declaration**. Calibration is therefore a consequence of the registry's status, not an extra caution bolted on.

**Established.** The Operator Calibration Principle. Generalizes the Beltrami case to **any registry-compatible operator with an SI-interpretable connected spectrum**.

**Maps in.**

| Domain | The single anchor |
|---|---|
| Particle physics | The Fermi constant with its electroweak VEV — and α, shell mass scales, couplings follow |
| Metrology | Δν_Cs fixing the second; c fixing the metre; h fixing the joule-second |
| Chemistry | Atomic masses, once the particle spectrum is anchored |
| Music | A tuning reference; the registry fixes ratios, the reference fixes pitch |
| Cartography | The scale bar |

**Lean.** `planck_rescaling_rigid`, `planck_two_constants_insufficient`, `fixed_c_couples_unit_rescaling`, `calibrated_ratios_determine_values`.

---

## 18. ratio

**Root.** Latin *ratio*, a reckoning, from *reri*, to reckon. **Faithful**: a ratio is what is reckoned, prior to any unit.

**Declared.** A dimensionless relation between registry elements. Ratios are **metric-free** and available before any calibration.

**Scope.** This is what makes §17 non-circular. If ratios were read off a calibrated spectrum, calibration would be an identity. They are not: topological invariants — winding, linking, Hopf invariant — are insensitive to metric rescaling and are fixed before any metric exists.

**Maps in.**

| Domain | Realization |
|---|---|
| Topology | Hopf invariant; linking number; Chern class |
| Arithmetic | gcd, lcm, orbit period n/gcd(n,k) |
| Music | The interval p:q as two windings on a fibre |
| Geometry | Angle; the Pythagorean comma 3¹²/2¹⁹ as an exact rational residue between two registries |
| Physics | Mass ratios; α; mixing angles |

---

# TIER IV — WARRANT AND TERMINATION

*This tier is about claims, not about registries — what a result carries, and how a construction stops.*

---

## 19. scope index

**R3 successor note.** Record the condition origin separately from the present assessment basis. Holder, observation route, carrier, time horizon, and intervention route qualify different claims.

**R2 successor note.** Marked reuse carries holder, scope, basis, claim, and origin. Same-scope proof reuse appears in `warranted_reuse_needs_scope_preservation`; changed-scope transport needs `warranted_translation_needs_a_bridge`. A textual record and an actual proof warrant have separate types.

**Root.** Greek *skopos*, a target or a watcher, from *skopein*, to look at. **Strikingly faithful**: the root of *scope* is the **target**, and every claim in the corpus is target-relative.

**Declared.** The conditions under which a result was established: domain, time, vocabulary, environment, admitted set, declared target.

**Scope.** **Bounded warrant is not weak warrant.** A result loses nothing by carrying its index. What it cannot do is promote itself — warrant in one frame does not become warrant across a class.

A successor that **retains** the index leaves the predecessor recoverable. One that **forgets** it is irrecoverable, by the collision obstruction applied to editing. So "narrow, do not silently widen" is a theorem, not a courtesy.

**Established.** *Lambda, Reference* §13; *Lambda III* L06–L07, L16.

**Maps in.**

| Domain | Realization |
|---|---|
| Metrology | An uncertainty budget; stated conditions of measurement |
| Software | A version pin; a build environment |
| Law | The jurisdiction of a ruling |
| Science | The stated domain of validity of a model |

**Lean.** `ScopedClaim`, `scope_retained_is_recoverable`, `scope_forgotten_is_not_recoverable`.

---

## 20. bridge

**Root.** Germanic, a crossing. **Faithful**: a crossing is built, and it does not make the banks one place.

**Declared.** A declared mapping from formal structure to an informal, physical, or interpretive reading. **A bridge never inherits the status of the theorem it accompanies.**

**Scope.** Bridges are **typed** by which upstream commitment they make: **P** primitives, **E** equivalence, **C** correspondence, **O** ordering and orientation, **S** which invariances are primitive, **Z** reference and null states. Every adoption should carry a letter.

A bridge can be **relocated** but not eliminated by proving it from another premise (§13). The relocation is a gain when it reduces the count and a hazard when the survivor carries everything.

**Established.** The three-receipt discipline; the Problem-Formation Audit; the claim-type routing set.

**Maps in.**

| Domain | Realization |
|---|---|
| Physics | The identification of a formal eigenvalue with a measurable energy |
| Metrology | The realization of a unit definition by an apparatus |
| Statistics | The mapping from a model parameter to a real-world quantity |
| Linguistics | Any semantic interpretation of a formal syntax |

---

## 21. receipt

**R3 successor note.** A receipt is carried information too. Transfer must retain the selected statement and interpretation, not merely its badge. The R3 run and exact source identity accompany the preserved R2 receipts.

**R2 successor note.** A result-only label cannot recover provenance when distinct origins share that label. A record can recover only what it actually retains; it does not guarantee that its contents are true. The R2 packet supplies `result_label_cannot_recover_origin` and `derived_tag_alone_does_not_prove_claim`. This narrows the predecessor phrase "Only a receipt can" to the target-relevant information requirement.

**Root.** Latin *recepta*, things received, from *recipere*. **Faithful**: a receipt records what was received, by whom, when.

**Declared.** A record of an act, carrying what was checked, in what environment, at what time, by whom. **Three receipts, none substituting for another**: translation, kernel execution, and bridge.

**Scope — and this is why receipts are structural rather than bookkeeping.**

A public label **cannot carry the basis**. Two certificates over different admitted bases expose the same badge, so the badge does not recover which basis was used. **Only a receipt can.** A badge reading "verified" without its jurisdiction is a projection whose fibre contains every basis.

Certification therefore **relocates** residual selection into which verifier and which axioms, and the relocation is *also* a concealment.

**Established.** The deflation case — two formal meanings under one label, both accepted, incompatibility proved. *Lambda III* L70; *Equal Standard* E13–E14, E28.

**Maps in.**

| Domain | Realization |
|---|---|
| Metrology | A calibration certificate naming the standard and the uncertainty |
| Software | A build log with toolchain and dependency revisions |
| Formal methods | A kernel transcript with axiom reports |
| Finance | An audit trail |

**Lean.** `certificate_does_not_recover_basis`, `report_carrying_only_phrase_does_not_recover_reading`.

---

## 22. stop

**R3 successor note.** The two-mode stop rule concerns an adjudicative stopping act. It does not exhaust the origins of all inherited or acquired conditions influencing that act.

**R2 successor note.** The effective/declared taxonomy remains an adopted datatype, not a theorem that all processes exhaust those modes. Termination does not imply a uniform bound over all inputs, and finite state does not imply halting. Unknown provenance records a limitation of the available history, not a third metaphysical stop mode.

**Root.** Old English *stoppian*, to plug. **Faithful**: a stop is placed, and it can be removed.

**Declared.** Where a construction terminates. **Two modes, and exactly two.** An **effective stop**, where membership in the admitted basis is decidable and the test was run; or a **declared stop**, where those preconditions are unavailable — and then the record **names the actor**.

**Scope.** Which mode applies is a **checkable property of the jurisdiction**, not a metaphysical commitment. A stop never declares its boundary absolute; any admitted item can be reopened. The rule is **local**: there is no single global act of termination, only a finite sequence of marked local ones.

**There is no third mode.** No oracle position is available — and none is needed, since an effective stop is forced and a declared stop is accountable.

**Established.** *Before the Proof*, Definition 10.1. *Equal Standard* E26–E29.

**Maps in.**

| Domain | Realization |
|---|---|
| Computability | A decidable membership test versus an undecidable one |
| Proof theory | An axiom as a stopping layer |
| Numerical analysis | A convergence tolerance, declared |
| Search | A budget exhausted — a stopping state, not a certificate of absence |
| Peer review | A referee's decision, which is a declared stop with a named actor |

**Lean.** `StopMode`, `stop_mode_dichotomy`, `declared_stop_names_actor`, `assessment_is_itself_adjudicated`.

---

## 23. will

**R3 successor note.** Acknowledging an inherited condition does not imply the current holder selected it, can fully observe it, or can change it by declaration.

**R2 successor note.** A derived conclusion may depend on a declared basis: retain both coordinates. Inherited or involuntary conditions need not have been deliberately selected by the current holder. Missing origin remains unknown unless a new supported entry changes that record.

**Root.** Germanic *wiljan*, to wish or desire — **agentive at the root**. **Declared departure**: the corpus explicitly reserves the term for residual selection and declines the agentive sense. A departure that is stated is not drift; had the disclaimer been omitted, the agentive sense would have been imported for free.

**Declared.** Residual selection not forced by the registered predecessor conditions. It attributes nothing to agency, consciousness, libertarian freedom, randomness, or an uncaused power.

**Scope.** Where a registry does not force a unique outcome, a selection occurs and **must be marked rather than attributed** to mechanism, randomness, authority, or personhood. Marking it is what makes it accountable — an unmarked selection can be owned by nobody.

Will is **incremental**: one marked selection per local stop, not one global act. A later mechanism may absorb the residue, moving it upstream or dissolving it; that does not retroactively erase the earlier scope statement.

**Delegation does not remove it.** External certification relocates the selection into which verifier and which axioms, and by §21 the badge conceals the relocation.

**Established.** *Lambda, Reference* §8; *Lambda III* L67–L70.

**Maps in.**

| Domain | Realization |
|---|---|
| Statistics | Choice of prior; choice of estimator among admissible ones |
| Numerical analysis | Choice of discretization among convergent schemes |
| Proof theory | Choice of axiom basis |
| Measurement | Choice of what to register |
| Editing | Choice of which correspondence to record |

**Lean.** `ResidualWill`, `residual_selection`, `delegation_preserves_residual_will`.

---

## 24. cost

**R3 successor note.** Persistence costs require units and a horizon. The unit-cost omission theorem forces some omission when required cardinality exceeds budget, while the priority counterexample shows feasibility need not select what to retain.

**R2 successor note.** An accumulator supports recognition and continuation. Their storage/rederivation tradeoff must specify the queried distinctions and the cost unit. Exact subset and depth bounds count distinguishable states; one arbitrary natural-number register does not have constant bit cost. A minimum for a snapshot need not support its next update.

**Root.** Latin *constare*, to stand together, to stand firm — hence what a thing stands at. **Faithful**: a cost is what must stand behind a claim.

**Declared.** The number of constructive steps a derivation takes to reach a declared target. **The selection criterion of the whole program**: among admissible maps, fewest constructive steps for the declared target.

**Scope — the entry that makes the humility structural.**

A model selected by stated cost defends only the **criterion**, not a claim to the bottom. It therefore **invites replacement**: bring a shorter derivation and the criterion operates. Attacking a step can only improve the map, because eliminating what is not established is aligned with the map's own criterion — *provided the attack lands on a declared step*. An attack on a step never taken strengthens nothing.

Cost is **target-relative**. A condensed map can genuinely beat a faithful one when the dropped fibre is extraneous to the target.

**Two things stated as open rather than claimed.** That a properly ordered construction admits no shortcut is a **conjecture**, not proved here, and a known obstruction sits nearby: shortest-description length is uncomputable in general, so "no shorter derivation exists" is not decidable. And a running best cost gives only decreasing upper bounds — failure to find a shorter derivation supplies no certificate.

**Established.** MDL and the structured-map results; the conservative-expansion witness.

**Maps in.**

| Domain | Realization |
|---|---|
| Information theory | Minimum description length; Solomonoff induction |
| Philosophy of science | Popper: constraint is content; a theory that forbids more says more |
| Proof theory | Proof length; conservative extension lowering represented cost without adding theorems |
| Engineering | Parts count |
| Complexity | Circuit size for a declared function |

**Lean.** `indexedResidue`, `residue_monotone`, `conservative_expansion_can_lower_cost_strictly`, `conservative_expansion_need_not_lower_cost`.

---

## 25. holder

**R3 successor note.** Carried-state profiles are indexed by holder, access route, and time. A common convention has the same persistence obligations as the entries it carries.

**R2 successor note.** Origins may be compared under a declared criterion; the record supplies no criterion-independent ranking. The common convention also has a holder and version. A shared compendium keeps local registries and translation obligations inspectable without requiring a common ontology.

**Root.** Germanic *healdan*, to keep. **Faithful**: a holder is whoever keeps the registry.

**Declared.** The declared canon relative to which a status is assigned. **Mandatory**: the same artifact is load-bearing under one canon and held or discarded under another, so a status without a holder states nothing.

**Scope.** The holder axis is a **relation between artifact and keeper**, not a property of the artifact. This is the axis the other status vocabularies lack.

Two holders differing is not a crisis and not an error — it is what distinct registries *are*. Sameness would be the surprising case. The honest move between them is **translation with declared residue**, not argument about which is correct — since a first mark has no comparator (§2) and comparing two registries needs a third with its own declared origin.

**Established.** The Landscape Cartographer's Holder Declaration; the held-as-family-of-postures result.

**Maps in.**

| Domain | Realization |
|---|---|
| Jain epistemology | The *naya* — the error is not using one, it is forgetting one is used |
| Statistics | The prior, declared |
| Law | The jurisdiction whose rules apply |
| Cartography | The projection chosen, and for what journey |
| Anthropology | The frame of the observer, stated rather than assumed absent |

**Lean.** `Holder`, status as a relation `Status : Artifact → Holder → Bool`; `verdict_does_not_recover_basis`.

---

## 26. accumulator

**R3 successor note.** An accumulator now has an explicit persistence obligation alongside continuation and recognition. Its record is distinct from underlying conditions; a remark changes only the record in the formal model. See entries 27-29.

**Declared.** State carried between descriptive or computational steps to support specified subsequent queries and operations. An accumulator may retain a result for continuation, a return mark for recognition, or both.

**Dependencies.** Transport (§6), projection (§7), recoverability (§8), scope (§19), bridge (§20), receipt (§21), stop (§22), will (§23), cost (§24), holder (§25).

**Scope.** The query class and update rule determine sufficiency. The minimum size of a current answer need not support an online update. Retained state remains a projection, so distinctions outside its scope can still collide. The constitutive-pharmakon description concerns these paired consequences of the declared compression protocol; role polarity alone does not force nontermination or overwrite.

**Discipline.** Carry the basis of reuse, distinguish a derived conclusion from adoption of its premises, preserve unknown provenance, and record a supported successor when the scope changes. Marking permits inspection; it does not by itself establish soundness or practical revisability.

**Formal receipts.** `online_update_implies_append_compatibility`, `append_compatibility_supplies_online_update`, `run_preserves_history_encoding`, `online_target_recovery`, `snapshot_target_can_fail_online_update`, the two cache-query countermodels, the finite-state cardinality bounds, and the warranted-translation theorem in `LambdaConstitutive.lean`.

**Mappings-in.** Accumulator parameters, cached derivations, receipt registers, scope indices, and traversal records. The shared-compendium application carries declared predicate translations between holders. Psychological and consciousness applications remain bridges, as specified in the R2 paper §1.7.

---

## 27. carried condition

**Declared.** A condition retained or operating in a system, whether or not the current holder has represented, selected, or understood it. Encoded, installed, and declared are access-relative profiles: inherited or antecedently established, acquired but potentially unexamined, and explicitly represented. Profiles may overlap. A declared description can refer to an inherited condition.

**Dependencies.** Holder, scope index, mark, accumulator.

**Lean.** `Carried`, `remark_preserves_condition`, `remark_preserves_origin`, `repeated_remarking_preserves_condition`, and the condition/origin collision theorems in `LambdaCarriedState`. The biological and cognitive identifications remain bridges.

**Break condition.** If a claimed record-only operation changes the condition, model its additional intervention or reject that application of `remark`.

## 28. access and intervention

**Declared.** Access names the observation and interpretation through which a selected target can be recovered. Intervention names an available state-changing action or action path. Neither is inferred from the other without a bridge. Recognition may precede revision without providing it.

**Dependencies.** Projection, recoverability, operator, invariant, carried condition.

**Lean.** `exact_access_does_not_supply_intervention`, `intervention_does_not_supply_exact_access`, `invariant_survives_available_interventions`, and `invariant_obstructs_revision_path`. These contracts quantify over a specified observation or action family.

**Break condition.** An available action that violates the asserted invariant defeats that obstruction's premise. An additional observation may remove an access collision.

## 29. persistence

**Declared.** Supported recoverability of a selected distinction across a stated time horizon and succession of carriers, interpretations, maintenance, and transfer operations. Persistence does not mean unconditional permanence. A more durable carrier relocates the burden.

**Dependencies.** Transport, recoverability, scope index, receipt, cost, holder, accumulator.

**Lean.** `ExactAt`, `Through`, target-preserving transfer, conditional maintenance induction, finite-prefix countermodels, the permanent ideal model, the unit-cost omission theorem, and the priority counterexample. The kernel neither proves inevitable physical loss nor certifies a universal maintenance premise from finite observation.

**Break condition.** A target-relevant collision, failed transfer condition, unavailable decoder, or unsupported horizon defeats the corresponding recovery claim. Budget feasibility alone does not establish priority or fidelity.

## 30. institutional recognition

**Declared.** A public signal issued by an institution about a claim. Record both its reported content and its possible role as an input to later assessment. Recognition, formal eligibility, mathematical validity, and reception are separate coordinates.

**Dependencies.** Holder, criterion, receipt, scope index, bridge, accumulator, carried condition, access and intervention.

**Mappings-in.** Clay's dated public statement supplies a case for asking how recognition is selected and whether later evidence of acceptance is independent of that signal. The paper's §§4.1a-b preserve the statement, formal rules, attributed claims, and unresolved empirical questions. The instrument's own proof badges and presentation receive the same scrutiny.

**Lean.** `LambdaInstitutionalSignals` proves a conditional threshold crossing, two results on observational non-identification, and independence of unconstrained recognition, eligibility, and truth coordinates. These are declared finite models; they do not establish actual influence or misconduct.

**Break condition.** Reject an application that omits a behavioral premise needed for its threshold model, infers a causal effect from the single observed outcome, or treats public recognition as a proof of eligibility or truth without a bridge. Extra observations or justified assumptions can remove the non-identification.

**Status.** Four new results checked in R4. Actual institutional influence and criteria for comparative recognition remain OPEN.

# APPENDIX A — Dependency graph

Each rung uses only what is above it.

```
  1 distinction
      └─ 2 mark ──┬─ 3 criterion
                  └─ 4 registry ─┬─ 5 admissible
                                 └─ 6 transport
                                      └─ [coprimality decides reach]
                                           │
  7 projection ─ 8 recoverability ─ 9 collision
      │                                  │
      └─ 11 fibre ─ 12 residue           └─ 10 symmetry ─ [orientation costs ≥ 1]
                        │
                        └─ 13 enlargement  (records its admission)
                              │
 14 operator ─ 15 spectrum ─ 16 invariant
                   │
                   └─ 18 ratio (metric-free) ─ 17 calibration (one anchor, connected)
                                                    │
 19 scope index ─ 20 bridge ─ 21 receipt ─ 22 stop ─ 23 will
                                                    │
                                              24 cost ─ 25 holder
```

**The ratchet.** Rung *n* uses only rungs above it, so accepting rung *n* and rejecting rung *n*+k requires naming a rung between them. A reader who accepts §7 and rejects §17 must say where the chain fails. That is the entire purpose of the ordering, and it is why the corpus was built as separate papers before being compiled.

---

# APPENDIX B — Formalization targets, by status

| Status | Entries |
|---|---|
| **Encoded in a submitted kernel** | 1, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 16, 17, 19, 21, 22, 23, 24 |
| **Standard results, encoding is restatement** | 6 (left translation, orbit period), 15 (spectral theorem), 16 (Lorentz invariance) |
| **Targeted, not yet written** | 2 (mark as placed token with decay), 4 (registry as a structure with admissibility), 14 (operator with a registry-compatibility predicate), 18 (metric-free ratio), 25 (status as a holder relation) |
| **Not encodable as stated** | The cost conjecture in 24 — shortest-description length is uncomputable in general |

**Execution status, superseded in R2.** The preceding table records the supplied handoff status. The R2 packet now carries 248 checked declaration reports, including 36 new ones. Match a claim to its exact theorem and scope in `receipts/THEOREM_CATALOGUE.md`; the complete dictionary and all mappings-in have not been certified wholesale.

---

# APPENDIX C — What this dictionary does not claim

That the registry pre-exists its use, underlies the domains listed under **Maps in**, or explains why they are as they are. That any listed mapping is the only one, or that the registry is the best description of any listed domain. That the terms are the right ones — they are the ones chosen, by the criterion in §24, and a shorter vocabulary reaching the same targets would replace them by that criterion.

That the entries are complete. Match recognition is vocabulary-relative, so a later reading may expose entries and mappings not visible in this snapshot — and per §24 no failure to find a shorter or fuller account is a certificate that none exists.

The predecessor statement that nothing had been machine-verified has been superseded by the scoped execution ledger above. It does not follow that every dictionary assertion has been verified.
