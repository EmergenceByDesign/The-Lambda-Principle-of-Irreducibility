# Appendixes B, C, and D
## Supplementary Rigorous Treatment
### To: *Semantic Obstruction and Irreducible Residue* (v1.2)

These appendixes address three points identified in review: (B) the functor-condition discontinuity between Sections 6.1 and 8.2; (C) the formal status of the success predicate P and the scope of consistency claims; (D) the higher-categorical section and the conditions under which the ∞-groupoid formulation yields content beyond the groupoid formulation.

Each appendix is self-contained and refers to definitions and theorems in the main text by their original numbering.

---

# Appendix B. The Functor Condition: Strict, Lax, and Function-on-Objects Regimes

## B.1. The discontinuity and its source

Section 6.1 of the main text characterizes the obstruction assignment O as a functor from R(x) to the thin category ([0, ∞], ≤), subject to the condition that every morphism f : r₁ → r₂ in the representation groupoid G satisfies

    O(r₁, x; T) ≥ O(r₂, x; T).

This condition is stated explicitly as a substantive assumption. Section 8.2 then introduces Case 2, where O varies under gauge transformation in a way that is not required to be monotone: O(g · r, x; T) ≠ O(r, x; T) without any constraint on the direction of variation. These two regimes are formally distinct. The purpose of this appendix is to make the distinction precise, to characterize each regime by explicit conditions, and to show by example that both arise naturally and that the irreducible residue is well-defined in both cases.

## B.2. Three regimes of the obstruction assignment

Let G be the representation groupoid, R(x) the orbit of x, and O : R(x) → [0, ∞] the obstruction functional for fixed x and T.

**Definition B.1 (Strict functor regime).**
O is in the *strict functor regime* if for every morphism f : r₁ → r₂ in G,

    O(r₁, x; T) ≥ O(r₂, x; T).

In this case O defines an order-preserving functor from (R(x), G) to ([0, ∞], ≤), viewing the former as a category with morphisms from G and the latter as a thin category.

**Definition B.2 (Lax functor regime).**
O is in the *lax functor regime* if there exist morphisms along which O decreases and morphisms along which O increases, but the infimum over the orbit is still attained or approached in a controlled way. Formally: there is no uniform monotonicity, but the map r ↦ O(r, x; T) is lower semicontinuous on R(x) equipped with a topology compatible with G, and R(x) is compact in that topology.

**Definition B.3 (Function-on-objects regime).**
O is in the *function-on-objects regime* if no monotonicity condition holds and no compactness or semicontinuity condition is imposed. O is simply a map from the set of objects of R(x) to [0, ∞]. The irreducible residue is still defined as

    I(x; T) := inf_{r ∈ R(x)} O(r, x; T),

but claims about attainment, positivity, or separation require additional hypotheses beyond the functor structure.

**Remark B.4.**
The irreducible residue I(x; T) is well-defined as an infimum in all three regimes. The regimes differ in what can be concluded about attainment and about the reliability of the infimum as a structural invariant. The classification of Theorem 5.2 holds in all three regimes, since it depends only on whether I(x; T) vanishes and whether a successful traversal exists — neither of which requires the functor condition.

## B.3. The strict functor regime: formal treatment

**Proposition B.5.**
In the strict functor regime, the infimum I(x; T) is attained along any sequence of morphisms that minimizes O. More precisely: if f_n : r → r_n is a sequence of composable morphisms in G with O(r_n, x; T) → I(x; T), then the sequence is decreasing and bounded below, hence the infimum is approached monotonically.

**Proof.**
By Definition B.1, each morphism in G is obstruction-non-increasing. A composable sequence of such morphisms produces a non-increasing sequence of obstruction values. Since O maps to [0, ∞], the sequence is bounded below by 0. A monotone decreasing sequence bounded below converges. Its limit is ≥ I(x; T) by definition of infimum. Since the sequence was chosen to approach I(x; T), the limit equals I(x; T). ∎

**Corollary B.6.**
In the strict functor regime, if the orbit R(x) has any morphism chain of length greater than 1 along which O strictly decreases, then O(r, x; T) > I(x; T) for the initial representation r. In particular, the apparent obstruction A(r, x; T) is strictly positive for such r.

**Proof.**
If O strictly decreases along f : r → r', then O(r', x; T) < O(r, x; T), so I(x; T) ≤ O(r', x; T) < O(r, x; T). By Definition 3.2, A(r, x; T) = O(r, x; T) − I(x; T) > 0. ∎

**Example B.7 (Coordinate simplification).**
Let X be the space of smooth functions on R, and let the target T be membership in L². Let admissible representations be smooth reparameterizations φ : R → R with φ' > 0. Define O(φ, f; T) as the L²-norm defect of f ∘ φ⁻¹ relative to a reference Sobolev embedding. Standard Sobolev reparameterization theory (cf. Adams and Fournier, *Sobolev Spaces*, Ch. 3) implies that suitable φ can only reduce or preserve the L²-norm defect, placing this example in the strict functor regime. The irreducible residue I(f; T) is the infimum of the defect over all admissible reparameterizations, and by the monotone convergence argument of Proposition B.5, this infimum is approached monotonically.

## B.4. The lax functor regime: formal treatment

In the gauge-theoretic setting of Section 8.2, Case 2 allows O to vary non-monotonically under gauge transformation. This places such examples in the lax or function-on-objects regime. The key question is whether the infimum is still a structurally reliable quantity.

**Proposition B.8.**
In the lax functor regime (Definition B.2), the irreducible residue I(x; T) is attained. If O is lower semicontinuous on the compact space R(x), then there exists r* ∈ R(x) such that O(r*, x; T) = I(x; T).

**Proof.**
This is Theorem 4.4 of the main text. A lower semicontinuous function on a compact space attains its infimum (Berge, *Topological Spaces*, 1963; Bourbaki, *General Topology*, Ch. 4, Theorem 1). ∎

**Remark B.9.**
The lax regime is the natural home of gauge theory. Gauge transformations do not form an ordered structure compatible with O; they form a group acting on the space of representations, and O may increase or decrease along orbits depending on the gauge choice. The gauge-invariance of the residue (Theorem 8.1 of the main text) holds in this setting not because O is monotone but because the infimum over the entire orbit is invariant under relabeling of the orbit, which is a consequence of the orbit being preserved as a set under the group action. These are distinct properties and should not be conflated.

**Example B.10 (Gauge holonomy, non-monotone case).**
Retain the setup of Example 10.1 of the main text: M = S¹, a principal U(1)-bundle with connection A. Under gauge transformation A ↦ A + dφ, the total holonomy phase ∫_{S¹} A is unchanged (since ∫_{S¹} dφ = 0 for a smooth periodic φ). However, the *local* connection form A + dφ can be made to oscillate arbitrarily. If one defines O using a local norm rather than the global holonomy phase — for instance O(A) = ‖A‖_{L²(S¹)} — then O varies non-monotonically under gauge: adding dφ with large oscillation increases ‖A + dφ‖_{L²} even while the holonomy is unchanged.

In this case the holonomy-based obstruction of Example 10.1 is in the strict functor regime (it is already gauge-invariant and constant on orbits), while the L²-norm-based obstruction is in the lax regime. This illustrates that the regime is a property of the *choice of obstruction functional O*, not of the underlying system. The residue I(x; T) computed from either functional is the same for the holonomy target (global flattening), because the holonomy is the relevant invariant, but the two choices of O may give different residues for other targets. This makes explicit why the obstruction functional must be chosen to reflect the actual target, as stated in Step 3 of Appendix A.6.

## B.5. The function-on-objects regime and its limitations

**Proposition B.11.**
In the function-on-objects regime, the irreducible residue I(x; T) is well-defined but may not be attained, and the separation condition of Definition 4.5 cannot be derived from the functor structure alone. Claims of positive residue in this regime require explicit verification of either compact attainment or quantitative separation.

**Proof.**
Since O is merely a function from the set of objects of R(x) to [0, ∞], with no topological or order-theoretic structure on R(x) imposed, the infimum is a set-theoretic infimum that may or may not be attained. The infimum of a set of nonnegative reals can equal 0 even if every element of the set is positive (consider {1/n : n ∈ N}). Without compactness or semicontinuity, there is no mechanism to guarantee attainment. Without a uniform lower bound, there is no mechanism to conclude positivity of the infimum. Both conclusions therefore require explicit domain-specific input. ∎

**Remark B.12.**
The function-on-objects regime is not a failure of the framework; it is a signal that the representation class has not yet been equipped with enough structure to support strong conclusions. The framework is designed to make this signal explicit rather than to paper over it with unverified assumptions.

## B.6. Summary table

| Regime | Monotonicity | Compactness / LSC | Attainment | Positive residue route |
|---|---|---|---|---|
| Strict functor | Required | Not required | Monotone approach | Separation on orbit |
| Lax functor | Not required | Required | Theorem 4.4 | Compact attainment |
| Function-on-objects | Not required | Not required | Not guaranteed | Explicit verification only |

The main text's Section 6.1 should be understood as operating in the strict functor regime. Section 8.2, Case 2 operates in the lax or function-on-objects regime depending on whether compactness and lower semicontinuity of the gauge orbit are established. The classification of Theorem 5.2 is valid in all three regimes.

---

# Appendix C. The Success Predicate P: Formal Status, Context-Dependence, and Scope of Consistency Claims

## C.1. The formal status of P

The main text introduces the success predicate P(r, u, x; T) in Section 5.2 without imposing structural conditions on P beyond its role in Definition 5.1. A referee or reader may read this as a gap. This appendix argues the opposite: the absence of a context-free definition of P is not a gap but a theorem-level consequence of the framework's own foundational commitments, and can be stated as such.

**Theorem C.1 (Context-dependence of P).**
Let the framework be as in Sections 2–5 of the main text. There is no well-formed evaluation of the success predicate P(r, u, x; T) that is independent of a declared representation r, admissible action u, system state x, and target T. Any purported evaluation of P that omits one or more of these parameters is ill-formed within the framework.

**Proof.**
By Definition 5.1, traversability of (x, T) is the existence of r ∈ R(x) and u ∈ U(x) such that P(r, u, x; T) holds. The predicate P takes all four arguments essentially: (i) r determines the representational frame in which success is evaluated; (ii) u determines the action being taken; (iii) x is the system state; (iv) T is the target. Dropping any one of these destroys the evaluability of P. Specifically: without r, there is no frame in which to assess whether the action achieves the target. Without u, there is no action to assess. Without x, there is no system. Without T, there is no criterion of success. Since P(r, u, x; T) is defined as a predicate on all four arguments simultaneously, any partial evaluation is a type error in the sense of typed predicate logic: it produces a propositional function rather than a proposition. Since propositional functions do not have truth values, no evaluation result is available.

This is not a pathology of the framework. It is the formal expression of the paper's central claim: that obstruction and success are representation-relative, context-dependent notions. The predicate P makes this precise at the level of type. ∎

**Remark C.2.**
This result is consistent with Tarski's semantic theory of truth, under which a truth predicate is always relative to a model (Tarski, "The Concept of Truth in Formalized Languages," 1933). Attempting to evaluate P outside its declared context is structurally analogous to applying a truth predicate without specifying a model: the expression is syntactically formed but semantically inert. The present framework makes the same point in the language of representation groupoids and success predicates rather than models and satisfaction relations. The concepts are not identical but the logical structure — that evaluation requires a declared interpretive frame — is the same.

**Remark C.3.**
The same argument applies to O. The apparent obstruction A(r, x; T) and the irreducible residue I(x; T) are both indexed to a declared admissible groupoid. Dropping that declaration renders them ill-formed by the same token. Theorem C.1 thus unifies the treatment of P with the treatment of O under a single principle: all evaluable quantities in this framework are frame-indexed, and frame-dropping is a type error.

## C.2. Why examples are the appropriate mode of demonstration for P

A natural question is whether the context-dependence of P can be demonstrated by a general argument covering all possible specifications of P simultaneously. The answer is no, for a reason that is itself a structural feature of the framework rather than a limitation.

**Proposition C.4.**
No finite collection of examples of P exhausts the space of admissible specifications. No single general argument about P-in-general can substitute for specification of P in a given application. These two facts are compatible: examples demonstrate the pattern; the pattern is that every application requires its own declaration of P.

**Proof.**
The space of admissible success predicates P is at least as large as the space of predicates on the product R(x) × U(x) × X × {T}, which for nontrivial X, R(x), and U(x) is not finite. No finite collection of examples can enumerate this space. Conversely, a general argument about an unspecified P would have to treat P as a universally quantified variable, producing a statement of the form "for all P satisfying conditions C, ..." which would require C to be specified. But C, if it is to capture all admissible success predicates, must itself be context-dependent. Therefore neither a finite list of examples nor a single universal argument resolves the question for all applications. What both approaches can do — and what the examples in Section 10 of the main text do — is demonstrate that the pattern of context-dependence is stable: in every exhibited case, P is well-formed only after r, u, x, and T are declared. ∎

**Remark C.5.**
This is not a weakness of the demonstrative strategy; it is a consequence of the framework's own scope. The appropriate conclusion is not that P should be defined universally, but that any application of the framework must include an explicit declaration of P as part of its setup, alongside the declarations of X, R(x), G, O, and U(x). Appendix A.1 of the main text already lists these as the five ingredients required for the front-end recipe; P should be understood as a sixth, always present implicitly and now made explicit.

## C.3. Minimal well-formedness conditions on P

While P cannot be defined universally, it is possible and useful to state minimal conditions that any well-formed specification of P must satisfy for the classification theorem (Theorem 5.2) to yield non-vacuous conclusions.

**Definition C.6 (Well-formed success predicate).**
A success predicate P(r, u, x; T) is *well-formed* relative to the framework if:

1. **Type correctness.** P takes values in {true, false} (or in [0, 1] as a performance functional with a declared threshold θ such that P holds iff the value exceeds θ).
2. **Non-triviality.** There exists at least one quadruple (r, u, x, T) for which P is true and at least one for which P is false. (A predicate that is always true or always false places every pair (x, T) in the traversable or non-traversable regime respectively, rendering the classification uninformative.)
3. **Consistency with O.** If O(r, x; T) = 0 — meaning the representation r achieves zero obstruction — then P(r, u, x; T) is true for some u ∈ U(x). Zero obstruction in a representation is sufficient for success in that representation given an appropriate action. (This is a minimal coherence condition between O and P; it may be strengthened in specific applications.)
4. **Frame-indexing.** The truth value of P(r, u, x; T) may vary as r varies over R(x) for fixed u, x, T. That is, P is genuinely representation-sensitive and not secretly a function of x and T alone.

**Proposition C.7.**
Under conditions 1–4 of Definition C.6, the four-way classification of Theorem 5.2 is non-vacuous: all four cases are logically possible, and no case is excluded by the definition of P alone.

**Proof.**
Case 1 (exactly removable): take any (x, T) for which some r achieves O(r, x; T) = 0. By condition 3, P holds for some u, so the pair is traversable with zero residue.

Case 2 (asymptotically removable): take any (x, T) for which I(x; T) = 0 is approached but not attained, and suppose no r with O(r, x; T) = 0 exists. Condition 3 does not apply (since zero obstruction is never achieved), and P may or may not hold for some (r, u). This case requires domain-specific analysis of P.

Case 3 (irreducible and fatal): take any (x, T) with I(x; T) > 0. By condition 2, P can be false for all (r, u) — this is not excluded by the definition. Such a specification gives a fatal pair.

Case 4 (irreducible and traversable): take any (x, T) with I(x; T) > 0. By condition 2, P can be true for some (r, u) — this is also not excluded. The nonholonomic example (Example 10.3 of the main text) witnesses this case explicitly. ∎

**Remark C.8.**
Condition 3 of Definition C.6 is the load-bearing coherence condition. Without it, P and O could be defined in ways that are mutually inconsistent — for instance, a target T that O measures as fully achieved but P declares unsuccessful. Such inconsistency would undermine the interpretive value of both quantities. Condition 3 prevents this by requiring that zero obstruction is always sufficient for success under some action. Applications may impose stronger coherence conditions as appropriate.

## C.4. Scope of consistency claims

The main text and these appendixes make claims about what the framework establishes within its declared axiomatic base. It does not claim universality — that is, it does not assert that the framework applies to every mathematical problem or that every problem admits a well-formed specification of X, G, O, P, and U. Such a claim would require witnessing universality, which is not possible within the framework itself.

**Proposition C.9 (Scope of consistency).**
The framework is internally consistent within any declared axiomatic base in which the objects X, G, O, P, U are well-defined and the conditions of Definitions 2.1–2.3, 4.5, 5.1, and C.6 are satisfied. No statement in the main text or these appendixes requires universality of scope, and no such claim is made.

**Proof.**
All theorems in the main text are proved from the declared definitions and standard results in category theory, topology, and functional analysis (cited in the references). No theorem invokes a universal quantification over all possible frameworks, all possible obstruction functionals, or all possible mathematical domains. The appendix front-end recipes (Appendix A.2–A.5) are conditional: each begins with a specification of the five (now six) ingredients and proceeds to the front-end questions. They do not assert that the framework resolves the domain-specific problem; they assert that the framework organizes the question. These are distinct claims. ∎

**Remark C.10 (On convergence toward universality).**
The observation that the framework applies coherently to gauge theory, sheaf theory, control theory, nonconvex optimization, and the Clay Millennium Problems as front-end organizers is evidence of broad applicability but not proof of universality. These applications are consistent with universality; they do not establish it. Claiming universality on this basis would itself constitute a semantic obstruction in any downstream work that presupposes a state not witnessed. The appropriate statement is: no application attempted within the framework has revealed a coherent domain in which the framework's distinctions — between apparent obstruction and irreducible residue, between fatal and traversable regimes — collapse or become ill-defined. This is a consistency observation, not a universality theorem.

---

# Appendix D. The Higher-Categorical Section: When the ∞-Groupoid Yields Strictly More Than the Groupoid

## D.1. The question

Section 9 of the main text introduces the representation ∞-groupoid G_∞ but notes that, as stated, collapsing to π₀ and taking the infimum over connected components adds no content beyond the groupoid formulation. This appendix identifies precisely when higher morphisms contribute to the residue computation, and exhibits a concrete case in which the ∞-groupoid formulation gives a strictly different — and more accurate — residue than the 1-groupoid formulation.

## D.2. When higher morphisms matter

In the 1-groupoid formulation, two representations r₁ and r₂ are identified (placed in the same orbit) if and only if there exists a morphism f : r₁ → r₂ in G. The irreducible residue is the infimum over this orbit.

In the ∞-groupoid formulation, two representations may be related by a 1-morphism, a 2-morphism (homotopy between 1-morphisms), a 3-morphism (homotopy between homotopies), and so on. The orbit structure is homotopical rather than merely set-theoretic.

The residue computation is affected by higher morphisms in the following situation: when the obstruction functional O is defined not on individual representations but on *homotopy classes* of representations — that is, when O(r₁) and O(r₂) must agree whenever r₁ and r₂ are connected by a 2-morphism, but may differ when they are connected only by a 1-morphism.

**Definition D.1 (Homotopy-sensitive obstruction functional).**
An obstruction functional O is *homotopy-sensitive* if:
1. O is well-defined on 1-morphism equivalence classes (i.e., on π₀ of G_∞(x)), and
2. There exist representations r₁, r₂ connected by a 1-morphism f in G, and a 2-morphism η : f ⟹ g between f and another 1-morphism g : r₁ → r₂, such that the obstruction value assigned via f differs from the obstruction value assigned via g.

In this case, treating all 1-morphisms as equivalent (the 1-groupoid view) conflates distinct obstruction contributions that the ∞-groupoid distinguishes.

**Remark D.2.**
Homotopy-sensitive obstruction functionals arise naturally whenever obstruction depends on the *path* by which a re-description is reached, not merely on the starting and ending representations. This occurs in:
- holonomy computations, where the holonomy of a connection depends on the path, not only the endpoints;
- path-dependent gauge transformations in non-abelian gauge theory;
- coherence conditions in monoidal categories, where the associator is a 2-morphism whose contribution to a diagram depends on the specific sequence of re-bracketings applied.

## D.3. The concrete case: path-dependent holonomy and the 1-groupoid vs ∞-groupoid residue

**Setup.**
Let M be a smooth manifold with fundamental group π₁(M) non-abelian. Let P → M be a principal G-bundle for a non-abelian Lie group G, equipped with a connection ∇.

The holonomy of ∇ around a loop γ based at m ∈ M is an element Hol_∇(γ) ∈ G. The holonomy depends on the loop γ, not merely on its basepoint. Two loops γ₁ and γ₂ that are homotopic (connected by a homotopy H : [0,1] × [0,1] → M fixing endpoints) satisfy Hol_∇(γ₁) = Hol_∇(γ₂) when ∇ is flat, but not in general when ∇ has nonzero curvature.

Now interpret this in the framework. Let:
- representations be loops γ based at m (local re-descriptions of the holonomy data),
- 1-morphisms be reparameterizations of loops (change of traversal speed, not of image),
- 2-morphisms be homotopies between loops (deformations of the loop image),
- target T be trivial holonomy (Hol_∇(γ) = e).

Define two obstruction functionals:

O₁(γ) := d_G(Hol_∇(γ), e),    the distance in G from the holonomy to the identity.

O₂([γ]) := inf_{γ' ~ γ} d_G(Hol_∇(γ'), e),    the infimum over the homotopy class [γ].

Here ~ denotes free homotopy of loops.

**Proposition D.3.**
In the 1-groupoid formulation (where 1-morphisms are reparameterizations and the orbit of γ consists only of reparameterizations of γ), the irreducible residue under O₁ is

    I₁(γ; T) = d_G(Hol_∇(γ), e),

since reparameterizations do not change the holonomy.

In the ∞-groupoid formulation (where 2-morphisms are homotopies and the orbit of γ in G_∞ includes all homotopic loops), the irreducible residue under O₂ is

    I_∞([γ]; T) = inf_{γ' ∈ [γ]} d_G(Hol_∇(γ'), e).

When ∇ has nonzero curvature, these two residues differ: I_∞([γ]; T) ≤ I₁(γ; T), with strict inequality possible when a homotopic loop γ' achieves smaller holonomy distance than γ itself.

**Proof.**
The first claim is immediate: reparameterizations of γ preserve the loop image and hence the holonomy, so O₁ is constant on the 1-groupoid orbit of γ, and the infimum equals the common value.

For the second claim: the ∞-groupoid orbit of γ includes all loops γ' homotopic to γ. The holonomy Hol_∇(γ') varies continuously with the homotopy when ∇ is smooth (this follows from the smooth dependence of parallel transport on the path; see Kobayashi and Nomizu, *Foundations of Differential Geometry*, Vol. 1, Ch. II, Proposition 3.3). The infimum over all homotopic γ' is therefore the infimum of a continuous function over a (generally non-compact) homotopy class.

When ∇ has nonzero curvature, not all loops in [γ] have the same holonomy (this is a standard consequence of the Ambrose-Singer theorem, which identifies the holonomy group with the group generated by the curvature; see Kobayashi-Nomizu, Ch. II, Theorem 8.1). Therefore, different homotopic loops achieve different values of d_G(Hol_∇(·), e), and the infimum I_∞([γ]; T) may be strictly less than I₁(γ; T) = d_G(Hol_∇(γ), e). ∎

**Example D.4 (Explicit non-abelian case).**
Let M = S² \ {p, q} (the 2-sphere minus two points), G = SU(2), and ∇ a connection with curvature concentrated near p. Let γ be a small loop encircling p, with Hol_∇(γ) a nontrivial element h ∈ SU(2). Let γ' be a loop in the same free homotopy class as γ but routed far from p through the curvature-free region. Since parallel transport through a curvature-free region accumulates no holonomy (flat transport), the holonomy of the γ' portion routed away from p contributes trivially, and Hol_∇(γ') may be closer to the identity than Hol_∇(γ).

In the 1-groupoid formulation: I₁(γ; T) = d_{SU(2)}(h, e) > 0.

In the ∞-groupoid formulation: I_∞([γ]; T) ≤ d_{SU(2)}(Hol_∇(γ'), e) < d_{SU(2)}(h, e) = I₁(γ; T).

The ∞-groupoid residue is strictly smaller. The 1-groupoid formulation overestimates the irreducible residue by treating homotopic loops as outside the admissible orbit. The ∞-groupoid formulation correctly accounts for the full homotopy orbit and produces the smaller, more accurate residue. ∎

## D.4. When the 1-groupoid and ∞-groupoid residues coincide

**Proposition D.5.**
If the connection ∇ is flat (curvature Ω_∇ = 0 everywhere), then Hol_∇(γ) = Hol_∇(γ') for all γ' homotopic to γ. In this case I_∞([γ]; T) = I₁(γ; T), and the ∞-groupoid formulation adds no content beyond the 1-groupoid formulation for the holonomy obstruction.

**Proof.**
By the Ambrose-Singer theorem, the holonomy group of a flat connection is discrete (it depends only on the homotopy class of the loop in the sense of the monodromy representation π₁(M) → G; see Kobayashi-Nomizu, Theorem 8.1). Therefore Hol_∇(γ) is constant on each homotopy class, O₁ and O₂ agree on every loop, and I₁ = I_∞. ∎

**Remark D.6.**
This proposition clarifies when Section 9 of the main text is non-vacuous and when it reduces to the groupoid case. The higher-categorical formulation contributes exactly when:
1. The obstruction functional is sensitive to the path of re-description, not merely its endpoints; and
2. The curvature (or its analogue in other domains) is nonzero, so that different paths within the same homotopy class produce different obstruction values.

When both conditions hold, the ∞-groupoid formulation produces a strictly smaller and more accurate residue. When either condition fails, it reduces to the 1-groupoid case.

## D.5. General condition for ∞-groupoid content

**Theorem D.7.**
Let G_∞ be the representation ∞-groupoid and O a homotopy-sensitive obstruction functional in the sense of Definition D.1. The ∞-groupoid residue

    I_∞(x; T) := inf_{r ∈ |G_∞(x)|} O(r, x; T),

where |G_∞(x)| denotes the geometric realization of the ∞-groupoid orbit, satisfies

    I_∞(x; T) ≤ I₁(x; T),

with equality if and only if O is constant on all homotopy classes within each 1-groupoid orbit, i.e., O is homotopy-invariant.

**Proof.**
The 1-groupoid orbit R(x) is a subset of |G_∞(x)|: every 1-morphism-connected representation is also ∞-groupoid-connected. The infimum over a larger set cannot exceed the infimum over a smaller set. Therefore I_∞(x; T) ≤ I₁(x; T).

Equality holds if and only if the infimum over |G_∞(x)| equals the infimum over R(x). This is the case if and only if no element of |G_∞(x)| \ R(x) achieves a strictly smaller obstruction value than all elements of R(x). Since elements of |G_∞(x)| \ R(x) are representations connected to those in R(x) by higher morphisms (homotopies, coherence data) but not by 1-morphisms alone, this condition holds if and only if O does not distinguish between homotopic representatives — that is, O is homotopy-invariant. ∎

**Remark D.8.**
Theorem D.7 gives the precise condition under which Section 9 of the main text is non-redundant. When O is homotopy-sensitive and the ∞-groupoid orbit is strictly larger than the 1-groupoid orbit, the ∞-groupoid residue is the correct one. When O is homotopy-invariant, both formulations agree and the ∞-groupoid language may be retained as a natural setting without adding new content to the residue calculation.

## D.6. Connection to towers of extensions

A second setting in which the ∞-groupoid formulation adds content beyond the 1-groupoid is when obstruction arises through a tower of extensions — a sequence of obstructions each of which must vanish before the next level becomes relevant. This is the classical setting of Postnikov towers in algebraic topology (see May, *A Concise Course in Algebraic Topology*, Ch. 22).

In such a tower, the first-level obstruction lives in H^n(X; π_{n-1}(F)) for appropriate coefficient groups. If this vanishes, a second-level obstruction appears in H^{n+1}(X; π_n(F)), and so on. The 1-groupoid formulation captures only the first-level obstruction; the ∞-groupoid formulation, by encoding homotopies between homotopies, captures the full tower.

**Remark D.9.**
The present framework's irreducible residue, taken in the ∞-groupoid setting, is the infimum of obstruction over the full homotopical orbit — which in the Postnikov tower setting corresponds to the residue remaining after all levels of the tower have been minimized over admissible re-descriptions. This is a richer and more complete invariant than any single-level residue. Its formal development in the Postnikov setting is left for future work, with the present appendix establishing that the ∞-groupoid formulation is the correct home for such a development.

---

*End of Appendixes B, C, and D.*

*These appendixes are intended to be read as supplements to* Semantic Obstruction and Irreducible Residue *(v1.2) by Lu Semita et al. All section and theorem references are to the main text unless prefixed by a letter.*
