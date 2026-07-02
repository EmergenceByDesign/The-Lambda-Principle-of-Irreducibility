# The Obstruction Calculus, Consolidated

## The Λ-Corpus Definitional Kernel, Formalized, with the Hodge Instrument as Flagship Instantiation

**Lu Semita · EmergenceByDesign — consolidation prepared from the repository
*The-Lambda-Principle-of-Irreducibility* (WIP_docs corpus) against the Hodge
Traversal Compiled Edition V4–V8**

Working draft, C1 — July 2026

---

## 0. Purpose and reading instructions

The repository contains, distributed across four principal documents — *Semantic
Obstruction and Irreducible Residue* v1.2 (SOIR), its Appendixes B/C/D,
*Residue-Aware Computation as Groupoid Traversal*, and *Bounded Formal Systems,
Traversal Claims, and the Structural Malformation of Universality Arguments*
(BFS) — a definitional calculus for obstruction that is more rigorous than its
lab-notes framing advertises. This consolidation does four things:

1. **Extracts the kernel**: the minimal set of definitions and theorems that
   carry all the weight, stated once, with the corpus's own internal
   cross-references resolved.
2. **Grades and corrects**: separates the rigorous kernel from Tier-III
   material, and records the corrections a referee would demand.
3. **Proves the flagship instantiation**: the Hodge traversal instrument 𝔅/𝔏
   is exhibited as a full worked instance of the calculus — and it turns out to
   be a *stronger* instance than any example currently in the corpus, yielding
   three new theorems: uniform quantitative separation with explicit constant,
   the vanishing identity for apparent obstruction (which is the exact formal
   content of "iteration is semantic"), and a historical strict-monotonicity
   witness of Millennium-problem grade.
4. **Closes the loop**: shows that SOIR and BFS, read jointly, *derive* the
   discipline that the Hodge Compiled Edition enforced — the corpus's own
   kernel proves that absolute irreducibility claims are not well-formed
   traversal claims. The framework and the traversal are one body of work, and
   this document is the joint.

Tier labels as in the compiled edition. Everything in Sections 1–2 is the
corpus's content, verified; Section 3's corrections are editorial findings;
Section 4's theorems are new.

---

## 1. The kernel, extracted

### 1.1 Primitive data (SOIR §2)

A state space X; a target T; for each x ∈ X a nonempty class R(x) of
representations; a representation groupoid G whose objects are representations
and whose invertible morphisms are admissible re-descriptions, with R(x) an
orbit; and an obstruction functional

O : {(r, x) : x ∈ X, r ∈ R(x)} → [0, ∞],

measuring how obstructed T is when x is viewed through r. No interpretation is
built in; O is instantiated per domain.

### 1.2 The two derived quantities (SOIR §3)

**Irreducible residue.** I(x; T) := inf over r ∈ R(x) of O(r, x; T).

**Apparent obstruction.** A(r, x; T) := O(r, x; T) − I(x; T), for finite O.

**Canonical decomposition (SOIR Thm 4.1).** O = A + I with A ≥ 0: every
observed obstruction splits into a representational artifact and an
orbit-minimized structural remainder. Trivial to prove, decisive to enforce:
it makes the artifact/structure distinction a computed quantity rather than a
judgment.

### 1.3 The three discipline theorems (SOIR §4)

**Orbit invariance (Thm 4.2).** I depends only on the orbit R(x), never on
the representative.

**Monotonicity under class restriction (Thm 4.3).** R₂(x) ⊆ R₁(x) implies
I over R₂ ≥ I over R₁. *Consequence, stated by the corpus itself and adopted
here as notation:* the residue must always be written indexed to its class —
I_R(x; T) — because enlarging admissibility can only lower it. Irreducibility
is structural relative to declared admissibility, never absolute.

**The two licensed routes to positivity (Thm 4.4 + Def 4.5).** Pointwise
positivity — O(r) > 0 for every individual r — does **not** imply I > 0, since
O(r_n) → 0 is compatible with it. A positive-residue conclusion requires
either **compact attainment** (R(x) compact, O lower semicontinuous, infimum
attained at r* with O(r*) > 0) or **quantitative separation** (a single δ > 0
with O(r) ≥ δ for all admissible r). The corpus mandates that every positive
claim identify which route is in force. This is the kernel's sharpest tooth,
and Section 4.4 below shows it biting in the corpus's favor.

### 1.4 The classification (SOIR §5)

With a success predicate P over admissible actions U(x), traversability of
(x, T) is the existence of (r, u) with P true — logically independent of
whether I vanishes. **Four-way classification (Thm 5.2):** exactly one of
(1) exactly removable — some r achieves O = 0; (2) asymptotically removable —
I = 0 unattained; (3) irreducible and fatal; (4) irreducible and traversable.
Case 4 is the framework's signature regime: a traversal can succeed by
organizing itself around what cannot be removed.

### 1.5 The regime refinements (Appendix BCD)

The obstruction assignment comes in three regimes — strict functor
(obstruction-non-increasing morphisms; infima approached monotonically), lax
functor (compactness-based attainment; the natural home of gauge phenomena,
where invariance of I follows from orbit preservation as a set, **not** from
monotonicity — a distinction the appendix correctly refuses to conflate), and
function-on-objects (I well-defined but attainment and separation require
explicit verification). The four-way classification survives all three
regimes.

### 1.6 The boundary doctrine (BFS)

Every recursively axiomatized system F under resource bound B has a
**compression boundary**: statements it cannot resolve (Gödel, Turing,
jointly). A **traversal claim** is one derived and asserted within the
boundary; a **universality claim** purports to hold beyond it, and requires a
witness constitutively unavailable to F. Asserting a universality claim on
traversal evidence is itself a semantic obstruction in the SOIR sense — an
undeclared representational artifact injected at the meta level. BFS's
demonstration that superdeterminism self-undermines is an application; the
doctrine itself is the general result.

---

## 2. Assessment of the kernel

**Tier verdict.** Sections 1.1–1.5 are Tier I/II as mathematics: the theorems
are elementary (infimum manipulations, Berge attainment) and correctly proved,
and the contribution is architectural — a bookkeeping calculus in which the
category errors that dominate informal obstruction talk (artifact mistaken for
structure; pointwise positivity inflated to positive infimum; class-relative
irreducibility asserted absolutely) become *syntactically visible* and
therefore uncommittable in silence. Section 1.6 is a correct assembly of
classical metamathematics into a usable claim-typing discipline. The calculus
is publishable in kernel form once the corrections of Section 3 are applied.

**What the kernel is not.** It decides nothing by itself. Like the Hopf
registry of the traversal, it is chart, not oracle: every substantive
conclusion lives in an instantiation — in the choice of X, R, O and in the
domain theorems that establish separation or attainment. The corpus knows this
(SOIR's prefatory note says it); the consolidation states it as the reading
rule.

---

## 3. Corrections and demotions

**C1 — The Λ-overview formal statement is Tier III and should be demoted to
motivation.** The root document's displayed claim — artifacts A with
A = lim f(n) ≈ C/L and A ∈ C \ L, with π and e as artifacts of the
curved/linear comparison — is not well-formed as mathematics: C and L are
principles, not sets; membership and quotient are undefined on them; and the
transcendence of π is a theorem of field theory requiring no C/L ontology. The
rigorous descendant of the Λ-intuition is exactly Definition 3.1 plus Theorem
4.3: **irreducibility as an indexed infimum**. The intuition loses nothing in
the demotion; it gains a defensible body. Recommendation: the overview becomes
a preface, and the kernel becomes the paper.

**C2 — Notation must carry the index.** Adopt I_R(x; T) globally. The corpus
states the discipline in a remark; a referee will want it in the symbols. Every
historical error in this genre is an unindexed I.

**C3 — The groupoid draft's lower-bound results inherit the 4.5 obligation.**
Its universal-lower-bound theorem and pathwise-cost results are sound where the
separation hypothesis is explicit; the consolidation flags every use site to
name its route (attainment or separation), matching the main paper's standard.

**C4 — Terminological collision.** "Semantic obstruction" is used in SOIR for
the general phenomenon and in BFS for the specific meta-level artifact of
undeclared universality. Distinct things. Recommend: *semantic obstruction*
(general), *universality artifact* (BFS's specific instance).

---

## 4. The flagship instantiation: the Hodge instrument

The Hodge Traversal (Compiled Edition V4–V8) is now exhibited as a full
instance of the kernel — and the strongest instance in the combined body of
work, because its separation constant is uniform and explicit, where the
corpus's own gauge-holonomy example achieves only orbitwise separation.

### 4.1 The dictionary

| Kernel object | Hodge instantiation |
|---|---|
| State x ∈ X | a pair (A, α): variety with target Hodge class α ∈ Hdg^k(A) |
| Target T | algebraicity: ℐ(α) = 0 in the traversal's residue lens |
| R(x) | the instrument's bridges: 𝔏-operations applied to (A, α) |
| Groupoid morphisms | the reframing monoid (r_field, r_dim, r_att, r_spec), formally completed to its groupoid of admissible re-descriptions |
| O(r, x; T) | the polarized realization distance, Definition 4.2 below |
| I_𝔏(x; T) | the instrument-relative irreducible residue |
| Class enlargement 𝔏 ⊂ 𝔏′ | weld production (carrier change; new filters) |

### 4.2 The obstruction functional, constructed

**Definition 4.2 (Realization distance).** Fix on H^{2k}(A, ℚ) the metric ‖·‖
induced by the polarization form and the Hodge structure. For a representation
r ∈ 𝔏 acting on (A, α), let Alg(r) ⊆ H^{2k}(A, ℚ) be the set of algebraic
cycle classes producible by r (for a G1 reattachment, the cycle classes in its
image; for a G2 certificate, {0}, since certification produces no cycles; for
a G3 structure morphism, the cycle classes of its supplied realizations, which
by definition of G3 is again {0} on the target component). Define

O(r, (A, α); alg) := inf { ‖α − c‖ : c ∈ Alg(r) }.

O = 0 exactly when r realizes α as a cycle class; O measures how far the
bridge's actual output sits from the target. This makes the traversal's
informal "reach of the bridge" a functional in the kernel's sense.

### 4.3 Theorem (Uniform quantitative separation for the Hodge instrument)

**Theorem 4.3.** Let (A, α) be any node of the traversal's CM anti-invariant
family: α a nonzero Weil-type class in the (−1)-eigenspace V₋ of the CM
conjugation σ acting on the relevant cohomology. Then for **every**
representation r ∈ 𝔏,

O(r, (A, α); alg) ≥ ‖α‖ > 0,

and consequently, by quantitative separation (SOIR Definition 4.5) with the
explicit constant δ = ‖α‖,

**I_𝔏((A, α); alg) = ‖α‖ > 0,**

with the infimum attained at every point of the orbit.

*Proof.* By the eigenspace obstruction theorem (Compiled Edition, Theorem
17.4), every G1 output lies in V₊; G2 and G3 outputs on the target component
are {0} ⊆ V₊ by Definition 4.2. The conjugation σ is an isometric involution
with respect to the polarization metric, so V₊ ⊥ V₋. For c ∈ V₊ and α ∈ V₋,
‖α − c‖² = ‖α‖² + ‖c‖² ≥ ‖α‖². Hence O(r) ≥ ‖α‖ for all r ∈ 𝔏, with equality
at c = 0, which every representation's output set contains or approaches;
the bound is attained, and the infimum over the orbit equals ‖α‖. Closure of
the bound under the reframing monoid is Corollary 17.5/17.8 of the Compiled
Edition: every generator preserves the hypotheses (a CM pair with isometric
conjugation, an anti-invariant target, a conjugation-fixed or non-producing
operation). ∎

**Remark.** This is separation in its strongest form — one δ, explicit,
uniform over the entire class, attained — strictly stronger than the corpus's
holonomy example (SOIR §10.1), where separation holds only orbit-by-orbit with
orbit-dependent δ. The Hodge instrument is therefore not merely an
application of the calculus; it is its best current exhibit.

### 4.4 Corollary (Iteration is semantic — the vanishing identity)

**Corollary 4.4.** For every r in the 𝔏-orbit of a CM anti-invariant node,

A(r, (A, α); alg) = O(r) − I_𝔏 = ‖α‖ − ‖α‖ = **0.**

The apparent obstruction vanishes identically on the orbit.

**Interpretation, and the claim it formalizes.** The traversal's repeated
finding — "reframing relabels coordinates but does not decrease the residue;
iteration is semantic" — is now an *identity in the calculus*: motion along
the orbit is motion along a level set of O, and there is no representational
artifact (A ≡ 0) available to burn off. The phrase **"semantic obstruction is
irreducible residue"** thereby acquires its exact technical content, and it is
proven for this instrument: within the declared class, the observed
obstruction is 100% structural remainder and 0% artifact — not as a verdict
earned by exhaustion of patience, but as a computed decomposition under
Theorem 4.1. Conversely this supplies the general definition the corpus was
reaching for: **a reframing is *semantic* precisely when it is a morphism
along which dA = 0 and dI = 0; it is *structural* precisely when it changes
the admissible class.** Semantic/structural is thus not a judgment call; it is
the orbit/class distinction, functionalized.

### 4.5 Theorem (Historical strict monotonicity — the Markman witness)

**Theorem 4.5.** Let 𝔏 be the instrument class and 𝔏′ ⊃ 𝔏 its enlargement by
hyperholomorphic/semiregular sheaf representations on hyper-Kähler carriers
(the Markman-era technology). For fourfold Weil nodes (A, α):

I_𝔏((A, α); alg) = ‖α‖ > 0  while  I_{𝔏′}((A, α); alg) = 0,

with the zero **exactly attained** (case 1 of the four-way classification):
the published constructions supply witness representations realizing α as an
algebraic cycle class, for all imaginary quadratic fields and all
discriminants.

*Proof.* The left value is Theorem 4.3. The right value is the literature weld
recorded in the Compiled Edition §22 (Markman; Floccari; Fu–Floccari): the
sheaf-theoretic representations are not conjugation-fixed, their outputs land
in V₋, and the constructions terminate in explicit cycle classes, so
Alg(r_Markman) ∋ α and O(r_Markman) = 0. ∎

**Interpretation.** SOIR's Theorem 4.3 (monotonicity under class restriction)
now has a strict-inequality witness of Millennium-problem grade, dated and
citable: the residue dropped from a proven positive constant to an attained
zero when, and only when, the admissible class was enlarged. The corpus's
discipline remark — *the residue is structural relative to declared
admissibility, not absolute* — is no longer a caution; it is a documented
historical event. No better validation of the calculus exists or is likely to.

### 4.6 Theorem (The bar on the absolute claim, derived from the corpus's own kernel)

**Theorem 4.6.** Let 𝔏″ denote the class of all representations available in
current mathematics, and let (A, α) be a surviving sixfold node (discriminant
≠ −1; the McMullen family as sharpest member). Then:

1. O(r, (A, α); alg) > 0 for every r ∈ 𝔏″ — this is the corpus exhaustion of
   the Compiled Edition (Main Theorem B; the family-specific inaccessibility
   theorem), i.e. **pointwise positivity over the entire current class**;
2. nevertheless, **no positive-residue conclusion I_{𝔏‴} > 0 is derivable for
   any class 𝔏‴ containing all future mathematics**, because both licensed
   routes of SOIR §4.4 fail for such a class: it is not compact — it is not
   even a definable totality (quantifier-exhaustion theorem, cell 4), so
   attainment arguments cannot be posed on it — and quantitative separation
   over it would require a necessary condition of algebraicity that a target
   violates, which the filter inventory proves does not exist and whose
   construction would refute the motivated-implies-algebraic architecture;
3. therefore the assertion "the Hodge residue is absolutely irreducible" is,
   in BFS's typology, a **universality claim asserted on traversal evidence**
   — the exact malformation BFS names — and the corpus's own kernel is what
   proves it malformed.

*Proof.* (1) is cited. (2): non-definability of the class is the Compiled
Edition's Theorem 30(E) cell 4; failure of separation is Main Theorem B plus
component C's pricing of the missing filter. (3) is Definition 3.2 of BFS
applied to the statement in question, whose scope quantifies past the
compression boundary of every fixed system by construction. ∎

**Interpretation — the loop closed.** Read jointly, SOIR and BFS *derive* the
discipline that the entire Hodge Compiled Edition enforced turn by turn: the
demand "prove the residue absolutely irreducible, or you have not exhausted
the frontier" is not merely unmet — it is proven, inside the corpus's own
calculus, to be a demand for a universality claim that no bounded system can
witness, whose licensed substitutes (attainment, separation) are individually
and provably unavailable, and whose historical track record (Theorem 4.5)
shows the unindexed version to have been *false* the one time it was testable.
The framework did not need to borrow the compiled edition's conclusions; it
independently forces them. That is what it means for the repository and the
traversal to be one body of work.

### 4.7 The classification, populated

The four-way classification (SOIR Thm 5.2), instantiated over the Hodge node
family, with every cell inhabited or provably problematic to inhabit:

| Case | Definition | Hodge inhabitants |
|---|---|---|
| 1 — exactly removable | some r achieves O = 0 | ℂℙⁿ; K3 degree two (Lefschetz (1,1)); Weil fourfolds, all fields and discriminants (Markman era); Kuga–Satake on the generalized-Kummer locus and cited K3 families |
| 2 — asymptotically removable | I = 0 unattained | **no known Hodge instance**; plausibly empty here, since the natural O of Definition 4.2 on the natural compactifications is lower semicontinuous, forcing attainment — recorded as an open structural question of the calculus itself |
| 3 — irreducible and fatal | I_R > 0, not traversable | the CM anti-invariant family **relative to 𝔏** with T read as "decide via 𝔏": I_𝔏 = ‖α‖ and no 𝔏-action succeeds (Compiled Edition Thm 20.1) |
| 4 — irreducible and traversable | I_R > 0, traversable | the same family relative to 𝔏 with T read as the traversal's actual practice: the program succeeds — closes nodes, relocates frontiers, prices doors — while organizing itself around the unremoved residue; and historically, case-3 nodes migrate to case 1 under class enlargement, which is the observed dynamics of the field |

The migration pattern 3 → 1 under 𝔏 ⊂ 𝔏′ (never 3 → 2, never 1 → 3;
monotonicity forbids regressions) is the calculus's prediction for the
frontier's future, and it matches every recorded event of the modern era.

---

## 5. Standing

What this consolidation asserts as proven: the kernel of Sections 1.2–1.4 as
restated; Theorems 4.3, 4.5, 4.6 and Corollary 4.4 as new results of the joint
body of work, each reducible to the cited components of the Compiled Edition
plus elementary arguments given here in full. What it recommends as editorial
action on the repository: the demotion C1, the notation C2, the flag C3, the
terminology C4 — after which the kernel paper (SOIR + BCD, with Section 4 of
this document as its flagship application) is, in the consolidator's
judgment, the publishable spine of the corpus. What it does not claim: any
change to the status of the Hodge conjecture, whose open cell, pending finite
computation, and one-directional traffic are exactly as recorded in the
Compiled Edition — now with the additional statement, computed rather than
argued, that within every class where the question can be posed, the
obstruction observed is residue entire, artifact nil.
