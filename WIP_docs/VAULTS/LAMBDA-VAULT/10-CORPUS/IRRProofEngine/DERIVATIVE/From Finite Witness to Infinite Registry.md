---
silo: lambda
subcat: irrproof-derivative
exposure: internal
tier:
status: draft
words: 4223
sha: 9fd430503916
source-folder: "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/DERIVATIVE"
tags:
  - lambda/irrproof-derivative
  - x/internal
  - src/extracted
  - tier/unassigned
  - src/The-Lambda-Principle-of-Irreducibi/WIP-docs/IRRProofEngine/DERIVATIVE
source-repos:
  - The-Lambda-Principle-of-Irreducibility
source-paths:
  - "The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/DERIVATIVE/From_Finite_Witness_to_Infinite_Registry.pdf"
links-latent: []
---

# From Finite Witness to Infinite Registry

> **Source** `The-Lambda-Principle-of-Irreducibility/WIP_docs/IRRProofEngine/DERIVATIVE/From_Finite_Witness_to_Infinite_Registry.pdf`
> 4,223 words · sha `9fd430503916` · status **draft**
> Text recovered from PDF/DOCX by extraction — layout artifacts expected, equations may need repair. No markdown original existed.

**Detected references:** [[TUFT registry studies]]

---

LU SEMITA · EMERGENCEBYDESIGN · INDEPENDENT LABORATORY




 From Finite Witness
 to Infinite Registry
 Budgeted residue construction, p-adic forests, TUFT transformation registries, and
 symmetry horizons


 A proof-bearing atlas that keeps finite computation, theorem-governed continuation, canonical input,
 and open construction obligations visibly distinct.




         Finite witness                            Compatibility                            Infinite registry             Symmetry horizon
             calculated                                checked                                   theorem                       open bridge



 The seam is visible: calculation ends; theorem governs continuation; open obligations remain open.



  CALCULATED                                                THEOREM-RENDERED                                    OPEN


  Budgeted prime witnesses, cyclic orbits, CRT,             p-adic/profinite limits, Lie realization route,     TUFT-to-moonshine construction; any separate
  Möbius and sl₂ certificates, J coefficients.              established moonshine theorem.                      physical or stronger-logical extension.



 Laboratory notice. Standard mathematics and cited results remain attributed to their established sources. No claim of discovery, invention,
 ownership, priority, or prior art is made for established mathematics or methods. The contribution claimed is the declared registry synthesis,
 exact claim discipline, canonical integration, and executable atlas.

 Version 1.0 · 26 July 2026 · Companion: finite_witness_infinite_registry_atlas.html




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                                             1
 Abstract


            Finite witness                    Compatibility                         Infinite registry                         Symmetry horizon
              calculated                          checked                                theorem                                 open bridge



 The seam is visible: calculation ends; theorem governs continuation; open obligations remain open.


 We present a finite-witness protocol for studying unbounded mathematical registries without treating infinity as a
 computational endpoint. A run is defined by a frame, an operation budget, a witness contract, and an explicit stopping state.
 Completed finite certificates are separated from unresolved candidates, theorem-governed continuations, imported canonical
 data, and open conjectural bridges.

 The protocol is instantiated in five linked modules. First, two sequential prime classifiers are compared under an equal
 logical-token ledger. Testing only already certified primes has no greater per-candidate divisibility cost than testing all integer
 divisors, hence reaches a certified horizon at least as large under every common budget; reproducible runs through five million
 tokens quantify the strict advantage for the selected budgets. Second, linear and cyclic descriptions are related through an
 explicit quotient seam, yielding the orbit identity | k|=n/gcd(n,k) and its prime criterion. Third, finite residue trees are placed
 inside the standard inverse systems defining Z_p and Z-hat; the browser enumerates finite prefixes and theorem-renders, rather
 than simulates, the unbounded continuation. Fourth, the TUFT registry discipline is made exact through Möbius certificates and
 the smooth left-translation realization of finite-dimensional Lie groups, extended to finite-dimensional real Lie algebras by Lie's
 third theorem. Fifth, exact coefficients of J(q)=j(q)-744 are calculated and compared with canonical Monster representation
 dimensions, while the proposed TUFT-to-moonshine connection is retained as an open construction obligation.

 The result is a reproducible proof demonstrator for a modest but substantial thesis: finite, frame-declared witnesses can support
 rigorous traversal into mathematically infinite registries when every transition states what was calculated, what follows from
 theorem, what was imported, and what remains unproved. No physical law, universal 1/f claim, logical independence result, or
 derivation of monstrous moonshine is asserted.

 Keywords: finite witness; operation budget; prime certificate; p-adic integers; profinite completion; registry; Möbius
 transformation; Lie group; inverse limit; monstrous moonshine; proof demonstrator.



 1. Contribution and claim classes
 The central methodological error this work avoids is treating a finite rendering as though it had exhausted the object it depicts.
 A browser cannot complete an infinite sieve, enumerate Z_p, list an infinite product, traverse every diffeomorphism of a Lie
 group, or reproduce Borcherds' proof by drawing a suggestive graph. It can, however, calculate finite witnesses and place them
 under exact continuation theorems.

 We therefore use six visible status classes.

   Status                                                     Meaning

   Framework definition                                       A declared protocol term; valid only inside its stated frame.

   Proved internal                                            Derived here from declared premises and definitions.

   Established standard                                       External mathematics used with attribution; not claimed as original.

   Calculated                                                 Recomputed by the browser or reference program with finite arithmetic.

   Theorem-rendered                                           Shown graphically from a theorem without exhaustive enumeration.

   Canonical input                                            Established data imported with attribution.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                               2
   Status                                                 Meaning

   Open                                                   A proposed extension with an unsatisfied proof or construction obligation.


 These labels are epistemic types, not decoration. Substituting one for another is a category error in the demonstrator.


 1.1 What “beyond” means here
 The phrase finite witness to infinite registry does not mean that a program reaches infinity. Nor does “ZFC and beyond” mean
 that this paper proves independence from ZFC, exceeds its consistency strength, or constructs a stronger foundational theory.
 All standard objects used here can be formalized in ordinary set-theoretic mathematics. Here beyond means beyond the finite
 calculated prefix into an unbounded object whose continuation is specified by theorem. Any future IRRPROOF kernel that
 asserts a genuinely stronger logical claim must state its axioms, semantics, proof rules, soundness target, and
 relative-consistency obligations separately.



 2. Frames, witnesses, residue, and budgets
 Definition 2.1 (frame)
 A frame is a tuple

                                                              F=(S,D,R,W,T,C),

 where S is a carrier of admissible states, D a family of admitted distinctions, R a family of relations, W a witness contract, T a
 family of transformations, and C a collection of stopping conditions. This refines the framing discipline of The Geometry of
 Framing: Rigorous Canonical.


 Definition 2.2 (witness state)
 A witness state is a record

                                                         omega=(F,x,P,tau,sigma),

 where x is the object examined, P the property tested, tau an audit trace, and sigma in certified,refuted,unresolved. A witness is
 frame-relative: it establishes exactly what W licenses inside F, not an unspecified universal truth.


 Definition 2.3 (translation residue)
 Let phi:F-> F' translate a state or certificate between frames. The translation residue is the set of declared features of the source
 whose preservation has not been proved under phi. It is not automatically error; it is unverified transport.


 Definition 2.4 (budgeted run)
 A budgeted run is

                                                           R=(F,A,x_0,B,ledger),

 where A is an algorithm, x_0 a starting state, B in N a spend limit, and ledger an operation ledger assigning cost to admissible
 operations. The output contains all completed witnesses, the exact spend, and any unresolved frontier state.


 Proposition 2.5 (sound budget termination)
 If a certificate requires a finite set of checks Q(x), then a run stopped before every required check has either succeeded or a
 refuting witness has been found must label x unresolved.

 Proof. By the witness contract, certification requires completion of Q(x) unless a refutation condition has already terminated the
 test. At budget exhaustion neither condition holds. Calling x certified or refuted would assert a premise absent from the audit
 trace. Therefore the only sound status is unresolved.



FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                       3
 This elementary proposition is operationally important. The unresolved frontier is not discarded noise: it is the exact seam
 between what the run witnessed and what it did not.



 3. Primitive registry ladder
 The primitive ladder supplies a dependency vocabulary, not a uniqueness theorem.

   1. A mark introduces one distinguishable referent.
   2. A degree of freedom permits an admissible change.
   3. A trace records an ordered sequence of changed states.
   4. A return relation identifies a later state with an earlier state.
   5. A seam records where that identification was imposed.
   6. A branch records multiple admissible continuations.
   7. A grid combines compatible distinctions or traces into a comparative registry.
 The distinction between linear and chiral/cyclic presentation becomes precise at step 4: closure is not silently present in a line. It
 is an additional relation. This is enough to compare unwrapped enumeration with residue classes, and binary branching with
 general p-branching, without claiming that these objects have been logically derived from phenomenological language alone.



 4. A budgeted prime-witness theorem and
 experiment
 4.1 Two declared probes
 Both algorithms inspect candidates n=2,3,4,… in order.

   • All-divisor probe A: test d=2,3,…, n until d| n or the list is exhausted.
   • Certified-prime probe P: test only previously certified primes p<=sqrt n until p| n or the list is exhausted.
 The ledger charges one token for starting a candidate and one token for each divisibility test. Certificate writes and elapsed
 milliseconds are recorded but are not part of the equal-budget currency.


 Lemma 4.1 (prime-divisor sufficiency)
 For n>1, if n is composite then it has a prime divisor p<=sqrt n. Consequently, failure of every prime-divisor test through sqrt n
 is a prime certificate.

 Proof. Write n=ab with 1<a<= b. Then a<=sqrt n, and some prime p| a satisfies p<= a<=sqrt n.


 Lemma 4.2 (per-candidate dominance)
 For every candidate n, after all smaller candidates have been correctly classified, probe P performs no more divisibility tests than
 probe A.

 Proof. If n is prime, A tests every integer from 2 through n, whereas P tests only the primes in that interval. If n is composite, let
 p be its least prime divisor. No integer d<p divides n. Probe A therefore tests all integers from 2 through p; probe P tests only
 primes through p. In either case the test list of P is a subsequence of the relevant list of A.


 Theorem 4.3 (equal-ledger certified-horizon dominance)
 Let H_P(B) and H_A(B) be the largest completely classified candidates under budget B. Under the declared sequential order and
 token ledger,




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                        4
                                                        H_P(B)>= H_A(B) for every B in N.

 Proof. Both probes pay the same one-token candidate-start cost. By Lemma 4.2, the cumulative cost through every completed
 horizon h is no greater for P than for A. Hence any horizon affordable to A is affordable to P. Budget exhaustion within a
 candidate is handled by Proposition 2.5.


 Scope note
 Theorem 4.3 compares exactly these two ordered trial-division probes under exactly this logical ledger. It does not claim
 superiority over the Sieve of Eratosthenes, segmented sieves, Pritchard-family linear sieves, probabilistic primality testing, AKS,
 or specialized large-prime software. The prime-only restriction is standard mathematics; no claim of its invention is made.


 4.2 Reproducible results
 Certified horizon under identical logical-token budgets


            1K                                                                                                                           1.312×


           10K                                                                                                                           1.627×


      100K                                                                                                                               2.031×


           1M                                                                                                                            2.474×


           5M                                                                                                                            2.792×


                 ■ certified-prime divisors             ■ all integer divisors                   ratio shown at right

   Budget                   H_P               H_A             Gain               Horizon ratio                          primes certified by P

   1,000                    307               234             73                 1.3120                                 63

   10,000                   2,339             1,438           901                1.6266                                 346

   100,000                  16,916            8,328           8,588              2.0312                                 1,950

   1,000,000                114,912           46,440          68,472             2.4744                                 10,866

   5,000,000                421,356           150,910         270,446            2.7921                                 35,492


 The reference program and independent Python implementation agree at all ten method–budget combinations. Independent
 Eratosthenes counts equal the reported number of primes at every certified horizon. The increasing empirical ratio is descriptive
 of these runs; no asymptotic law is inferred from five budgets.


 4.3 What the experiment demonstrates
 The experiment reconstructs a familiar arithmetic fact in witness-bearing form: a structured divisor registry avoids logically
 redundant composite divisors. Its significance for the larger architecture is not a new prime algorithm. It is the clean separation
 of (i) admissible probes, (ii) finite certificates, (iii) spend, and (iv) unresolved continuation. The same discipline can govern more
 elaborate IRRPROOF search kernels.



 5. Line and cycle as different frames
 Let the linear frame be (Z,+). Imposing x y exactly when x-y in nZ produces the quotient Z/nZ. The quotient map preserves
 addition but not absolute linear position. The lost integer lift is translation residue unless a representative convention is
 declared.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                                5
 Proposition 5.1 (additive orbit length)
 For k in Z/nZ, the orbit generated by addition of k has length

                                                         ord_+(k)=(n)/(gcd(n,k)).

 Proof. The first return occurs at the least m>0 for which mk0 n, equivalently n| mk. Writing n=gn', k=gk', with g=gcd(n,k) and
 gcd(n',k')=1, the least such m is n'.


 Corollary 5.2 (additive prime criterion)
 For n>1, n is prime if and only if every nonzero k in Z/nZ generates a full orbit.

 Proof. Every nonzero k<n is coprime to n exactly when n has no nontrivial divisor. Apply Proposition 5.1.

 This criterion is not a fast primality test: checking all steps would merely restate divisibility. Its value here is representational. It
 shows how primality can appear as absence of orbit fragmentation after a declared wrap.



 6. From residue trees to p-adic and profinite
 registries
 Proposition 6.1 (exact lift count)
 Every class ap^k has exactly p lifts modulo p^k+1:

                                                        a+t p^kp^k+1, t=0,1,…,p-1.

 Proof. The displayed classes all reduce to ap^k. Two are congruent modulo p^k+1 only when p|(t-t'), which within the stated
 range forces t=t'. Every lift has one of these residues.

 Thus the 2-adic residue tree literally bifurcates, while the general p-adic tree has p children at every node. At level k there are
 exactly p^k residue nodes. A browser may enumerate those nodes only while p^k lies within its declared node cap. It may
 always calculate the count using integer exponentiation.


 Definition 6.2 (p-adic inverse limit)
 With reduction maps rho_k+1,k:Z/p^k+1Z->Z/p^kZ,

                                                           Z_p=lim <-_kZ/p^kZ

 is the set of compatible sequences (x_k) satisfying rho_k+1,k(x_k+1)=x_k. The infinite object is not the last level of a large finite
 tree. It is the compatibility object over all levels.


 Theorem 6.3 (profinite completion of the integers)
 Standard profinite number theory and the Chinese remainder theorem give

                                          Z-hat=lim <-_nZ/nZ ~= product_(p prime)Z_p.

 The atlas calculates finite CRT witnesses and finite prime/depth rectangles. It theorem-renders the inverse limit and full product.
 No finite rectangle is labeled as the completed profinite object.


 6.1 Registry interpretation
 The p-adic forest supplies an exact instance of finite witnesses cohering into an infinite registry:

   • nodes are finite residue states;
   • edges are lift relations;



FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                           6
   • reduction maps test compatibility;
   • finite prefixes are calculated;
   • the inverse limit is established by definition and theorem;
   • omitted individual nodes remain outside the finite witness, not falsely summarized as computed.
 This is a stronger and cleaner result than an appeal to visual resemblance. The branching law, compatibility maps, and limiting
 object are all specified.



 7. TUFT as a transformation-registry discipline
 Definition 7.1 (registry)
 A registry is a tuple

                                                                 R=(S,O,M,I),

 where S is a carrier, O a declared observable family, M admissible transformations or operations, and I invariants or
 compatibility conditions. A registry morphism must state which components and invariants it preserves. Undeclared
 resemblance is not a morphism.

 This definition follows the Registry Factorization Principle. The proposed full registry category, functorial semantics, and gluing
 theorem remain open where their composition laws and universal properties have not been supplied.


 7.2 Möbius maps as an exact TUFT checkpoint
 For

                                                         M=\[\[a, b]; [c, d\]\], M!=0,

 the projective class [M] acts by z(az+b)/(cz+d). Nonzero scalar multiples represent the same map. The quantity

                                                          chi(M)=(tr(M)^2)/( M)

 is scale invariant because numerator and denominator both acquire a factor lambda^2. Fixed points satisfy

                                                              cz^2+(d-a)z-b=0,

 with discriminant

                                                Delta=(a+d)^2-4(ad-bc)=tr(M)^2-4 M.

 For real coefficients, the sign of Delta distinguishes the familiar two-real, repeated-real, and conjugate-pair fixed-point cases.
 The atlas calculates this certificate directly. The standard three-point theorem—three distinct source points and three distinct
 target points determine a unique Möbius map—is theorem-rendered as a proof-transport pattern.

 This checkpoint matters because carrier, quotient, invariant, and transport are explicit. It is therefore a genuine registry
 realization, not a coincidence of plotted coordinates.



 8. Smooth registry realizations of Lie groups and
 algebras
 Theorem 8.1 (left-translation realization)
 Every finite-dimensional Lie group G admits a faithful smooth registry realization

                                                 L:G->Diff(G), g L_g,quad L_g(x)=gx.


FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                     7
 Proof. Each L_g is a diffeomorphism with inverse L_g^-1. The map is a homomorphism because L_g L_h=L_gh. It is faithful: if
 L_g=L_h, evaluation at the identity gives g=h. Smoothness follows from smooth group multiplication.


 Theorem 8.2 (infinitesimal recovery)
 The tangent space T_eG identifies with the left-invariant vector fields. Under this identification the Lie bracket is the commutator
 of infinitesimal registry transports.

 This is standard Lie theory and is also proved in Supplement A: Smooth Registry Realizations of Lie Groups. The atlas checks the
 exact sl_2 witness

                                       H=\[\[1, 0]; [0, -1\]\], E=\[\[0, 1]; [0, 0\]\], F=\[\[0, 0]; [1, 0\]\],

 for which

                                                     [H,E]=2E, [H,F]=-2F, [E,F]=H,

 and the Jacobi sum is the zero matrix.


 Corollary 8.3 (finite-dimensional real Lie algebras)
 Every finite-dimensional real Lie algebra g integrates to a connected simply connected Lie group G by Lie's third theorem, and
 therefore receives the smooth registry realization of Theorem 8.1 with infinitesimal recovery by Theorem 8.2.


 Scope boundary
 Corollary 8.3 is broad, but not unlimited. It does not cover arbitrary infinite-dimensional Lie algebras, topological Lie algebras,
 Lie superalgebras, vertex algebras, or generalized Kac–Moody algebras without additional hypotheses and constructions. In
 particular, it does not by itself construct the algebraic objects used in monstrous moonshine.

 For compact connected G, a maximal torus T, Weyl group W=N(T)/T, and root-space decomposition supply a finer registry
 hierarchy. This is established Lie theory. The hierarchy can be represented without claiming exhaustive enumeration of G.



 9. The moonshine horizon
 9.1 Exact modular calculation
 Let

                 E_4(q)=1+240sum_(n>=1)sigma_3(n)q^n, E_6(q)=1-504sum_(n>=1)sigma_5(n)q^n,

 and

                    Delta(q)=(E_4(q)^3-E_6(q)^2)/(1728), j(q)=(E_4(q)^3)/(Delta(q)), J(q)=j(q)-744.

 Finite BigInt power-series arithmetic in the reference program gives

                        J(q)=q^-1+196884q+21493760q^2+864299970q^3 +20245856256q^4+....

 These coefficients are calculated from the displayed formulas; no floating-point approximation is used.


 9.2 Canonical imported calibration
 Two famous comparisons are

                                                             196884=1+196883,

                                                    21493760=1+196883+21296876,




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                      8
 where the terms on the right are canonical Monster representation dimensions. The dimensions are imported data. Their
 appearance is not derived by the prime probe, the p-adic tree, or the finite-dimensional TUFT realization.

 The Conway–Norton moonshine conjectures and Borcherds' theorem concern graded Monster modules, trace functions,
 modular functions, and generalized Kac–Moody structure. That established theory is attributed to its sources.


 Open Obligation 9.1 (TUFT-to-moonshine bridge)
 To promote the suggested structural relationship to a theorem, one must construct at least:

   1. a specified graded registry object V=direct_sum_(n>=-1)V_n;
   2. a Monster action, or an explicitly equivalent automorphism construction, on V;
   3. graded trace functions T_g(q)=sum_ntr(g| V_n)q^n;
   4. proofs of the required modularity, genus-zero, or replicability properties;
   5. compatibility maps showing that the TUFT observables and transformations recover—not merely resemble—the
     established moonshine data.
 Until these are supplied, the bridge is open. This is not dismissal: it is a precise research program.



 10. Calculated, theorem-rendered, and imported
 layers
   Module       Calculated in browser                               Theorem-rendered                                     Imported / open boundary

   Prime        candidate starts, divisor tests, witnesses,         general horizon-dominance proof displayed            no universal algorithmic superiority claimed
   probe        horizon, frontier

   Line/cycle   selected gcd and orbit                              orbit formula and prime criterion                    quotient seam must be declared

   p-adic       finite level counts and displayed nodes             inverse limit and unbounded lift continuation        individual omitted nodes not computed

   Profinite    finite CRT witness                                  Z-hat~=product_pZ_p                                  full product not enumerated

   Möbius/T     determinant, trace, chi, discriminant               three-point theorem and projective transport         broader gluing framework open
   UFT

   Lie          exact sl_2 matrices                                 left translations, infinitesimal recovery, Lie III   infinite-dimensional extension not asserted
                                                                    corollary

   Moonshin     initial J-coefficients                              established theorem summarized                       Monster dimensions imported; TUFT bridge
   e                                                                                                                     open


 This table is the paper's central checksum. Any future module should be rejected if it cannot identify its row entries.



 11. Relation to IRRPROOF and residue-aware
 computation
 The demonstrator suggests a kernel contract for residue-aware computation.


 Definition 11.1 (residue-aware kernel record)
 For each transition s_i-> s_i+1, record

                                                              K_i=(F_i,s_i,o_i,w_i,I_i,r_i,B_i),

 where F_i is the active frame, o_i the operation, w_i its witness or failure state, I_i the invariants checked, r_i the unverified
 translation residue, and B_i the remaining budget.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                                                      9
 Such a record supports replay, comparison, branching, and adversarial audit. A frozen archive is a state description of a run, not
 the run's living temporal continuum. Its mathematical value lies in the exact transition log and stopping seam, not in pretending
 to capture every possible continuation.

 For IRRPROOF, extensions can be packaged as kernels or macros above the base engine only when they declare:

   • input and output registries;
   • admitted inference rules;
   • preserved invariants;
   • witness and stopping conditions;
   • resource ledger;
   • unresolved residue;
   • external theorem dependencies;
   • proof obligations not discharged by the engine.
 This makes the architecture extensible without making it authoritative. A module can propose a path, supply evidence, and
 invite challenge while leaving interpretation and adoption to the observer or user.



 12. Adversarial tests and falsification conditions
 The work invites attack at exact joints.

   Target                                     A successful challenge would show

   Budget soundness                           a candidate labeled certified despite an unperformed required check

   Horizon dominance                          a budget under the declared ledger for which H_P(B)<H_A(B), or a flaw in Lemma 4.2

   Reproducibility                            disagreement among browser, Node reference, and independent Python results after matching the ledger

   Cycle module                               an orbit whose measured return differs from n/gcd(n,k)

   p-adic module                              a residue with other than p distinct lifts, or a displayed edge violating reduction compatibility

   Möbius module                              failure of chi under nonzero scalar rescaling, outside a declared degenerate case

   Lie route                                  a failure of faithfulness of left translation, or a scope claim exceeding finite-dimensional hypotheses

   Moonshine bridge                           currently not falsified because it is not asserted; completion requires all obligations in §9.2


 The protocol is intentionally assailable. The goal is not to make challenge impossible, but to make every challenge land on a
 statement whose premises and status are visible.



 13. Limitations
   1. The prime experiment compares two elementary classifiers, not state-of-the-art prime generation.
   2. Logical tokens are a declared abstract cost model. They are reproducible but not identical to CPU instructions, energy, or
     elapsed time.
   3. Browser timing varies by device and is not used to prove the mathematical comparison.
   4. Finite p-adic drawings do not approximate every topological property merely by becoming large.
   5. The TUFT label contributes an organizing registry discipline; it does not supersede standard projective or Lie theory.
   6. The finite-dimensional Lie route does not construct generalized Kac–Moody or vertex-algebra data.
   7. The moonshine comparison is a calibrated horizon, not a derived correspondence.
   8. No claim about physical energy, spacetime singularities, biological agency, universal 1/f behavior, or continuum ontology
     follows from these mathematical modules.


FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                                      10
   9. Observer-relative framing does not imply that mathematical truth is arbitrary. Once a frame and morphism are declared,
     their internal consequences remain objectively contestable.



 14. Conclusion
 The strongest result is not that a browser has approached infinity. It is that the architecture refuses to confuse three different
 acts:

             finite calculation != theorem-governed infinite construction != speculative structural extension.

 Within that separation, a coherent ladder is obtained. Minimal distinctions support traces and explicit quotient seams.
 Divisibility produces finite prime and composite witnesses. Residue classes organize into exact p-branching inverse systems.
 Profinite structure combines the prime-indexed lanes. TUFT supplies a disciplined language for carriers, transformations,
 invariants, and transport. Möbius and finite-dimensional Lie realizations provide rigorous transformation checkpoints. Modular
 coefficients can be calculated at the edge of moonshine, where established canonical data begin and the proposed registry
 bridge remains visibly open.

 This is enough to justify the demonstrator as a proof-bearing research instrument. It reconstructs its finite substrate, states the
 theorems governing its infinite registries, preserves the frontier that computation did not cross, and presents the next ambitious
 connection as an exact obligation rather than an accomplished fact.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                    11
 Appendix A. Reference algorithm
 procedure PROBE(B, DIVISORS)
     spent ← 0; n ← 2; primes ← []
     while spent < B
         spend START(n)
         for d in DIVISORS(n, primes) with d² ≤ n
             if spent = B
                 return witnesses, UNRESOLVED(n, next=d)
             spend DIVISIBILITY_TEST(n,d)
             if d divides n
                 write COMPOSITE(n,d); goto NEXT
         write PRIME(n)
         append n to primes
       NEXT:
         n ← n+1
     return witnesses, frontier n

 The reference implementation also records method, operation counts, certificate counts, unresolved state, elapsed worker time,
 and—in the Node packet—a SHA-256 digest of the witness structure.



 Appendix B. Reproducibility packet
 The accompanying packet contains:

   • the standalone executable atlas;
   • this manuscript in Markdown and PDF;
   • the full 23-item JSON claim ledger;
   • the Node reference implementation and results;
   • an independent Python validator and validation results;
   • browser interaction tests and a manifest with SHA-256 hashes.
 The atlas has no external libraries or network calls. It uses a Blob Web Worker for the prime experiment and BigInt arithmetic for
 modular coefficients. Desktop and mobile layouts are tested in Chromium.



 Appendix C. Canonical source position
 The following internal works supply terminology, earlier constructions, or rigorous checkpoints:

   1. The Geometry of Framing: Rigorous Canonical — frame, witness, translation residue, and transport discipline.
   2. Registry Factorization Principle: Formalized — registry tuple, morphism guardrails, and open categorical program.
   3. Primitive Registry Ladder / Frame Imposition Synthesis v0.4 — active-provisional seed ladder and linear/chiral frame
     distinction.
   4. TUFT Registry Studies: Structural Analysis for ZFC / IRRPROOF — Möbius structural certificates and laboratory notice.
   5. Supplement A: Smooth Registry Realizations of Lie Groups — left-translation theorem, infinitesimal recovery, maximal-torus
     refinement.
   6. Infinite Registry: Structured Map — distinction between a flat infinite collection and a compatibility-bearing structured
     registry.
   7. R_S Protocol R11.23+ and the Rope-and-Sand series — historical provenance and motivation only; no rational-interpolation
     prime predictor is used here.



 References
 [1] J. H. Conway and S. P. Norton, “Monstrous Moonshine,” Bulletin of the London Mathematical Society 11 (1979), 308–339.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                                12
 [2] R. E. Borcherds, “Monstrous Moonshine and Monstrous Lie Superalgebras,” Inventiones Mathematicae 109 (1992), 405–444.

 [3] I. B. Frenkel, J. Lepowsky, and A. Meurman, Vertex Operator Algebras and the Monster, Academic Press, 1988.

 [4] P. Pritchard, “Linear Prime-Number Sieves: A Family Tree,” Science of Computer Programming 9 (1987), 17–35,
 doi:10.1016/0167-6423(87)90024-4.

 [5] J.-P. Serre, Lie Algebras and Lie Groups, Springer, 1992.

 [6] B. Hall, Lie Groups, Lie Algebras, and Representations, 2nd ed., Springer, 2015.

 [7] H. W. Lenstra Jr., Profinite Groups and Profinite Number Theory, lecture notes.

 [8] MIT OpenCourseWare, Introduction to Arithmetic Geometry, Lecture 4: p-adic numbers, 2013.

 [9] Lu Semita / EmergenceByDesign, internal canonical sources listed in Appendix C, accessed 26 July 2026.


 End of independent laboratory record.




FINITE WITNESS → INFINITE REGISTRY · INDEPENDENT LABORATORY RECORD                                                           13
