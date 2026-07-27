---
silo: lambda
subcat: registry
exposure: internal
tier:
status: draft
words: 4264
sha: cd027c7cc722
source-folder: "The-Lambda-Principle-of-Irreducibility/WIP_docs"
tags:
  - lambda/registry
  - x/internal
  - src/extracted
  - tier/unassigned
  - src/The-Lambda-Principle-of-Irreducibi/WIP-docs
source-repos:
  - The-Lambda-Principle-of-Irreducibility
source-paths:
  - "The-Lambda-Principle-of-Irreducibility/WIP_docs/Structural_Registry_of_Nested_Geometries_V2.pdf"
links-latent: []
---

# Structural Registry of Nested Geometries V2

> **Source** `The-Lambda-Principle-of-Irreducibility/WIP_docs/Structural_Registry_of_Nested_Geometries_V2.pdf`
> 4,264 words · sha `cd027c7cc722` · status **draft**
> Text recovered from PDF/DOCX by extraction — layout artifacts expected, equations may need repair. No markdown original existed.

**Detected references:** [[Structural Registry of Nested Geometries]]

---

Structural Registry of Nested Geometries

Polygonal, Polyhedral, and Harmonic Registries as Scale-Invariant Incidence
                               Structures

      with Lie-Algebraic Directions Preserved as a Structured Research Extension




                                      Lu Semita

                       Working Draft – Theorem-Level Version 2




 Prepared as a publication master for later expansion into a broader Structural Registry
                                         Theory.

                                       June 2026
Structural Registry of Nested Geometries       Lu Semita


Contents




                                           1
Structural Registry of Nested Geometries                                                    Lu Semita


Abstract

This manuscript develops a structural framework in which harmonic intervals arise as measurable
consequences of nested geometric incidence rather than as primitive mathematical objects. The
construction begins with a common origin and a shared registry surface. Within that registry, regular
polygons and regular polyhedra generate incidence structures whose edge lengths, chord lengths,
angular separations, diagonals, face relations, vertex relations, and higher-order adjacencies determine
families of scale-invariant ratios. These ratios may subsequently admit harmonic interpretation
through normalization procedures, but the underlying ratios originate in the geometry of the registry
itself.
The central claim does not assert that geometry and harmony are identical. Rather, it establishes
a rigorous chain: common registry surface, incidence structure, homogeneous metric quantities,
scale-invariant ratios, normalized interval classes, and harmonic interpretation. This order preserves
mathematical discipline: construction precedes measurement, measurement precedes ratio, and
ratio precedes interpretation. The manuscript also records a disciplined route toward Lie-algebraic
structures: incidence-preserving transport maps admit commutators, and commutator algebras may
be studied as registry-generated algebraic objects. Stronger claims about faithful embedding of all
finite-dimensional Lie algebras are retained as research-direction conjectures rather than asserted as
established theorems.
Keywords: structural registry, incidence complex, nested polygons, nested polyhedra, chord ratios,
scale invariance, harmonic intervals, ratio registry, constructive geometry, incidence algebra, Lie
bracket.




                                                   2
Structural Registry of Nested Geometries                                                    Lu Semita


Notation

   Symbol                    Meaning
   O                         distinguished common origin of a registry
   S 1 (R)                   circle of radius R centered at O
   S 2 (R)                   sphere of radius R centered at O
   Pn                        regular n-gon embedded in a common circumcircle
   Vn                        angular vertex set of Pn
   θn                        central angle of a regular n-gon, 2π/n
   en                        edge length of regular n-gon
   cn,k                      k-step chord of regular n-gon
   ρ(x, y)                   ratio x/y
   R                         incidence complex or registry
   V, E, F, C                vertices, edges, faces, and higher-dimensional cells
   ι                         incidence relation
   M(R)                      metric registry, the set of homogeneous geometric measurements
                             associated with R
   Mk (R)                    measurements of homogeneous dimensional degree k
   I(R)                      ratio registry, the set of dimensionally consistent ratios derived from
                             M(R)
   Φ                         registry morphism preserving incidence
   TP →Q                     registry transport from one embedded registry to another
   BV E , BEF                vertex-edge and edge-face incidence matrices
   ∆                         angular deficit at a vertex of a polyhedron
   χ                         Euler characteristic, V − E + F for convex polyhedra
   [X, Y ]                   commutator XY − Y X of registry transport operators


1 Motivation and Governing Thesis

Mathematical treatments of harmonic intervals often begin with frequency ratios. Constructive
geometry often begins elsewhere: with points, circles, lines, angles, and incidence. This manuscript
treats the constructive order as primary and asks how far ratio and harmonic structure can be
derived from it.
The governing thesis can be stated as follows:

     A harmonic interval need not begin as a frequency. It can arise as a scale-invariant ratio
     generated by incidence relations among nested geometric objects.

The explanatory sequence therefore reverses the usual order. Instead of
                                frequency −→ interval −→ geometry,
this framework begins with
O −→ S 1 /S 2 −→ incidence −→ measurement −→ ratio −→ interval −→ harmonic interpretation.
The interval becomes an observable projection of prior geometric structure.

                                                   3
Structural Registry of Nested Geometries                                                   Lu Semita


Theorem 1.1 (Registry Primacy, Restricted Form). For every registry satisfying the foundational
axioms below, every interval constructed exclusively from normalized ratios of homogeneous reg-
istry measurements is determined by the registry surface, the incidence complex, and the selected
normalization convention. It is not determined by absolute size.

Proof. The registry surface and incidence complex determine the admissible geometric measurements
up to common scale. The ratio registry compares only quantities of identical dimension. By the
scale-invariance theorem proved below, common scale cancels from every such ratio. Normalization
changes the observational window of the ratio but not the geometric source of the ratio. Hence the
interval depends upon incidence and normalization, not upon absolute size.


2 Foundational Axioms

Axiom 1 (Common Registry Origin). Every registry possesses a distinguished common origin O
serving as the reference from which all registry relations are defined.
Axiom 2 (Common Registry Surface). Every object belonging to the same registry shares a common
embedding manifold. In two dimensions this manifold is a common circumcircle S 1 (R). In three
dimensions it is a common circumsphere S 2 (R).
Axiom 3 (Incidence Precedes Measurement). Adjacency, containment, intersection, and ordering
exist before lengths, areas, volumes, or angles receive numerical values. Incidence is therefore
primitive; measurement is derived.
Axiom 4 (Homogeneous Ratio Invariance). Whenever two geometric measurements possess the
same physical dimension, their ratio remains invariant under uniform scaling.
Axiom 5 (Interpretive Independence). Registry invariants remain independent of any particular ob-
servational interpretation. Musical intervals, frequency ratios, graph spectra, and physical resonances
may interpret registry ratios, but they do not create them.


3 Incidence Complexes and Registry Objects

Definition 3.1 (Incidence Complex). A registry is represented by an incidence complex

                                         R = (V, E, F, C, ι),                                      (1)

where V is the vertex set, E the edge set, F the face set, C the set of higher-dimensional cells, and
ι the incidence relation.

The planar polygonal registry appears as the special case C = ∅. The polyhedral registry extends
the same incidence structure into three dimensions by allowing C to record enclosed cells. This
removes the appearance that polygonal and polyhedral registries belong to unrelated subjects; both
become instances of one formal object.
Definition 3.2 (Metric Registry). The metric registry associated with R is

                                           M(R) = {mi },                                           (2)

                                                  4
Structural Registry of Nested Geometries                                                    Lu Semita


where each mi is a homogeneous geometric measurement associated with the registry. Examples
include chord lengths, edge lengths, face diagonals, body diagonals, face areas, surface areas, volumes,
dihedral angles, and angular deficits.
Definition 3.3 (Graded Metric Registry). The metric registry may be decomposed by homogeneous
dimensional degree:                          G
                                    M(R) =      Mk (R),                                    (3)
                                                        k≥0

where m ∈ Mk (R) means that m scales as λk m under uniform scaling x 7→ λx. Lengths have degree
1, areas degree 2, volumes degree 3, and pure angles degree 0.
Definition 3.4 (Ratio Registry). The ratio registry associated with R is
                                                                          
                         mi
                I(R) =       : mi , mj ∈ M(R), dim(mi ) = dim(mj ), mj ̸= 0 .                       (4)
                         mj

Equivalently,
                                       [ x                               
                              I(R) =               : x, y ∈ Mk (R), y ̸= 0 .                        (5)
                                              y
                                       k≥0

Only quantities of identical physical dimension are compared. This condition preserves dimensional
consistency.


4 Polygonal Registry

Let Pn denote a regular n-gon inscribed in a common circumcircle S 1 (R) centered at O. Its central
angle is
                                                  2π
                                             θn =    .                                          (6)
                                                   n
The angular vertex set is                               
                                            2πj
                                    Vn =        :0≤j<n .                                        (7)
                                             n
Every vertex, edge, diagonal, and higher-order chord of Pn is determined by this angular registry.
Definition 4.1 (Edge Length of a Regular Polygon). The edge length en of Pn is the chord between
adjacent vertices.
Proposition 4.1 (Polygon Edge Formula). For a regular n-gon inscribed in S 1 (R),
                                               π 
                                   en = 2R sin      .                                               (8)
                                                 n

Proof. Adjacent vertices subtend the central angle 2π/n. The two radii to the endpoints of the
edge form an isosceles triangle. Bisecting this triangle produces a right triangle with hypotenuse R,
angle π/n, and opposite side en /2. Therefore
                                                   π        en /2
                                             sin          =         ,
                                                    n          R
which gives the stated formula.

                                                        5
Structural Registry of Nested Geometries                                                   Lu Semita


5 Chord Families

Definition 5.1 (Chord Family). For 1 ≤ k ≤ ⌊n/2⌋, the k-step chord cn,k of Pn is the segment
joining vertices separated by exactly k registry positions.
Proposition 5.1 (General Chord Formula). Every k-step chord length satisfies
                                                 
                                                 kπ
                                  cn,k = 2R sin       .                                            (9)
                                                  n

Proof. The two radii joining the center to the chord endpoints form an isosceles triangle with included
angle 2kπ/n. Bisecting that triangle produces two congruent right triangles with hypotenuse R,
angle kπ/n, and opposite side cn,k /2. Hence
                                              
                                               kπ      cn,k /2
                                         sin        =          ,
                                                n        R
and the formula follows.

Corollary 5.1 (Angular Determination). Every chord family depends exclusively upon registry
radius and registry angle. No additional geometric quantity enters.


6 Ratio Families and Scale Cancellation

Metric quantities become structurally meaningful through comparison. Define
                                                           x
                                               ρ(x, y) =     .                                    (10)
                                                           y
Applying this to two chord families in a common registry gives
                                                     2R sin(kπ/n)
                                     ρ(cn,k , cm,ℓ ) =                                            (11)
                                                     2R sin(ℓπ/m)
                                                     sin(kπ/n)
                                                   =           .                                  (12)
                                                     sin(ℓπ/m)
The registry radius cancels identically.
Theorem 6.1 (Chord Ratio Invariance). Every ratio formed from chord lengths belonging to a
common registry remains invariant under uniform scaling.

Proof. Under uniform scaling R 7→ λR,

                                        cn,k 7→ 2λR sin(kπ/n),

and similarly for cm,ℓ . Therefore

                                     2λR sin(kπ/n)   sin(kπ/n)
                                                   =           .
                                     2λR sin(ℓπ/m)   sin(ℓπ/m)
The scale parameter cancels identically.

                                                     6
Structural Registry of Nested Geometries                                                  Lu Semita


7 Nested Angular Registries

Let                                                                     
                               2πj                               2πq
                    Vn =           :0≤j<n ,           Vm =           :0≤q<m .                    (13)
                                n                                 m
The relationship between Vn and Vm is determined by angular coincidence and angular refinement.

Proposition 7.1 (Coincidence Registry). The shared angular coincidence of Vn and Vm is governed
by gcd(n, m).

Proof. A vertex belongs simultaneously to both registries precisely when
                                      2πj   2πq
                                          =           (mod 2π).
                                       n     m
Equivalently, jm = qn modulo the full rotation. The common periodicity is therefore determined
by the greatest common divisor of n and m.

Proposition 7.2 (Refinement Registry). The smallest angular registry containing both Vn and Vm
possesses lcm(n, m) positions.

Proof. Every angular subdivision belonging to either polygon appears among the subdivisions of
Vlcm(n,m) . No smaller regular angular registry contains both sets of subdivisions simultaneously, by
the defining minimality of the least common multiple.

Corollary 7.1 (Polygon Registry Lattice). The operations gcd and lcm induce coincidence and
refinement relations among polygon registries. Nested polygons therefore organize into a refinement
hierarchy rather than an unordered collection.


8 Polygonal Incidence Graphs

Each polygon determines an incidence graph

                                          G(Pn ) = (V, E).                                       (14)

Vertices correspond to registry positions. Edges correspond to adjacent incidences. Higher-order
diagonals define additional edge classes. Consequently, each regular polygon determines not merely
one graph but an entire family
                                        {G1 , G2 , . . . , G⌊n/2⌋ },                          (15)
where Gk joins vertices separated by k registry steps. The complete polygonal registry therefore
consists of all admissible incidence graphs generated upon the same angular registry.


9 Polyhedral Registries

The transition from polygonal registries to polyhedral registries extends the common registry from
a circumcircle to a circumsphere while preserving the incidence foundation.

                                                  7
Structural Registry of Nested Geometries                                                   Lu Semita


Definition 9.1 (Polyhedral Registry). Let P = (V, E, F ) denote a regular convex polyhedron
embedded in S 2 (R). The associated registry is
                                         R = (V, E, F, C, ι),                                     (16)
where C records three-dimensional cells. The polygonal registry is recovered when C = ∅.
Proposition 9.1 (Polyhedral Metric Determination). Every regular polyhedron embedded in a
common circumsphere determines a family of edge, face, diagonal, angular, and incidence ratios.

Proof. The common circumsphere fixes the radial distance of every vertex. Once the incidence
structure of a regular polyhedron is fixed, all edge lengths, face diagonals, body diagonals, vertex
separations, face angles, dihedral angles, and angular deficits are determined up to the common
scale R. Ratios of homogeneous quantities therefore depend only on the registry and not on absolute
scale.


9.1 Deriving Edge Relations from a Common Circumsphere

The listed Platonic formulas follow from the same principle: place all vertices on S 2 (R) and compute
edge length as a vertex separation. The scale R enters linearly and therefore cancels from all edge
ratios.
Proposition 9.2 (Cube Edge from Circumsphere). For a cube inscribed in S 2 (R),
                                            2R
                                      aC = √ .                                                    (17)
                                              3
                                                                          √
Proof. Let the cube have side length aC . Its body diagonal has length aC 3.√ Since opposite
vertices lie√ on the circumsphere, the body diagonal equals 2R. Therefore aC 3 = 2R, giving
aC = 2R/ 3.
Proposition 9.3 (Octahedron Edge from Circumsphere). For an octahedron inscribed in S 2 (R),
                                           √
                                      aO = 2R.                                           (18)

Proof. Take adjacent octahedron vertices at coordinate positions (R, 0, 0) and (0, R, 0). Their
distance is                    p                       √
                                 (R − 0)2 + (0 − R)2 = 2R.


Proposition 9.4 (Tetrahedron Edge from Circumsphere). For a regular tetrahedron inscribed in
S 2 (R),
                                            4R
                                       aT = √ .                                         (19)
                                              6

Proof. Use the standard centered tetrahedron with vertices proportional
                                                                    √       to (1, 1, 1), (1, −1, −1),
(−1, 1, −1), and (−1,√−1, 1). The radius of each unscaled vertex is 3, while √the distance between
any two vertices is 2 2. Scaling the radius to R multiplies all lengths by R/ 3. Thus
                                                    √
                                         √ R       2 6       4R
                                  aT = 2 2 √ =          R= √ .
                                               3     3         6



                                                  8
Structural Registry of Nested Geometries                                                 Lu Semita


10 Platonic Edge Relations

For a shared circumsphere of radius R, the edge lengths of the Platonic solids are:
                                                4R
                                          aT = √ ,                                             (20)
                                                  6
                                                2R
                                          aC = √ ,                                             (21)
                                                  3
                                                √
                                          aO = 2R,                                             (22)
                                                    4R
                                          aD = √       √ ,                                     (23)
                                                  3(1 + 5)
                                                    4R
                                           aI = p       √ .                                    (24)
                                                  10 + 2 5
Here T, C, O, D, I denote tetrahedron, cube, octahedron, dodecahedron, and icosahedron respectively.
Thus cross-registry edge ratios include
                                               aT  √
                                                  = 2,                                         (25)
                                               aC
and                                                       r
                                               aO             3
                                                  =             .                              (26)
                                               aC             2
These ratios arise entirely from shared-sphere geometry.
                                                                                                √
Remark 10.1 (Golden Ratio Family). The dodecahedron and icosahedron formulas contain 5
because their face and vertex structure carries pentagonal incidence. Hence the golden-ratio family
enters the registry through geometry rather than through a separately imposed harmonic convention.


11 Edge-Face-Vertex Relations

For the Platonic solids the triples (V, E, F ) are:


                               Solid            Vertices            Edges   Faces
                               Tetrahedron             4              6       4
                               Cube                    8             12       6
                               Octahedron              6             12       8
                               Dodecahedron           20             30      12
                               Icosahedron            12             30      20

Each satisfies Euler closure
                                            V − E + F = 2.                                     (27)
This invariant belongs to the topological registry, not merely the metric registry.




                                                      9
Structural Registry of Nested Geometries                                                             Lu Semita


12 Angular Deficit and Vertex Curvature

For a regular n-gon face, the interior angle is

                                                      (n − 2)π
                                               ϕn =            .                                           (28)
                                                         n
If q such faces meet at a vertex of a Platonic solid, the angular deficit is

                                               ∆ = 2π − qϕn .                                              (29)

For the tetrahedron, n = 3, q = 3, so
                                                           π 
                                           ∆T = 2π − 3            = π.                                     (30)
                                                            3
For the cube, n = 4, q = 3, so                             π        π
                                           ∆C = 2π − 3            =     .                                  (31)
                                                            2         2
For the octahedron, n = 3, q = 4, so
                                                         π          2π
                                           ∆O = 2π − 4            =      .                                 (32)
                                                            3          3
For the icosahedron, n = 3, q = 5, so
                                                           π        π
                                           ∆I = 2π − 5            =     .                                  (33)
                                                            3         3
Curvature itself therefore forms a registry of scale-invariant angular relations.


13 Dual Registries

Duality exchanges vertices and faces while preserving edges:

                      V (P ∗ ) = F (P ),      F (P ∗ ) = V (P ),             E(P ∗ ) = E(P ).              (34)

Accordingly,

 Cube∗ = Octahedron,          Dodecahedron∗ = Icosahedron,                     Tetrahedron∗ = Tetrahedron. (35)

Duality preserves incidence while exchanging complementary registry roles. This demonstrates that
registry equivalence need not require metric identity.


14 Incidence Matrices

Metric geometry records lengths. Registry geometry records relationships. Define the vertex-edge
incidence matrix                                 (
                                                  1, v ∈ e,
                                   BV E (v, e) =                                             (36)
                                                  0, v ∈
                                                       / e.

                                                      10
Structural Registry of Nested Geometries                                                              Lu Semita


Similarly define the edge-face incidence matrix
                                                      (
                                                       1, e ⊂ f,
                                        BEF (e, f ) =                                                      (37)
                                                       0, e ̸⊂ f.
The combinatorial skeleton is therefore encoded by
                                              B              B
                                          V ←−V−→
                                                E
                                                  E ←−EF
                                                      −→ F.                                                (38)
The matrices determine incidence independently of a particular metric realization.


15 Registry Algebra, Morphisms, and Transport

Definition 15.1 (Registry Morphism). Let
                     G1 = (O1 , S1 , R1 , M1 , I1 ),          G2 = (O2 , S2 , R2 , M2 , I2 )               (39)
be two registries. A registry morphism
                                               Φ : G1 → G2                                                 (40)
is a map preserving incidence relations.

A registry morphism may alter size, orientation, or embedding. Its defining requirement is not
metric preservation but incidence preservation.
Definition 15.2 (Registry Transport). A transport map from registry P to registry Q is a comparison
map
                                     TP →Q : R(P ) → R(Q)                                      (41)
that associates corresponding structural features and compares their homogeneous measurements.

Examples include
                              a(P )                         |V (P )|                     |F (P )|
               TP →Q (e) =          ,    TP →Q (v) =                 ,    TP →Q (f ) =            .        (42)
                              a(Q)                          |V (Q)|                      |F (Q)|
The registry records transformations among shapes rather than only measurements within a single
shape.
Definition 15.3 (Registry Operations). Given registries R1 and R2 sharing a compatible surface,
define:
                   R1 ∩ R2     as their shared incidence subregistry,                                      (43)
                   R1 ∨ R2     as their least common refinement,                                           (44)
                          ∗
                        R      as the dual registry when vertex-face duality exists.                       (45)
For polygonal registries, ∩ corresponds to gcd coincidence and ∨ corresponds to lcm refinement.
Proposition 15.1 (Closure Under Refinement). If Pn and Pm are polygonal registries on the same
circumcircle, their least common refinement Plcm(n,m) is again a polygonal registry on that same
circumcircle.

Proof. By Proposition 7.2, Vlcm(n,m) is the smallest regular angular registry containing both Vn and
Vm . It shares the same center and circumcircle, so it satisfies the registry axioms.

                                                       11
Structural Registry of Nested Geometries                                                  Lu Semita


16 General Scale-Invariance Theorem

Theorem 16.1 (Scale Invariance of Registry Ratios). Let R be a registry and let mi , mj ∈ M(R)
possess the same dimensional degree k. Under any uniform scaling x 7→ λx, the ratio mi /mj remains
invariant.

Proof. A homogeneous measurement of dimensional degree k transforms as
                                    mi 7→ λk mi ,        mj 7→ λk mj .
Therefore
                                             λk mi   mi
                                              k
                                                   =    .                                        (46)
                                             λ mj    mj
The ratio remains invariant.

Corollary 16.1. The theorem applies simultaneously to lengths, areas, volumes, and higher-
dimensional homogeneous quantities. The earlier chord-ratio invariance theorem is the length-degree
case k = 1.


17 Harmonic Interpretation

A musical-style interval appears when a geometric ratio is normalized into a chosen harmonic
window. Given a geometric ratio ρ > 0, octave normalization may be written
                                              ρoct = 2q ρ,                                       (47)
where q ∈ Z is chosen so that
                                             1 ≤ ρoct < 2.                                       (48)
Geometry supplies ρ. Tuning convention supplies the normalization. Harmonic interpretation
therefore follows the registry; it does not define the registry.


17.1 Worked Ratio Examples

The square supplies the diagonal-edge ratio
                                              d□ √
                                                 = 2,                                            (49)
                                              e□
which gives a scale-invariant irrational interval class after normalization.
The pentagon supplies the diagonal-edge ratio
                                                   √
                                          d     1+ 5
                                            =φ=      ,                                           (50)
                                          e       2
placing the golden-ratio family inside the polygonal registry.
Classical rational harmonic ratios such as 3 : 2, 4 : 3, and 5 : 4 may be treated as normalized ratio
targets or approximants within a selected registry. The present manuscript establishes the geometric
ratio framework; it does not require every harmonic convention to be primitive.

                                                    12
Structural Registry of Nested Geometries                                                   Lu Semita


18 Structural Registry Theorem

Theorem 18.1 (Structural Registry Theorem). Let
                                     G = (O, S, R, M(R), I(R))                                   (51)
be a registry satisfying the foundational axioms. Every interval derived exclusively from homogeneous
geometric quantities within G is invariant under uniform scaling and depends only upon the incidence
structure and metric relations induced by the common registry surface.

Proof. The common registry surface supplies a shared origin and embedding. The incidence complex
supplies the structural relations among vertices, edges, faces, and cells. The metric registry assigns
homogeneous measurements to these relations. By the scale-invariance theorem, ratios among
measurements of equal dimension remain invariant under uniform scaling. Any interval derived by
normalizing such a ratio inherits this invariance. Therefore the resulting interval depends upon the
registry relation rather than absolute size.

Corollary 18.1 (Harmonic Projection). Harmonic interval systems constructed from normalized
registry ratios may be interpreted as projections of geometric incidence structures.


19 Incidence Transports and Lie-Algebraic Directions

This section preserves the algebraic direction suggested by the registry framework while separating
established algebraic facts from stronger conjectural claims.
Definition 19.1 (Incidence-Preserving Endomorphism). Let W be a vector space spanned by formal
incidence generators associated with a registry R. An incidence-preserving endomorphism is a linear
map X : W → W that maps incidence-generated subspaces to incidence-generated subspaces.
Theorem 19.1 (Commutator Lie Algebra of Registry Transports). Let t(R) be any vector space of
incidence-preserving endomorphisms of W closed under the commutator
                                           [X, Y ] = XY − Y X.                                   (52)
Then t(R) is a Lie algebra under [·, ·].

Proof. Bilinearity follows from bilinearity of composition and subtraction. Skew-symmetry follows
because
                          [Y, X] = Y X − XY = −(XY − Y X) = −[X, Y ].
The Jacobi identity follows from associativity of composition:
                              [X, [Y, Z\]\] + [Y, [Z, X\]\] + [Z, [X, Y \]\] = 0.
Closure holds by hypothesis. Therefore t(R) is a Lie algebra.

Remark 19.1 (Relation to Lie-Algebraic Structures). The theorem proves that suitably closed spaces
of registry transport endomorphisms carry a genuine Lie bracket. It does not by itself prove that
every finite-dimensional Lie algebra embeds faithfully into a nested geometry registry. That stronger
claim requires an explicit construction of the embedding, verification of bracket preservation, and
proof of faithfulness.

                                                   13
Structural Registry of Nested Geometries                                                  Lu Semita


19.1 Root Systems, Adjoint Action, and Pairings as Research Directions

Angular vertex sets may support finite reflection structures. In special cases these reflection
structures resemble root-system behavior. Registry transport may also support conjugation-like
operations analogous to adjoint action, and incidence counting may define bilinear pairings analogous
to trace or Killing-type pairings. These parallels provide structured research directions, but they
remain outside the established theorem set of this manuscript until complete constructions and
proofs are supplied.
Conjecture 19.1 (Lie-Algebraic Registry Embedding Program). For a suitable category of nested
geometry registries with transport morphisms, important classes of finite-dimensional Lie algebras
over R or C admit faithful realization through incidence-preserving transport endomorphisms. The
proof would require explicit registry construction, bracket preservation, and faithfulness.


20 Established Results

The manuscript establishes the following principal results.

  1. A registry consists of a common origin, a common embedding surface, an incidence structure,
     and associated measurable quantities.
  2. Regular polygons and regular polyhedra admit a common incidence-theoretic description
     through R = (V, E, F, C, ι).
  3. Homogeneous ratios derived from registry measurements remain invariant under uniform
     scaling.
  4. Harmonic interval systems may therefore be interpreted as normalized ratio systems arising
     from geometric registries.
  5. Incidence-preserving transport endomorphisms closed under commutator form a Lie algebra
     under the commutator bracket.


21 Conjectural Extensions

The following directions remain outside the established results of this manuscript.
Conjecture 21.1 (Registry Embedding of Interval Systems). Every normalized interval system
generated from homogeneous geometric ratios admits an embedding into a registry generated by
nested constructive geometries.
Conjecture 21.2 (Higher Registry Transport). Topological structures such as Hopf fibrations may
represent higher-order registry transports acting between incidence registries.
Conjecture 21.3 (General Structural Registry Theory). Constructive geometry, graph theory,
lattice theory, Coxeter systems, sphere packings, and harmonic proportion may admit a common
language through registry objects, morphisms, and invariant ratio families.

These conjectures are retained as future work rather than as results proven here.

                                                 14
Structural Registry of Nested Geometries                                                  Lu Semita


22 Conclusion

The central contribution of this manuscript is the construction of a disciplined mathematical pathway
from nested geometry to ratio and from ratio to harmonic interpretation. The primitive object
is not the frequency, nor the interval, nor the polygon considered in isolation. The primitive
object is the registry: a common geometric framework within which incidence relations generate
measurable quantities, measurable quantities generate scale-invariant ratios, and ratios admit
multiple interpretations.
The governing sequence is

  Origin → Registry Surface → Incidence → Measurement → Ratio → Interval → Interpretation.
                                                                                            (53)
The order matters. Construction precedes observation. Relational structure precedes measurement.
Interpretation follows invariant relation rather than defining it.
The Lie-algebraic direction adds a further path: incidence-preserving transports can support
commutator algebras, and the registry framework therefore has a mathematically legitimate bridge
toward algebraic structures. The stronger claim that nested geometry registries can reproduce all
Lie-algebraic phenomena remains a companion research program rather than a completed result of
the present manuscript.


A Polygon Formulae

For a regular n-gon inscribed in S 1 (R):
                                                     2π
                                              θn =      ,                                        (54)
                                                      n     π 
                                              en = 2R sin         ,                              (55)
                                                            n 
                                                             kπ
                                              cn,k = 2R sin         ,                            (56)
                                                              n
                                                      sin(kπ/n)
                                    ρ(cn,k , cm,ℓ ) =           .                                (57)
                                                      sin(ℓπ/m)




                                                   15
Structural Registry of Nested Geometries                                                   Lu Semita


B Polyhedral Formulae

For a Platonic solid with circumsphere radius R:
                                                 4R
                                           aT = √ ,                                                 (58)
                                                   6
                                                 2R
                                           aC = √ ,                                                 (59)
                                                   3
                                                 √
                                           aO = 2R,                                                 (60)
                                                     4R
                                           aD = √       √ ,                                         (61)
                                                   3(1 + 5)
                                                     4R
                                            aI = p       √ .                                        (62)
                                                   10 + 2 5
For regular faces:
                                         (n − 2)π
                                  ϕn =            ,        ∆ = 2π − qϕn .                           (63)
                                            n


C Registry Summary Diagram

                     Origin




              Registry Surface




            Incidence Structure




              Metric Registry




               Ratio Registry                                    Transport / Commutator Direction




          Harmonic Interpretation




                                                      16
