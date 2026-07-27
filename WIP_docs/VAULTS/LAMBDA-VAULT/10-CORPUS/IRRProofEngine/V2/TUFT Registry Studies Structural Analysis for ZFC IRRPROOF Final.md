---
silo: lambda
subcat: irrproof-v2
exposure: internal
tier:
status: canon
words: 4112
sha: d3f4be1f422f
source-folder: "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/V2"
tags:
  - lambda/irrproof-v2
  - x/internal
  - src/extracted
  - tier/unassigned
  - src/The-Lambda-Principle-of-Irreducibi/WIP-docs/IRRProofEngine/V2
source-repos:
  - The-Lambda-Principle-of-Irreducibility
source-paths:
  - "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/V2/TUFT_Registry_Studies_Structural_Analysis_for_ZFC_IRRPROOF_Final.pdf"
links-latent: []
---

# TUFT Registry Studies Structural Analysis for ZFC IRRPROOF Final

> **Source** `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/V2/TUFT_Registry_Studies_Structural_Analysis_for_ZFC_IRRPROOF_Final.pdf`
> 4,112 words · sha `d3f4be1f422f` · status **canon**
> Text recovered from PDF/DOCX by extraction — layout artifacts expected, equations may need repair. No markdown original existed.

**Detected references:** [[TUFT registry studies]]

---

TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

                                                  TUFT REGISTRY STUDIES

                                 Structural Analysis for the
                                  ZFC / IRRPROOF Engine
               Möbius Transformations as a Minimal Verified Model of
          Invariant Extraction, Normal-Form Reduction, and Proof Transport

 Companion deliverables
 This standalone paper is paired with a browser-based minimum-case demonstrator. The paper ingests the
 prior TUFT registry, Residue Thesis, framing, and IRRPROOF architecture; the demonstrator resolves those
 abstractions into one executable structural proof path: raw linear-fractional expression -> projective object
 -> invariants -> classification -> normal form -> transported conclusion.




                                                              Lu Semita
                                                   EmergenceByDesign
                                Continuing TUFT Registry Studies - Laboratory Note - July 2026

Reason for recording. This manuscript timestamps and organizes independent progress. Standard set theory, complex analysis, projective
geometry, group actions, and the cited work remain attributed to their established sources. No claim of discovery, ownership, or priority is
made for established results. The contribution claimed here is the declared structural-analysis architecture, its integration with the existing
                               TUFT/Residue/IRRPROOF canon, and the companion executable demonstration.




                                 Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 1
                                                                   TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF


Abstract
    A proof engine that operates only on submitted syntax can verify correct deductions while repeatedly
    failing to recognize that differently presented problems instantiate one structural object. The present TUFT
    Registry Study specifies a structural-analysis layer for the ZFC-grounded IRRPROOF engine. The layer does
    not replace the proof kernel. It proposes typed object extraction, quotient-aware identity, invariant
    calculation, classification, normal-form reduction, and proof transport; each proposed structural move is
    compiled into a finite certificate checkable by the existing kernel.

    Möbius transformations provide the minimum complete case. A raw expression T(z)=(az+b)/(cz+d), ad-bc !=
    0, may be read as a rational function, a projective matrix class in PGL(2,C), an automorphism of the
    Riemann sphere, a generalized-circle-preserving conformal map, a cross-ratio-preserving action, and a
    conjugacy class determined by fixed-point and multiplier data. These views are not competing descriptions.
    They form a registry of mutually translatable witnesses of one object. The paper formalizes that registry,
    distinguishes coordinate artifact from conjugacy-invariant structure, and defines a certificate pipeline from
    raw syntax to a canonical proof route.

    The architecture ingests prior TUFT claims that the registry precedes the operator, the Residue Thesis
    distinction O=A+I_R, the Geometry of Framing's requirement that every theorem remains indexed to its
    framing discipline, and IRRPROOF's full-object-chain/certified-truncation model. The companion HTML
    demonstrator implements exact formula generation, numerical complex arithmetic for real-coefficient
    examples, projective normalization, fixed-point extraction, scale-invariant trace classification, conjugacy
    reduction summaries, cross-ratio verification, matrix composition, and a human-readable certificate ledger.
    It is intentionally a minimum case rather than a universal prover.


1. Position within the existing canon
The present work should be read as a continuation of TUFT Registry Studies rather than an independent
replacement framework. The earlier registry work fixes the carrier before selecting an operator and treats
Beltrami, Dirac, and Hamiltonian spectra as different readings of a common relational substrate. The Residue
Thesis identifies structure with the obstruction that survives admissible re-description and requires every
irreducibility claim to remain indexed to its representation class. The Geometry of Framing makes explicit
that objects, witnesses, transformations, and stopping conditions acquire meaning only inside a declared
framing discipline. IRRPROOF then supplies the engineering consequence: preserve the full certified object
chain while compiling smaller domain engines as dependency-closed, kernel-verifiable truncations.

 New step
 Structural analysis turns those principles into a proof-search mechanism. It asks: What object does the
 submitted expression present? Which changes are admissible re-descriptions? Which quantities survive
 them? Which normal form represents the resulting structural class? Which theorem already proved for
 that normal form can be transported back?



1.1 Tier discipline
 Tier                          Status                            Content                            Claim boundary

I                              Established host                  ZFC encoding; complex             Cited and re-proved only
                               mathematics                       field; Riemann sphere;            where needed by the
                                                                 projective matrices;              engine.
                                                                 Möbius maps; cross

                           Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 2
                                                                        TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

    Tier                           Status                             Content                            Claim boundary

                                                                      ratios; generalized
                                                                      circles; conjugacy normal
                                                                      forms.

    II                             Canonical TUFT/Residue             Carrier-before-operator;          Established within the
                                   reading                            structural invariant as           declared corpus frame.
                                                                      re-description residue;
                                                                      explicit framing; registry
                                                                      of equivalent witnesses.

    III                            Present frontier                   Automated object                  Architecture and
                                   construction                       extraction, strategy              minimum
                                                                      selection, structural             implementation, not a
                                                                      proof certificates, residue       claim of universal
                                                                      telemetry, registry               structural recognition.
                                                                      learning.



2. Why syntax-only proof search remains incomplete as an engineering
method
A sound ZFC kernel can verify a derivation without knowing that the derivation was unnecessarily long. It can
also fail to locate a proof because the target theorem was stored under a different presentation. This is not
logical incompleteness in the Gödelian sense. It is representational incompleteness of the search interface.
                                      submitted syntax -> local rewrites -> candidate proof
Structural analysis inserts an intermediate object layer:
            submitted syntax -> typed object -> admissible quotients -> invariants -> normal form -> proof transport
The kernel remains small and authoritative. The structural analyzer remains replaceable and untrusted. It
earns every optimization by emitting a certificate whose primitive expansion the kernel can check.

2.1 Structural compression
Suppose a registry contains separate proofs P_i for objects x_i that later become recognized as instances of one
normal-form theorem P*. The registry can retain:
         one general theorem, proved for the canonical representative;
         one classifier, showing that each x_i belongs to the represented structural class;
         one transport witness per instance, showing how P* returns to x_i;
         the original proofs, until migration and equivalence certificates permit archival compression.
No theorem disappears. Independent descriptions become conditional on a deeper shared substrate.


3. The minimum structural object: Möbius transformation
Let C-hat = C union {infinity}. A Möbius transformation is represented by
                                           T(z) = (a z + b)/(c z + d),        a d - b c != 0.
When c != 0, T(-d/c)=infinity and T(infinity)=a/c. When c=0, T(infinity)=infinity. The derivative on the finite
domain is
                                                   T'(z) = (a d - b c)/(c z + d)^2,

                                Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 3
                                                                    TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

so the transformation is conformal wherever finite. Every such transformation is a bijection of C-hat, and
composition corresponds to matrix multiplication.

3.1 Projective representation
                                          M_T = \[\[a,b],[c,d\]\],        det(M_T) != 0.
For every nonzero scalar s, M_T and s M_T define the same transformation. Therefore the structural identity
lives in PGL(2,C), not in the raw coefficient tuple.
                                                [M] = {s M : s in C*, s != 0}.
This quotient is the first exact example of the Residue Thesis inside the engine: coefficient scale belongs to
presentation artifact; projective action survives.

3.2 Matrix composition and inverse
                                 T_M o T_N = T_(M N),              T_M^(-1) = T_(M^(-1)).
A long nested rational expression can therefore be compiled into matrix multiplication, checked, and
converted back only when a final formula is required. The structural route reduces expression swell and
exposes group relations.

3.3 Extended-plane and generalized-circle action
The Riemann sphere supplies the natural total domain because poles become ordinary images of finite points
and infinity becomes an admissible point. Möbius transformations send generalized circles - Euclidean circles
or Euclidean lines completed by infinity - to generalized circles. The engine should store this as a type-
preservation theorem rather than repeatedly eliminate coordinates.


4. Cross ratio as a complete local relational invariant
                                       [z,z1;z2,z3] = ((z-z1)(z2-z3))/((z-z3)(z2-z1)).
For distinct marked points, Möbius transformations preserve the cross ratio. Conversely, three distinct source
points and three distinct target points determine a unique Möbius transformation. This is a near-ideal proof-
engine macro because it replaces coefficient solving with one relational equation.
    Theorem 2 (Three-point determination).

    Given pairwise distinct z1,z2,z3 in C-hat and pairwise distinct w1,w2,w3 in C-hat, there exists a unique T in
    PGL(2,C) such that T(zi)=wi for i=1,2,3.

    Proof sketch. Choose projective maps C_z and C_w sending the two triples to a common canonical triple, for
    example (0,1,infinity). Then T=C_w^{-1} o C_z. Existence follows by construction. If S has the same three
    values, C_w o S o C_z^{-1} fixes 0,1,infinity; the corresponding matrix is scalar, hence the identity in PGL(2,C).
    QED.

4.1 Certificate form
The structural analyzer need not be trusted to solve the mapping correctly. It emits:
   distinctness witnesses, for both triples;
   a candidate matrix M, with nonzero determinant;
   three evaluation identities, T(zi)=wi;
   a uniqueness citation, to the three-point theorem.


5. Fixed points, multipliers, and conjugacy
Finite fixed points solve
                            Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 4
                                                                     TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

                                                     c z^2 + (d-a) z - b = 0.
Counting infinity, every nonidentity Möbius transformation has either two distinct fixed points or one double
fixed point.

5.1 Distinct fixed points
If p != q are fixed, the conjugator
                                                       C(z) = (z-p)/(z-q)
sends p to 0 and q to infinity. Therefore
                                                    C o T o C^(-1)(z) = k z
for some k != 0,1. The multiplier k determines the qualitative conjugacy type, up to inversion when the fixed-
point ordering is swapped.

5.2 Double fixed point
If T has one double fixed point p and is not the identity, a conjugator sending p to infinity reduces T to
                                                   z -> z + tau,      tau != 0.
A further scaling conjugacy reduces every nontrivial translation to z -> z+1. Thus the parabolic class has a
single canonical normal form over C.

5.3 Scale-invariant trace classifier
Raw trace is not projectively invariant. The engine should first compute
                                                  chi(M) = tr(M)^2 / det(M).
This remains unchanged under M -> sM. For determinant-one representatives, chi=tr(M)^2. Classification over
PSL(2,C) can then be expressed without selecting a square-root branch:
 Condition                      Structural class                   Canonical form                     Fixed-point structure

 chi = 4, nonidentity           Parabolic                          z+1                               One double fixed point

 chi real and 0 <= chi < 4      Elliptic                           exp(i theta) z                    Two distinct fixed points

 chi real and chi > 4           Hyperbolic                         k z, k>0, k!=1                    Two distinct fixed points

 chi not real, or complex       Loxodromic                         k z with dilation and             Two distinct fixed points
 convention outside prior                                          rotation
 cases

Classification conventions vary, especially concerning negative real multipliers and whether hyperbolic is
treated as a loxodromic subtype. The engine must store the convention as part of the framing discipline
instead of silently mixing sources.


6. Structural residue for Möbius objects
Let R_proj permit nonzero scalar changes of matrix representative. Let R_conj additionally permit conjugation
by PGL(2,C). For an obstruction or description-cost functional O, define
                             I_R(T;target) = inf_{r in R(T)} O(r,T;target),           O = A + I_R.
Under R_proj, the exact coefficient scale is removable artifact. Under R_conj, fixed-point locations are
removable, but fixed-point multiplicity, multiplier class, and conjugacy type persist. The index matters: a
quantity may be structural under projective rescaling yet removable under conjugation.

                             Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 5
                                                                    TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

 Feature                       Invariant under                    Invariant under                    Engine role
                               projective rescaling?              conjugation?

 Coefficient tuple (a,b,c,d)   No                                 No                                Raw presentation

 Projective matrix class       Yes                                No                                Object identity

 determinant                   Yes as a predicate                 Yes                               Validity
 zero/nonzero

 Fixed-point locations         Yes                                No                                Construct conjugator

 Fixed-point multiplicity      Yes                                Yes                               Class invariant

 chi=tr^2/det                  Yes                                Yes                               Classifier

 Cross ratio of marked         Yes                                Yes under simultaneous            Relational invariant
 points                                                           action

 Multiplier up to              Yes                                Yes                               Normal-form parameter
 inversion

 Generalized-circle            Yes                                Yes                               Geometric transport
 incidence



7. ZFC-grounded object model
The structural module can be conservative over ZFC. It requires no new foundational primitive. Each high-
level object expands into ordinary sets, functions, relations, and finite sequences. A practical implementation
may use typed terms while retaining a verified erasure into the kernel's set-theoretic language.

7.1 Foundational dependencies
1.   Construct natural numbers, integers, rationals, reals, and complex numbers in the selected ZFC library.
2.   Define C-hat as a tagged disjoint union C plus one infinity element.
3.   Define 2x2 matrices as finite functions on {0,1}x{0,1}.
4.   Define GL(2,C), scalar equivalence, PGL(2,C), and the induced action on projective one-space.
5.   Prove equivalence between projective-line action and the extended fractional formula.
6.   Define generalized circles, cross ratios with infinity-aware clauses, fixed points, composition, inverse, and
     conjugation.
7.   Register theorem objects with explicit dependencies and framing conventions.

7.2 Trusted and untrusted components
 Component                     Trusted?                           Function                           Failure consequence

 ZFC proof kernel              Yes                                Checks primitive                  Unsoundness if defective
                                                                  derivations

 Parser/elaborator             No                                 Turns submitted syntax            Rejected or wrong
                                                                  into typed terms                  candidate, caught by
                                                                                                    checking



                            Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 6
                                                                    TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

 Component                     Trusted?                           Function                           Failure consequence

 Structural extractor          No                                 Proposes matrix,                  Certificate fails
                                                                  invariants, fixed points

 Strategy selector             No                                 Chooses cross-ratio,              Search inefficiency only
                                                                  conjugacy, or matrix
                                                                  route

 Computer algebra helper       No                                 Factors polynomials and           Certificate fails
                                                                  simplifies identities

 Registry/index                No for truth, yes for              Finds reusable theorems           Missed optimization, not
                               availability                                                         false proof



8. Structural certificate calculus
A structural proof certificate is a finite object that justifies the transport from submitted presentation to a
theorem-bearing normal form.
   Definition 3 (Möbius structural certificate).

A certificate is a tuple (E,M,V,I,K,C,N,P,Pi), where E is the parsed expression; M a projective matrix witness; V a
nondegeneracy proof; I a vector of invariants; K a classification; C a conjugator or three-point map; N a
normal form; P a theorem proved for N; and Pi a transport derivation.

8.1 Verification obligations
8. Expression equivalence: prove E(z)=T_M(z) on C-hat.
9. Validity: prove det(M)!=0.
10. Quotient discipline: prove every normalization preserves [M].
11. Invariant correctness: prove the fixed-point polynomial, chi value, and cross-ratio claims.
12. Class membership: derive the stated class from the registered convention.
13. Normal-form identity: prove C o T_M o C^{-1}=N.
14. Normal-form theorem: reference or check P(N).
15. Transport: prove conjugacy or naturality carries P(N) back to P(T_M).
16. Scope disclosure: record all side conditions and the representation class under which the reduction holds.

8.2 Generic transport theorem
   Theorem 4 (Conjugacy transport).

   Let G act on a class X, let P be a predicate invariant under the action, and let y=g.x. If P(x), then P(y).

   Proof. Invariance gives P(x) iff P(g.x). Substitute y=g.x. QED.

The useful work lies in registering exactly which predicates are conjugacy invariant. Orbit convergence to a
named coordinate point is not invariant without transporting the point; number of fixed points, periodicity,
and generalized-circle incidence are invariant in the appropriate relational form.


9. Proof-search strategies compiled from structural signatures
 Detected signature            Preferred structural               Canonical object                   Typical theorem family
                               route

 Three marked                  Cross-ratio / canonical            Unique three-point map            Conformal domain

                            Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 7
                                                                   TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

 Detected signature            Preferred structural              Canonical object                   Typical theorem family
                               route

 source/target points          triple                                                              normalization

 Long composition              Projective matrix                 Single PGL element                Identity, inverse, word
                               product                                                             reduction

 Iteration T^n                 Fixed points + conjugacy          k^n z or z+n                      Orbit and stability
                                                                                                   analysis

 Circle/line boundary          Generalized-circle                Real line or unit circle          Domain mapping
                               transport

 Equality of                   Projective matrix                 PGL identity                      Extensional equality
 transformations               proportionality or three-
                               point agreement

 Classification request        chi + fixed-point                 elliptic/parabolic/               Qualitative dynamics
                               discriminant                      hyperbolic/loxodromic

 Large rational                Matrix extraction and             Normalized projective             Simplification and reuse
 expression                    canonicalization                  representative



10. IRRPROOF integration
The full IRRPROOF object chain should store more than the final theorem. For each successful reduction it
should preserve the submitted expression, typed object, projective representative, invariant signature, chosen
normal form, conjugator, proof transport, primitive expansion, and measured proof-cost change.

10.1 Structural signature index
 sig(T) = (object_type, coefficient_field, quotient_class, fixed_point_type, chi, multiplier_class, preserved_relations).
The index lets the engine search by structure rather than vocabulary. A theorem proved for one ugly
coefficient tuple becomes discoverable for every conjugate instance.

10.2 Failed routes as residue telemetry
A failed cross-ratio construction, unresolved factorization, singular normalization, or unproved side condition
should remain in the registry with its declared resource and representation bounds. It may later become
solvable after a stronger algebraic-number package or a larger theorem library is installed.

10.3 Domain truncation
A Möbius domain engine can be compiled as a certified truncation containing only the complex field,
projective 2x2 matrices, C-hat, cross-ratio, generalized-circle, fixed-point, conjugacy, and certificate theorems.
The complete federation retains the broader ZFC and TUFT registry so that future bridges remain available.


11. Minimum-case companion demonstrator
The companion HTML is not presented as a proof assistant or as a substitute for the ZFC kernel. It is an
executable specification of the structural pipeline. It accepts real coefficients a,b,c,d; rejects singular matrices;
extracts the projective object; computes the pole, infinity image, fixed points, discriminant, chi, classification,

                           Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 8
                                                                   TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

and a normal-form summary; compares scalar-equivalent representatives; composes two transformations by
matrix multiplication; verifies cross-ratio preservation numerically on a user-selected point quadruple; and
emits a certificate ledger.

11.1 Demonstrator resolution path
           raw coefficients -> PGL class -> invariant signature -> class -> normal form -> certificate ledger
The interface intentionally shows both structure and scope. Numerical cross-ratio checks are labeled
demonstrations, not kernel proofs. Exact identities used for classification are shown symbolically where the
real-coefficient minimum case permits.

11.2 Included canonical examples
   Hyperbolic: T(z)=(2z+1)/(z+1), with chi=9 and fixed points (1 +/- sqrt(5))/2.
   Parabolic: T(z)=z+1, with chi=4 and one double fixed point at infinity.
   Elliptic: T(z)=-1/z, with chi=0 and fixed points +/- i.
   Projective equality: M and 2M produce identical evaluations.
   Composition: matrix product is compared against nested evaluation.


12. Correctness cautions inherited from the source material
The linked complex-analysis page is useful as an instructional source, but the formal engine should repair
several points before ingestion.
   Pole sign: the finite pole is -d/c, not d/c. The source's extended-plane formula is correct, while one prose
    domain sentence drops the minus sign.
   Dynamics language: a single hyperbolic or loxodromic Möbius transformation has highly organized
    fixed-point dynamics. Calling it generically chaotic on the entire sphere is too broad. Chaos becomes
    natural for non-elementary groups, semigroups, or induced actions on limit sets under precise definitions.
   Trace convention: trace classification requires determinant normalization or the scale-invariant
    chi=tr^2/det. Raw trace is not a PGL invariant.
   Elliptic periodicity: elliptic does not imply finite periodic order unless the rotation angle is a rational
    multiple of 2pi.


13. Worked structural traversal
Consider
                                        T(z) = (2z+1)/(z+1),        M=\[\[2,1],[1,1\]\].
17. Validity: det(M)=1, so T is a Möbius transformation.
18. Projective identity: any nonzero scalar multiple represents the same T.
19. Fixed-point equation: z^2-z-1=0, giving p=(1+sqrt(5))/2 and q=(1-sqrt(5))/2.
20. Scale-invariant classifier: chi=tr(M)^2/det(M)=9.
21. Under the registered convention, chi>4 real, so T is hyperbolic.
22. Choose C(z)=(z-p)/(z-q). Then C sends p to 0 and q to infinity.
23. The conjugated map fixes 0 and infinity, hence has form kz.
24. The multiplier can be obtained from T'(p)=1/(p+1)^2; exchanging p and q replaces k by 1/k.
25. Iteration reduces to C(T^n(z))=k^n C(z).
26. Any conjugacy-invariant theorem proved for kz is transported back to T.
This traversal shows why the structural layer matters. Direct expansion of T^n creates rapidly growing
rational expressions. Conjugacy turns the same family into one exponentiation.


14. Generalization beyond Möbius transformations
                           Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 9
                                                                     TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

The minimum case is selected because every architectural layer is visible and finitely checkable. The same
pattern extends:
    Domain                       Quotient / equivalence            Invariant signature                Normal form

    Matrices                     Similarity                        Characteristic/minimal             Jordan or rational
                                                                   polynomial, Jordan data            canonical form

    Quadratic forms              Congruence                        Rank, signature,                   Diagonal form
                                                                   discriminant

    Finite groups                Isomorphism                       Order spectrum,                    Canonical labeled
                                                                   composition structure              presentation

    Graphs                       Graph isomorphism                 Canonical labeling,                Canonical graph
                                                                   spectra, motifs

    Knots                        Ambient isotopy                   Polynomial and                     Certified diagram class
                                                                   homological invariants

    Differential operators       Unitary equivalence /             Spectrum, spectral                 Model operator
                                 conjugacy                         measure, index

    Formal theories              Interpretation /                  Consequence and                    Canonical interface
                                 definitional equivalence          translation invariants             theory

No single invariant set is complete in every domain. The engine must distinguish a classifier useful for search
from a complete invariant sufficient for identity.


15. Frontier research program
      Certified canonicalization over algebraic numbers: replace floating root selection with exact algebraic-
       number witnesses.
      Infinity-aware cross-ratio library: formalize all marked-point cases without ad hoc limit prose.
      Predicate transport registry: tag theorems by invariance under projective rescaling, conjugacy, anti-
       conformal maps, and field embeddings.
      Proof-cost telemetry: measure primitive proof length, search time, dependency fan-out, and reuse before
       and after structural reduction.
      Counterexample generation: use normal forms to identify when an apparently invariant statement
       actually depends on coordinates.
      Automated frame disclosure: make the engine print the selected equivalence relation and classification
       convention with every result.
      TUFT bridge: use the same carrier/operator distinction for projective actions, spectral operators, and
       calibrated physical registries.
      IRRPROOF federation: share structural certificates and canonical theorem objects across replicas while
       compiling minimal domain analyzers.


16. Claims, non-claims, and stopping state
16.1 Claims
      C1. Möbius transformations furnish a complete minimum example of quotient-aware structural proof
       analysis.

                             Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 10
                                                                   TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

     C2. Projective identity, cross-ratio invariance, fixed-point classification, and conjugacy normal forms can
      be compiled into finite ZFC-checkable certificates.
     C3. The architecture implements the prior TUFT/Residue/Framing distinction between presentation
      artifact and persistent structure.
     C4. IRRPROOF can store and reuse normal-form proofs without enlarging the trusted kernel.
     C5. The companion demonstrator resolves the architecture into an inspectable executable traversal.

16.2 Non-claims
     N1. The demonstrator is not a complete complex arithmetic system or formal ZFC verifier.
     N2. Numerical cross-ratio agreement is not a proof certificate.
     N3. The chosen invariant signature is not a complete invariant for arbitrary mathematical objects.
     N4. Structural recognition does not evade undecidability or incompleteness.
     N5. No ownership claim is made over Möbius theory, projective geometry, or established proof-assistant
      methods.

16.3 Stopping state
This paper reaches its stated stopping state when the architecture, kernel boundary, certificate obligations,
minimum mathematical domain, demonstrator behavior, and generalization path have all been specified. The
next legitimate step is implementation against the actual ZFC proof-object format and empirical measurement
of proof compression.


17. Conclusion
A ZFC proof engine becomes structurally stronger not by weakening formal verification but by inserting a
richer, certificate-producing search layer above it. Möbius transformations expose the full pattern in its
smallest coherent form: one expression becomes a projective object; projective rescaling removes coefficient
artifact; cross ratios encode relational action; fixed points and chi classify the object; conjugacy supplies a
normal form; and theorem transport returns the result to the submitted coordinates.
This is the operational resolution of the prior TUFT registry work. The registry is not merely a collection of
formulas. It is a network of admissible witnesses and transports. The Residue Thesis tells the engine what to
preserve; framing discipline tells it what equivalence relation has been declared; IRRPROOF tells it how to
retain certificates, failures, and reusable compressed proofs. The companion demonstrator makes that
architecture visible in one finite traversal.

    Final formulation
    Structural analysis for IRRPROOF is an untrusted search-and-canonicalization layer that converts raw ZFC
    expressions into typed quotient objects, computes declared invariants, reduces them to theorem-bearing
    normal forms, and emits primitive certificates for kernel verification. Möbius transformations provide the
    first complete executable model.




Appendix A. Certificate schema
{
    "object_type": "MobiusTransformation",
    "expression": "(a*z+b)/(c*z+d)",
    "matrix": \[\[a,b],[c,d\]\],
    "validity": "a*d-b*c != 0",
    "quotient": "M ~ scalar*M",
    "invariants": {
                           Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 11
                                                                   TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

     "fixed_point_polynomial": "c*z^2+(d-a)*z-b",
     "chi": "(a+d)^2/(a*d-b*c)",
     "fixed_point_multiplicity": "...",
     "cross_ratio_preserved": true
    },
    "classification_convention": "...",
    "class": "...",
    "conjugator": "...",
    "normal_form": "...",
    "transported_theorem": "...",
    "primitive_proof_ref": "..."
}


Appendix B. Demonstrator test suite
    Test                       Input                             Expected structural                Purpose
                                                                 result

    T1                         2,1,1,1                           det=1; chi=9; hyperbolic           Classification

    T2                         1,1,0,1                           chi=4; parabolic; fixed            Infinity handling
                                                                 infinity

    T3                         0,-1,1,0                          chi=0; elliptic; fixed +/-i        Complex fixed points

    T4                         M and 2M                          same evaluations                   Projective quotient

    T5                         AoB                               matrix product equals              Composition
                                                                 nested action

    T6                         four finite points                cross ratios agree within          Relational invariant
                                                                 tolerance

    T7                         ad-bc=0                           reject object                      Validity boundary



References
Ponce Campuzano, J. C. Linear Fractional Transformations. Complex Analysis online text, accessed July 2026.
Ahlfors, L. V. Complex Analysis. McGraw-Hill.
Beardon, A. F. The Geometry of Discrete Groups. Springer.
Conway, J. B. Functions of One Complex Variable. Springer.
Needham, T. Visual Complex Analysis. Oxford University Press.
Semita, Lu, and Nielsen, Jenny Lorraine. Operator-Agnostic Geometry, Topological Obstruction, and Why
   Completeness Is Not Comprehension. TUFT Registry Studies, June 2026.
Semita, Lu. The Residue Thesis: Irreducibility as the Invariant of Re-Description. R1, July 2026.
Semita, Lu. The Geometry of Framing: Identity Disciplines, Description, Persistence, and the Formation of
   Formal Problem Spaces. July 2026.
Semita, Lu. IRRPROOF Engine: Compression Frontiers, Chaitin Incompleteness, and Federated Registry
   Learning. July 2026.


                           Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 12
                                                                 TUFT REGISTRY STUDIES - STRUCTURAL ANALYSIS FOR ZFC/IRRPROOF

Semita, Lu. Certified Spectral Realization of Operator-Imposed SI Calibration over the Hopf Registry. TUFT
   Registry Studies, July 2026.




                         Lu Semita - EmergenceByDesign - Independent Laboratory Progress Record | 13
