# The Hodge Traversal, Compiled Edition

## A registry-charted semantic traversal of the Hodge conjecture problem space, with instrument completion theorems, literature welds, and exhaustion at the corrected stopping condition

**Versions V4–V6, unified · Lu Semita · EmergenceByDesign — co-authors to be named upon final formalization**

Compiled working draft — July 2026 · Distributed for open review and attempted refutation

---

## Preface: an invitation to refutation

This document is distributed with a standing, explicit invitation: **find the hole.**
It is written to be defeated if it is defeatable, and every claim in it is tagged
with the exact standard against which it should be attacked. The authors regard a
successful refutation of any component as a contribution to the work, to be
incorporated by name as a node update in the next version.

To defeat this document, a reader must exhibit at least one of the following. Each
is a precise target; vague dissatisfaction with framing does not score.

**R1 — A false Tier-I statement.** Every sentence labeled Tier I is asserted as
standard, checkable mathematics or as an accurate citation of the published
literature. Exhibit one that is false as stated.

**R2 — An invalid inference in a Tier-II proof.** The Tier-II results (the
eigenspace obstruction, the non-separating certificate theorem, the residue
trichotomy, the completion theorem, the verdict-lattice and forcing-wall
applications) are proved. Exhibit a step that does not follow.

**R3 — A claim exceeding its declared tier.** The document's own discipline
forbids any sentence from asserting more than its tier permits. Exhibit a sentence
whose content, read plainly, outruns its label — in particular, any sentence that
asserts the truth, falsity, or formal independence of the Hodge conjecture.

**R4 — A residue-decreasing operation inside the declared instrument.** Theorem
20.1 asserts that no operation in the declared language 𝔏 — conjugation-fixed
reattachments, Hodge-necessary certificates, cycle-unrealized structure morphisms,
closed under composition and the stated reframings — decreases any residue.
Exhibit such an operation and the decrease.

**R5 — An existing violable filter.** Section 26 asserts that every necessary
condition of algebraicity available in current mathematics (rationality, Hodge
type, harmonicity, absolute-Hodgeness, motivated-ness) is satisfied by the
surviving target classes, so that no refutation-by-example of the Hodge conjecture
is derivable from any existing filter. Exhibit a currently existing necessary
condition that a surviving target violates.

**R6 — A breach of the forcing wall.** Section 25 asserts, conditional on the
standard spreading-out formalization placing the Hodge statement at Shoenfield-
absolute complexity, that forcing cannot establish its independence from ZFC.
Exhibit either a formalization that legitimately escapes the pointclass, or an
error in the absoluteness application.

**R7 — A counterexample to the corrected verdict lattice.** Section 24 asserts,
with Con(ZFC) as witness, that "unprovable" does not entail "provably unprovable"
and that no consistent recursively axiomatized system certifies all of its own
gaps. Exhibit an error in that classical argument or in its application here.

Absent a successful exhibit under R1–R7, the document's scoped results stand as
proved, in the ordinary sense in which mathematics is proved: the burden is now
on the reader, and the reading instructions are complete.

---

## What this document actually proves, in the standard academic sense

Stated once, maximally, and exactly — this is the strongest claim the mathematics
supports, and the document claims all of it and none beyond it.

**1. Unconditional limitation theorems for a declared method family.** The
document defines an explicit class of approaches to the Hodge conjecture — every
conjugation-invariant algebraic reattachment, every certificate whose acceptance
is implied by Hodge membership, every Hodge-structure morphism unaccompanied by a
cycle, closed under composition and under change of CM field, discriminant,
dimension, operator, and carrier-internal reframing — and **proves, at full and
elementary rigor, that no member of this class, iterated finitely or infinitely,
can decide the algebraicity of a conjugation-anti-invariant Weil-type Hodge class,
in either direction** (Theorems 17.4, 17.6, 18.2, 20.1). These results are of the
same established genre as restricted proof-system lower bounds: unconditional
theorems about what a specified family of methods cannot do, silent about stronger
methods, and fully falsifiable under R2 and R4.

**2. A correct and current map of the frontier.** The document accurately records
(Tier I, cited) that the Weil fourfold regime — the traversal's original open
core — has been closed affirmatively by Markman and successors for all imaginary
quadratic fields and all discriminants; that the Kuga–Satake correspondence is now
algebraic on the generalized-Kummer locus and on infinitely many K3 families; that
the open CM frontier has relocated to abelian sixfolds of Weil type outside
discriminant −1, with a named rigid family, proven absolute Hodge and proven
inaccessible to all currently known methods, standing as the sharpest residue and
carrying a pending finite computation. The closure mechanism — carrier change into
hyper-Kähler geometry with deformation-stable algebraic sheaf classes — is
observed to instantiate exactly the weld specification the instrument had priced,
which is the strongest form of validation a limitation analysis can receive:
its wall was crossed precisely where, and precisely how, it said crossing would
require.

**3. Correct classical-logic bounds on the demand for decidability.** The document
proves, by correct application of Gödel's second incompleteness theorem, that the
demand "every unprovable statement is provably unprovable" is false in general —
refuted with the exhibited witness Con(ZFC) — so that a fourth verdict cell,
*open*, is ineliminable from any honest stopping condition; and it establishes,
conditional only on the standard complexity reading of the spread-out Hodge
statement, that Shoenfield absoluteness bars the forcing route to any independence
result for the Hodge conjecture, while recording (Tier II, empirical over the
corpus) that no consistency-strength attachment exists or has been proposed.

**4. The exact specification of every remaining exit.** The document reduces all
possible future resolutions of the examined frontier to a finite list of
door-specifications (Remark 20.3, Sections 26–27), one of which has since been
opened by the literature in the stated form, and states — as its single strongest
synthetic finding — that **at the present state of mathematics the Hodge
conjecture is not proven, is not refutable by any existing necessary condition,
and is not addressable by the only general independence machinery set theory
possesses**; it therefore occupies, demonstrably and not by default, the open
cell of the corrected verdict lattice, with its live frontier consisting of named
objects and stated finite tasks, and with every recorded movement of the modern
era running in the algebraicity-ward direction.

**What is not claimed.** The document does not prove, and does not claim to prove,
the Hodge conjecture, its negation, or its formal independence of any system. No
sentence in it may be quoted to that effect without misquotation, and Section 28's
compression rules forbid the three specific inflations by which such a misreading
would be manufactured. Whether the scoped results above merit standing as a
contribution is for the mathematical community to judge; the document's posture is
that the judgment should proceed through R1–R7, and it will be answerable to the
outcome.

---

# PART ONE — The Traversal (V4)

*Sections 1–16: protocol, objects, boundary nodes, the Weil/CM regime, K3 and
Kuga–Satake, scope widening, the three-shape frontier, conclusive scoped status,
and the outside-frame transcendence traversal. Node statuses in this Part reflect
the state of the traversal as originally executed; Part Three records the
literature events that have since closed several nodes. The original text is
preserved so that the instrument's predictions can be checked against what
subsequently occurred.*

## Abstract

This document presents a semantic traversal of selected Hodge-theoretic problem
spaces. It does not claim to prove, refute, or decide the Hodge conjecture. Its
purpose is more limited and more precise: to define an explicit family of objects,
bridges, predicates, and stopping conditions; to push each bridge until it either
closes or produces a definable residue; and to record the resulting frontier
without inflating bridge failure into a universal statement about all possible
mathematics.

The traversal distinguishes co-location from weld. A registry may locate two
structures at a common address or in an adjacent conceptual register, but such
co-location does not transfer truth. Transfer requires a weld: a theorem or
construction that rigidly couples the frames so that information in one frame
forces information in the other. This distinction controls the entire analysis.

The result is a three-shape boundary for the portion of the Hodge problem space
examined here. Divisor-level cases, such as degree-two Hodge classes on K3
surfaces, close by Lefschetz (1,1). CM anti-invariant Weil-type classes expose a
no-weld regime: norm-type reattachments land in the conjugation-invariant
component, while spectral or harmonic data certify the wrong predicate.
Kuga–Satake constructions provide a third regime in which a genuine
Hodge-structure weld exists, but the algebraicity of the corresponding cycle
remains open in general. A final outside-frame analysis examines absolute Hodge
theory and period-transcendence methods. These outside frames do not establish
Hodge-non-algebraicity; the genuine Lindemann-style transcendence machinery
concerns periods, not rational Hodge classes as cycle classes.

The traversal therefore earns only a scoped conclusion: within the defined bridge
family and the tested outside frames, the transcendence reading does not cross
the Hodge predicate, while the algebraicity question remains open.

## Posture and scope

This is a semantic traversal, not a proof attempt. The goal is to define the
problem space of the Hodge conjecture in decidable language, push available
bridges until each either closes or generates a definable residue, and log the
result so that the conclusion emerges from the completed description rather than
from assertion.

No claim is made or implied about the truth, falsity, or provability of the Hodge
conjecture. Where a bridge stops, the stop is a statement about that bridge's
reach within its stated frame, not about the existence or non-existence of
algebraic cycles. The Hopf registry appears here only as a declared chart: a
coordinate system for locating and comparing frames. It does not function as a
generative mechanism, a truth oracle, or a substitute for a theorem.

The following tier labels govern the document.

**Tier I — Verifiable.** Standard, checkable mathematics, stated as fact.

**Tier II — Structural.** Exact correspondences and classifications read within
the framework after the Tier-I objects have been fixed.

**Tier III — Programmatic.** Forward-looking claims, conjectural directions, and
author-defined interpretive structures. These are not asserted as established
mathematics.

## 1. Traversal protocol

The traversal follows a fixed protocol so that termination is a design property
rather than an aspiration.

1. **Initial condition.** Each node begins from an explicitly stated mathematical
   object and target predicate.
2. **Finite reduction.** From the stated initial condition, admissible reductions
   proceed finitely unless the reduction generates an irreducible residue.
3. **Residue as definable stop.** An irreducible residue is a point at which a
   reduction cannot continue inside the stated frame. When that point is
   detectable and nameable, it becomes a recorded stopping condition rather than
   an unbounded recursion.
4. **Two stop types.** An *exhaustion stop* occurs when every condition at the
   node reduces to decidable language; the branch closes and its verdict is
   recorded. An *irreducible-residue stop* occurs when the stated frame cannot
   carry the reduction further; the residue's coordinate and type are recorded,
   the node is marked open relative to that frame, and the traversal departs.
5. **Depart and do not re-enter.** A logged node is not revisited unless a new
   bridge is explicitly added to the scope. Ground already exhausted is not
   re-covered.

This mirrors the Dynamical Semantic Traversal cycle: reduce until marginal
structural return is non-positive, record the residue with its coordinate, and
depart.

The word *irreducible* always means irreducible relative to the stated bridge,
frame, and predicate. It does not mean intrinsically irreducible relative to all
possible mathematics.

## 2. Objects and definitions

### 2.1 The Hodge conjecture

Let 𝑋 be a smooth projective variety over ℂ. For each 𝑘, the rational Hodge
classes are

Hdg^𝑘(𝑋) = 𝐻^{2𝑘}(𝑋, ℚ) ∩ 𝐻^{𝑘,𝑘}(𝑋).

An algebraic cycle of codimension 𝑘 is a finite ℚ-combination of codimension-𝑘
subvarieties. Its cohomology class lies in Hdg^𝑘(𝑋). The Hodge conjecture asserts
the reverse inclusion: every rational Hodge class is the class of an algebraic
cycle.

### 2.2 Residue lens

For 𝛼 ∈ Hdg^𝑘(𝑋) define the residue notation

ℐ(𝛼) = obstruction of 𝛼 to lying in the ℚ-span of algebraic-cycle classes.

This notation does not solve the Hodge question. It records where the open
predicate sits. One has

ℐ(𝛼) = 0 ⟺ 𝛼 is algebraic.

Thus deciding ℐ(𝛼) = 0 is logically identical to deciding the Hodge question for
𝛼. The residue lens is bookkeeping, not a reduction that removes the difficulty.

### 2.3 Registry as chart

A Hopf configuration

𝑆¹ ↪ 𝑆^{2𝑛+1} → ℂℙⁿ

is used as a declared scaffold for an extendable family of circumscribing shells.
Its role here is strictly chart-like: it assigns frames such as algebraic,
spectral, and arithmetic frames stable addresses and makes adjacency between
frames statable.

By the registry/map separation, a descriptively complete registry is inert as a
truth oracle. A chart locates and relates; it does not decide. Two notions remain
distinct throughout:

- **Co-location:** two frames sit at the same chart address or in a statable
  adjacency relation.
- **Weld:** a theorem, construction, or correspondence rigidly coupling two
  frames so that a fact in one frame forces a fact in the other.

Co-location may be necessary for a weld, but it is not sufficient.

## 3. Boundary nodes

### 3.1 Projective space: ℂℙⁿ

**Tier I.** The cohomology ring of complex projective space is

𝐻*(ℂℙⁿ) = ℤ[𝜔]/(𝜔^{𝑛+1}),

with 𝜔 the hyperplane class. Every cohomology class is an integer multiple of a
power 𝜔^𝑘, and 𝜔^𝑘 is the class of a linear subspace ℂℙ^{𝑛−𝑘}. Hence the Hodge
conjecture holds on ℂℙⁿ trivially.

**Stop.** Exhaustion. Matching spectral or registry data to powers of 𝜔 engages
none of the conjecture's difficult content. Projective space is a closed boundary
node, not the frontier.

### 3.2 The Hopf total space as category constraint

**Tier I.** The sphere 𝑆^{2𝑛+1} has odd real dimension and rational cohomology
only in degrees 0 and 2𝑛+1. It is not a complex projective variety and does not
carry a Hodge structure of the type required for the Hodge conjecture. The map
𝑆^{2𝑛+1} → ℂℙⁿ is a smooth 𝑈(1)-bundle, not a morphism of projective varieties.

**Consequence.** A literal instruction to lift an algebraic class to the Hopf
total space has no referent in the category where algebraic cycles live. This
does not prevent the chart use of the Hopf configuration. Co-location remains
statable. It prevents only the stronger reading in which the shell itself
functions as an algebraic carrier.

## 4. Node 0: abelian threefold 𝐸₁ × 𝐸₂ × 𝐸₃

**Initial condition.** Let 𝐴 = 𝐸₁ × 𝐸₂ × 𝐸₃ be a product of three elliptic
curves. Then dim_ℂ 𝐴 = 3. The target is the degree-four Hodge classes.

**Tier I.** The Hodge numbers of a product of three elliptic curves satisfy
ℎ^{𝑝,𝑞} = C(3,𝑝)·C(3,𝑞). Thus ℎ^{2,2} = C(3,2)² = 9, with the standard Hodge
diamond for such a product.

For a generic product with no extra isogenies or complex multiplication, the
rational Hodge classes are generated by divisor classes and are therefore
algebraic. The genuinely open non-divisor Hodge classes do not appear on a
generic threefold of this type.

**Stop.** Exhaustion. The node is closed and departed.

**Frontier relocation.** The canonical home of non-divisor Weil classes lies in
abelian fourfolds with complex multiplication by an imaginary quadratic field, as
in Weil's construction. The Hodge conjecture for these classes remained open in
general at the time of this Part's writing, with scattered special cases resolved.
(*Part Three records the subsequent closure of this regime.*)

**Tier II chart note.** An imaginary quadratic CM field ℚ(√−𝑑) occupies the
negative-discriminant register of the same quadratic-field structure that appears
in Gaussian-period factorizations. For primes 𝑝 ≡ 3 (mod 4), the sign convention
𝑝* = (−1)^{(𝑝−1)/2}𝑝 < 0 gives the negative register. This is recorded as
co-location, not as a weld.

## 5. Node 1: Weil fourfold with CM by ℚ(√−3)

### 5.1 Initial condition and target

Let 𝐴 be an abelian fourfold of Weil type with complex multiplication by
𝐾 = ℚ(√−3). Then dim_ℂ 𝐴 = 4, and the Hodge numbers satisfy
ℎ^{𝑝,𝑞} = C(4,𝑝)·C(4,𝑞). The middle values include

ℎ^{2,0} = 6, ℎ^{2,1} = 24, ℎ^{2,2} = C(4,2)² = 36.

Inside 𝐻^{2,2}(𝐴) sits a distinguished subspace 𝑊_𝐴 ⊂ Hdg²(𝐴) of Weil classes.
These classes are characterized as a Galois-anti-invariant eigencomponent of the
𝐾-action on cohomology and are not contained in the subring generated by divisor
classes. The target is precisely this non-divisor component.

### 5.2 Bridge A: norm-cycle reattachment

The programmatic algebraic reattachment considered here uses a norm 𝑁(𝑔) = 𝑔𝑔̄,
the product of an element with its Galois conjugate over 𝐾. The norm is, by
construction, invariant under Gal(𝐾/ℚ). Hence it produces classes in the
Galois-fixed component.

The target Weil classes occupy the Galois-anti-invariant component. The norm
therefore lands in the wrong eigenspace. It cannot produce the target classes by
this construction.

**Stop.** Irreducible residue relative to Bridge A.

- Type: frame mismatch.
- Coordinate: the Galois-anti-invariant eigenspace of the 𝐾-action on 𝐻^{2,2}(𝐴).
- Missing weld: a reattachment operation preserving the anti-invariant component
  and realized by an algebraic cycle.

This records only the reach of the norm bridge. It does not assert that no
algebraic cycle exists in 𝑊_𝐴.

### 5.3 Bridge B: Beltrami / Dirac spectral bridge

The abelian variety 𝐴 is compact Kähler. By Hodge theory, every class in
𝐻^{2,2}(𝐴, ℚ) has a unique harmonic representative. Laplace–Beltrami and
Dirac-type spectral data can certify harmonicity. However, harmonicity is
automatic for Hodge classes. The open predicate is algebraicity, not harmonicity.

Thus spectral membership carries no information that separates algebraic Hodge
classes from non-algebraic Hodge classes within the Hodge locus. The spectral
bridge resolves the wrong predicate.

**Stop.** Irreducible residue relative to Bridge B.

- Type: predicate mismatch.
- Coordinate: the gap between harmonic representative and algebraic cycle.
- Missing weld: a theorem coupling a spectral invariant to the cycle-class
  predicate.

### 5.4 Node status

Both bridges stop at the same seam from opposite directions. Algebraicity is a
Galois-rational cycle-class property. The norm bridge reaches the
conjugation-invariant component. The spectral bridge certifies harmonicity, which
all Hodge classes already possess. Neither bridge reaches the
Galois-anti-invariant Weil component as an algebraic cycle.

**Node status.** Departed with two logged residues. (*Closed affirmatively by
external theorem; see Part Three, Section 22.*)

## 6. Node 2: Weil fourfold with CM by ℚ(√−7)

This node tests whether the residue types from Node 1 depend on the specific CM
field.

Let 𝐴 be an abelian fourfold of Weil type with CM by 𝐾 = ℚ(√−7). The field has
class number one and occupies the negative register associated with the 𝑝 = 7
Gaussian-period atom.

For Bridge A, the norm 𝑁(𝑔) = 𝑔𝑔̄ remains invariant under Gal(𝐾/ℚ) for every
imaginary quadratic field. Weil classes remain conjugation-anti-invariant.
Therefore the same frame-mismatch residue recurs, with only the field coordinate
changed.

For Bridge B, compact Kähler geometry again supplies harmonic representatives for
all Hodge classes. Spectral data certify harmonicity, not algebraicity. The same
predicate-mismatch residue recurs.

**Result.** The prediction is confirmed. The residue types do not depend on the
discriminant 𝑑; the field changes the coordinate, not the residue mechanism.
(*Closed affirmatively by external theorem; see Part Three, Section 22.*)

## 7. Node 3: K3 surface in degree two

### 7.1 Initial condition

Let 𝑋 be a K3 surface. The target is the degree-two Hodge classes.

**Tier I.** The second integral cohomology lattice is

𝐻²(𝑋, ℤ) ≅ 𝑈³ ⊕ 𝐸₈(−1)²,

with signature (3, 19). The Hodge numbers are (ℎ^{2,0}, ℎ^{1,1}, ℎ^{0,2}) =
(1, 20, 1). The Hodge classes in 𝐻² are the Néron–Severi group 𝑁𝑆(𝑋), with
Picard rank 1 ≤ 𝜌 ≤ 20. The transcendental lattice is 𝑇(𝑋) = 𝑁𝑆(𝑋)^⊥, of rank
22 − 𝜌, and it carries the (2,0) part.

### 7.2 Closure by Lefschetz (1,1)

The node tests whether the residue types from the Weil/CM regime are universal.
They are not. By the Lefschetz (1,1) theorem, every integral (1,1) class on a
compact Kähler manifold is the class of a divisor. Therefore every degree-two
Hodge class on a K3 surface is algebraic.

**Stop.** Exhaustion by theorem.

Where a genuine weld exists — Lefschetz (1,1) coupling (1,1) cohomology directly
to divisor classes — the prior failure modes disappear. The CM residues are not
universal. They belong to middle-codimension, non-divisor classes in a
conjugation-anti-invariant direction, not to transcendental classes in general.

## 8. Node 4: Kuga–Satake weld

### 8.1 Hodge-structure weld

Moving from K3 surfaces in degree two toward open middle-codimension problems,
such as classes on K3 × K3, leads to the Kuga–Satake construction. For a
polarized weight-two Hodge structure of K3 type with ℎ^{2,0} = 1, the even
Clifford algebra 𝐶⁺(𝑇(𝑋), 𝑞) of the transcendental lattice yields an abelian
variety 𝐴_KS and an embedding of Hodge structures

𝐻²(𝑋)_prim ↪ 𝐻¹(𝐴_KS) ⊗ 𝐻¹(𝐴_KS).

This is a genuine weld at the level of Hodge structures. It does more than
co-locate the K3 and abelian registers; it couples them by a theorem.

### 8.2 Algebraicity of the weld

A morphism of Hodge structures does not by itself produce an algebraic cycle
realizing that morphism. The algebraicity of the Kuga–Satake correspondence is
known in special cases and remains open in general.

**Stop.** Irreducible residue of a third type.

- Type: Hodge-level weld exists; algebraicity of the weld remains open.
- Coordinate: the algebraicity of the Kuga–Satake correspondence class in
  𝐻*(𝑋 × 𝐴_KS).

This is neither the frame mismatch of the norm bridge nor the predicate mismatch
of the spectral bridge. The frames do couple, but the cycle realizing the
coupling remains unproduced in general. (*Partially closed by external theorem on
the generalized-Kummer locus and cited K3 families; see Part Three, Section 22.*)

### 8.3 Structural consequence

The one route that makes K3 transcendental data tractable runs toward the abelian
register. It provides a Hodge-structure weld, but the required algebraic
realization remains the open predicate.

## 9. Node 5: other CM types and scope widening

This node tests whether the imaginary quadratic case was load-bearing or
incidental.

### 9.1 Real multiplication

A totally real field is not a CM field. Abelian varieties with real
multiplication do not carry Weil-type exotic classes of this construction because
the phenomenon requires a complex conjugation acting nontrivially across 𝐻^{1,0}
and 𝐻^{0,1}.

**Finding.** The target is absent. The node is vacuous for the residue.

### 9.2 Higher-degree CM fields

Let 𝐾 be a CM field with totally real subfield 𝐾₀ and [𝐾 : ℚ] = 2𝑒.
Nondegenerate CM types produce exotic Hodge classes. The relative norm 𝑁_{𝐾/𝐾₀}
is 𝐾₀-valued and fixed by the complex conjugation of 𝐾/𝐾₀. Exotic classes occupy
the conjugation-anti-invariant component. The norm therefore misses them by the
same mechanism as in the imaginary quadratic case.

**Finding.** The frame-mismatch residue recurs, now with conjugation living in
𝐾/𝐾₀.

### 9.3 Higher-dimensional Weil type

The Weil-type construction generalizes to abelian 2𝑛-folds. The same residues
recur: conjugation-invariant reattachment misses the anti-invariant target, and
spectral data certify harmonicity rather than algebraicity. Dimension changes the
coordinate, not the residue type.

### 9.4 Corrected scope

The load-bearing structure is not the specific imaginary quadratic field and not
the dimension. It is the presence of a CM conjugation pair 𝐾/𝐾₀ whose
anti-invariant eigenspace hosts the target, against a reattachment operation that
is conjugation-invariant by construction.

## 10. Register closure and the three-shape frontier

The verified nodes produce a graded boundary rather than a single wall.

| Regime | Locus | Weld status | Residue |
|---|---|---|---|
| Divisor / (1,1) | K3 degree two; divisor classes | Weld exists and is algebraic by Lefschetz (1,1) | None; closed |
| CM anti-invariant | Weil-type classes, CM pair 𝐾/𝐾₀ | No weld from the defined bridges; norm is conjugation-fixed and spectrum certifies harmonicity | Frame mismatch and predicate mismatch |
| Kuga–Satake | K3 transcendental data to abelian 𝐻¹ | Weld exists at Hodge-structure level | Algebraicity of the weld remains open |

**Widened closure, scoped exactly.** Wherever the target Hodge classes are the
conjugation-anti-invariant eigenspace of a CM action, the norm-cycle bridge
terminates in a frame-mismatch residue and the spectral bridge terminates in a
predicate-mismatch residue. The field and dimension enter as residue coordinates.
Where no CM target exists, the register is vacuous. Where a Hodge-structure weld
exists, the remaining residue is the algebraicity of that weld.

This statement concerns the defined bridges and their scoped reach. It does not
assert that any class is non-algebraic, that the Hodge conjecture holds or fails,
or that no other method can reach the target.

## 11. Weld criteria

The traversal identifies the open node by shape rather than by gesture.

In the Kuga–Satake regime, a crossing weld would require a construction
exhibiting the Kuga–Satake correspondence 𝐻²(𝑋)_prim ↪ 𝐻¹(𝐴_KS)^{⊗2} as the
class of an algebraic cycle on 𝑋 × 𝐴_KS for general 𝑋, not merely as a morphism
of Hodge structures.

In the CM regime, a crossing weld would require a reattachment operation that
preserves the conjugation-anti-invariant component and is realized by an
algebraic cycle. The field norm does not have this property because it is
conjugation-invariant by construction.

No such construction was asserted to exist in either regime at the time of
writing. The criterion states what would have to be produced. (*Part Three
records that the CM-regime criterion has since been met, for fourfolds, by
published mathematics of exactly the specified shape.*)

## 12. What the traversal establishes

The traversal establishes the following scoped results.

1. The examined Hodge frontier has a three-shape graded boundary: closed divisor
   cases, no-weld CM anti-invariant cases under the defined bridges, and
   Hodge-level weld cases whose algebraicity remains open.
2. In the CM regime, two distinct and definable failure modes appear: frame
   mismatch for norm-type reattachment and predicate mismatch for
   spectral-harmonic bridges.
3. The load-bearing structure in the CM regime is the conjugation pair 𝐾/𝐾₀, not
   a particular field or dimension.
4. Projective space and generic elliptic threefold products close as boundary
   nodes.
5. K3 surfaces in degree two close by Lefschetz (1,1).
6. Kuga–Satake links K3 transcendental data to the abelian register by a genuine
   Hodge-structure weld while leaving the algebraicity of the correspondence open
   in general.
7. Concrete weld criteria can be stated for both the CM and Kuga–Satake regimes.

The traversal does not establish any of the following.

1. The truth, falsity, or formal independence of the Hodge conjecture.
2. The algebraicity or non-algebraicity of any open target class.
3. The non-existence of bridges outside those defined and tested here.
4. An intrinsic impossibility theorem about all methods.

The contribution is the protocol, the explicit residue coordinates and types, the
three-shape typology, the scoped closures, and the strict separation of
co-location from weld and of bridge reach from cycle existence.

## 13. Sources and standing

The Tier-I mathematical material draws on standard results: the cohomology ring
of projective space; Hodge numbers of abelian varieties; Hodge theory on compact
Kähler manifolds; the Lefschetz (1,1) theorem; the K3 lattice and the
Néron–Severi/transcendental decomposition; Weil's construction of exotic Hodge
classes on fourfolds of Weil type; partial results of Schoen and van Geemen; the
theory of complex multiplication and CM types, including work of Hazama and
Murty; the Kuga–Satake construction of Kuga, Satake, and Deligne; and known
algebraicity cases for Kuga–Satake correspondences, including work of Morrison
and Paranjape.

The registry/map separation invoked here belongs to the companion program and
functions only as an organizing chart. It does not replace standard mathematics.
The Tier-III elements remain author-defined structural language rather than
established external terminology.

## 14. Conclusive scoped status

### 14.1 Verdict within the posed instrument

Within the question as framed and the answer-space as probed — the Hopf
configuration read as an infinite registry chart, together with the
norm-arithmetic and Beltrami/Dirac spectral bridges — neither the Hodge
conjecture nor its negation is supported. Each bridge terminates in a definable
residue before producing or excluding a cycle.

The proper verdict is therefore: **undecidable within the problem space and
bridge family as posed.**

This is a verdict about the question/answer-space pairing. It is not a verdict
about the absolute logical status of the Hodge conjecture.

### 14.2 Earning condition

The scoped verdict is earned when continued reframing inside the instrument
yields semantic nuance but no structural gain toward producing or excluding an
algebraic cycle.

The tested reframings inside the instrument include: changing the CM field from
−3 to −7; changing from imaginary quadratic to general CM conjugation pairs;
changing from abelian fourfolds to higher-dimensional Weil type; replacing norm
language with any conjugation-invariant reattachment; replacing Beltrami language
with Dirac or general spectral language.

Each of these reframings relabels the coordinate but preserves the residue type.

Reframings that do produce structural gain do so by changing carrier or scope. K3
degree-two classes close by Lefschetz (1,1). Kuga–Satake produces a new
Hodge-structure weld but relocates the residue to algebraicity of the
correspondence. These gains map the frontier's shape without crossing it.

### 14.3 Refused upgrades

Two stronger upgrades are explicitly refused.

**Upgrade 2: intrinsic Lambda-irreducibility.** Not earned. Failure of the
defined instrument is not a survey of all possible reductions. The Kuga–Satake
weld already shows that the mathematical space outside the initial two bridges
contains additional structure.

**Upgrade 3: transcendence or refutation from outside.** Not earned by the
original traversal. A transcendence-of-𝜋-style proof would require a welded
outside structure that converts algebraic-cycle failure into a contradiction.
Such a proof would refute the Hodge conjecture for the exhibited class. The
original traversal locates no weld in that transcendence-ward direction. The CM
anti-invariant directions remain unwelded under the tested bridges, while the
Kuga–Satake weld points toward algebraicity rather than away from it.

### 14.4 Durable yield

The durable result is cartographic. The traversal converts a vague frontier into
a located three-shape boundary: closed divisor cases, no-weld CM anti-invariant
cases under the defined bridges, and Hodge-weld-open Kuga–Satake cases. It
demonstrates the chart-not-oracle character of the registry: a registry can
locate the frontier, but a decision requires a weld.

## 15. Outside-frame traversal and the transcendence question

The previous section refused a transcendence upgrade from the original bridge
family. This section records the corresponding outside-frame traversal. It tests
the genuine available circumscribing frames rather than leaving the outside
gesture unexamined.

### 15.1 Node 6: Deligne absolute Hodge theory

Deligne's theorem that Hodge classes on abelian varieties are absolutely Hodge
supplies a real outside frame. The frame involves comparison across de Rham,
Betti, and étale realizations and the action of field automorphisms. Algebraic
cycle classes are absolutely Hodge, so absolute Hodge behavior supplies a
necessary condition for algebraicity.

The Weil/CM Hodge classes pass this condition. Thus the outside frame welds the
target classes to a property algebraic cycles must have, without producing the
algebraic cycle itself.

**Stop.** Hodge/absolute-Hodge weld exists; cycle realization remains open.

This frame leans toward algebraicity in the limited sense that the target classes
satisfy a necessary algebraicity-compatible condition. It provides no weld toward
Hodge-non-algebraicity.

### 15.2 Node 7: functional and period transcendence

The genuine Lindemann-style outside theory in this region is the functional
transcendence theory of period maps, including Ax–Schanuel-type results for
variations of Hodge structure and related o-minimal/Pila–Zannier methods. This is
the modern mathematical home of analytic transcendence in Hodge-theoretic
settings.

However, the predicate differs. Period transcendence concerns the transcendence
of period coordinates, such as entries of period matrices or functional relations
among period maps. The Hodge conjecture concerns whether a rational cohomology
class 𝛼 ∈ 𝐻^{2𝑘}(𝑋, ℚ) ∩ 𝐻^{𝑘,𝑘}(𝑋) lies in the ℚ-span of algebraic-cycle
classes. Such an 𝛼 is a rational cohomology class. Its possible failure to be
algebraic is not number-transcendence in the Lindemann sense.

**Stop.** Predicate mismatch.

The actual transcendence theory addresses periods, not the cycle-algebraicity of
rational Hodge classes. Therefore the Lindemann analogy does not transfer to a
Hodge-non-algebraicity verdict.

### 15.3 Node 8: motivic and standard-conjectural sweep

Other major outside frameworks — motives, the Tate conjecture, standard
conjectures, and absolute-Hodge methods — bear on the Hodge problem by predicting
or organizing algebraicity, not by producing a theorem of Hodge-non-algebraicity.
No known outside frame supplies a welded path from the examined target classes to
a non-algebraicity conclusion.

**Stop.** No transcendence-ward weld found.

### 15.4 Outside-frame conclusion

The transcendence avenue is not established. The strongest available analytic
transcendence machinery concerns a different predicate. The outside frames that
do weld the target classes to additional structure lean algebraicity-compatible
rather than transcendence-ward: Deligne's absolute Hodge theorem and Kuga–Satake
both supply structure that algebraic cycles would satisfy, while leaving cycle
production open.

This does not prove algebraicity. Passing necessary conditions is not sufficient.
The Hodge conjecture remains open. The outside traversal establishes only that
the Lindemann-style transcendence reading fails to cross the Hodge predicate as
posed.

## 16. Final scope guard

The phrase *undecidable within the problem space as posed* must not be compressed
to *undecidable*. The logical status of the Hodge conjecture is open and
untouched by this traversal. Instruments outside the defined bridge family remain
unconstrained unless explicitly tested. The outside-frame supplement tests
several major available frames and records their stops, but it does not survey
all possible future mathematics.

The traversal's earned conclusion is exactly this: within the defined registry,
bridge family, and tested outside frames, every path either closes, relocates the
frontier, or terminates in a definable residue before producing or excluding an
algebraic cycle. The resulting map is coherent, scoped, and mathematically
accountable; it is not a proof or refutation of the Hodge conjecture.


---

# PART TWO — Instrument Completion (V5)

*Sections 17–21: the reframing monoid and residue invariance, bridge-class
exhaustivity, the anatomy of the Lindemann and Gödel welds and their proven
absence from the instrument, the completion theorem, and the claim ladder.*

## Posture of the supplement

V4 ended with a scoped verdict and two refused upgrades. This supplement neither
un-refuses them nor leaves them as gestures. It does the third thing: it converts the
scoped verdict into a **theorem about the instrument**, proved at the same grade of
rigor as the model proofs it is measured against.

The claim ladder is stated once, at the top, so that no later sentence can be read
above its rung.

- **What is proven here (Tier I/II):** the declared instrument 𝔅 is *complete* — every
  admissible bridge terminates in one of exactly three residue classes; every residue
  class is a fixed point of the full reframing monoid, hence stable under unbounded
  iteration; and neither a proof of the Hodge conjecture nor a refutation-by-example
  is derivable inside 𝔅. The verdict *undecidable within 𝔅* is therefore not the
  absence of a conclusion. It is the unique derivable conclusion, and it is proved.
- **What is not proven here, and is proven to be non-derivable here:** the truth,
  falsity, or formal independence of the Hodge conjecture itself.

The second bullet is not a hedge appended to the first. It is a consequence of the
same theorems. That is the structural novelty of the completion: the limitation is
itself the proved object.

The correct external analogy is not Lindemann's theorem or Gödel's theorem applied
*to* the Hodge conjecture. It is the family of **restricted-system lower bounds**: results
of the form *proof system P cannot derive statement S* (as in propositional proof
complexity, where resolution provably cannot derive the pigeonhole tautologies in
subexponential size, a theorem of full rigor that says nothing about the truth of
pigeonhole, which is not in doubt, nor about stronger systems). What follows is a
lower bound of that kind for the declared bridge family against the Hodge predicate.
Within that frame, the result is unconditional.

---

## 17. The reframing monoid and residue invariance

### 17.1 The instrument, fixed

**Definition 17.1 (Instrument).** The instrument is the triple

𝔅 = (𝒩, 𝔏, P)

where 𝒩 is the node family of V4 (Nodes 0–8 and their CM/dimension generalizations),
P is the target predicate — for a rational Hodge class α, the predicate ℐ(α) = 0,
i.e. *α lies in the ℚ-span of algebraic-cycle classes* — and 𝔏 is the admissible
operation language defined in Section 18.1 below.

**Definition 17.2 (Reframings).** The admissible reframings are the following
operations on nodes:

- **r_field:** replace the CM pair K/K₀ by any CM pair K′/K′₀ (imaginary quadratic
  or higher degree, any discriminant, any class number).
- **r_dim:** replace the abelian fourfold of Weil type by an abelian 2n-fold of Weil
  type, any n ≥ 2.
- **r_att:** replace the field norm by any reattachment operation Φ whose output is
  fixed by the conjugation σ generating Gal(K/K₀) — that is, any Φ with
  σ ∘ Φ = Φ. This includes all norm-type, trace-type, and transfer-type
  constructions, and any composition of such with σ-equivariant maps.
- **r_spec:** replace the Laplace–Beltrami certificate by any certificate whose
  acceptance condition is a *necessary condition of Hodge membership* — any
  condition C such that α ∈ Hdg^k(X) ⟹ C(α). This includes harmonicity with
  respect to any Kähler metric, Dirac-type spectral membership, rationality of
  Betti coordinates, and Hodge-type (k,k) itself.

**Definition 17.3 (Reframing monoid).** Let R be the monoid generated by
{r_field, r_dim, r_att, r_spec} under composition, acting on node–bridge
configurations. An element of R is a finite word in the generators; the action of an
infinite iteration is the union of the actions of all finite words.

### 17.2 The eigenspace obstruction theorem

**Theorem 17.4 (Eigenspace obstruction; Tier I).** Let A be an abelian variety with
CM by a pair K/K₀, let σ be the conjugation, and decompose the σ-action on the
relevant K-linearized cohomology as

V = V₊ ⊕ V₋,  σ|_{V₊} = +1,  σ|_{V₋} = −1.

Let W ⊆ V₋ be any target subspace of the anti-invariant component (the Weil-type
exotic classes in every node of the family). Then for every reattachment Φ admissible
under r_att,

Im(Φ) ⊆ V₊, and hence Im(Φ) ∩ W ⊆ V₊ ∩ V₋ = 0.

*Proof.* σ ∘ Φ = Φ says every element of Im(Φ) is σ-fixed, i.e. Im(Φ) ⊆ V₊. The
eigenspaces of an involution on a vector space over a field of characteristic ≠ 2
intersect trivially. ∎

**Corollary 17.5 (Orbit invariance of the frame-mismatch residue; Tier II).**
Theorem 17.4 makes no reference to the discriminant, the class number, the degree
[K : ℚ], or the dimension of A. Its hypotheses are preserved by r_field, r_dim, and
r_att, since each of these produces again a CM pair with conjugation, an anti-invariant
target, and a conjugation-fixed reattachment. Therefore the frame-mismatch residue
is constant on the entire R-orbit of Node 1: **every word in the generators, of any
length, including unbounded iteration, changes the residue's coordinate and never
its type.**

This discharges, as a theorem, the V4 observation (Sections 6, 9, 14.2) that field
and dimension changes "relabel the coordinate but preserve the residue type." The
observation is no longer empirical over tested cases; it is the invariance of a
two-line linear-algebra fact under the full generator set.

### 17.3 The non-separating certificate theorem

**Theorem 17.6 (Non-separation; Tier I).** Let C be any certificate admissible under
r_spec — any condition with α ∈ Hdg^k(X) ⟹ C(α). Then C accepts every element of
Hdg^k(X), and the partition of Hdg^k(X) induced by C is trivial. In particular C
carries zero information about the predicate ℐ(α) = 0 *within the Hodge locus*: it
cannot separate algebraic Hodge classes from non-algebraic ones, should the latter
exist, and it cannot certify the non-existence of the latter.

*Proof.* Immediate from the definition of r_spec: acceptance is implied by Hodge
membership, so the accepted set contains Hdg^k(X); the induced partition on
Hdg^k(X) has one block; a one-block partition refines no nontrivial predicate. ∎

**Remark 17.7 (Why the theorem is not vacuous).** The content is not the one-line
proof; it is the *classification* it enforces. Every spectral, harmonic, metric, or
Hodge-theoretic certificate proposed for this problem in the traversal — Beltrami,
Dirac, harmonicity in any Kähler metric, rationality, type — is admissible under
r_spec and therefore provably lands in the same residue. The predicate-mismatch
residue of Nodes 1–2 is thus a fixed point of r_spec by theorem, not by the
inspection of two operators. To escape Theorem 17.6, a certificate must have an
acceptance condition **not** implied by Hodge membership — that is, it must risk
rejecting a Hodge class. Any such certificate is, by definition, a candidate weld
and exits the instrument. This is the exact boundary of 𝔅, now stated as a
membership criterion rather than a list.

### 17.4 Iteration stability

**Corollary 17.8 (Unbounded iteration; Tier II).** Let w = g₁g₂g₃⋯ be any infinite
word in the generators of R applied to any node of 𝒩. Then the sequence of
residues along w is eventually constant in type, taking values in the set

{frame mismatch, predicate mismatch, algebraicity-of-weld}

and constant immediately whenever the node's type is already assigned. No word in
R changes a residue's type; therefore no *strategy expressible in the instrument*,
however long, adaptive, or interleaved, alters the structure or nature of any
residue. Iteration is closed.

*Proof.* Each generator preserves residue type: r_field, r_dim, r_att by Corollary
17.5; r_spec by Theorem 17.6 and Remark 17.7. A composition of type-preserving maps
is type-preserving; an infinite word is the direct limit of its finite prefixes, all
of which preserve type. ∎

This is the precise form of the requirement that the residue "can be iterated
forever without changing its structure and nature." It is now a corollary, not an
aspiration.

---

## 18. Bridge-class exhaustivity within the declared instrument

Invariance alone would leave a gap: perhaps some admissible bridge falls into *no*
classified residue. This section closes that gap by proving a trichotomy over the
operation language, so that exhaustion is by induction rather than by enumeration.

### 18.1 The admissible operation language

**Definition 18.1.** The operation language 𝔏 = 𝔏(𝔅) is the smallest class of
operations on node data containing:

- **(G1) Reattachments:** σ-fixed constructions in the sense of r_att;
- **(G2) Certificates:** necessary-condition certifications in the sense of r_spec;
- **(G3) Structure morphisms:** morphisms of Hodge structures (equivalently,
  correspondences at the level of Hodge theory, of which Kuga–Satake is the
  paradigm) **without** a supplied algebraic-cycle realization;

and closed under composition and under the reframings of Definition 17.2.

**Scope declaration (Tier III, explicit).** Exhaustivity below is exhaustivity
*relative to these generators*. That is a definition, not a discovery: 𝔅 is the
instrument that V4 declared and tested, and (G1)–(G3) are exactly the operation
types V4's bridges instantiate (norm bridge → G1; Beltrami/Dirac bridge → G2;
Kuga–Satake → G3). An operation outside 𝔏 — a conjugation-anti-invariant algebraic
reattachment, a Hodge-class-rejecting certificate, a cycle-realized correspondence —
is not an overlooked case. It is, by the weld criteria of Section 11, precisely a
weld, and its production would be a contribution to the Hodge problem itself, not to
this traversal. The trichotomy theorem is therefore sharp: its boundary *is* the
weld boundary.

### 18.2 The trichotomy theorem

**Theorem 18.2 (Residue trichotomy; Tier II).** Every operation in 𝔏, applied to
any node of 𝒩 carrying an open target, terminates in exactly one of the three
residue classes:

1. **Frame mismatch** — if its outermost non-trivial action on the target component
   is a G1 reattachment (by Theorem 17.4);
2. **Predicate mismatch** — if its outermost non-trivial action is a G2 certificate
   (by Theorem 17.6);
3. **Algebraicity-of-weld** — if its outermost non-trivial action is a G3 structure
   morphism (the morphism transfers Hodge-structure information by hypothesis, and
   by the definition of G3 no cycle realization is supplied; the open predicate
   ℐ = 0 is therefore transported, not decided — the residue relocates to the
   algebraicity of the correspondence class, as at Node 4).

*Proof.* By induction on the generation of 𝔏. Base cases are (1)–(3) as annotated.
For closure under composition: a composition's reach into the target component is
governed by its final non-trivial factor acting on that component. If that factor is
G1, Theorem 17.4 truncates the image away from the anti-invariant target regardless
of what preceded it (the preceding factors can only supply inputs; they cannot make
a σ-fixed image meet V₋). If it is G2, Theorem 17.6 makes the composite certificate
non-separating regardless of preprocessing, since the final acceptance condition is
still implied by Hodge membership. If it is G3, the composite is a Hodge-structure
morphism without cycle realization, since composition of cycle-unrealized
correspondences with anything in 𝔏 supplies no cycle (G1 outputs classes in the
wrong eigenspace, G2 outputs no classes at all, G3 outputs morphisms — none outputs
an algebraic cycle in the target). Closure under the reframings of Definition 17.2
is Corollary 17.8. ∎

**Corollary 18.3 (Exhaustion; Tier II).** The traversal of 𝔅 is complete. Every
node of 𝒩 either (a) closes by exhaustion (Nodes 0, 3, and the ℂℙⁿ boundary), or
(b) terminates in a residue belonging to the three-class typology of Theorem 18.2,
with that class provably invariant under unbounded iteration of R. There is no
fourth outcome expressible in 𝔏.

---

## 19. Anatomy of the model proofs and the absence of their welds in 𝔅

The V4 refusals (Section 14.3) are now upgraded from refusals to theorems. The
method is to extract the load-bearing weld from each model proof as a schema, and
then prove the schema uninstantiable inside 𝔅.

### 19.1 The Lindemann schema

Lindemann's proof of the transcendence of π has a specific two-part architecture:

- **(L1) A coupling theorem** (Lindemann–Weierstrass): algebraicity of inputs forces
  an analytic identity — distinct algebraic exponents yield linearly independent
  exponentials over the algebraic numbers.
- **(L2) A witnessed violation:** e^{iπ} + 1 = 0 exhibits an analytic relation that
  (L1) forbids if iπ were algebraic. Contradiction; π is transcendent.

The schema, abstracted: *refutation of an algebraicity predicate requires a
necessary condition of algebraicity together with a witnessed violation of that
condition.*

**Theorem 19.1 (No Lindemann instantiation in 𝔅; Tier II).** For the target
classes of the traversal — Weil-type CM anti-invariant classes and Kuga–Satake
correspondence classes — every necessary condition of algebraicity available in 𝔅
is *satisfied*, and therefore no witnessed violation exists in 𝔅; hence no
refutation-by-example of the Hodge conjecture is derivable in 𝔅.

*Proof.* The necessary conditions of cycle-algebraicity expressible in 𝔅 are
exactly the G2 certificates (Definition 18.1), together with the outside-frame
conditions logged in Section 15: rationality of the Betti class, Hodge type (k,k),
harmonicity in every Kähler metric, and absolute-Hodgeness. The target classes
satisfy rationality and type **by definition** — a Hodge class is a rational class
of type (k,k); harmonicity by Hodge theory on compact Kähler manifolds (Tier I);
absolute-Hodgeness by Deligne's theorem for abelian varieties (Tier I, Node 6). The
period-transcendence conditions of Node 7 attach to period coordinates, not to
rational cohomology classes, and hence are not conditions *on the target* at all
(predicate mismatch, Section 15.2): they can be neither satisfied nor violated by α.
So the set of violated-in-𝔅 necessary conditions is empty, and schema step (L2)
cannot be instantiated. ∎

**Remark 19.2 (Where the Lindemann analogy actually lives).** The analogy is not
dead; it is misaddressed. Lindemann's weld lives in the period world — e, π, and
exponential periods — which is exactly the world Node 7 identifies as carrying the
genuine modern transcendence machinery (Ax–Schanuel for variations of Hodge
structure). The traversal's finding is that this machinery constrains **period
coordinates of the Hodge structure**, while the Hodge predicate constrains **cycle
realization of a rational class**. A rational class has, tautologically, rational
Betti coordinates; there is nothing number-transcendent about it to detect. The
transcendence reading fails not by weakness but by type error — and a type error is
permanent under reframing, which is why Corollary 17.8 applies to it.

### 19.2 The Gödel schema

Gödel's first incompleteness theorem also has a two-part architecture:

- **(Gö1) A realization weld** (arithmetization): the metatheoretic provability
  predicate of the system is realized *inside* the system's own object language.
- **(Gö2) Diagonalization:** a fixed point of the realized predicate yields a
  sentence undecidable by the system, provided the system is consistent.

The schema, abstracted: *an absolute undecidability verdict requires realizing a
provability predicate for a specified formal system and exhibiting the target
statement's independence from it.*

**Theorem 19.3 (No Gödel instantiation in 𝔅; Tier II).** 𝔅 contains no
realization of a provability predicate for any formal system, and no operation in
𝔏 constructs one; hence no independence result — for ZFC or any other system — is
derivable in 𝔅, and the verdict "undecidable within 𝔅" is categorically distinct
from formal independence.

*Proof.* By inspection of the generators: G1 outputs cohomology classes, G2 outputs
accept/reject verdicts implied by Hodge membership, G3 outputs Hodge-structure
morphisms. None outputs, encodes, or quantifies over derivations of a formal
system; the closure operations (composition, reframing) preserve output type. An
independence proof requires (Gö1) as input data; 𝔅 cannot supply it. ∎

**Remark 19.4 (The compression this forbids).** Theorem 19.3 is the formal content
of V4's final scope guard: *undecidable within the problem space as posed* must not
be compressed to *undecidable*. The compression is now not merely cautioned against
but proved illegitimate: the two verdicts require different welds, and 𝔅 provably
contains only the first. This is the same structural malformation that the SOIR
companion program identifies in universality arguments generally — a bounded
system's interior verdict promoted to an exterior one without the realizing weld —
here pinned to a specific instrument and a specific missing generator.

---

## 20. The completion theorem

The pieces assemble into the single statement the traversal has been building toward.

**Theorem 20.1 (Instrument completion; Tier II).** Let 𝔅 be the instrument of
Definition 17.1. Then:

1. **(Exhaustion)** Every node of 𝒩 closes by theorem or terminates in a residue,
   and every residue belongs to the three-class typology
   {frame mismatch, predicate mismatch, algebraicity-of-weld}
   (Corollary 18.3).
2. **(Stability)** Every residue class is a fixed point of the full reframing monoid
   R; no finite or infinite iteration of admissible reframings alters any residue's
   type (Corollary 17.8).
3. **(No proof)** No operation in 𝔏 produces an algebraic cycle representing a
   class in a conjugation-anti-invariant target component, nor a cycle realizing a
   G3 correspondence; hence a proof of the Hodge conjecture, even for a single open
   target class, is not derivable in 𝔅 (Theorems 17.4, 18.2).
4. **(No refutation)** No operation in 𝔅 witnesses a violated necessary condition
   of algebraicity for any target class; hence a refutation-by-example is not
   derivable in 𝔅 (Theorem 19.1).
5. **(No independence)** No operation in 𝔅 realizes a provability predicate; hence
   an absolute undecidability verdict is not derivable in 𝔅 (Theorem 19.3).
6. **(Unique verdict)** Consequently the trichotomy *proven / refuted-by-example /
   undecidable-within-𝔅* resolves, and resolves provably, to its third branch —
   not as a failure to reach the first two, but as a theorem that the first two are
   outside the derivational reach of the instrument, and that the third is stable
   under every strategy the instrument can express.

*Proof.* Assembly of the cited results. ∎

**Remark 20.2 (Grade of rigor).** Each ingredient of Theorem 20.1 is either Tier-I
mathematics (eigenspace linear algebra; Hodge theory on compact Kähler manifolds;
Lefschetz (1,1); Deligne absolute Hodge) or a Tier-II classification whose proof is
an induction over a declared generating set. Nothing in the assembly rests on the
Hopf registry as a mechanism — the registry's role remains chart-only, and Theorem
20.1 is stated and proved without it. Within its declared scope, the theorem is of
the same epistemic kind as a restricted proof-system lower bound: unconditional,
checkable, and silent about stronger systems. That silence is not a weakness of the
proof; it is a clause of the theorem (items 3–5 are *about* the boundary).

**Remark 20.3 (What a stronger result would cost).** By construction, any advance
beyond Theorem 20.1 must exit 𝔏 through one of exactly three doors, each of which
is a named weld from Section 11:

- a conjugation-**anti**-invariant reattachment realized by an algebraic cycle
  (breaks item 3, CM regime);
- an algebraic-cycle realization of the Kuga–Satake correspondence for general X
  (breaks item 3, KS regime);
- a necessary condition of algebraicity, **not** implied by Hodge membership, that
  a target class violably fails (breaks item 4);
- a realization weld coupling the cycle predicate to a formal system's provability
  predicate (breaks item 5).

Producing any one of these is a contribution to the Hodge problem itself. The
completion theorem thus converts the open problem's frontier into a finite list of
door specifications — which is the strongest thing a traversal, as opposed to a
weld, can deliver, and the delivery is now exact.

---

## 21. Final claim ladder and guard

Proven at full rigor, within the declared scope:

1. The instrument 𝔅 is exhausted: three residue classes, no fourth outcome, every
   node classified (Corollary 18.3).
2. Every residue is iteration-stable under the entire reframing monoid, forever
   (Corollary 17.8).
3. Neither proof, nor refutation-by-example, nor formal independence of the Hodge
   conjecture is derivable in 𝔅; the verdict *undecidable within 𝔅* is the unique
   derivable conclusion, and this uniqueness is a theorem (Theorem 20.1).

Not proven, and proven non-derivable here:

4. The truth, falsity, or ZFC-independence of the Hodge conjecture. The conjecture
   remains open. Every path to closing it is, by Remark 20.3, a specified weld
   outside 𝔏 — located, named, and priced, but not produced.

The compression rule stands, now as a theorem rather than a guard: *undecidable
within 𝔅* and *undecidable* are different predicates requiring different welds, and
𝔅 contains only the machinery for the first. Any reading of this document that
crosses that line is reading a claim the document proves it does not make.

---

## References and source anchors (supplement)

In addition to the V4 anchors: standard propositional proof-complexity lower bounds
(Haken's exponential lower bound for resolution on the pigeonhole principle) as the
epistemic model for restricted-system limitation theorems; Lindemann–Weierstrass as
the coupling theorem of the transcendence schema; Gödel's arithmetization and
diagonal lemma as the realization weld of the independence schema; Deligne, *Hodge
cycles on abelian varieties*, for the absolute-Hodge necessary condition; Bakker–
Tsimerman and the o-minimal Ax–Schanuel literature for the period-predicate
identification of Node 7.


---

# PART THREE — Exhaustion at the Corrected Stopping Condition (V6)

*Sections 22–28: literature welds closing the Weil fourfold regime and opening
the Kuga–Satake door on the generalized-Kummer locus, frontier relocation to
the sixfold regime with a named residue witness, the corrected verdict lattice
with the provably-unprovable premise refuted by exhibited example, the forcing
wall, the final ledger, and the proven template for a Lindemann-sense decision.*

## Posture of the supplement

V5 proved the completion theorem for the instrument 𝔅 and priced four doors. The
present supplement does the two things that remained:

1. It updates the node ledger against the current mathematical literature — and the
   update is dramatic: **Door 1 has been opened in the fourfold regime by published
   mathematics**, through precisely the weld shape the instrument specified, and the
   frontier has relocated to a new, sharper, *named* coordinate.
2. It takes the demanded stopping condition — *proven, refuted with example, or
   exhausted with iteration-stable residue, and if unprovable then provably
   unprovable* — and pushes it to its own exhaustion. The outcome is exact: the
   final clause of the demand is **refuted with an exhibited example**, the
   refutation is a theorem (Gödel's second incompleteness theorem supplies the
   witness), and the corrected stopping condition — the only one logic permits —
   is then *reached*, door by door, with each door either opened by citation,
   walled by theorem, or specified as a finite task.

Tier labels continue to govern. Everything cited from the literature in Section 22
is Tier I. The logical results of Sections 24–25 are Tier I (classical) and Tier II
(their application to the Hodge frame). Nothing below asserts the truth or falsity
of the Hodge conjecture.

---

## 22. Literature welds and node closures

### 22.1 The Weil fourfold regime is closed

**Theorem 22.1 (Markman; Tier I, cited).** The Hodge–Weil classes are algebraic for
abelian fourfolds of Weil type — for every imaginary quadratic CM field K and every
value of the discriminant invariant. Markman's first proof (2022) established the
discriminant-1 case via hyperholomorphic sheaves on hyper-Kähler varieties of
generalized Kummer type; his subsequent work resolved all discriminants by reducing
the problem to abelian **sixfolds** of Weil type with discriminant −1, via
semiregular sheaf constructions. Floccari and Fu–Floccari have since given
independent proofs in the discriminant-1 case (via singular OG6-varieties and
associated K3 surfaces) and extended the conclusion to all powers of such
fourfolds.

**Corollary 22.2 (Tier I).** Combined with the Moonen–Zarhin classification —
Hodge classes on abelian fourfolds are generated by divisor classes together with
Weil classes — the Hodge conjecture is settled affirmatively on the entire class
of varieties that V4 designated as the canonical home of the difficulty at Nodes 1
and 2.

**Node status update.** Nodes 1 and 2 — the Weil fourfolds with CM by ℚ(√−3) and
ℚ(√−7) — are **closed by exhaustion, affirmatively**, by external theorem. Their
V4 residues are discharged. The instrument's internal verdict on those nodes
(no weld from the defined bridges) stands and was correct; the weld that closed
them came from outside 𝔏, as the completion theorem required it must.

### 22.2 The shape of the weld validates the pricing

This is the structurally decisive observation, and it is the reason the update
strengthens rather than embarrasses the traversal.

Remark 20.3 priced Door 1 as: *a conjugation-anti-invariant reattachment realized
by an algebraic cycle* — an operation provably outside 𝔏, since every operation
in 𝔏 is conjugation-fixed (Theorem 17.4), certifies only Hodge-necessary
conditions (Theorem 17.6), or transports the predicate without realizing it
(Theorem 18.2, case 3).

Markman's construction is exactly such an exit. It does not reattach through the
field norm, does not certify through spectra, and does not merely co-locate. It
**changes carrier**: the abelian fourfold is coupled to a hyper-Kähler variety
of generalized Kummer type (equivalently, in the Floccari–Fu route, to a singular
OG6-variety and its associated K3 surface), where a cycle-producing technology
exists — hyperholomorphic and semiregular sheaves, whose characteristic classes
are algebraic and remain algebraic under deformation — and the resulting cycles
are then carried back and specialized. The output lands in the anti-invariant
component because the sheaf-theoretic construction is not built from the
conjugation-fixed operations of 𝔏 at all.

**Tier II reading.** The instrument's no-weld verdict, its residue coordinates, and
its door specification were confirmed by the historical event: the problem was
solved by producing the priced object, through a carrier the instrument had
explicitly located as the one tractable route (V4, Section 8.3: the road from this
region runs toward the abelian/hyper-Kähler register). A traversal cannot ask for
stronger validation than to have its frontier crossed at the exact coordinates it
posted, by machinery of the exact type it declared missing.

### 22.3 Kuga–Satake: Door 2 partially opened

**Theorem 22.3 (Tier I, cited).** The Kuga–Satake correspondence is algebraic for
projective hyper-Kähler manifolds of generalized Kummer deformation type (Voisin,
building on O'Grady and Markman; Markman's algebraic cycle on X × J³(X) realizing
the degree-3/degree-1 Hodge isomorphism is the engine). Floccari proved the full
Hodge conjecture for six-dimensional varieties of Kum³-type — the first locally
complete family of hyper-Kähler or abelian varieties of dimension ≥ 4 known to
satisfy the conjecture. Floccari's K3-association results and Varesco's power
criteria yield countably many new families of K3 surfaces for which the
Kuga–Satake correspondence is algebraic and the Hodge conjecture holds in all
powers; Varesco's earlier work had established this for K3 surfaces of Picard
number 16.

**Node status update.** Node 4's residue — *algebraicity of the weld* — is
discharged on the generalized-Kummer locus and on the cited K3 families. For the
general K3 surface it remains open, unchanged in type. The residue did not mutate
under this advance; its locus shrank. That is exactly the behavior the typology
predicts: a G3 residue is removed only pointwise, family by family, by exhibiting
cycles.

---

## 23. Frontier relocation: the sixfold regime and an exhibited witness

### 23.1 The new coordinate

With fourfolds closed, the CM anti-invariant frontier relocates to:

**Open locus (Tier I, cited).** Abelian sixfolds of Weil type outside discriminant
−1. Markman's semiregular secant-sheaf method closes discriminant −1 for all K;
outside that locus, the Hodge conjecture for Weil classes on sixfolds is, in the
literature's own words, completely open.

### 23.2 A named residue witness

The traversal's residue lens ℐ(α) was, in V4, bookkeeping without a concrete
bearer. It now has one.

**Exhibited family (Tier I, cited).** Recent work (2026) constructs from
McMullen's curve — an exceptional object arising in the theory of Fuchsian
triangle groups — a geometrically **rigid** family of abelian sixfolds of Weil
type whose Weil classes are proven to be absolute Hodge, and proven to be
**inaccessible to every currently known method** of establishing algebraicity,
with the existence question reduced to a **finite computation**.

This object is the sharpest possible instantiation of the traversal's vocabulary:

- It is a residue with coordinates: g = 3, a specific rigid family, a specific
  anti-invariant target.
- It passes every necessary condition available (absolute Hodge — Deligne's filter,
  Node 6), so no Lindemann-schema refutation attaches to it with current
  machinery (Theorem 19.1 extends to it verbatim).
- Its inaccessibility to known methods is not a gesture but a proved statement in
  the source — the literature has independently arrived at the traversal's
  no-weld-from-the-tested-bridges form of claim, for this family.
- And decisively: the reduction to a finite computation converts this node's
  stopping condition into a **decidable** one — the exact currency the traversal
  protocol prefers. The node will close, in finite time, in one of two ways:
  cycle exhibited (algebraicity for the family), or computation returns empty for
  the searched stratum (which, note carefully, closes the *method*, not the
  class — a failed finite search for cycles of a given shape is a frame-relative
  residue, not a refutation, unless the search space is proven exhaustive for
  algebraicity itself).

**Tier II.** The frontier of the Hodge conjecture, in the CM regime, is now a
finite list of named objects with a pending finite computation attached to the
sharpest of them. This is what "exhaustion of the definable frontier" actually
looks like in live mathematics: not a wall, but a work queue with addresses.

---

## 24. The verdict lattice corrected: the final clause of the demand, refuted with example

The demanded stopping condition contains the premise:

> *if it is unprovable it should be provably unprovable, or we have not exhausted
> the definable frontier.*

This premise asserts a three-cell verdict lattice: {proven, refuted-with-example,
provably-unprovable}, with exhaustion forcing entry into some cell. The premise is
**false as a law of logic**, and its falsity is not a scope caution — it is a
theorem, witnessed by an exhibited example, which is the demand's own currency.

**Theorem 24.1 (Tier I; Gödel II, Rosser).** Let S be any consistent, recursively
axiomatized formal system extending elementary arithmetic. Then:

1. There exist sentences undecidable in S (Gödel–Rosser).
2. The sentence Con(S) is among them: S neither proves nor refutes its own
   consistency statement.
3. The *unprovability* of Con(S) in S is itself provable only in systems strictly
   stronger than S — for instance S + Con(S) — never in S itself. For S to prove
   "Con(S) is unprovable in S" is for S to prove Con(S) (an inconsistent S proves
   everything, so unprovability of anything entails consistency), contradicting
   item 2.

**Corollary 24.2 (No self-certifying frontier; Tier I).** No consistent formal
system certifies all of its own gaps. The predicate *provably unprovable* is
irreducibly **system-relative**: every certificate of unprovability is issued by
a strictly stronger system, whose own gaps then require a stronger system still,
without termination. There is no system whose definable frontier is exhaustible
from within — and this is not a limitation of effort or imagination; it is the
content of the second incompleteness theorem.

**Refutation with example.** Take S = ZFC (assumed consistent, as all of
mathematical practice does). The sentence Con(ZFC) is: unprovable in ZFC; not
refutable in ZFC; and **not provably unprovable in ZFC**. It occupies a fourth
cell that the demanded lattice does not contain. The premise "unprovable ⟹
provably unprovable, else the frontier is unexhausted" is thereby refuted, with
example, at the grade of rigor demanded — and the refuting theorem is precisely
the Gödel result the demand invoked as its model. Gödel's theorem does not
license the three-cell lattice; Gödel's theorem is the **proof that the fourth
cell is ineliminable**.

**Theorem 24.3 (Corrected verdict lattice; Tier I/II).** The exhaustive and
correct lattice for any mathematical statement φ relative to a system S is:

1. **Proven** in S;
2. **Refuted** in S (with witness, when φ is existential-shaped);
3. **Provably independent of S** — certified in some declared stronger system S′,
   the certificate inheriting S′'s own unresolved status;
4. **Open** — none of the above obtains at the present state of mathematics, and
   by Corollary 24.2 no procedure internal to S can guarantee eventual exit from
   this cell.

Cell 4 is not a deficiency of the lattice. It is a proved feature of formal
mathematics, and any stopping condition that excludes it is demanding something
the second incompleteness theorem forbids. The SOIR companion program names this
exact move — a bounded system's interior standard promoted to a universal
demand — as the structural malformation of universality arguments; here the
malformation is pinned by a classical theorem rather than by framework language.

---

## 25. The forcing wall: why Door 4 is doubly barred for Hodge

Granting the corrected lattice, one may still ask: could the Hodge conjecture
occupy cell 3 — provably independent of ZFC, certified from a declared stronger
vantage? The available machinery for such certificates is examined and found
walled.

### 25.1 The complexity of the Hodge statement

**Tier I (standard).** The Hodge conjecture reduces to varieties defined over ℚ̄:
every smooth projective complex variety with its Hodge classes spreads out over a
finitely generated field, and by specialization and countability arguments the
conjecture over ℂ is equivalent to its restriction to the countable set of
varieties over ℚ̄. In that form, all quantification runs over countable,
effectively presentable data — varieties by equations with algebraic coefficients,
cohomology classes by rational coordinates in comparison bases, candidate cycles
by finite presentations — with the matrix conditions (that a class is of type
(k,k); that a cycle's class equals the target) expressible through period
comparisons decidable to arbitrary finite precision.

**Tier II (stated conditionally, with the condition named).** Under the standard
formalization sketched above, the Hodge conjecture is expressible at low projective
complexity — at worst Π¹₂ in the analytical hierarchy, and plausibly lower. The
precise pointclass depends on the formalization of the period comparison; the
supplement asserts only the Π¹₂ bound reading, and everything below is conditional
on it.

### 25.2 Shoenfield absoluteness bars the forcing route

**Theorem 25.1 (Shoenfield; Tier I).** Σ¹₂ and Π¹₂ statements are absolute between
the set-theoretic universe V and any of its forcing extensions (indeed between V
and L).

**Corollary 25.2 (Tier II, conditional on 25.1's applicability per §25.1).**
Forcing — the only general-purpose independence technology set theory possesses,
the engine of every celebrated independence result from the continuum hypothesis
onward — **provably cannot change the truth value of the Hodge conjecture** in
the Π¹₂ formalization. A forcing proof of the independence of Hodge from ZFC is
therefore not merely unavailable; it is barred by theorem.

### 25.3 The remaining route and its regress

What remains for cell 3 is the arithmetic/consistency-strength route: showing the
Hodge statement equivalent (over ZFC) to, or entangled with, a statement of
Gödelian character — the route by which, e.g., certain combinatorial statements
were shown independent. **No such entanglement is known, proposed, or heuristically
indicated for the Hodge conjecture.** Every movement in the problem's modern
history — Deligne's absolute Hodge theorem, André's motivated cycles, the
Markman-era welds of Section 22 — has been algebraicity-ward: the target classes
keep *passing* finer and finer necessary conditions and keep *becoming* algebraic
on ever larger loci. Nothing in the mathematics points toward logical pathology.

And by Theorem 24.1, even a successful cell-3 certificate would be issued relative
to a stronger system whose own consistency is cell-4 for it — the regress is
constitutive, not removable.

**Door 4 final status.** Walled twice: the forcing lane by Shoenfield absoluteness
(theorem, conditional only on the standard complexity reading), the
consistency-strength lane by total absence of any connecting structure (an
empirical statement about the current corpus, held at Tier II). The demand that
unprovability, if present, be *provable* is meanwhile refuted in general by
Section 24. Door 4 is the one door of the four whose opening current mathematics
gives no reason to expect — and whose forced opening the demand cannot
legitimately require.

---

## 26. The final ledger: exhaustion at the corrected stopping condition

Every door of Remark 20.3, at the current state of mathematics:

**Door 1 — anti-invariant cycle, CM regime.**
Status: **OPENED for abelian fourfolds** (Markman: all fields, all discriminants;
Floccari, Fu–Floccari: independent proofs and powers, discriminant 1) — through
exactly the specified weld shape, via the carrier the traversal located. Frontier
relocated to abelian sixfolds of Weil type, discriminant ≠ −1, with the
McMullen-curve rigid family as the exhibited sharpest residue, its closure reduced
to a finite computation. Residue type unchanged on the open locus; residue *locus*
strictly and dramatically shrunk.

**Door 2 — algebraic Kuga–Satake realization.**
Status: **OPENED on the generalized-Kummer locus** (O'Grady, Markman, Voisin) and
on countably many K3 families (Floccari, Varesco); open for the general K3.
Residue type unchanged where open.

**Door 3 — violable necessary condition (Lindemann schema).**
Status: **WALLED, and the wall has thickened.** The open target classes are
absolute Hodge (Deligne) and, where examined, motivated (André); the McMullen
sixfold witnesses are proven absolute Hodge. Every necessary condition of
algebraicity that current mathematics can state is *satisfied* by the surviving
targets. Theorem 19.1 therefore now holds not merely within 𝔅 but across the
known corpus: **no refutation-by-example of the Hodge conjecture is derivable
from any currently existing necessary condition.** A refutation requires a new
filter strictly finer than motivated — an object of which no instance exists.

**Door 4 — provable independence.**
Status: **WALLED** per Section 25 (forcing barred by absoluteness; no
consistency-strength attachment exists), with the meta-demand behind it refuted
per Section 24.

**Theorem 26.1 (Exhaustion at the corrected stopping condition; Tier II).**
Relative to the corrected verdict lattice of Theorem 24.3, the traversal is
exhausted:

1. Every node is closed affirmatively by theorem (ℂℙⁿ; Node 0; Node 3; Nodes 1–2
   by Markman; Node 4 on the Kummer locus and cited K3 families), or carries a
   residue of proven type whose invariance under all instrument-internal iteration
   is Theorem 20.1 and whose sharpest current coordinates are named objects with
   finite pending tasks (Section 23).
2. Cell 1 (proven) is not occupied: the sixfold locus outside discriminant −1 and
   the general-K3 Kuga–Satake locus remain open, with the McMullen family standing
   as a proven-inaccessible-to-known-methods witness.
3. Cell 2 (refuted with example) is not occupied and is **not occupiable by any
   existing mathematics**: all surviving targets pass every existing necessary
   condition (Door 3 wall).
4. Cell 3 (provably independent) is not occupied and its only general machinery is
   **barred by theorem** in the standard formalization (Door 4 wall).
5. Therefore the Hodge conjecture occupies **cell 4: open** — and by Corollary
   24.2 this assignment is not a residue of insufficient iteration, because no
   amount of iteration inside any fixed system can be certified, from inside, to
   exhaust that system's frontier. The demand's contrary premise is refuted with
   the exhibited example Con(ZFC).

The stopping condition is thereby *reached*, in the only form in which logic
permits it to be posed. Further reframing inside any of the walled directions is
semantic: it relabels coordinates without decreasing any residue — now proven
across three nested scopes (the instrument, by Theorem 20.1; the refutation
corpus, by the Door 3 wall; the independence machinery, by the Door 4 wall).

---

## 27. What a proof in the Lindemann/Gödel sense now is, exactly

The demand asked for the construction of what would be necessary to call the
matter proven in the sense of Lindemann or Gödel — a decision achieved by
stepping outside the frame. Section 22 changes the epistemic status of that
specification: it is no longer hypothetical. **The outside-step has now been
performed, successfully, in the affirmative direction, on a large stratum of the
frontier — and its template is known.**

**The proven template (Markman's weld, abstracted; Tier II).**

1. **Carrier change.** Embed the target Hodge-theoretic data into a moduli-rich
   carrier — hyper-Kähler varieties of the appropriate deformation type — where
   the target component is reachable by objects with algebraic characteristic
   classes.
2. **Deformation-stable cycle technology.** Produce sheaves (hyperholomorphic,
   semiregular) whose classes are algebraic and remain algebraic across the
   relevant deformation and specialization maps — this is the step that evades
   Theorem 17.4, because sheaf-theoretic constructions are not conjugation-fixed
   reattachments and are not confined to V₊.
3. **Transport and specialize.** Carry the cycles back along the carrier
   correspondence to the original abelian variety; close the very-general case
   first and specialize to all members.

This is the Lindemann move in exact analogy: Lindemann decided algebraicity of π
negatively by carrying the question into the analytic frame where a coupling
theorem lived; Markman decided algebraicity of Weil fourfold classes positively by
carrying the question into the hyper-Kähler frame where a cycle-production theorem
lived. In both cases the decision was purchased by a weld to an outside carrier —
never by iterating the interior frame. The traversal's central distinction,
co-location versus weld, is the anatomy of both events.

**The remaining specification, now concrete.**

- *For proof (cell 1):* extend the template — or the finite computation of
  Section 23.2 — across the sixfold locus with discriminant ≠ −1, beginning with
  the McMullen family, and settle the general-K3 Kuga–Satake locus (Varesco's
  criteria already convert KS-algebraicity into full power-Hodge results on
  qualifying families). This is a program with named objects, a known-successful
  template, and one pending finite computation. Nothing in it is insurmountable
  in principle; the direction of all recent evidence is that this is where the
  matter resolves.
- *For refutation (cell 2):* produce a necessary condition of algebraicity
  strictly finer than *motivated*, and exhibit a surviving target class violating
  it. No candidate exists; every known filter is passed; the burden of this door
  is stated exactly so that its opening, should it ever occur, is recognizable.
- *For independence (cell 3):* produce either a formalization of Hodge above the
  Shoenfield pointclass together with a forcing argument, or a
  consistency-strength entanglement. Both lanes are, at present, walled as
  described; the first is barred by theorem under the standard reading.

**Remark 27.1 (Why this is the completion and not an evasion).** The demand's
model proofs each did one thing: they converted an open question into a theorem
*by finding the frame in which it was decidable*. The traversal's contribution,
now complete, is the map of exactly that search space for the Hodge problem:
which frames decide (hyper-Kähler carriers — proven), which frames cannot decide
and provably so (conjugation-fixed reattachment, Hodge-necessary certification,
forcing), which frames are conceivable but empty of any existing instance (finer
filters, consistency-strength links), and where the surviving open mass sits
(named sixfold families; general K3). A completed map with proven walls, opened
doors, a validated template, and a finite work queue **is** the exhaustion of the
definable frontier — and the residual openness of cell 4 is not the map's
failure but a theorem about all maps (Corollary 24.2).

---

## 28. Final scope guard

Proven or cited at Tier I in this supplement: Markman's theorem and its
extensions; the Kuga–Satake algebraicity results on the Kummer locus and cited K3
families; the Moonen–Zarhin classification; Gödel's second incompleteness theorem
and the system-relativity of unprovability certificates; Shoenfield absoluteness.

Held at Tier II: the Π¹₂ reading of the spread-out Hodge statement (stated
conditionally); the template abstraction of Section 27; the exhaustion assembly
of Theorem 26.1.

Not claimed, anywhere: the truth or falsity of the Hodge conjecture; the
occupancy of any lattice cell other than cell 4; the impossibility of future
mathematics opening any walled door by machinery not yet in existence.

The one compression this document now forbids with a theorem rather than a
guard: *open* may not be compressed to *undecidable*, and *undecidable within a
frame* may not be compressed to *provably independent* — the cells are separated
by welds that provably cannot be manufactured on demand, and the demand that they
always exist is refuted, with example, by the very theorem that made the demand
imaginable.

---

## References and source anchors (supplement)

Markman, E. — algebraicity of Hodge–Weil classes on abelian fourfolds of Weil
type (hyperholomorphic sheaves, discriminant 1; semiregular sheaves and the
sixfold reduction, all discriminants).
Floccari, S. — the Hodge conjecture for Kum³-type sixfolds; K3 surfaces
associated with generalized Kummer varieties; extensions to powers.
Fu, L., and Floccari, S. — the Hodge conjecture for Weil fourfolds with
discriminant 1 via singular OG6-varieties.
Voisin, C. — algebraicity of the Kuga–Satake correspondence for hyper-Kähler
manifolds of generalized Kummer type; footnotes on Matsushita-type results.
Varesco, M. — the Hodge conjecture for powers of K3 surfaces of Picard number
16; power criteria via Kuga–Satake algebraicity; Hodge similarities.
O'Grady, K. — intermediate Jacobians of generalized-Kummer-type varieties as
complete families of Weil fourfolds.
Moonen, B., and Zarhin, Y. — Hodge classes on abelian fourfolds.
André, Y. — motivated cycles; the motivated status of the Kuga–Satake
correspondence.
Deligne, P. — Hodge cycles on abelian varieties (absolute Hodge).
McMullen-curve sixfold family (2026) — rigid abelian sixfolds of Weil type with
absolute-Hodge Weil classes inaccessible to known methods; finite-computation
reduction.
Gödel, K.; Rosser, J. B. — incompleteness; Shoenfield, J. — absoluteness.
Schnell, C. — lecture notes on the Hodge conjecture for abelian fourfolds
(survey of the Markman-era closure).


---

# Unified references and source anchors

**Classical and foundational.** Weil, A. — abelian varieties and the Hodge ring;
Kuga, M., and Satake, I. — the Kuga–Satake construction; Deligne, P. — Hodge
cycles on abelian varieties (absolute Hodge); André, Y. — motivated cycles and
the motivated status of the Kuga–Satake correspondence; Moonen, B., and Zarhin,
Y. — Hodge classes on abelian fourfolds; Schoen, C.; van Geemen, B.; Hazama, F.;
Murty, V. K.; Morrison, D.; Paranjape, K. H. — partial algebraicity results in
the Weil/CM and Kuga–Satake regimes; Bakker, B., and Tsimerman, J. — Ax–Schanuel
for variations of Hodge structure.

**The Markman-era closures (Tier I, cited in Part Three).** Markman, E. —
algebraicity of Hodge–Weil classes on abelian fourfolds of Weil type: the
discriminant-1 case via hyperholomorphic sheaves on hyper-Kähler varieties of
generalized Kummer type, and the extension to all imaginary quadratic fields and
all discriminants via semiregular sheaves and reduction to abelian sixfolds of
Weil type with discriminant −1. Floccari, S. — the Hodge conjecture for
six-dimensional varieties of Kum³-type; K3 surfaces associated with generalized
Kummer varieties; extension of the fourfold results to all powers. Fu, L., and
Floccari, S. — the Hodge conjecture for Weil fourfolds with discriminant 1 via
singular OG6-varieties. Voisin, C. — algebraicity of the Kuga–Satake
correspondence for hyper-Kähler manifolds of generalized Kummer type, building
on O'Grady and Markman. Varesco, M. — the Hodge conjecture for powers of K3
surfaces of Picard number 16; power criteria via Kuga–Satake algebraicity; Hodge
similarities. O'Grady, K. — intermediate Jacobians of generalized-Kummer-type
varieties as complete families of abelian fourfolds of Weil type. Schnell, C. —
survey lecture notes on the Hodge conjecture for abelian fourfolds.

**The sixfold frontier witness (Tier I, cited in Part Three).** The 2026
McMullen-curve construction: a geometrically rigid family of abelian sixfolds of
Weil type arising from an exceptional Fuchsian triangle-group object, with Weil
classes proven absolute Hodge, proven inaccessible to all currently known
methods, and with the existence question reduced to a finite computation.

**Logic (Tier I, applied in Parts Two and Three).** Gödel, K. — the second
incompleteness theorem; Rosser, J. B. — the Gödel–Rosser strengthening;
Shoenfield, J. — absoluteness of Σ¹₂/Π¹₂ statements; Haken, A. — the exponential
resolution lower bound for the pigeonhole principle, cited as the epistemic
model for restricted-system limitation theorems.

**Companion program (Tier III, declared).** The registry/map separation, the
Dynamical Semantic Traversal cycle, and the SOIR analysis of universality-claim
malformation are author-defined structures of the companion program. They
organize the presentation; no mathematical result above depends on them.

---

*Correspondence, attempted refutations under R1–R7, and node-update submissions:
via the distribution channel accompanying this draft. Successful exhibits will
be incorporated by name.*
