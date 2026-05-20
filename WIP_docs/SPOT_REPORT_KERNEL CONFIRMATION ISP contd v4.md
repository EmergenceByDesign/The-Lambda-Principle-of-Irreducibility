KERNEL CONFIRMATION

* Bootstrap: ChatGPT Project Instructions DST Bootstrap v1.5  
* Active kernel file consulted: 00\_ACTIVE\_DST\_KERNEL\_APPENDIX\_START\_v1\_8  
* Control ledger consulted: 01\_DST\_CONTROL\_LEDGER\_v1\_8\_UPDATE\_ENTRY, via continuity-state inheritance  
* Continuity state consulted: 02\_TOEPLITZ\_ACTIVE\_CONTINUITY\_STATE\_v1\_8  
* Canon files used for heuristic framing: NONE for proof authority  
* Formal intake status: COMPLETE  
* Domain standards declared by intake: ordinary mathematical standards in topology, real analysis, Euclidean geometry, configuration-space topology, compactness/Hausdorff-limit arguments, source-verification, and externally verified rectangle/square-peg literature  
* Proceeding status: READY

The active kernel requires source-role separation, status-label discipline, frontier fidelity, substantive traversal rather than receipt, and exact scoping of route exhaustion. The intake explicitly sets this as a formal mathematical traversal, Field 13 INACTIVE, with canon only heuristic/framing and not proof authority. The continuity state says the next target is Schwartz proof-structure review for Strong Degeneration Coverage, while preserving that T\_strong, Schwartz Case 3, and Strong Degeneration Coverage remain unproved.

DST TRAVERSAL — TOEPLITZ / SCHWARTZ PROOF-STRUCTURE REVIEW FOR STRONG DEGENERATION COVERAGE

Status:  
JURY-SUBMISSION READY AS SOURCE-PROOF RESIDUE TRAVERSAL.  
NOT PUBLIC-READY.  
NOT A PROOF OF T\_STRONG.  
NOT A NULLIFICATION OF SCHWARTZ CASE 3\.  
NOT A PROOF OR REFUTATION OF STRONG DEGENERATION COVERAGE.  
NOT A JORDAN-LOOP COUNTEREXAMPLE.

OUTCOME CLASSIFICATION

Chosen Task 8 classification:

4. SCHWARTZ PROOF DOES NOT SUPPLY SUBLEVEL COVERAGE — SOURCE RESIDUE CERTIFIED.

Precise scope:  
This traversal inspected the accessible Schwartz source text and found that the Case 3 proof supplies weak all-but-two vertex coverage for the full connected/extensive set A, together with small-diameter existence somewhere in A, but does not supply a mechanism tying small-diameter rectangles to all-but-two vertex coverage at the sublevel sets A\_epsilon or S\_epsilon.

Route status:  
ROUTE EXHAUSTED FOR proving Strong Degeneration Coverage from the inspected Schwartz proof passages as written, namely Theorem 1.1, Lemma 2.3, Lemma 2.6, Lemma 2.7, and the Case 3 paragraph of Section 2.6.

Not exhausted:  
A new theorem using additional geometry of graceful rectangles, a strengthened reading from another version of the source, or an independent sublevel-coverage lemma remains open.

1. SOURCE ACQUISITION AND SCOPE

Source acquired:  
Richard Evan Schwartz, “A Trichotomy for Rectangles Inscribed in Jordan Loops,” PDF hosted on Brown University’s math site, dated February 6, 2020\. The PDF text was accessible and inspected. Schwartz defines I(gamma) as labeled inscribed rectangles, labels rectangle vertices counterclockwise, orients gamma counterclockwise, defines graceful rectangles as those whose cyclic order on gamma coincides with the rectangle ordering, and defines G(gamma) as the space of gracefully inscribed labeled rectangles.

Theorem statement located:  
Theorem 1.1 states that for every Jordan loop gamma, I(gamma) contains a connected set S satisfying one of three alternatives, with Case 3 saying S has members of every sufficiently small diameter and V(gamma,S) contains all but at most two points of gamma; moreover S is contained in G(gamma).

Proof passages located:  
The proof reduces the trichotomy from generic polygonal approximations and global components; Schwartz states that Theorem 1.7 is obtained for generic polygons and that Theorem 1.1 follows by taking a suitable limit. The relevant Case 3 proof passage says the remaining case is that Gamma contains an extensive set A without a positive lower diameter bound; Lemma 2.3 then gives all-but-two vertex coverage, and the absence of the positive lower bound gives members of every sufficiently small diameter.

Source-access status:  
SOURCE ACCESS SUFFICIENT FOR THIS TRAVERSAL’S DECLARED PURPOSE.  
Not public-ready because a full publication-version comparison and page-stable citation verification remain required.

2. DEFINITIONS FIXED

I(gamma):  
Schwartz’s space of all labeled rectangles inscribed in gamma. He labels rectangles so their vertices go counterclockwise around the rectangle.

G(gamma):  
Schwartz’s graceful rectangle space, consisting of labeled inscribed rectangles whose rectangle-vertex cyclic order matches the cyclic order induced by gamma.

V(gamma,S):  
For S subset I(gamma), V(gamma,S) is the subset of gamma consisting of points that occur as vertices of rectangles in S.

Circular quadrilateral space Sigma:  
Schwartz defines Sigma as distinct labeled quadruples on S1 going counterclockwise around S1, with arcs alpha\_k between successive vertices.

Circular invariant Lambda:  
Schwartz defines Lambda(sigma) \= (|alpha\_0| \+ |alpha\_2|) / (|alpha\_1| \+ |alpha\_3|), and says that when sigma is the vertices of a rectangle, Lambda is the rectangle’s aspect ratio.

Extensive set:  
Schwartz defines A subset Sigma as extensive if A is connected and Lambda(A) \= (0,infinity).

S in Case 3:  
In the Case 2/3 proof, Schwartz obtains an extensive set A contained in Gamma, then lets S subset G(gamma) be the rectangle set corresponding to A.

S\_epsilon:  
For this traversal, S\_epsilon \= {R in S : diam(R) \< epsilon}. On the Sigma side, write A\_epsilon for the corresponding cyclic quadrilaterals whose associated rectangles have diameter \< epsilon.

3. THEOREM STATEMENT / PROOF CONSTRUCTION SPLIT

Ledger item: S exists.

Theorem statement:  
There is a connected set S subset G(gamma) satisfying one of the three alternatives. In Case 3, S has members of every sufficiently small diameter and V(gamma,S) contains all but at most two points of gamma.

Proof construction:  
Case 3 starts with Gamma containing an extensive set A without a positive lower diameter bound. S is the subset of G(gamma) corresponding to A. Lemma 2.3 supplies all-but-two coverage from extensiveness plus arbitrarily small diameter; the “small diameter” clause is then transferred from A to S.

Traversal finding:  
INTERNALLY ESTABLISHED: the proof construction gives A extensive and no positive lower diameter bound, but the proof passage does not define or analyze A\_epsilon, S\_epsilon, or vertex coverage restricted to those sublevel sets.

Ledger item: Connectedness.

Theorem statement:  
S is connected.

Proof construction:  
A is built as a nested union of connected Hausdorff limits A(K) in the hyperbolic case; nested union connectedness gives A connected. In the wobbly elliptic case, the same proof works after showing the approximating sets have circular invariants 1/n and n.

Traversal finding:  
INTERNALLY ESTABLISHED: the construction gives connected A. It does not give path-connectedness in the limit. Schwartz’s own preliminary lemma remarks that path-connected approximants can have a connected limit that is not path-connected.

Ledger item: Diameter.

Theorem statement:  
Case 3 says S has members of every sufficiently small diameter.

Proof construction:  
The proof describes Case 3 as the remaining case where A lacks a uniform positive lower diameter bound, then says “Since A contains members of every sufficiently small diameter, the set S does as well.”

Traversal finding:  
SOURCE-PROOF RESIDUE: the inspected passage compresses an implication from “no positive lower diameter bound” to “members of every sufficiently small diameter.” This is plausible if the diameter image of connected A is an interval in (0,infinity) containing arbitrarily small values and some larger value, but the Case 3 paragraph itself does not isolate that argument. The statement is usable as part of Schwartz’s theorem but does not by itself couple diameter to vertex coverage.

Ledger item: Vertex coverage.

Theorem statement:  
V(gamma,S) contains all but at most two points of gamma in Case 3\.

Proof construction:  
Lemma 2.3 proves that if A is extensive, all but at most four points are vertices; if A also contains arbitrarily small diameter elements, then all but at most two points are vertices. In Case 3, Schwartz applies this lemma to A and transfers the result to S.

Traversal finding:  
INTERNALLY ESTABLISHED: coverage is proved for the full set A/S, not for each A\_epsilon/S\_epsilon and not for the limit intersection over epsilon of closures of sublevel vertex sets.

Ledger item: Sweepout or limiting construction.

Theorem statement:  
No sweepout or sublevel sweepout appears in Theorem 1.1.

Proof construction:  
For hyperbolic components, A is built by selecting arcs A\_n(K) with circular invariants between 1/K and K, taking Hausdorff limits A(K), then taking a nested connected union A \= union\_K A(K). For wobbly elliptic components, Schwartz shows the same proof applies because the approximating sets contain members with circular invariant 1/n and n.

Traversal finding:  
The construction is aspect-ratio/circular-invariant organized, not diameter-sublevel organized. That matters: the proof tracks Lambda windows \[1/K,K\], not vertex coverage inside diameter windows (0,epsilon).

4. MEANING OF “EVERY SUFFICIENTLY SMALL DIAMETER”

Task:  
Determine whether Schwartz means exact realization of every small diameter value, existence below every threshold, cofinal small diameters, or another formulation.

Operation attempted:  
Read Theorem 1.1 and the Case 3 proof passage against the construction of A.

Detailed work:  
Theorem 1.1 uses the phrase “members of every sufficiently small diameter.” The proof passage says Case 3 is the case where A has no positive lower diameter bound, then states that A contains members of every sufficiently small diameter.

Assessment:  
The phrase most naturally means exact realization of all diameter values in some interval (0,delta), because “every sufficiently small diameter” is stronger than “arbitrarily small diameter.” However, the proof passage as displayed depends on the no-positive-lower-bound case plus connectedness/continuity reasoning, rather than a separately named diameter sweepout.

Status:  
USED AS PROVISIONAL PREMISE — TIER A for Schwartz’s theorem statement.  
SOURCE-PROOF DETAIL VERIFIED ONLY TO THIS LEVEL: exact realization is stated, but the local proof mechanism is compressed in the inspected passage.

Effect on sublevel target:  
Even if exact realization of every small diameter holds for S, it gives only nonemptiness of S\_epsilon for all small epsilon. It does not imply that V(gamma,S\_epsilon) contains all but at most two points, nor that the closure of V(gamma,S\_epsilon) accumulates on all but at most two points.

5. STRUCTURE OF S

Task:  
Determine whether S is connected, compact, closed, continuum, path-connected, component, image/preimage of sweepout, limiting object, Z/4-related object, or other.

Operation attempted:  
Trace S through A, Gamma, Hausdorff limits, and elliptic/hyperbolic cases.

Detailed work:  
Schwartz’s Lemma 2.1 says Hausdorff limits of nonempty closed connected subsets of a compact metric space are connected, but explicitly warns that path-connected approximants need not have path-connected limits. In Lemma 2.6, A is built as a nested union of connected sets A(K), and the nested union is connected. In Lemma 2.9, the steady elliptic case produces a compact connected subset S by Hausdorff limit, but that is Case 1, not Case 3\.

Structure findings:

* Connected: INTERNALLY ESTABLISHED for A and corresponding S in Case 3\.  
* Path-connected: NOT ESTABLISHED; Schwartz flags that Hausdorff limits of path-connected sets need not be path-connected.  
* Compact: NOT ESTABLISHED for Case 3 A as a whole; A is a nested union of compact-limit pieces A(K), but the union need not be compact.  
* Closed: NOT ESTABLISHED for Case 3 A as a whole.  
* Continuum: NOT ESTABLISHED unless “continuum” is used only for compact connected sets; compactness not supplied for the full Case 3 A.  
* Component of larger space: NOT ESTABLISHED as an actual component in the limiting gamma; A is a constructed extensive subset of Gamma.  
* Image/preimage of sweepout: NOT ESTABLISHED for diameter; A is produced by Hausdorff limits of arc pieces controlled by circular invariant windows.  
* Z/4-related: The paper uses cyclic relabeling in the polygonal component theory, and wobbly elliptic components use cyclic relabeling to get both n and 1/n circular invariants. Case 3 S itself is not shown to be Z/4-invariant or sigma-closed in the inspected proof passage.

Sublevel implication:  
Connectedness of A/S supports interval-valued images under continuous functions, but it does not support vertex coverage on diameter sublevels. Compactness, path-connectedness, and sigma-closure would be useful, but they are not supplied for the Case 3 target.

6. VERTEX COVERAGE MECHANISM

Task:  
Inspect how V(gamma,S) containing all but at most two points is proved.

Operation attempted:  
Analyze Lemma 2.3 and its use in Case 3\.

Detailed work:  
Lemma 2.3 first proves all-but-four coverage for extensive A by considering vertex projections pi\_k and connected images J\_k. If the complement has too many points, an interval B\_0 lies in an arc alpha\_k(sigma) for all sigma in A, which bounds Lambda(A) away from 0 or infinity, contradicting extensiveness. The all-but-two strengthening then says that if the complement has at least three points, each member of A is a cyclic quadrilateral intersecting three disjoint circular arcs, giving a uniform positive lower bound to diameter, contradicting arbitrarily small diameter. Case 3 applies this lemma to the full A and concludes all-but-two coverage for full S.

Question-by-question findings:

Is coverage proved using the same rectangles that become small?  
No proof of that appears. Lemma 2.3 uses the existence of arbitrarily small members of A to contradict a large global nonvertex set for all of A. It does not show that each covered point is covered by arbitrarily small rectangles.

Is coverage proved by all of S without diameter control?  
Yes. The vertex set V(gamma,S) is the union over all rectangles in S/A. The proof works at the full-A level.

Are exceptional points tied to degeneration endpoints?  
Not in the inspected Case 3 proof passage. The exceptional-point bound comes from the combinatorics of vertex-projection images and diameter lower-bound contradiction, not from a named endpoint/degeneration correspondence.

Does the proof show V(gamma,S\_epsilon) large for small epsilon?  
No. S\_epsilon is not defined or analyzed in the inspected source.

Does the proof show density or closure of small-rectangle vertices?  
No. The proof does not show that if p is in V(gamma,S), then p lies in closure(V(gamma,S\_epsilon)) for every epsilon.

Status:  
SOURCE RESIDUE CERTIFIED for sublevel vertex coverage.

7. SUBLEVEL COVERAGE EXTRACTION ATTEMPT

Target:  
Extract one of:  
A. strong sublevel coverage;  
B. limit sublevel coverage;  
C. weak continuum coverage;  
D. no extraction possible.

Operation attempted:  
Try to transform Lemma 2.3 into a statement about A\_epsilon.

Definitions:  
A\_epsilon \= {sigma in A : diam(phi(sigma)) \< epsilon}.  
V\_epsilon \= union of vertices of members of A\_epsilon.

Desired limit conclusion:  
For all but at most two p in S1, p belongs to intersection\_epsilon\>0 closure(V\_epsilon).

Attempt 1: Direct localization of Lemma 2.3.  
Could Lemma 2.3 apply to A\_epsilon? No. A\_epsilon need not be connected and need not satisfy Lambda(A\_epsilon) \= (0,infinity). The proof of all-but-four coverage requires connected vertex-projection images J\_k and extensiveness. Those hypotheses are not inherited by sublevel sets.

Failure mode:  
Sublevel Coverage Non-Inheritance. A has extensiveness and connectedness; A\_epsilon does not inherit either property from A.

Attempt 2: Use the all-but-two contradiction with small diameter.  
Suppose p,q,r are not in V\_epsilon. Does the Lemma 2.3 lower-bound argument force contradiction? No. In Lemma 2.3, the three excluded points are absent from V(A), so every member of A avoids them as vertices and the global vertex-projection structure constrains every member of A. If p,q,r are only absent from V(A\_epsilon), they may still be vertices of larger rectangles in A. The global connected/extensive vertex-projection argument no longer applies to A\_epsilon.

Failure mode:  
Role-union / sublevel separation. Full-set nonvertex data and sublevel nonvertex data have different logical strength.

Attempt 3: Use connectedness of A plus diameter continuity.  
Let p in V(A), so p is a vertex of some rectangle R in A. Since A has arbitrarily small rectangles, connectedness of A and continuity of diameter imply rectangles of intermediate diameters somewhere in A. But this does not control vertex location. A connected set may connect R to a small rectangle through a continuum whose vertices drift away from p; the diameter map gives scalar values, not vertex recurrence near p.

Failure mode:  
Diameter-map IVT is scalar; vertex coverage is set-valued. The continuity of diameter does not imply upper/lower semicontinuity of vertex fibers sufficient for p in closure(V\_epsilon).

Attempt 4: Use construction of A as union of A(K).  
The A(K) are organized by circular invariant, not by diameter or vertex target. They contain elements of invariant K and 1/K, and their nested union is extensive. This can recover full extensiveness, but it does not give a cofinal sequence of small rectangles passing near each covered point.

Failure mode:  
Aspect-ratio sweepout is not a diameter-sublevel vertex sweepout.

Conclusion:  
No extraction of strong sublevel coverage or limit sublevel coverage is possible from the inspected proof. Weak construction-level coverage is already exactly Theorem 1.1 Case 3: full-S all-but-two coverage plus small-diameter existence somewhere. That does not meet the traversal’s sublevel target.

Status:  
SCHWARTZ PROOF DOES NOT SUPPLY SUBLEVEL COVERAGE — SOURCE RESIDUE CERTIFIED.

8. ACTIVE ATTACK CATALOGUE

Attack 1 — Direct proof extraction attack.  
Target:  
Find an explicit sentence or lemma in Schwartz proving V(gamma,S\_epsilon) large for small epsilon.

Result:  
FAILED. No such sentence or lemma appears in the inspected passages. The Case 3 paragraph proves full-S coverage and small-diameter existence separately.

Rank:  
1, because direct extraction would close the traversal with highest fidelity.

Attack 2 — Component/continuum structure attack.  
Target:  
Use connectedness, compactness, or path-connectedness of A/S to force sublevel vertex recurrence.

Result:  
FAILED under current data. Connectedness is present, but path-connectedness and compactness of full Case 3 A are not established. Schwartz warns that path-connected approximants can limit to non-path-connected sets.

Rank:  
2\.

Attack 3 — Sweepout parameter attack.  
Target:  
Use construction of A(K) as a sweepout giving uniform control of vertices as K grows and diameter shrinks.

Result:  
FAILED. A(K) controls circular invariant windows \[1/K,K\], not diameter sublevels or vertex-target recurrence.

Rank:  
3\.

Attack 4 — Exceptional-point mechanism attack.  
Target:  
Show the two exceptional points in Lemma 2.3 coincide with the only possible failures of sublevel blow-up coverage.

Result:  
FAILED. Lemma 2.3 bounds the complement of V(A), not the complement of intersection\_epsilon closure(V(A\_epsilon)). It does not identify exceptional points as degeneration endpoints.

Rank:  
4\.

Attack 5 — Abstract incidence nonrealizability attack.  
Target:  
Use an abstract incidence model to show weak coverage plus small-diameter existence does not imply sublevel coverage.

Result:  
DIAGNOSTIC ONLY. Such a model can illustrate the logical gap, but the intake forbids treating abstract incidence models as geometric counterexamples. It does not prove failure for Schwartz S.

Rank:  
5\.

Attack 6 — Proof-gap/residue certification attack.  
Target:  
Certify the exact missing hypothesis.

Result:  
SUCCESS.

Pursued selected attack:  
Attack 6\.

Detailed work:  
The missing hypothesis is one of the following, any one of which would be sufficient to reopen extraction:

Sublevel Coverage Lemma:  
For Case 3 A, for every sufficiently small epsilon, V(A\_epsilon) contains all but at most two points.

Limit Sublevel Coverage Lemma:  
For Case 3 A, intersection\_epsilon\>0 closure(V(A\_epsilon)) contains all but at most two points.

Cofinal Vertex Recurrence Lemma:  
For all but at most two p in S1, there exists a sequence sigma\_n in A with diam(phi(sigma\_n)) \-\> 0 and p in closure of the vertex set of sigma\_n, or with a fixed vertex role converging to p after finite-role subsequence extraction.

Diameter-Vertex Coupling Lemma:  
The construction of A can be refined so that for almost every p, the rectangles covering p occur in the same connected/limiting subsystem that contains arbitrarily small rectangles near p.

Current status of these theorem objects:  
OPEN RESEARCH RESIDUE. None is supplied by the inspected Schwartz proof.

9. MISSING THEOREM OBJECT

Name:  
Case-3 Sublevel Vertex Coverage Lemma.

Formal hypotheses:

1. gamma is a continuous Jordan loop.  
2. A subset Gamma is the extensive set obtained in Schwartz Case 3\.  
3. A is connected and Lambda(A) \= (0,infinity).  
4. The associated rectangle set S subset G(gamma) has no positive lower diameter bound / contains members of every sufficiently small diameter.  
5. V(gamma,S) contains all but at most two points of gamma by Lemma 2.3.

Formal conclusion, limit form:  
intersection over epsilon \> 0 of closure(V(gamma,S\_epsilon)) contains all but at most two points of gamma.

Stronger conclusion:  
For every sufficiently small epsilon \> 0, V(gamma,S\_epsilon) contains all but at most two points of gamma.

Equivalent formulations:

1. For all but at most two p in gamma, p is the limit of vertices of rectangles R\_n in S with diam(R\_n) \-\> 0\.  
2. Role-union blow-up nonemptiness: for all but at most two p, at least one role-labeled blow-up field Blow\_S^j(p) is nonempty after finite role extraction.  
3. The set-valued map epsilon \-\> closure(V(gamma,S\_epsilon)) has all-but-two persistent intersection.

Why it would close the active residue:  
It would tie Schwartz’s small-diameter clause to the same all-but-two vertex coverage clause. This would advance Strong Degeneration Coverage and potentially reopen a degenerate-square-lift or parabolic-nullification route.

Available proof strategies:

1. Source-proof strengthening: find an overlooked lemma in Schwartz that controls vertices in A(K) while diameter decreases.  
2. Compactness/USC strategy: use closed graph of role-labeled blow-up fields plus finite-role extraction.  
3. Graceful-geometry strategy: exploit cyclic order and rectangle geometry to prevent small rectangles from concentrating away from covered vertices.  
4. Sigma-closure strategy: prove a symmetry-compatible continuum through small rectangles and covered vertices.  
5. Measure/arc strategy: use non-atomic measure Corollary 1.4 style “nice rectangle” arguments to localize small rectangles near prescribed arcs.

Known obstructions:

1. A\_epsilon need not be connected.  
2. A\_epsilon need not be extensive.  
3. A is built through circular-invariant windows, not diameter windows.  
4. Full-set vertex coverage does not localize to sublevel vertex coverage.  
5. Connectedness of A controls scalar images but not vertex recurrence.  
6. Path-connectedness is not inherited by Hausdorff limits.

Falsification conditions:  
A genuine Jordan-loop Case 3 realization, if it exists, where small rectangles concentrate near a proper subset of gamma while larger rectangles provide full all-but-two coverage, would falsify the lemma. No such geometric realization is established here.

Current status:  
OPEN RESEARCH RESIDUE.  
CANDIDATE FRONTIER BRIDGE.  
EXTERNAL VERIFICATION REQUIRED.

10. FRONTIER FIDELITY AUDIT

Sources used:

1. Active intake.  
2. Active kernel v1.8.  
3. Active continuity state v1.8.  
4. Schwartz PDF source text.  
5. Search result confirming arXiv listing and abstract-level theorem statement for the same paper. ([arXiv](https://arxiv.org/abs/1804.00740?utm_source=chatgpt.com))

What could not be verified:

1. Publication-final page-stable text against Geometriae Dedicata 208, 177–196.  
2. Whether later versions or errata contain stronger sublevel language.  
3. Whether another paper proves the Case-3 Sublevel Vertex Coverage Lemma.  
4. Whether actual Schwartz Case 3 can occur.

Live gaps identified:

1. Sublevel vertex coverage remains open.  
2. Limit sublevel coverage remains open.  
3. Fixed-role blow-up coverage remains open.  
4. Sigma/monodromy routes remain blocked pending same-continuum and transport data.  
5. The parabolic case remains open.

Known routes exhausted:

1. Schwartz theorem statement \+ connectedness \+ diameter-map IVT for Strong Degeneration Coverage.  
2. Schwartz inspected proof passages as written for extracting sublevel coverage.

Did this traversal merely summarize frontier?  
No. This traversal performed source-proof extraction, isolated the exact proof-level uncoupling between full-set coverage and sublevel coverage, and formalized a missing theorem object.

Emergent frontier structure:  
CANDIDATE FRONTIER BRIDGE — Case-3 Sublevel Vertex Coverage Lemma.  
CANDIDATE FRONTIER BRIDGE — Cofinal Vertex Recurrence Lemma.  
OPEN RESEARCH RESIDUE — proof-level uncoupling of A-level coverage from A\_epsilon-level coverage.

Public frontier claim gate:  
No public claim should be made until publication-version text and adjacent literature are checked.

11. FINAL AUDIT

Task-execution audit:  
PASS.  
All required tasks were executed. Source acquisition was performed; theorem/proof split was made; “every sufficiently small diameter” was assessed; structure of S/A was analyzed; vertex coverage mechanism was inspected; sublevel extraction was attempted; active attacks were generated and one was pursued; outcome classification was chosen; final audit supplied.

Source-proof fidelity audit:  
PASS WITH PUBLIC-RELEASE RESIDUE.  
The proof passages cited support the central finding: Schwartz proves full-S all-but-two coverage from Lemma 2.3 and small-diameter existence from absence of lower diameter bound, but does not inspect S\_epsilon or A\_epsilon. Public release requires stable publication-page verification.

Active-attack audit:  
PASS.  
The traversal did not halt at “open residue.” It attempted direct extraction, localization of Lemma 2.3, connectedness/diameter IVT, A(K) sweepout extraction, and proof-gap certification. Attack 6 was pursued to a theorem object.

Status-label audit:  
PASS.  
No proof of T\_strong claimed.  
No nullification of Schwartz Case 3 claimed.  
No counterexample claimed.  
No public-ready status claimed.  
No canon treated as proof authority.

Claims requiring verification:

1. Publication-final version of Schwartz’s proof matches inspected PDF passages.  
2. No later erratum or strengthening supplies sublevel coverage.  
3. No later literature proves the Case-3 Sublevel Vertex Coverage Lemma.  
4. Translation G(gamma) \= DST graceful/cyclic G\_rect(gamma) intersect C4+(gamma) remains public-verification required.  
5. Exact diameter convention in Schwartz should be page-stably cited before public release.

Continuity-state update recommendation:  
Add:

“Schwartz proof-structure review inspected the accessible Schwartz PDF. The Case 3 proof supplies full-set all-but-two vertex coverage for the extensive set A/S and small-diameter existence in A/S, but does not supply strong or limit sublevel vertex coverage for S\_epsilon. The route ‘Schwartz proof as inspected \-\> Strong Degeneration Coverage’ is exhausted for the declared purpose unless a stronger passage, erratum, or independent theorem is found. New open theorem object: Case-3 Sublevel Vertex Coverage Lemma.”

Exact next prompt target:  
TOEPLITZ CASE-3 SUBLEVEL VERTEX COVERAGE LEMMA — attempt an independent proof or disproof of:

Given Schwartz Case-3 A subset Gamma extensive with associated S subset G(gamma), and given that S contains rectangles of every sufficiently small diameter and V(gamma,S) contains all but at most two points of gamma, prove or refute that intersection over epsilon\>0 of closure(V(gamma,S\_epsilon)) contains all but at most two points of gamma.

Use only ordinary mathematical standards; do not treat abstract incidence models as geometric counterexamples unless realizability by Jordan-loop graceful rectangles is proved.

