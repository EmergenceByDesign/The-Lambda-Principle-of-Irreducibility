<div class="titlepage">

**Structural Registry of Nested Geometries**

Polygonal, Polyhedral, and Harmonic Registries as Scale-Invariant Incidence Structures

with Lie-Algebraic Directions Preserved as a Structured Research Extension

Lu Semita

Working Draft – Theorem-Level Version 2

Prepared as a publication master for later expansion into a broader Structural Registry Theory.

June 2026

</div>

# Abstract

This manuscript develops a structural framework in which harmonic intervals arise as measurable consequences of nested geometric incidence rather than as primitive mathematical objects. The construction begins with a common origin and a shared registry surface. Within that registry, regular polygons and regular polyhedra generate incidence structures whose edge lengths, chord lengths, angular separations, diagonals, face relations, vertex relations, and higher-order adjacencies determine families of scale-invariant ratios. These ratios may subsequently admit harmonic interpretation through normalization procedures, but the underlying ratios originate in the geometry of the registry itself.

The central claim does not assert that geometry and harmony are identical. Rather, it establishes a rigorous chain: common registry surface, incidence structure, homogeneous metric quantities, scale-invariant ratios, normalized interval classes, and harmonic interpretation. This order preserves mathematical discipline: construction precedes measurement, measurement precedes ratio, and ratio precedes interpretation. The manuscript also records a disciplined route toward Lie-algebraic structures: incidence-preserving transport maps admit commutators, and commutator algebras may be studied as registry-generated algebraic objects. Stronger claims about faithful embedding of all finite-dimensional Lie algebras are retained as research-direction conjectures rather than asserted as established theorems.

**Keywords:** structural registry, incidence complex, nested polygons, nested polyhedra, chord ratios, scale invariance, harmonic intervals, ratio registry, constructive geometry, incidence algebra, Lie bracket.

# Notation

| Symbol                     | Meaning                                                                                          |
|:---------------------------|:-------------------------------------------------------------------------------------------------|
| $O$                        | distinguished common origin of a registry                                                        |
| $S^1(R)$                   | circle of radius $R$ centered at $O$                                                             |
| $S^2(R)$                   | sphere of radius $R$ centered at $O$                                                             |
| $P_n$                      | regular $n$-gon embedded in a common circumcircle                                                |
| $V_n$                      | angular vertex set of $P_n$                                                                      |
| $\theta_n$                 | central angle of a regular $n$-gon, $2\pi/n$                                                     |
| $e_n$                      | edge length of regular $n$-gon                                                                   |
| $c_{n,k}$                  | $k$-step chord of regular $n$-gon                                                                |
| $\rho(x,y)$                | ratio $x/y$                                                                                      |
| $\mathcal R$               | incidence complex or registry                                                                    |
| $V,E,F,C$                  | vertices, edges, faces, and higher-dimensional cells                                             |
| $\iota$                    | incidence relation                                                                               |
| $\mathcal M(\mathcal R)$   | metric registry, the set of homogeneous geometric measurements associated with $\mathcal R$      |
| $\mathcal M_k(\mathcal R)$ | measurements of homogeneous dimensional degree $k$                                               |
| $\mathcal I(\mathcal R)$   | ratio registry, the set of dimensionally consistent ratios derived from $\mathcal M(\mathcal R)$ |
| $\Phi$                     | registry morphism preserving incidence                                                           |
| $T_{P\to Q}$               | registry transport from one embedded registry to another                                         |
| $B_{VE},B_{EF}$            | vertex-edge and edge-face incidence matrices                                                     |
| $\Delta$                   | angular deficit at a vertex of a polyhedron                                                      |
| $\chi$                     | Euler characteristic, $V-E+F$ for convex polyhedra                                               |
| $[X,Y]$                    | commutator $XY-YX$ of registry transport operators                                               |

# Motivation and Governing Thesis

Mathematical treatments of harmonic intervals often begin with frequency ratios. Constructive geometry often begins elsewhere: with points, circles, lines, angles, and incidence. This manuscript treats the constructive order as primary and asks how far ratio and harmonic structure can be derived from it.

The governing thesis can be stated as follows:

> A harmonic interval need not begin as a frequency. It can arise as a scale-invariant ratio generated by incidence relations among nested geometric objects.

The explanatory sequence therefore reverses the usual order. Instead of $$\text{frequency}\longrightarrow\text{interval}\longrightarrow\text{geometry},$$ this framework begins with $$O\longrightarrow S^1/S^2\longrightarrow\text{incidence}\longrightarrow\text{measurement}\longrightarrow\text{ratio}\longrightarrow\text{interval}\longrightarrow\text{harmonic interpretation}.$$ The interval becomes an observable projection of prior geometric structure.

<div class="theorem">

**Theorem 1** (Registry Primacy, Restricted Form). *For every registry satisfying the foundational axioms below, every interval constructed exclusively from normalized ratios of homogeneous registry measurements is determined by the registry surface, the incidence complex, and the selected normalization convention. It is not determined by absolute size.*

</div>

<div class="proof">

*Proof.* The registry surface and incidence complex determine the admissible geometric measurements up to common scale. The ratio registry compares only quantities of identical dimension. By the scale-invariance theorem proved below, common scale cancels from every such ratio. Normalization changes the observational window of the ratio but not the geometric source of the ratio. Hence the interval depends upon incidence and normalization, not upon absolute size. ◻

</div>

# Foundational Axioms

<div class="axiom">

**Axiom 1** (Common Registry Origin). *Every registry possesses a distinguished common origin $O$ serving as the reference from which all registry relations are defined.*

</div>

<div class="axiom">

**Axiom 2** (Common Registry Surface). *Every object belonging to the same registry shares a common embedding manifold. In two dimensions this manifold is a common circumcircle $S^1(R)$. In three dimensions it is a common circumsphere $S^2(R)$.*

</div>

<div class="axiom">

**Axiom 3** (Incidence Precedes Measurement). *Adjacency, containment, intersection, and ordering exist before lengths, areas, volumes, or angles receive numerical values. Incidence is therefore primitive; measurement is derived.*

</div>

<div class="axiom">

**Axiom 4** (Homogeneous Ratio Invariance). *Whenever two geometric measurements possess the same physical dimension, their ratio remains invariant under uniform scaling.*

</div>

<div class="axiom">

**Axiom 5** (Interpretive Independence). *Registry invariants remain independent of any particular observational interpretation. Musical intervals, frequency ratios, graph spectra, and physical resonances may interpret registry ratios, but they do not create them.*

</div>

# Incidence Complexes and Registry Objects

<div class="definition">

**Definition 1** (Incidence Complex). *A registry is represented by an incidence complex $$\mathcal R=(V,E,F,C,\iota),$$ where $V$ is the vertex set, $E$ the edge set, $F$ the face set, $C$ the set of higher-dimensional cells, and $\iota$ the incidence relation.*

</div>

The planar polygonal registry appears as the special case $C=\varnothing$. The polyhedral registry extends the same incidence structure into three dimensions by allowing $C$ to record enclosed cells. This removes the appearance that polygonal and polyhedral registries belong to unrelated subjects; both become instances of one formal object.

<div class="definition">

**Definition 2** (Metric Registry). *The metric registry associated with $\mathcal R$ is $$\mathcal M(\mathcal R)=\{m_i\},$$ where each $m_i$ is a homogeneous geometric measurement associated with the registry. Examples include chord lengths, edge lengths, face diagonals, body diagonals, face areas, surface areas, volumes, dihedral angles, and angular deficits.*

</div>

<div class="definition">

**Definition 3** (Graded Metric Registry). *The metric registry may be decomposed by homogeneous dimensional degree: $$\mathcal M(\mathcal R)=\bigsqcup_{k\ge0}\mathcal M_k(\mathcal R),$$ where $m\in\mathcal M_k(\mathcal R)$ means that $m$ scales as $\lambda^k m$ under uniform scaling $x\mapsto \lambda x$. Lengths have degree $1$, areas degree $2$, volumes degree $3$, and pure angles degree $0$.*

</div>

<div class="definition">

**Definition 4** (Ratio Registry). *The ratio registry associated with $\mathcal R$ is $$\mathcal I(\mathcal R)=\left\{\frac{m_i}{m_j}:m_i,m_j\in\mathcal M(\mathcal R),\;\dim(m_i)=\dim(m_j),\;m_j\ne0\right\}.$$ Equivalently, $$\mathcal I(\mathcal R)=\bigcup_{k\ge0}\left\{\frac{x}{y}:x,y\in\mathcal M_k(\mathcal R),\;y\ne0\right\}.$$ Only quantities of identical physical dimension are compared. This condition preserves dimensional consistency.*

</div>

# Polygonal Registry

Let $P_n$ denote a regular $n$-gon inscribed in a common circumcircle $S^1(R)$ centered at $O$. Its central angle is $$\theta_n=\frac{2\pi}{n}.$$ The angular vertex set is $$V_n=\left\{\frac{2\pi j}{n}:0\le j<n\right\}.$$ Every vertex, edge, diagonal, and higher-order chord of $P_n$ is determined by this angular registry.

<div class="definition">

**Definition 5** (Edge Length of a Regular Polygon). *The edge length $e_n$ of $P_n$ is the chord between adjacent vertices.*

</div>

<div class="proposition">

**Proposition 1** (Polygon Edge Formula). *For a regular $n$-gon inscribed in $S^1(R)$, $$e_n=2R\sin\left(\frac{\pi}{n}\right).$$*

</div>

<div class="proof">

*Proof.* Adjacent vertices subtend the central angle $2\pi/n$. The two radii to the endpoints of the edge form an isosceles triangle. Bisecting this triangle produces a right triangle with hypotenuse $R$, angle $\pi/n$, and opposite side $e_n/2$. Therefore $$\sin\left(\frac{\pi}{n}\right)=\frac{e_n/2}{R},$$ which gives the stated formula. ◻

</div>

# Chord Families

<div class="definition">

**Definition 6** (Chord Family). *For $1\le k\le \lfloor n/2\rfloor$, the $k$-step chord $c_{n,k}$ of $P_n$ is the segment joining vertices separated by exactly $k$ registry positions.*

</div>

<div class="proposition">

**Proposition 2** (General Chord Formula). *Every $k$-step chord length satisfies $$c_{n,k}=2R\sin\left(\frac{k\pi}{n}\right).$$*

</div>

<div class="proof">

*Proof.* The two radii joining the center to the chord endpoints form an isosceles triangle with included angle $2k\pi/n$. Bisecting that triangle produces two congruent right triangles with hypotenuse $R$, angle $k\pi/n$, and opposite side $c_{n,k}/2$. Hence $$\sin\left(\frac{k\pi}{n}\right)=\frac{c_{n,k}/2}{R},$$ and the formula follows. ◻

</div>

<div class="corollary">

**Corollary 1** (Angular Determination). *Every chord family depends exclusively upon registry radius and registry angle. No additional geometric quantity enters.*

</div>

# Ratio Families and Scale Cancellation

Metric quantities become structurally meaningful through comparison. Define $$\rho(x,y)=\frac{x}{y}.$$ Applying this to two chord families in a common registry gives $$\begin{aligned}
\rho(c_{n,k},c_{m,\ell})
&=\frac{2R\sin(k\pi/n)}{2R\sin(\ell\pi/m)}\\
&=\frac{\sin(k\pi/n)}{\sin(\ell\pi/m)}.
\end{aligned}$$ The registry radius cancels identically.

<div class="theorem">

**Theorem 2** (Chord Ratio Invariance). *Every ratio formed from chord lengths belonging to a common registry remains invariant under uniform scaling.*

</div>

<div class="proof">

*Proof.* Under uniform scaling $R\mapsto \lambda R$, $$c_{n,k}\mapsto 2\lambda R\sin(k\pi/n),$$ and similarly for $c_{m,\ell}$. Therefore $$\frac{2\lambda R\sin(k\pi/n)}{2\lambda R\sin(\ell\pi/m)}=\frac{\sin(k\pi/n)}{\sin(\ell\pi/m)}.$$ The scale parameter cancels identically. ◻

</div>

# Nested Angular Registries

Let $$V_n=\left\{\frac{2\pi j}{n}:0\le j<n\right\},\qquad
V_m=\left\{\frac{2\pi q}{m}:0\le q<m\right\}.$$ The relationship between $V_n$ and $V_m$ is determined by angular coincidence and angular refinement.

<div class="proposition">

**Proposition 3** (Coincidence Registry). *The shared angular coincidence of $V_n$ and $V_m$ is governed by $\gcd(n,m)$.*

</div>

<div class="proof">

*Proof.* A vertex belongs simultaneously to both registries precisely when $$\frac{2\pi j}{n}=\frac{2\pi q}{m}\pmod{2\pi}.$$ Equivalently, $jm=qn$ modulo the full rotation. The common periodicity is therefore determined by the greatest common divisor of $n$ and $m$. ◻

</div>

<div class="proposition">

**Proposition 4** (Refinement Registry). *The smallest angular registry containing both $V_n$ and $V_m$ possesses $\operatorname{lcm}(n,m)$ positions.*

</div>

<div class="proof">

*Proof.* Every angular subdivision belonging to either polygon appears among the subdivisions of $V_{\operatorname{lcm}(n,m)}$. No smaller regular angular registry contains both sets of subdivisions simultaneously, by the defining minimality of the least common multiple. ◻

</div>

<div class="corollary">

**Corollary 2** (Polygon Registry Lattice). *The operations $\gcd$ and $\operatorname{lcm}$ induce coincidence and refinement relations among polygon registries. Nested polygons therefore organize into a refinement hierarchy rather than an unordered collection.*

</div>

# Polygonal Incidence Graphs

Each polygon determines an incidence graph $$G(P_n)=(V,E).$$ Vertices correspond to registry positions. Edges correspond to adjacent incidences. Higher-order diagonals define additional edge classes. Consequently, each regular polygon determines not merely one graph but an entire family $$\{G_1,G_2,\dots,G_{\lfloor n/2\rfloor}\},$$ where $G_k$ joins vertices separated by $k$ registry steps. The complete polygonal registry therefore consists of all admissible incidence graphs generated upon the same angular registry.

# Polyhedral Registries

The transition from polygonal registries to polyhedral registries extends the common registry from a circumcircle to a circumsphere while preserving the incidence foundation.

<div class="definition">

**Definition 7** (Polyhedral Registry). *Let $\mathcal P=(V,E,F)$ denote a regular convex polyhedron embedded in $S^2(R)$. The associated registry is $$\mathcal R=(V,E,F,C,\iota),$$ where $C$ records three-dimensional cells. The polygonal registry is recovered when $C=\varnothing$.*

</div>

<div class="proposition">

**Proposition 5** (Polyhedral Metric Determination). *Every regular polyhedron embedded in a common circumsphere determines a family of edge, face, diagonal, angular, and incidence ratios.*

</div>

<div class="proof">

*Proof.* The common circumsphere fixes the radial distance of every vertex. Once the incidence structure of a regular polyhedron is fixed, all edge lengths, face diagonals, body diagonals, vertex separations, face angles, dihedral angles, and angular deficits are determined up to the common scale $R$. Ratios of homogeneous quantities therefore depend only on the registry and not on absolute scale. ◻

</div>

## Deriving Edge Relations from a Common Circumsphere

The listed Platonic formulas follow from the same principle: place all vertices on $S^2(R)$ and compute edge length as a vertex separation. The scale $R$ enters linearly and therefore cancels from all edge ratios.

<div class="proposition">

**Proposition 6** (Cube Edge from Circumsphere). *For a cube inscribed in $S^2(R)$, $$a_C=\frac{2R}{\sqrt3}.$$*

</div>

<div class="proof">

*Proof.* Let the cube have side length $a_C$. Its body diagonal has length $a_C\sqrt3$. Since opposite vertices lie on the circumsphere, the body diagonal equals $2R$. Therefore $a_C\sqrt3=2R$, giving $a_C=2R/\sqrt3$. ◻

</div>

<div class="proposition">

**Proposition 7** (Octahedron Edge from Circumsphere). *For an octahedron inscribed in $S^2(R)$, $$a_O=\sqrt2 R.$$*

</div>

<div class="proof">

*Proof.* Take adjacent octahedron vertices at coordinate positions $(R,0,0)$ and $(0,R,0)$. Their distance is $$\sqrt{(R-0)^2+(0-R)^2}=\sqrt2 R.$$ ◻

</div>

<div class="proposition">

**Proposition 8** (Tetrahedron Edge from Circumsphere). *For a regular tetrahedron inscribed in $S^2(R)$, $$a_T=\frac{4R}{\sqrt6}.$$*

</div>

<div class="proof">

*Proof.* Use the standard centered tetrahedron with vertices proportional to $(1,1,1)$, $(1,-1,-1)$, $(-1,1,-1)$, and $(-1,-1,1)$. The radius of each unscaled vertex is $\sqrt3$, while the distance between any two vertices is $2\sqrt2$. Scaling the radius to $R$ multiplies all lengths by $R/\sqrt3$. Thus $$a_T=2\sqrt2\,\frac{R}{\sqrt3}=\frac{2\sqrt6}{3}R=\frac{4R}{\sqrt6}.$$ ◻

</div>

# Platonic Edge Relations

For a shared circumsphere of radius $R$, the edge lengths of the Platonic solids are: $$\begin{aligned}
a_T &= \frac{4R}{\sqrt6},\\
a_C &= \frac{2R}{\sqrt3},\\
a_O &= \sqrt2 R,\\
a_D &= \frac{4R}{\sqrt3(1+\sqrt5)},\\
a_I &= \frac{4R}{\sqrt{10+2\sqrt5}}.
\end{aligned}$$ Here $T,C,O,D,I$ denote tetrahedron, cube, octahedron, dodecahedron, and icosahedron respectively.

Thus cross-registry edge ratios include $$\frac{a_T}{a_C}=\sqrt2,$$ and $$\frac{a_O}{a_C}=\sqrt{\frac32}.$$ These ratios arise entirely from shared-sphere geometry.

<div class="remark">

*Remark 1* (Golden Ratio Family). The dodecahedron and icosahedron formulas contain $\sqrt5$ because their face and vertex structure carries pentagonal incidence. Hence the golden-ratio family enters the registry through geometry rather than through a separately imposed harmonic convention.

</div>

# Edge-Face-Vertex Relations

For the Platonic solids the triples $(V,E,F)$ are:

<div class="center">

| Solid        | Vertices | Edges | Faces |
|:-------------|:--------:|:-----:|:-----:|
| Tetrahedron  |    4     |   6   |   4   |
| Cube         |    8     |  12   |   6   |
| Octahedron   |    6     |  12   |   8   |
| Dodecahedron |    20    |  30   |  12   |
| Icosahedron  |    12    |  30   |  20   |

</div>

Each satisfies Euler closure $$V-E+F=2.$$ This invariant belongs to the topological registry, not merely the metric registry.

# Angular Deficit and Vertex Curvature

For a regular $n$-gon face, the interior angle is $$\phi_n=\frac{(n-2)\pi}{n}.$$ If $q$ such faces meet at a vertex of a Platonic solid, the angular deficit is $$\Delta=2\pi-q\phi_n.$$ For the tetrahedron, $n=3,q=3$, so $$\Delta_T=2\pi-3\left(\frac\pi3\right)=\pi.$$ For the cube, $n=4,q=3$, so $$\Delta_C=2\pi-3\left(\frac\pi2\right)=\frac\pi2.$$ For the octahedron, $n=3,q=4$, so $$\Delta_O=2\pi-4\left(\frac\pi3\right)=\frac{2\pi}{3}.$$ For the icosahedron, $n=3,q=5$, so $$\Delta_I=2\pi-5\left(\frac\pi3\right)=\frac\pi3.$$ Curvature itself therefore forms a registry of scale-invariant angular relations.

# Dual Registries

Duality exchanges vertices and faces while preserving edges: $$V(P^*)=F(P),\qquad F(P^*)=V(P),\qquad E(P^*)=E(P).$$ Accordingly, $$\text{Cube}^*=\text{Octahedron},\qquad \text{Dodecahedron}^*=\text{Icosahedron},\qquad \text{Tetrahedron}^*=\text{Tetrahedron}.$$ Duality preserves incidence while exchanging complementary registry roles. This demonstrates that registry equivalence need not require metric identity.

# Incidence Matrices

Metric geometry records lengths. Registry geometry records relationships. Define the vertex-edge incidence matrix $$B_{VE}(v,e)=
\begin{cases}
1,& v\in e,\\
0,& v\notin e.
\end{cases}$$ Similarly define the edge-face incidence matrix $$B_{EF}(e,f)=
\begin{cases}
1,& e\subset f,\\
0,& e\not\subset f.
\end{cases}$$ The combinatorial skeleton is therefore encoded by $$V \xleftrightarrow{\,B_{VE}\,} E \xleftrightarrow{\,B_{EF}\,} F.$$ The matrices determine incidence independently of a particular metric realization.

# Registry Algebra, Morphisms, and Transport

<div class="definition">

**Definition 8** (Registry Morphism). *Let $$\mathcal G_1=(O_1,S_1,\mathcal R_1,\mathcal M_1,\mathcal I_1),\qquad
\mathcal G_2=(O_2,S_2,\mathcal R_2,\mathcal M_2,\mathcal I_2)$$ be two registries. A registry morphism $$\Phi:\mathcal G_1\to\mathcal G_2$$ is a map preserving incidence relations.*

</div>

A registry morphism may alter size, orientation, or embedding. Its defining requirement is not metric preservation but incidence preservation.

<div class="definition">

**Definition 9** (Registry Transport). *A transport map from registry $P$ to registry $Q$ is a comparison map $$T_{P\to Q}:\mathcal R(P)\to\mathcal R(Q)$$ that associates corresponding structural features and compares their homogeneous measurements.*

</div>

Examples include $$T_{P\to Q}(e)=\frac{a(P)}{a(Q)},\qquad
T_{P\to Q}(v)=\frac{|V(P)|}{|V(Q)|},\qquad
T_{P\to Q}(f)=\frac{|F(P)|}{|F(Q)|}.$$ The registry records transformations among shapes rather than only measurements within a single shape.

<div class="definition">

**Definition 10** (Registry Operations). *Given registries $\mathcal R_1$ and $\mathcal R_2$ sharing a compatible surface, define: $$\begin{aligned}
\mathcal R_1\cap\mathcal R_2 &\quad\text{as their shared incidence subregistry},\\
\mathcal R_1\vee\mathcal R_2 &\quad\text{as their least common refinement},\\
\mathcal R^* &\quad\text{as the dual registry when vertex-face duality exists.}
\end{aligned}$$ For polygonal registries, $\cap$ corresponds to $\gcd$ coincidence and $\vee$ corresponds to $\operatorname{lcm}$ refinement.*

</div>

<div class="proposition">

**Proposition 9** (Closure Under Refinement). *If $P_n$ and $P_m$ are polygonal registries on the same circumcircle, their least common refinement $P_{\operatorname{lcm}(n,m)}$ is again a polygonal registry on that same circumcircle.*

</div>

<div class="proof">

*Proof.* By Proposition 7.2, $V_{\operatorname{lcm}(n,m)}$ is the smallest regular angular registry containing both $V_n$ and $V_m$. It shares the same center and circumcircle, so it satisfies the registry axioms. ◻

</div>

# General Scale-Invariance Theorem

<div class="theorem">

**Theorem 3** (Scale Invariance of Registry Ratios). *Let $\mathcal R$ be a registry and let $m_i,m_j\in\mathcal M(\mathcal R)$ possess the same dimensional degree $k$. Under any uniform scaling $x\mapsto\lambda x$, the ratio $m_i/m_j$ remains invariant.*

</div>

<div class="proof">

*Proof.* A homogeneous measurement of dimensional degree $k$ transforms as $$m_i\mapsto \lambda^k m_i,
\qquad
m_j\mapsto \lambda^k m_j.$$ Therefore $$\frac{\lambda^k m_i}{\lambda^k m_j}=\frac{m_i}{m_j}.$$ The ratio remains invariant. ◻

</div>

<div class="corollary">

**Corollary 3**. *The theorem applies simultaneously to lengths, areas, volumes, and higher-dimensional homogeneous quantities. The earlier chord-ratio invariance theorem is the length-degree case $k=1$.*

</div>

# Harmonic Interpretation

A musical-style interval appears when a geometric ratio is normalized into a chosen harmonic window. Given a geometric ratio $\rho>0$, octave normalization may be written $$\rho_{\mathrm{oct}}=2^q\rho,$$ where $q\in\mathbb Z$ is chosen so that $$1\le \rho_{\mathrm{oct}}<2.$$ Geometry supplies $\rho$. Tuning convention supplies the normalization. Harmonic interpretation therefore follows the registry; it does not define the registry.

## Worked Ratio Examples

The square supplies the diagonal-edge ratio $$\frac{d_{\square}}{e_{\square}}=\sqrt2,$$ which gives a scale-invariant irrational interval class after normalization.

The pentagon supplies the diagonal-edge ratio $$\frac{d_{\pentagon}}{e_{\pentagon}}=\varphi=\frac{1+\sqrt5}{2},$$ placing the golden-ratio family inside the polygonal registry.

Classical rational harmonic ratios such as $3:2$, $4:3$, and $5:4$ may be treated as normalized ratio targets or approximants within a selected registry. The present manuscript establishes the geometric ratio framework; it does not require every harmonic convention to be primitive.

# Structural Registry Theorem

<div class="theorem">

**Theorem 4** (Structural Registry Theorem). *Let $$\mathcal G=(O,S,\mathcal R,\mathcal M(\mathcal R),\mathcal I(\mathcal R))$$ be a registry satisfying the foundational axioms. Every interval derived exclusively from homogeneous geometric quantities within $\mathcal G$ is invariant under uniform scaling and depends only upon the incidence structure and metric relations induced by the common registry surface.*

</div>

<div class="proof">

*Proof.* The common registry surface supplies a shared origin and embedding. The incidence complex supplies the structural relations among vertices, edges, faces, and cells. The metric registry assigns homogeneous measurements to these relations. By the scale-invariance theorem, ratios among measurements of equal dimension remain invariant under uniform scaling. Any interval derived by normalizing such a ratio inherits this invariance. Therefore the resulting interval depends upon the registry relation rather than absolute size. ◻

</div>

<div class="corollary">

**Corollary 4** (Harmonic Projection). *Harmonic interval systems constructed from normalized registry ratios may be interpreted as projections of geometric incidence structures.*

</div>

# Incidence Transports and Lie-Algebraic Directions

This section preserves the algebraic direction suggested by the registry framework while separating established algebraic facts from stronger conjectural claims.

<div class="definition">

**Definition 11** (Incidence-Preserving Endomorphism). *Let $W$ be a vector space spanned by formal incidence generators associated with a registry $\mathcal R$. An incidence-preserving endomorphism is a linear map $X:W\to W$ that maps incidence-generated subspaces to incidence-generated subspaces.*

</div>

<div class="theorem">

**Theorem 5** (Commutator Lie Algebra of Registry Transports). *Let $\mathfrak t(\mathcal R)$ be any vector space of incidence-preserving endomorphisms of $W$ closed under the commutator $$=XY-YX.$$ Then $\mathfrak t(\mathcal R)$ is a Lie algebra under $[\cdot,\cdot]$.*

</div>

<div class="proof">

*Proof.* Bilinearity follows from bilinearity of composition and subtraction. Skew-symmetry follows because $$[Y,X]=YX-XY=-(XY-YX)=-[X,Y].$$ The Jacobi identity follows from associativity of composition: $$[X,[Y,Z]]+[Y,[Z,X]]+[Z,[X,Y]]=0.$$ Closure holds by hypothesis. Therefore $\mathfrak t(\mathcal R)$ is a Lie algebra. ◻

</div>

<div class="remark">

*Remark 2* (Relation to Lie-Algebraic Structures). The theorem proves that suitably closed spaces of registry transport endomorphisms carry a genuine Lie bracket. It does not by itself prove that every finite-dimensional Lie algebra embeds faithfully into a nested geometry registry. That stronger claim requires an explicit construction of the embedding, verification of bracket preservation, and proof of faithfulness.

</div>

## Root Systems, Adjoint Action, and Pairings as Research Directions

Angular vertex sets may support finite reflection structures. In special cases these reflection structures resemble root-system behavior. Registry transport may also support conjugation-like operations analogous to adjoint action, and incidence counting may define bilinear pairings analogous to trace or Killing-type pairings. These parallels provide structured research directions, but they remain outside the established theorem set of this manuscript until complete constructions and proofs are supplied.

<div class="conjecture">

**Conjecture 1** (Lie-Algebraic Registry Embedding Program). *For a suitable category of nested geometry registries with transport morphisms, important classes of finite-dimensional Lie algebras over $\mathbb R$ or $\mathbb C$ admit faithful realization through incidence-preserving transport endomorphisms. The proof would require explicit registry construction, bracket preservation, and faithfulness.*

</div>

# Established Results

The manuscript establishes the following principal results.

1.  A registry consists of a common origin, a common embedding surface, an incidence structure, and associated measurable quantities.

2.  Regular polygons and regular polyhedra admit a common incidence-theoretic description through $\mathcal R=(V,E,F,C,\iota)$.

3.  Homogeneous ratios derived from registry measurements remain invariant under uniform scaling.

4.  Harmonic interval systems may therefore be interpreted as normalized ratio systems arising from geometric registries.

5.  Incidence-preserving transport endomorphisms closed under commutator form a Lie algebra under the commutator bracket.

# Conjectural Extensions

The following directions remain outside the established results of this manuscript.

<div class="conjecture">

**Conjecture 2** (Registry Embedding of Interval Systems). *Every normalized interval system generated from homogeneous geometric ratios admits an embedding into a registry generated by nested constructive geometries.*

</div>

<div class="conjecture">

**Conjecture 3** (Higher Registry Transport). *Topological structures such as Hopf fibrations may represent higher-order registry transports acting between incidence registries.*

</div>

<div class="conjecture">

**Conjecture 4** (General Structural Registry Theory). *Constructive geometry, graph theory, lattice theory, Coxeter systems, sphere packings, and harmonic proportion may admit a common language through registry objects, morphisms, and invariant ratio families.*

</div>

These conjectures are retained as future work rather than as results proven here.

# Conclusion

The central contribution of this manuscript is the construction of a disciplined mathematical pathway from nested geometry to ratio and from ratio to harmonic interpretation. The primitive object is not the frequency, nor the interval, nor the polygon considered in isolation. The primitive object is the registry: a common geometric framework within which incidence relations generate measurable quantities, measurable quantities generate scale-invariant ratios, and ratios admit multiple interpretations.

The governing sequence is $$\text{Origin}\to\text{Registry Surface}\to\text{Incidence}\to\text{Measurement}\to\text{Ratio}\to\text{Interval}\to\text{Interpretation}.$$ The order matters. Construction precedes observation. Relational structure precedes measurement. Interpretation follows invariant relation rather than defining it.

The Lie-algebraic direction adds a further path: incidence-preserving transports can support commutator algebras, and the registry framework therefore has a mathematically legitimate bridge toward algebraic structures. The stronger claim that nested geometry registries can reproduce all Lie-algebraic phenomena remains a companion research program rather than a completed result of the present manuscript.

# Polygon Formulae

For a regular $n$-gon inscribed in $S^1(R)$: $$\begin{aligned}
\theta_n&=\frac{2\pi}{n},\\
e_n&=2R\sin\left(\frac\pi n\right),\\
c_{n,k}&=2R\sin\left(\frac{k\pi}{n}\right),\\
\rho(c_{n,k},c_{m,\ell})&=\frac{\sin(k\pi/n)}{\sin(\ell\pi/m)}.
\end{aligned}$$

# Polyhedral Formulae

For a Platonic solid with circumsphere radius $R$: $$\begin{aligned}
a_T &= \frac{4R}{\sqrt6},\\
a_C &= \frac{2R}{\sqrt3},\\
a_O &= \sqrt2 R,\\
a_D &= \frac{4R}{\sqrt3(1+\sqrt5)},\\
a_I &= \frac{4R}{\sqrt{10+2\sqrt5}}.
\end{aligned}$$ For regular faces: $$\phi_n=\frac{(n-2)\pi}{n},\qquad \Delta=2\pi-q\phi_n.$$

# Registry Summary Diagram

<div class="center">

</div>
