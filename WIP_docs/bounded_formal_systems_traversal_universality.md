# Bounded Formal Systems, Traversal Claims, and the Structural Malformation of Universality Arguments

## Lu Semita
### (Working Paper — Timestamped for Prior Art)

---

## Prefatory Note

This paper is a direct application and extension of the framework developed in *Semantic Obstruction and Irreducible Residue* (Semita et al., v1.2, hereafter SOIR). Familiarity with that framework is assumed; key definitions are recalled where needed but not re-derived. The central contribution of this paper is the identification of a structural error — not an empirical one — in any formal argument that attempts to convert a traversal result into a universality claim. This error is shown to be an instance of semantic obstruction in the precise technical sense of SOIR. The paper then applies this diagnosis to theories of type X (universal formal theories of physical reality) and to superdeterminism specifically, where the structural error takes a particularly transparent form.

---

## Abstract

Any formal axiomatic system inherits, as structural features rather than external limitations, the incompleteness results of Gödel, the undecidability results of Turing, and the halting constraint that governs any real instantiation of computation. These constraints establish an upper bound on what any formal system can witness. We call this the *compression boundary* of the system. All results derivable within a formal system are results valid within its compression boundary — we call these *traversal claims*. Claims that purport to hold beyond the compression boundary — *universality claims* — require a witness that is constitutively unavailable within any bounded formal system. Presupposing such a witness without declaration is shown to be a semantic obstruction in the sense of Semita et al. (SOIR), introducing an unacknowledged representational artifact into any downstream work that treats the universality claim as established.

We apply this analysis to formal theories claiming universal descriptive scope (theories of type X) and to superdeterminism, where the structural malformation is especially visible: superdeterminism invokes an unwitnessed continuum of initial conditions to derive a conclusion that eliminates the degrees of freedom required to traverse — and therefore to probe — that very continuum. This is not an empirical objection to superdeterminism. It is a demonstration that superdeterminism, as standardly stated, is not a well-formed claim within its own declared axiomatic base.

The paper closes with a positive account: all productive formal results in physics, mathematics, and computation are traversal claims. This is not a limitation. It is the only epistemically honest and structurally coherent form a strong formal result can take.

### Keywords

formal axiomatic systems, compression boundary, traversal claims, universality claims, semantic obstruction, irreducible residue, Gödel incompleteness, halting problem, superdeterminism, theories of everything, epistemology of completeness

---

## 1. Introduction

The history of formal inquiry contains a persistent and recurrent ambition: to find a system complete enough to witness everything — to derive all truths, describe all phenomena, determine all outcomes. This ambition is not irrational. It is driven by the genuine and repeated success of formal methods at extending the reach of human understanding beyond what unaided intuition can access.

But the ambition contains a structural error that recurs as reliably as the ambition itself. The error is this: taking the success of a formal system within its operating domain as evidence that the system has no operating domain — that its results hold not within a declared boundary but universally, without boundary, for all possible cases including those that have not been and cannot be witnessed.

This error is not primarily an empirical mistake. It is not corrected by finding a counterexample, though counterexamples may exist. It is a *structural* mistake: a confusion between two kinds of claim that formal systems can make, only one of which is well-formed within any bounded formal system.

We call these two kinds *traversal claims* and *universality claims*, and the distinction between them is the central subject of this paper.

The tools for making this distinction precise already exist. Gödel's incompleteness theorems establish that no sufficiently expressive formal system can prove its own consistency or derive all truths expressible within it. Turing's halting theorem establishes that no formal computation can decide, for all inputs, whether an arbitrary computation halts. Together these results establish that every formal system has a *compression boundary* — a limit on what it can witness — that is a structural feature of the system, not an accidental limitation to be overcome by additional axioms or additional compute.

The framework of *Semantic Obstruction and Irreducible Residue* (SOIR) provides the additional vocabulary needed to make the error precise as a *semantic obstruction*: an unacknowledged representational artifact that, when presupposed rather than declared, introduces irremovable confusion into any downstream work that treats the presupposition as established fact.

The paper proceeds as follows. Section 2 establishes the compression boundary as a primitive feature of formal systems. Section 3 defines traversal claims and universality claims and proves that universality claims are not well-formed within any bounded formal system. Section 4 identifies the structural error as a semantic obstruction in the sense of SOIR. Section 5 applies the analysis to formal theories of type X. Section 6 applies it to superdeterminism, where the error is self-undermining in a specific and transparent way. Section 7 gives the positive account: what traversal claims achieve and why that achievement is sufficient and honest. Section 8 concludes.

---

## 2. The Compression Boundary as a Primitive Feature of Formal Systems

### 2.1 What a formal system is

A formal system F consists of a language L, a set of axioms A, and a set of inference rules R. A theorem of F is any statement derivable from A by finitely many applications of R. We assume F is at minimum capable of expressing elementary arithmetic — this is the standard assumption under which Gödel's results apply, and it is satisfied by every formal system of scientific or mathematical interest.

### 2.2 Gödel incompleteness

**Theorem 2.1 (Gödel, 1931).**
Let F be a consistent formal system capable of expressing elementary arithmetic. Then:

1. There exist statements expressible in L(F) that are neither provable nor refutable within F.
2. The consistency of F is not provable within F.

This is a standard result. For proof see Gödel (1931); for modern treatment see Boolos, Burgess, and Jeffrey, *Computability and Logic* (5th ed.), Ch. 9–10.

**Corollary 2.2.**
No consistent formal system of sufficient expressive power is complete: there are truths it cannot derive and falsehoods it cannot refute. The set of theorems of F is a proper subset of the truths expressible in L(F).

### 2.3 The halting constraint

**Theorem 2.3 (Turing, 1936).**
There is no general algorithm that decides, for an arbitrary program P and input I, whether P halts on I.

For proof see Turing (1936); for modern treatment see Sipser, *Introduction to the Theory of Computation* (3rd ed.), Ch. 4.

**Corollary 2.4.**
Any real instantiation of a formal computation operates under a halting constraint: it either halts within finite time and finite resources, or it does not halt and produces no result. There is no third option. Infinite compute over infinite time is not a real instantiation — it is a limiting abstraction that no physical or computational system realizes.

### 2.4 The compression boundary defined

**Definition 2.5 (Compression boundary).**
Let F be a formal system with language L, axioms A, and inference rules R, instantiated with compute budget B (time, memory, and inference steps available before a result must be produced). The *compression boundary* of F under B is the boundary between:

- statements that F can derive, refute, or bound to declared confidence within B, and
- statements that F cannot resolve within B — either because they are Gödel-undecidable within F, or because they require more compute than B permits, or because they require witnessing a domain that B does not cover.

**Remark 2.6.**
The compression boundary is not a fixed line. It depends on F, on B, and on the statement being evaluated. What lies beyond the boundary for one instantiation may lie within it for another with greater resources. But for any fixed F and B, the boundary exists and is non-empty: there are always statements that F cannot resolve within B. This is a consequence of Theorems 2.1 and 2.3 jointly.

**Remark 2.7.**
The compression boundary is a *primitive feature* of F under B, not an accidental limitation. It is not overcome by adding more axioms — Gödel's second theorem applies to any consistent extension of F. It is not overcome by adding more compute — Turing's theorem applies to any halting computation. And it is not overcome by asserting that the boundary does not exist — such an assertion is itself a statement within L(F) whose truth value is not established by the assertion.

### 2.5 Formal systems as compressions

**Proposition 2.8.**
A formal system F under compute budget B is a *compression* of the domain it purports to describe: it has finitely many axioms, finitely many inference steps within B, and therefore finitely many derivable conclusions. The domain it describes — whether mathematical, physical, or computational — may be infinite. The map from domain to formal system necessarily loses information at and beyond the compression boundary.

**Proof.**
Axioms are finite in number by definition of a formal system (or recursively enumerable, which is the standard generalization; either way, the derivable theorems form a recursively enumerable set). Within compute budget B, only finitely many inference steps are available. Therefore only finitely many theorems are derivable within B. If the domain is infinite — as it is for arithmetic, for physical spacetime, for the space of all computations — the map from domain to derivable theorems is not surjective: there are domain elements not captured by any theorem derivable within B. ∎

---

## 3. Traversal Claims and Universality Claims

### 3.1 Two kinds of formal claim

**Definition 3.1 (Traversal claim).**
A *traversal claim* is a formal statement S derivable within F under compute budget B, whose scope is explicitly or implicitly bounded by the compression boundary of F under B. A traversal claim asserts that S holds for all cases *within the witnessed domain* — the domain covered by the derivation — without asserting that S holds beyond that domain.

**Definition 3.2 (Universality claim).**
A *universality claim* is a formal statement S that purports to hold for all cases *without restriction* — including cases beyond the compression boundary of F under B. A universality claim asserts that no counterexample exists anywhere in the domain, including in regions not covered by any derivation within F under B.

**Remark 3.3.**
The distinction between traversal and universality claims is not always explicit in the presentation of formal results. A result may be stated as a universality claim while its actual derivation supports only a traversal claim. Identifying this gap is a primary application of the framework developed here and in SOIR.

### 3.2 Traversal claims are well-formed

**Proposition 3.4.**
Traversal claims are well-formed within any formal system F under any compute budget B. A traversal claim asserts only what F can derive within B, scoped to the domain F covers within B. Its truth conditions are satisfiable within F.

**Proof.**
A traversal claim S is derivable within F under B by assumption. Its scope is the witnessed domain — the set of cases covered by the derivation. For that domain, S is established by the derivation. No statement about the unwitnessed domain beyond the compression boundary is made. Therefore the claim is entirely within the scope of what F can establish within B. ∎

### 3.3 Universality claims are not well-formed within bounded formal systems

**Theorem 3.5.**
Let F be a consistent formal system capable of expressing elementary arithmetic, and let B be any finite compute budget. A universality claim — a claim that a statement S holds for all cases including those beyond the compression boundary of F under B — is not derivable within F under B, and cannot be established by any derivation within F under B.

**Proof.**
A universality claim requires establishing that S holds for all cases in the domain of F, including those beyond the compression boundary. Cases beyond the compression boundary are, by Definition 2.5, cases that F cannot resolve within B. A derivation within F under B covers only cases within the compression boundary. Therefore no derivation within F under B establishes S for cases beyond the compression boundary. The universality claim requires more than any derivation within F under B can provide. ∎

**Corollary 3.6.**
A universality claim that is presented as established within F under B is either:

1. Actually a traversal claim with implicit scope restriction — in which case the universality framing is an overstatement, or
2. Presupposing a witness beyond the compression boundary without declaring that presupposition — in which case the claim introduces an unacknowledged assumption into its own basis.

In case 2, the claim is not merely unproven. It is structurally malformed: it asserts as established something that its own formal basis cannot establish.

**Remark 3.7.**
This does not mean universality claims are false. It means they are not *well-formed* within the declared formal basis. A universality claim may be true — there may be no counterexample anywhere in the domain. But the absence of a counterexample within the witnessed domain does not establish the absence of a counterexample beyond it. The claim requires a witness that the formal system cannot provide.

---

## 4. The Structural Error as Semantic Obstruction

### 4.1 Recall from SOIR

The framework of SOIR (Semita et al.) defines a *semantic obstruction* as obstruction that belongs to the level of description rather than to the underlying system — obstruction that arises from the choice of representational frame rather than from the system itself. The *irreducible residue* I(x; T) is the orbit-minimized obstruction: the minimum obstruction surviving across all admissible re-descriptions of the system relative to a target.

A critical result of SOIR (Theorem C.1 of Appendix C) is that any evaluation of the success predicate P — any assessment of whether a target has been achieved — is ill-formed outside a declared representational context. Dropping the representational context produces a type error: a propositional function rather than a proposition, with no available truth value.

### 4.2 The universality claim as semantic obstruction

**Theorem 4.1.**
A universality claim made within a formal system F under compute budget B, without declaring the presupposition that the witnessed domain covers the full domain of the claim, is a semantic obstruction in the sense of SOIR.

**Proof.**
By Definition 2.1 of SOIR, a semantic obstruction is obstruction belonging to the level of description rather than the underlying system. The universality claim, by Theorem 3.5, cannot be derived from F under B. Its apparent establishment — its apparent zero obstruction relative to the target of universal validity — is therefore not a feature of the underlying system but of the representational choice: specifically, the choice to treat the witnessed domain as if it were the full domain.

In the language of SOIR, let:
- x = the formal system F with its derived results,
- T = universal validity of statement S,
- r = the representation that identifies the witnessed domain with the full domain,
- O(r, x; T) = obstruction to universal validity in representation r.

In representation r — the representation that conflates witnessed and full domain — O(r, x; T) = 0: the claim appears established. But this zero is achieved by a representational choice, not by a derivation. In any representation r' that distinguishes the witnessed domain from the full domain, O(r', x; T) > 0: the claim is not established for the full domain.

The orbit-minimized residue I(x; T) = inf over all admissible r of O(r, x; T). The admissible representations must include those that correctly distinguish witnessed from full domain, since this distinction is expressible within F (it is a statement about the scope of derivations). In any such representation, O > 0. Therefore I(x; T) > 0: the universality claim has a positive irreducible residue. The apparent zero obstruction in representation r is entirely apparent obstruction A(r, x; T) = O(r, x; T) − I(x; T) = 0 − I(x; T) < 0, which is impossible — revealing that r is not an admissible representation for this target. The representation that conflates witnessed and full domain is inadmissible for the target of universal validity.

The claim is a semantic obstruction: it achieves apparent zero obstruction through an inadmissible representational choice, while the irreducible residue remains positive. ∎

**Remark 4.2.**
The consequence for downstream work is significant. Any formal system or argument that treats a universality claim as established — as a zero-residue foundation on which further results are built — inherits the semantic obstruction. Results derived on the basis of an unwitnessed universality presupposition carry that presupposition as an undeclared assumption. When the presupposition is eventually examined, the downstream results must be re-evaluated against the actual traversal claim that was established, not the universality claim that was presupposed.

---

## 5. Theories of Type X: Universal Formal Theories of Physical Reality

### 5.1 What a theory of type X claims

A formal theory of type X is any theory that claims to describe all physical phenomena within a single formal framework — to be, in some sense, complete with respect to physical reality. We use "type X" rather than naming specific programs because the structural analysis applies to the general form of the claim, independently of the specific formal content of any particular theory.

The type X claim has the following structure:

1. Here is a formal system F.
2. F successfully describes all *witnessed* physical phenomena within its domain.
3. Therefore F describes *all* physical phenomena, including those not yet witnessed.

Step 3 is the universality claim. Steps 1 and 2 together establish a traversal claim — F works within its witnessed domain. The move from 2 to 3 is the structural error identified in Theorem 3.5.

### 5.2 The admissible representation class of physical theories

Physical theories operate within a declared representation class: they use specific mathematical structures (differential geometry, Hilbert spaces, path integrals, etc.) to represent physical systems. This declared class is the admissible groupoid G of SOIR. Results derived within this class are traversal claims relative to G.

**Proposition 5.1.**
The compression boundary of any physical theory F is determined jointly by:

1. The expressibility limits of F's mathematical language,
2. The compute budget available for derivation and experimental verification,
3. The reach of experimental apparatus — the physical domain that has been probed.

None of these is infinite. Therefore every physical theory has a non-empty compression boundary.

**Proof.**
(1) follows from Theorem 2.1 applied to the mathematical language of F. (2) follows from Theorem 2.3 and Corollary 2.4. (3) is an empirical fact: no experimental program has probed all scales, all energies, all regions of spacetime, or all possible initial conditions. The intersection of these three limits produces a non-empty compression boundary by Remark 2.6. ∎

### 5.3 What type X theories actually establish

A type X theory that successfully unifies known physical phenomena within a single framework establishes a traversal result of the highest quality: it finds a representation r* in which the obstruction to unified description across the witnessed domain is minimized or eliminated. This is a genuine and important achievement. It places the theory in regime 1 or regime 4 of the SOIR classification within its witnessed domain.

What it does not establish is that the residue vanishes beyond the compression boundary — that no phenomenon exists for which the unified framework fails. That claim requires witnessing the full domain, which no bounded formal system can do.

**Remark 5.2.**
The productive response to a type X theory is therefore not to ask "does this describe everything" — a question that cannot be answered within any bounded formal system — but to ask: "what is the compression boundary of this theory, and what does the irreducible residue look like at and beyond that boundary?" This converts an unanswerable universality question into a well-formed research program.

---

## 6. Superdeterminism: A Self-Undermining Universality Claim

### 6.1 The superdeterminist claim

Superdeterminism is the position that all events, including all measurement choices and measurement outcomes in quantum mechanical experiments, are determined by the initial conditions of the universe. Under superdeterminism, the apparent statistical independence between measurement settings and hidden variables — an assumption of Bell's theorem — fails because all correlations were fixed at the initial state.

The formal structure of the claim is:

1. There exists a set of initial conditions C₀ encoding all future events.
2. C₀ is complete: no event is unconstrained by C₀.
3. Therefore, apparent freedom — including the freedom to choose measurement settings — is illusory: all choices were determined by C₀.
4. This dissolves the Bell inequalities without requiring nonlocality or fundamental indeterminism.

### 6.2 The unwitnessed continuum

The initial conditions C₀ are posited to encode all future events in a universe of at minimum the observed scale — approximately 10⁸⁸ particles, across approximately 13.8 billion years of evolution, with quantum degrees of freedom at each point. This is not a finite object. C₀, as posited, is an element of an unwitnessed continuum: a space of initial conditions whose cardinality exceeds any finite probing capacity.

**Definition 6.1.**
Call the space of all possible initial conditions Ω. The superdeterminist claim posits that C₀ ∈ Ω is a specific element that encodes all future events. Ω is the *unwitnessed continuum* of the superdeterminist argument.

**Remark 6.2.**
No finite experimental program can identify C₀ within Ω. The compute budget required to specify C₀ exactly is at minimum proportional to the information content of the universe — which by standard entropic arguments (Bekenstein bound; see Bekenstein, 1973) is finite but enormously large and not accessible to any internal observer. C₀ therefore lies beyond the compression boundary of any formal system instantiated within the universe it purports to describe.

### 6.3 The self-undermining structure

**Theorem 6.3.**
The superdeterminist claim is self-undermining: it invokes the unwitnessed continuum Ω to establish determinism, but the conclusion of determinism eliminates the degrees of freedom required to traverse Ω and thereby probe the claim.

**Proof.**
The superdeterminist argument proceeds as follows:

*Premise:* C₀ ∈ Ω determines all events, including all measurement choices.

*Conclusion:* Measurement choices are not free; they are determined by C₀.

Now consider the epistemic status of the premise. To establish that C₀ determines all events, one would need to:

(a) Identify C₀ within Ω, or
(b) Establish by formal derivation that some C₀ ∈ Ω with this property exists.

For (a): identifying C₀ requires traversing Ω — probing the space of initial conditions to locate the element that encodes all future events. This traversal requires degrees of freedom: the ability to vary experimental conditions, measurement choices, and initial states to probe different regions of Ω. But the conclusion of superdeterminism eliminates exactly these degrees of freedom — measurement choices are determined, so they cannot be varied to probe Ω. The traversal required to establish the premise is eliminated by the conclusion.

For (b): establishing by formal derivation that some C₀ ∈ Ω with this property exists requires a formal system F capable of quantifying over Ω. Since Ω is the space of all possible initial conditions of the universe, any F capable of quantifying over Ω must be at least as expressive as the universe itself — which by standard arguments (cf. Chaitin, *Algorithmic Information Theory*) means F cannot be instantiated within the universe it describes without exceeding the information-theoretic capacity of that universe. F therefore cannot be run within any accessible compute budget B.

In both cases — empirical traversal (a) and formal derivation (b) — the superdeterminist claim requires a capacity that its own conclusion eliminates or that exceeds any accessible compute budget. The claim is therefore not merely unverifiable; it is *self-undermining*: its conclusion removes the means by which the premise could be established. ∎

### 6.4 The semantic obstruction in superdeterminism

**Corollary 6.4.**
The superdeterminist claim is a semantic obstruction in the sense of SOIR. It achieves apparent zero residue — apparent elimination of indeterminism — by conflating the unwitnessed continuum Ω with a witnessed domain, treating C₀ as if it were an identified element of a probed space rather than a posited element of an unwitnessed one.

**Proof.**
Apply Theorem 4.1 with:
- x = the physical universe and its quantum measurement statistics,
- T = complete determinism (zero irreducible indeterminism),
- r = the representation that treats C₀ as identified within Ω,
- r' = any representation that correctly scopes C₀ as a posited but unidentified element of an unwitnessed Ω.

In representation r, O(r, x; T) = 0: determinism appears established. In representation r', O(r', x; T) > 0: determinism is not established, because C₀ has not been identified within Ω and the formal derivation of its existence cannot be run within accessible B.

Since r' is admissible — it is a correct representation of the epistemic situation — the irreducible residue I(x; T) > 0. The apparent zero in r is a semantic obstruction: it results from an inadmissible representational choice that conflates posited with witnessed. ∎

### 6.5 What superdeterminism actually establishes

The superdeterminist argument does establish something. It establishes that:

*If* C₀ exists and encodes all future events, *then* Bell's statistical independence assumption fails, and the Bell inequalities do not require nonlocality or fundamental indeterminism.

This is a valid conditional — a traversal claim within a hypothetical representational frame. It correctly identifies a logical possibility: determinism is not ruled out by Bell's theorem if statistical independence fails. This is a genuine contribution to the space of possible physical ontologies.

What it does not establish is that C₀ exists, that Ω has been traversed, or that the hypothetical frame is the correct one. The move from "this is logically possible" to "this is the case" is the universality claim, and it is the semantic obstruction.

---

## 7. The Positive Account: What Traversal Claims Achieve

### 7.1 Traversal is not a consolation prize

The preceding analysis might be read as a counsel of despair: if universality claims are always malformed, and all formal results are traversal claims, then formal inquiry can never achieve what it most ambitiously seeks. This reading is wrong, and it is worth being precise about why.

A traversal claim achieves the following: it finds a representation r and an action u such that P(r, u, x; T) holds — the target is achieved, despite whatever irreducible residue remains, within the declared admissible class and compute budget. This is not a diminished result. It is the *actual* result that formal inquiry produces, and it is sufficient for every productive use to which formal results have ever been put.

### 7.2 All productive formal results are traversal claims

Every physical theory that makes accurate predictions is a traversal claim. Newtonian mechanics is a traversal claim: it successfully describes motion within a declared domain (velocities small relative to c, scales large relative to quantum effects) without claiming to describe all motion. General relativity is a traversal claim: it successfully describes spacetime curvature within its domain without resolving the quantum regime. Quantum mechanics is a traversal claim: it successfully predicts measurement statistics within its domain without claiming to describe what lies beyond the measurement boundary.

Each of these theories is successful precisely because it organizes around its irreducible residue — the domain it cannot reach — rather than pretending that residue does not exist. The residue is declared, bounded, and left for future work or identified as constitutively beyond the current compression boundary.

**Proposition 7.1.**
A formal theory that explicitly declares its compression boundary and scopes its claims as traversal claims within that boundary is more epistemically reliable — and more scientifically productive — than a theory that presents traversal results as universality claims.

**Proof.**
A theory that declares its compression boundary makes falsifiable claims within that boundary and non-claims beyond it. Its predictions are testable within the declared domain. When a counterexample is found within the declared domain, the theory is falsified within that domain — a clean and productive outcome. When a phenomenon is found beyond the declared boundary, the theory correctly anticipates this possibility and provides a research direction: extend the compression boundary.

A theory that presents traversal results as universality claims makes claims that cannot be falsified by any finite experimental program — since a counterexample beyond the compression boundary cannot be reached within any accessible compute budget. Its apparent universality is therefore not a stronger claim but a less falsifiable one: it is not more powerful, it is less honest. When a phenomenon is found that the theory cannot accommodate, the response must be to re-examine the universality presupposition rather than to interpret the failure as a domain-specific anomaly. The declared universality creates confusion about the scope of the failure. ∎

### 7.3 The traversable regime and the infinite structure

The irreducible and traversable regime of SOIR (case 4 of Theorem 5.2) is the natural home of all productive formal results. In this regime, the irreducible residue I(x; T) > 0 — some obstruction persists, some region lies beyond the compression boundary — but the target is still achieved by an admissible representation-action pair.

The key insight, developed in Section 6 of the present paper's motivating discussions, is that the region beyond the compression boundary is not an absence but a *positive finding*: it is the region of the structure that the current compression has not yet reached, and its existence is established by the bounding conditions of the system. The infinite structure beyond the boundary is not noise or ignorance. It is the space into which the theory's traversal extends its scope as the compression boundary is pushed further by new representations, new experiments, and new formal tools.

**Remark 7.2.**
The appropriate attitude toward the region beyond the compression boundary is not the universality claim ("there is nothing beyond our boundary that our theory cannot handle") nor despair ("we can never know what lies beyond"). It is the traversal attitude: "our current compression reaches to this boundary; no counterexample has been found within the reached region; the region beyond is consistent with our results and available for future traversal." This is the attitude of all successful science. It is now expressible in precise formal terms.

### 7.4 On the transcendence of mathematical objects

The analysis applies equally to mathematical objects whose properties extend beyond any finite witnessing capacity. The transcendence of π — established by Lindemann (1882) — is a statement that π is not the root of any polynomial with rational coefficients. This is a traversal result: it is established within a formal system capable of handling algebraic and transcendental numbers, and it correctly characterizes π's relationship to a specific class of representations (algebraic numbers).

What the transcendence result does not establish is that π, as an infinite decimal expansion, is a completed infinite object that has been witnessed in its entirety. Every productive use of π — in geometry, in analysis, in physics — is a traversal of π within a finite compression: using finitely many digits, finitely many terms of a series, finitely many terms of a product formula. The traversal succeeds because the residue — the infinite tail of the expansion — is irreducible but not fatal for any finite-precision application.

Characterizing transcendence as an *object quality of π* — as if π's infinitude were a witnessed property of a completed object — is the universality claim. The correct characterization is: π resists algebraic representation (a traversal result about a specific representation class), and its infinite structure is consistent with all finite traversals that have been performed, while no finite traversal witnesses the full structure. The infinite structure is traversable by extension; it is not witnessed by any finite means.

---

## 8. Conclusion

We have established the following:

1. Every formal system has a compression boundary — a limit on what it can witness — that is a structural feature of the system, not an external limitation. This follows from Gödel's incompleteness theorems and Turing's halting theorem.

2. Formal claims divide into traversal claims (valid within the compression boundary) and universality claims (purporting to hold beyond it). Traversal claims are well-formed within bounded formal systems. Universality claims are not.

3. A universality claim presented as established within a bounded formal system is a semantic obstruction in the sense of SOIR: it achieves apparent zero obstruction through an inadmissible representational choice — treating the witnessed domain as the full domain — while the irreducible residue of the claim remains positive.

4. Formal theories of type X (universal theories of physical reality) make traversal claims of high quality within their witnessed domains. The step from those traversal results to universality claims is the structural error, not a consequence of the formal content of the theory.

5. Superdeterminism is a self-undermining universality claim: it invokes an unwitnessed continuum to establish determinism, and the conclusion of determinism eliminates the degrees of freedom required to traverse that continuum and thereby probe the claim. It is a semantic obstruction in the precise sense of SOIR.

6. All productive formal results — in physics, mathematics, and computation — are traversal claims. This is not a limitation. It is the only epistemically honest and structurally coherent form a strong formal result can take. The traversable regime, in which the target is achieved despite irreducible residue, is the natural home of all such results.

The positive contribution of this analysis is a precise vocabulary for what formal inquiry actually achieves, why that achievement is sufficient, and where the structural error lies in claims that seek more than a bounded formal system can honestly provide.

---

## References

Bekenstein, J. D. (1973). Black holes and entropy. *Physical Review D*, 7(8), 2333–2346.

Boolos, G., Burgess, J., and Jeffrey, R. (2007). *Computability and Logic* (5th ed.). Cambridge University Press.

Chaitin, G. J. (1987). *Algorithmic Information Theory*. Cambridge University Press.

Gödel, K. (1931). Über formal unentscheidbare Sätze der Principia Mathematica und verwandter Systeme I. *Monatshefte für Mathematik und Physik*, 38, 173–198.

Lindemann, F. (1882). Über die Zahl π. *Mathematische Annalen*, 20, 213–225.

Semita, L. et al. (2026). *Semantic Obstruction and Irreducible Residue: A Category-Theoretic Framework for Representation-Invariant Constraints, Traversability, and Local-to-Global Failure* (v1.2). EmergenceByDesign.

Sipser, M. (2012). *Introduction to the Theory of Computation* (3rd ed.). Cengage Learning.

Turing, A. M. (1936). On computable numbers, with an application to the Entscheidungsproblem. *Proceedings of the London Mathematical Society*, 2(42), 230–265.

---

*This paper is a working document released for prior art timestamping. It is not offered as a final or complete treatment. Its claims are made within the declared formal basis and are scoped as traversal claims within that basis.*
