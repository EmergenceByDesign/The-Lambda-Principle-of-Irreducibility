---
title: "Cymatic Resonance, Interval Interference, and Projection Registries"
subtitle: "Chladni Figures, Penrose Tilings, Polygonal Hopf Layers, and the Hyperdimensional Ladder"
author: "Lu Semita and associated Lambda / TUFT / NSAF working corpus"
date: "2026-06-18"
geometry: margin=0.80in
fontsize: 10.5pt
mainfont: "DejaVu Serif"
monofont: "DejaVu Sans Mono"
colorlinks: true
toc: true
---

# Abstract

This paper consolidates the cymatic, interval, tiling, and Hopf-layer material into one companion argument to *Penrose Tilings as a Lattice-Projection Case in the Hyperdimensional Ladder*. The purpose is not to claim that Chladni plates, Penrose tilings, Hopf fibrations, quasicrystals, musical intervals, and strange attractors are one literal object. The purpose is to show a rigorous common structure: each becomes legible as a registry of constrained selection. A rule is imposed, a domain is sampled, a boundary or phase relation selects loci of persistence, and a visible or nameable form emerges.

The Penrose tiling paper established the projection side of this claim. A two-dimensional aperiodic tiling can be produced from a higher-dimensional lattice through irrational projection, an acceptance window, local matching rules, golden-ratio inflation, and a cyclotomic arithmetic registry. This companion adds the resonance side. Chladni and cymatic figures arise when a domain, operator, boundary condition, forcing phase, and material response select nodal and antinodal loci from a wave field. Musical intervals then provide a ratio grammar for phase return, prime-factor interference, composite closure, and cyclic realignment. Hopf and toroidal language supply a phase-fiber registry in which these circular, polygonal, and projection relations can be compared.

The resulting synthesis treats "physical" not as an escape from framing, but as a repeatably constrained registry under measurement and transformation. The Chladni plate, the Penrose tiling, and the Hopf fibration are all imposed mathematical or experimental constructions. Their strength lies in the stability of what they preserve: recurrence, symmetry, phase, ratio, spectrum, and persistence.

Several corrections are built into the final form. The tetrahedron inradius-to-circumradius ratio is \(1:3\), not \(1:6\). The Kolmogorov \(5/3\) exponent and the musical major sixth \(5:3\) share a suggestive ratio but should not be treated as identical mathematical objects without an explicit derivation. The crystallographic restriction depends on lattice-preserving rotation, captured by \(2\cos(2\pi/n)\in\mathbb{Z}\), not by a vague appeal to rationality. The \(1/f\) bridge follows under a log-uniform hierarchy of unresolved timescales, not as an unconditional property of every resonant system.

The main thesis remains direct: cymatic forms, Chladni nodal sets, Penrose and related tilings, musical interval ratios, and polygonal Hopf layers all show how registries work. They demonstrate how simple rules, prime and composite interference, projection, phase, and boundary selection produce complex coherent forms.

# 1. Claim posture: registries rather than privileged maps

A registry is a rule-governed system that makes relations nameable. It may use a lattice, a coordinate frame, a boundary condition, a spectral operator, a projection, an acceptance window, a phase fiber, a set of prototiles, a musical ratio, or an equivalence relation. A registry is not false because it is imposed. It becomes useful when it preserves structure across transformation.

This paper does not rank one construction as native and the others as merely analogical. Cut-and-project tilings, de Bruijn multigrids, Chladni plates, Helmholtz eigenmodes, Hopf fibrations, and polygonal interval grids all impose rules of meaning. Each selects invariants. Each hides or compresses something. Each makes a different structure stable enough to share.

The guiding form is

\[
\text{stable form}
=
\text{constraint}
+
\text{rule of selection}
+
\text{phase or scale relation}
+
\text{persistence under transformation}.
\]

This is the same logic that appeared in the Penrose companion paper. Penrose tilings do not appear because the plane simply hands us a pattern. They appear because a higher-dimensional lattice, a projection rule, an internal-space window, local matching rules, and golden-ratio inflation cooperate to produce a stable aperiodic registry. Chladni figures likewise do not appear as raw material facts outside construction. They appear because a plate, boundary condition, excitation frequency, eigenmode structure, and visible material response select nodal and antinodal loci.

The claim is therefore ontological but not mystical: form appears where constraint becomes registered.

# 2. Penrose tilings as projection registries

The companion Penrose paper treated Penrose tilings as a concrete case of two-dimensional visible order produced from higher-dimensional projection. Let

\[
L=\mathbb{Z}^{5}
\]

be a five-dimensional integer lattice. Choose a two-dimensional subspace \(E_{\parallel}\) and an internal complementary subspace \(E_{\perp}\). Let

\[
\pi_{\parallel}:\mathbb{R}^{5}\to E_{\parallel},
\qquad
\pi_{\perp}:\mathbb{R}^{5}\to E_{\perp}
\]

be the corresponding projections. Given a bounded acceptance window

\[
W\subset E_{\perp},
\]

the projected point set is

\[
\Lambda(W)
=
\{\pi_{\parallel}(n):n\in\mathbb{Z}^{5},\ \pi_{\perp}(n)\in W\}.
\]

The full projected lattice may be dense because of irrational orientation, but the window-selected set is a Delone set: uniformly discrete and relatively dense. The visible tiling is then recovered by local adjacency, dual-cell, matching-rule, or substitution structure.

The arithmetic setting is governed by the golden ratio

\[
\phi=\frac{1+\sqrt5}{2},
\qquad
\phi^{2}=\phi+1,
\qquad
\phi^{-1}=\phi-1,
\]

with

\[
\mathbb{Q}(\phi)=\mathbb{Q}(\sqrt5),
\qquad
\mathbb{Z}[\phi]=\{a+b\phi:a,b\in\mathbb{Z}\}.
\]

The fifth roots of unity give

\[
\zeta_{5}=e^{2\pi i/5},
\qquad
\Phi_{5}(x)=x^{4}+x^{3}+x^{2}+x+1.
\]

The real subfield of \(\mathbb{Q}(\zeta_5)\) is \(\mathbb{Q}(\sqrt5)\), since

\[
\zeta_{5}+\zeta_{5}^{-1}
=
2\cos\left(\frac{2\pi}{5}\right)
=
\frac{\sqrt5-1}{2}
=
\phi-1.
\]

This means the visible \(5\)-fold angular registry and the golden scaling registry belong to one algebraic environment.

# 3. Penrose inflation and tile-count dynamics

Using a standard two-tile count convention with large/thick and small/thin tiles \(A_L\) and \(A_S\), a common substitution matrix is

\[
M=
\begin{pmatrix}
2&1\\
1&1
\end{pmatrix}.
\]

It acts on count vectors by

\[
\begin{pmatrix}
A_L'\\
A_S'
\end{pmatrix}
=
M
\begin{pmatrix}
A_L\\
A_S
\end{pmatrix}.
\]

The characteristic polynomial is

\[
\chi_M(\lambda)=\lambda^2-3\lambda+1,
\]

so

\[
\lambda_1=\frac{3+\sqrt5}{2}=\phi^2,
\qquad
\lambda_2=\frac{3-\sqrt5}{2}=\phi^{-2}.
\]

The Perron-Frobenius eigenvector can be written as

\[
\begin{pmatrix}
\phi\\
1
\end{pmatrix},
\]

because

\[
M
\begin{pmatrix}
\phi\\
1
\end{pmatrix}
=
\phi^2
\begin{pmatrix}
\phi\\
1
\end{pmatrix}.
\]

Thus, the limiting tile frequency ratio is

\[
A_L:A_S=\phi:1.
\]

The powers of \(M\) are Fibonacci-indexed:

\[
M^n=
\begin{pmatrix}
F_{2n+1}&F_{2n}\\
F_{2n}&F_{2n-1}
\end{pmatrix}.
\]

This gives the tiling side of the same rule found throughout the ladder: simple iteration under algebraic constraint generates structured complexity.

# 4. Chladni and cymatic figures as resonance registries

A Chladni figure is a visible registry of a standing-wave field. In an idealized model, a displacement field

\[
\psi:\Omega\to\mathbb{R}
\]

on a domain \(\Omega\) satisfies the Helmholtz eigenvalue problem

\[
-\Delta\psi=\lambda\psi
\]

with boundary conditions. The visible nodal set is

\[
Z(\psi)=\{x\in\Omega:\psi(x)=0\}.
\]

Material such as sand tends to collect near low-motion regions, so the visible figure is a selected locus from the wave field. It is not the entire field. It is the registered boundary of a standing relation.

For a square plate of side length \(L\), a simplified separated model gives modes

\[
\psi_{mn}(x,y)
=
\cos\left(\frac{m\pi x}{L}\right)
\cos\left(\frac{n\pi y}{L}\right),
\]

with eigenvalues

\[
\lambda_{mn}
=
\frac{\pi^2}{L^2}(m^2+n^2).
\]

Other boundary conditions use sine functions, mixed sine-cosine forms, or more complicated plate equations. The essential arithmetic point remains: integer mode labels feed a quadratic spectral form.

Thus, square Chladni plates and Penrose tilings share a registry structure:

\[
\text{integer lattice}
+
\text{constraint}
+
\text{selection rule}
\longrightarrow
\text{visible form}.
\]

In the Chladni case, the lattice is the integer mode lattice \((m,n)\in\mathbb{Z}^{2}\), the constraint is spectral, and the selection rule is the nodal set. In the Penrose case, the lattice is \(\mathbb{Z}^{5}\), the constraint is projection plus windowing, and the selection rule is internal-space acceptance plus matching.

# 5. Nodal loci and acceptance windows

The deepest relation between Chladni patterns and Penrose tilings lies in the role of boundary loci.

For Chladni figures, the selected locus is

\[
Z(\psi)=\{x:\psi(x)=0\}.
\]

This is a lower-dimensional set inside the vibrating domain. It records where the standing-wave field changes sign or vanishes.

For Penrose tilings, the selected set is determined by

\[
\pi_{\perp}(n)\in W.
\]

The boundary

\[
\partial W
\]

plays the role of a selection wall in internal space. Points near or crossing the window boundary change tile inclusion, local configuration, or phason state.

The structural correspondence is:

\[
\text{Chladni node}
\quad\leftrightarrow\quad
\text{acceptance-window boundary}.
\]

Both are loci where a rule changes state. Both are lower-dimensional traces of a richer field. Both become visible because the registry selects them.

This is the central bridge. Chladni figures and Penrose tilings do not share the same material mechanism, but they do share the same registration logic: form appears at the boundary of a selection rule.

# 6. Arithmetic resonance on square plates

The square-plate eigenvalue

\[
\lambda_{mn}
=
\frac{\pi^2}{L^2}(m^2+n^2)
\]

depends on the integer

\[
N=m^2+n^2.
\]

Degeneracy occurs when multiple integer pairs yield the same \(N\). Let \(r_2(N)\) denote the number of integer representations of \(N\) as a sum of two squares, counting signs and order. A classical formula is

\[
r_2(N)
=
4\bigl(d_1(N)-d_3(N)\bigr),
\]

where \(d_1(N)\) is the number of divisors of \(N\) congruent to \(1\pmod4\), and \(d_3(N)\) is the number of divisors congruent to \(3\pmod4\).

Equivalently, \(N\) is representable as a sum of two squares if and only if every prime

\[
p\equiv 3\pmod4
\]

appears in the prime factorization of \(N\) with even exponent.

In field language, this is the splitting law of the Gaussian integers \(\mathbb{Z}[i]\). Primes \(p\equiv1\pmod4\) split, primes \(p\equiv3\pmod4\) remain inert, and \(2\) ramifies.

This gives a rigorous version of "prime resonance" in Chladni patterning. Prime factorization controls which spectral degeneracies can occur. Degeneracy controls which eigenmodes can be superposed without changing eigenvalue. Superposition controls how nodal figures move and elaborate. Prime arithmetic therefore shapes the interference registry.

# 7. Phase, superposition, and moving nodes

If \(\psi_a\) and \(\psi_b\) share the same eigenvalue, then

\[
\Psi_{\theta}
=
\cos\theta\,\psi_a
+
\sin\theta\,\psi_b
\]

also belongs to the same eigenspace. Its nodal set

\[
Z(\Psi_{\theta})=
\{x:\Psi_{\theta}(x)=0\}
\]

may move as \(\theta\) changes.

This is the resonance-side analogue of shifting the de Bruijn pentagrid offset vector

\[
\gamma=(\gamma_0,\gamma_1,\gamma_2,\gamma_3,\gamma_4).
\]

In the pentagrid, changing \(\gamma\) shifts line families and alters local tiling arrangements while preserving the broader fivefold registry. In the Chladni system, changing \(\theta\) shifts the visible nodal figure while preserving the eigenspace.

The correspondence is:

\[
\text{eigenmode phase}
\quad\leftrightarrow\quad
\text{multigrid offset}.
\]

Each parameter moves visible form inside a stable higher-order registry.

# 8. Musical intervals as phase-return ratios

A musical interval in just intonation is a ratio

\[
p:q
\]

between frequencies. When written in lowest terms,

\[
\gcd(p,q)=1.
\]

If the lower frequency is \(f_0\), then

\[
f_1=\frac{p}{q}f_0.
\]

The same ratio describes phase return. Two cyclic processes with counts \(p\) and \(q\) realign after

\[
\operatorname{lcm}(p,q)
\]

phase cells. If \(p\) and \(q\) are coprime, then

\[
\operatorname{lcm}(p,q)=pq.
\]

This gives the basic prime/non-prime interference rule:

- A reduced ratio is primitive.
- A non-reduced ratio collapses to a smaller primitive relation.
- Composite but coprime ratios combine several prime axes.
- The least common multiple gives the return length of the combined grid.

For example,

\[
3:2
\]

is a primitive fifth because \(\gcd(3,2)=1\). Its return product is \(6\). The major sixth

\[
5:3
\]

is primitive and introduces direct \(5\)-against-\(3\) interference. The major seventh

\[
15:8
=
3\cdot5:2^3
\]

is primitive but composite: it combines the \(3\)-axis and \(5\)-axis against an octave cube.

# 9. Interval table with prime structure

| Interval | Ratio \(p:q\) | Prime form | Return product \(pq\) | Structural reading |
|---|---:|---|---:|---|
| Unison | \(1:1\) | identity | \(1\) | No phase separation |
| Octave | \(2:1\) | \(2\) | \(2\) | Binary doubling |
| Perfect fifth | \(3:2\) | \(3\cdot2^{-1}\) | \(6\) | First odd-prime tension against octave |
| Perfect fourth | \(4:3\) | \(2^2\cdot3^{-1}\) | \(12\) | Complement of fifth in octave space |
| Major third | \(5:4\) | \(5\cdot2^{-2}\) | \(20\) | Prime \(5\) against octave square |
| Minor third | \(6:5\) | \(2\cdot3\cdot5^{-1}\) | \(30\) | Composite \(2\cdot3\) against \(5\) |
| Major sixth | \(5:3\) | \(5\cdot3^{-1}\) | \(15\) | Direct \(5\)-against-\(3\) relation |
| Major second | \(9:8\) | \(3^2\cdot2^{-3}\) | \(72\) | Two fifth steps normalized by octaves |
| Minor second | \(16:15\) | \(2^4\cdot3^{-1}\cdot5^{-1}\) | \(240\) | Tight interference of \(2,3,5\) |
| Minor seventh | \(16:9\) | \(2^4\cdot3^{-2}\) | \(144\) | Complement of \(9:8\) in octave space |
| Major seventh | \(15:8\) | \(3\cdot5\cdot2^{-3}\) | \(120\) | Composite \(3\cdot5\) against octave cube |

This table belongs in the cymatic and tiling synthesis because it converts interval language into phase arithmetic. Once intervals are understood as phase-return ratios, they can be applied to polygonal grids, mode interactions, toroidal windings, and Hopf fibers without turning them into decorative numerology.

# 10. Polygonal grids and inscribed/circumscribed layers

Let a circle of radius \(r\) be used as the circumcircle of an inscribed regular \(n\)-gon and as the incircle of a circumscribed regular \(n\)-gon.

The inscribed side length is

\[
s_{\mathrm{in}}
=
2r\sin\left(\frac{\pi}{n}\right).
\]

The circumscribed side length is

\[
s_{\mathrm{out}}
=
2r\tan\left(\frac{\pi}{n}\right).
\]

Therefore the perimeter ratio is

\[
\frac{P_{\mathrm{in}}}{P_{\mathrm{out}}}
=
\frac{n\,2r\sin(\pi/n)}
{n\,2r\tan(\pi/n)}
=
\cos\left(\frac{\pi}{n}\right).
\]

The area ratio is

\[
\frac{A_{\mathrm{in}}}{A_{\mathrm{out}}}
=
\cos^2\left(\frac{\pi}{n}\right).
\]

These formulas describe the nested polygonal layers of the ladder. The circle acts as the curve. The polygon acts as the gridded linear sampling. The inscribed and circumscribed forms are inner and outer cuts of the same circular phase boundary.

# 11. Special polygonal interval layers

| Polygon | \(n\) | \(P_{\mathrm{in}}:P_{\mathrm{out}}\) | \(A_{\mathrm{in}}:A_{\mathrm{out}}\) | Interval reading |
|---|---:|---:|---:|---|
| Triangle | \(3\) | \(1:2\) | \(1:4\) | Octave in linear layer; double octave in area layer |
| Square | \(4\) | \(\sqrt2:2\) | \(1:2\) | Octave in area layer |
| Pentagon | \(5\) | \(\phi:2\) | \(\phi^2:4\) | Golden-field layer |
| Hexagon | \(6\) | \(\sqrt3:2\) | \(3:4\) | Perfect fourth in area layer |
| Octagon | \(8\) | \(\cos(22.5^\circ):1\) | \(\cos^2(22.5^\circ):1\) | \(\sqrt2\)-nested layer |
| Decagon | \(10\) | \(\cos(18^\circ):1\) | \(\cos^2(18^\circ):1\) | Golden/cyclotomic refinement |
| Dodecagon | \(12\) | \(\cos(15^\circ):1\) | \(\cos^2(15^\circ):1\) | Mixed \(\sqrt2,\sqrt3\) layer |

This table shows why not every musical interval should be forced into one inscribed/circumscribed polygon pair. Some intervals arise naturally from these layers. Others are better represented by direct edge scaling or cyclic interference.

# 12. Direct scaling of intervals in polygonal space

For a regular \(n\)-gon of edge length \(a\), perimeter is

\[
P_n(a)=na.
\]

Two similar \(n\)-gons with edge lengths \(a\) and \(b\) have perimeter ratio

\[
P_n(a):P_n(b)=a:b.
\]

Thus every interval \(p:q\) can be represented by direct edge scaling:

\[
a:b=p:q.
\]

This is the cleanest way to map the full musical interval table into polygonal space. Inscribed/circumscribed layers give special geometric intervals. Direct scaling gives the complete interval grammar.

The two systems are complementary:

\[
\text{circumscription}
\Rightarrow
\text{special ratios generated by a circle-polygon cut},
\]

\[
\text{direct scaling}
\Rightarrow
\text{arbitrary interval ratios imposed as edge/perimeter relation}.
\]


## 12.1 Pure proportional interval constructions

The pure-proportion layer should be read as its own registry, adjacent to but distinct from the inscribed/circumscribed circle-polygon layer. In this layer the goal is not to derive every interval from a single circular cut. The goal is to represent the interval directly as a proportional relation among edge lengths, perimeters, or cyclic counts.

For two similar polygons of the same type, the rule is immediate:

\[
\frac{P_n(a)}{P_n(b)}
=
\frac{na}{nb}
=
\frac{a}{b}.
\]

So if the edge lengths are set in the ratio \(p:q\), the perimeters also stand in the ratio \(p:q\). This gives the base-consistent interval construction without introducing \(\pi\), \(\sin\), \(\tan\), or square-root constants.

When two different polygon types are compared, the side counts must be included. If an \(m\)-gon has edge length \(a\) and an \(n\)-gon has edge length \(b\), then

\[
P_m(a):P_n(b)=ma:nb.
\]

Therefore, to obtain a desired perimeter interval

\[
p:q,
\]

the edge lengths must satisfy

\[
a:b=\frac{p/m}{q/n}=\frac{pn}{qm}.
\]

This correction matters. A pentagon and a triangle with equal edge lengths have perimeter ratio

\[
5a:3a=5:3,
\]

which gives the major sixth. But if their edge lengths were also set to \(5:3\), the perimeter ratio would become

\[
5(5a):3(3a)=25:9,
\]

not \(5:3\). Thus, for different polygon types, either equal edges may create the interval through side-count ratio, or adjusted edges must compensate for the side counts.

## 12.2 Spelled-out Pythagorean polygonal interval list

The following list gives the simple proportional interval constructions plainly, before the more complex trigonometric and Hopf-layer interpretations.

| Interval | Ratio | Plain polygonal construction | Perimeter verification | Registry meaning |
|---|---:|---|---|---|
| Unison | \(1:1\) | Any shape compared with itself; edge lengths \(a:a\). | \(P:P=1:1\). | Identity; no phase separation. |
| Perfect octave | \(2:1\) | Two similar triangles, squares, or other same-type polygons with edge lengths \(2a:a\). Also appears as the triangle inscribed/circumscribed perimeter layer \(1:2\). | \(n(2a):na=2:1\). | Binary doubling or halving. |
| Perfect fifth | \(3:2\) | Two similar polygons with edge lengths \(3a:2a\); for example, two triangles or two squares. | \(n(3a):n(2a)=3:2\). | Primitive \(3\)-against-\(2\) relation. |
| Perfect fourth | \(4:3\) | Two similar polygons with edge lengths \(4a:3a\). Also appears as the hexagon inscribed/circumscribed area layer \(3:4\), read inversely as \(4:3\). | \(n(4a):n(3a)=4:3\). | Complement of the fifth inside octave structure. |
| Major third | \(5:4\) | Two similar pentagons, triangles, squares, or other same-type polygons with edge lengths \(5a:4a\). | \(n(5a):n(4a)=5:4\). | Prime \(5\) against octave square \(2^2\). |
| Major sixth | \(5:3\) | A pentagon and triangle with equal edge length \(a\), giving perimeters \(5a:3a\). Alternatively, two same-type polygons with edge lengths \(5a:3a\). | Different-type version: \(5a:3a=5:3\). Same-type version: \(n(5a):n(3a)=5:3\). | Direct \(5\)-against-\(3\) relation. |
| Minor third | \(6:5\) | A hexagon and pentagon with equal edge length \(a\), giving perimeters \(6a:5a\). Alternatively, two same-type polygons with edge lengths \(6a:5a\). | Different-type version: \(6a:5a=6:5\). Same-type version: \(n(6a):n(5a)=6:5\). | Composite \(2\cdot3\) against \(5\). |
| Major second | \(9:8\) | Two similar polygons with edge lengths \(9a:8a\). | \(n(9a):n(8a)=9:8\). | \(3^2\) against \(2^3\). |
| Minor second | \(16:15\) | Two similar polygons with edge lengths \(16a:15a\). | \(n(16a):n(15a)=16:15\). | Tight \(2^4\) against \(3\cdot5\) interference. |
| Minor seventh | \(16:9\) | Two similar polygons with edge lengths \(16a:9a\). | \(n(16a):n(9a)=16:9\). | \(2^4\) against \(3^2\). |
| Major seventh | \(15:8\) | Two similar polygons with edge lengths \(15a:8a\). | \(n(15a):n(8a)=15:8\). | Composite \(3\cdot5\) against \(2^3\). |

This list is the base-consistent proportional layer. It belongs before the prime/composite interference discussion because it supplies the plain geometric interval vocabulary. The later Hopf and polygonal-grid sections then explain how these same ratios behave as phase windings, cyclic returns, and gridded interference patterns.



## 12.3 Why the circle of fifths appears in a twelve-tone octave registry

The circle of fifths should be stated constructively, not introduced through floating-point logarithmic approximation. The decimal calculation belongs only to a later comparison between registries. It should not define the registry itself.

The constructive starting point is octave equivalence:

\[
f\sim 2^k f.
\]

This identifies frequencies that differ by octave powers and turns pitch into a circular phase class. In the geometric language of this paper, the octave is an \(S^1\)-fiber relation: the whole repeats under doubling, while positions inside the octave are sampled as phase locations.

A standard twelve-tone octave declares a twelvefold cyclic grid:

\[
C_{12}=\mathbb{Z}/12\mathbb{Z}.
\]

This is not a decimal construction. It is a finite cyclic registry. Geometrically, it is a dodecagonal sampling of a circle. Constructively, a twelvefold circle can be obtained from a single radius circle by constructing a hexagon from radius chords and then bisecting the arcs or angles. No floating-point termination, degree measure, or decimal approximation is needed to define the twelvefold registry.

The perfect fifth is the primitive \(3:2\) relation:

\[
\frac{3}{2}=3\cdot2^{-1}.
\]

It introduces the prime \(3\) against the octave prime \(2\). When this relation is transported into the declared twelvefold octave registry, it is represented by the primitive step

\[
+7\pmod{12}.
\]

Equivalently, since

\[
7\equiv -5\pmod{12},
\]

the same transport may be read in the reverse orientation as a five-step descent. This is why the geometry naturally appears as a star traversal of the twelvefold circle.

The circle of fifths follows from one exact fact:

\[
\gcd(7,12)=1.
\]

Because \(7\) and \(12\) are coprime, repeated fifth-transports visit every pitch class before returning to the starting point:

\[
0,\ 7,\ 2,\ 9,\ 4,\ 11,\ 6,\ 1,\ 8,\ 3,\ 10,\ 5,\ 0
\quad
(\bmod 12).
\]

Thus the circle of fifths is not an accidental diagram. It is the orbit of a primitive generator of the cyclic group

\[
\mathbb{Z}/12\mathbb{Z}.
\]

In group-theoretic terms,

\[
\langle 7\rangle=\mathbb{Z}/12\mathbb{Z}.
\]

In polygonal terms, it is the star-polygon traversal of a dodecagonal phase grid by the step \(7\), equivalently by the opposite-oriented step \(5\). In Hopf-fiber language, it is a finite cyclic sampling of the \(S^1\) fiber in which fifth-transport crosses all twelve declared phase cells before closure.

This also shows why non-primitive steps do not produce the full circle. A step \(s\) on \(C_{12}\) closes after

\[
\frac{12}{\gcd(s,12)}
\]

steps and visits only that many distinct cells. For example:

\[
s=2\Rightarrow 6 \text{ cells},
\qquad
s=3\Rightarrow 4 \text{ cells},
\qquad
s=4\Rightarrow 3 \text{ cells},
\qquad
s=6\Rightarrow 2 \text{ cells}.
\]

Only steps coprime to \(12\) generate the whole twelvefold registry. The fifth-step \(7\) is one such primitive generator.

## 12.4 Why calculus and decimal approximation introduce avoidable residue

The common calculation

\[
12\log_2\left(\frac{3}{2}\right)
\]

compares a pure Pythagorean ratio \(3:2\) with a logarithmic equal-temperament coordinate system. That comparison has value, but it is not the primitive construction. It imports a continuous analytic measuring apparatus into a discrete constructive registry.

The more registry-faithful sequence is:

1. Construct the octave as a doubling relation.
2. Declare or construct the twelvefold cyclic phase grid \(C_{12}\).
3. Transport the fifth as the primitive generator \(+7\pmod{12}\).
4. Observe that \(\gcd(7,12)=1\), so the transport traverses all twelve pitch classes.
5. Only then compare this closed twelvefold registry with pure Pythagorean stacking.

The comparison with pure stacking produces an exact rational residue, not a decimal artifact. Twelve pure fifths produce

\[
\left(\frac{3}{2}\right)^{12}
=
\frac{3^{12}}{2^{12}},
\]

while seven octaves produce

\[
2^7.
\]

Their ratio is the Pythagorean comma:

\[
\frac{(3/2)^{12}}{2^7}
=
\frac{3^{12}}{2^{19}}.
\]

This is exact. No decimal expansion is required. The residue appears because two registries are being transported into one another:

- the pure ratio registry generated by \(2\) and \(3\);
- the closed twelvefold equal-tempered octave registry \(C_{12}\).

Equal temperament closes the dodecagonal phase circle by distributing this comma across the twelve cells. In the language of this paper, equal temperament is a transport method that forces the prime-\(3\) fifth-cycle to close inside the octave-\(2\) twelvefold grid. The closure is useful, but it carries a known residue relative to pure \(3:2\) stacking.

This is the larger point. If one begins with floating-point calculus, the artifact looks like a mysterious approximation problem. If one begins with constructive geometry and finite cyclic transport, the structure is exact: the circle of fifths is generated by coprimality in \(C_{12}\), and the comma is the exact residue of transporting between pure ratio and closed tempered registries.

# 13. Prime and non-prime interference in polygonal layers

Let two polygonal phase samplings be \(C_m\) and \(C_n\), where \(C_k\) denotes a \(k\)-fold cyclic grid. Their combined grid closes after

\[
\operatorname{lcm}(m,n)
\]

phase cells.

If

\[
\gcd(m,n)=1,
\]

then

\[
\operatorname{lcm}(m,n)=mn.
\]

This is primitive interference. The two grids delay full realignment as much as possible relative to their sizes.

If

\[
d=\gcd(m,n)>1,
\]

then the interference decomposes into the reduced relation

\[
m:n
=
\frac{m}{d}:\frac{n}{d}.
\]

This is reducible interference. It closes earlier because the two grids share a common divisor.

Examples:

- Triangle against square: \(3\) against \(4=2^2\), closure \(12\), structurally related to \(4:3\).
- Triangle against pentagon: \(3\) against \(5\), closure \(15\), structurally related to \(5:3\).
- Square against pentagon: \(4\) against \(5\), closure \(20\), structurally related to \(5:4\).
- Hexagon against pentagon: \(6=2\cdot3\) against \(5\), closure \(30\), structurally related to \(6:5\).
- Octagon against pentadecagon: \(8=2^3\) against \(15=3\cdot5\), closure \(120\), structurally related to \(15:8\).

This gives the precise meaning of prime and non-prime interference in gridded polygonal spaces.

# 14. Hopf fibers and polygonal phase sampling

The Hopf fibration is

\[
S^1
\longrightarrow
S^{2n+1}
\longrightarrow
\mathbb{CP}^{n}.
\]

The fiber \(S^1\) supplies circular phase. A regular polygon \(C_n\) is a finite sampling of that circular phase:

\[
S^1
\leadsto
C_n.
\]

An interval \(p:q\) describes two windings against the same circular fiber:

\[
e^{ip\theta}
\quad\text{and}\quad
e^{iq\theta}.
\]

The interference pattern is governed by \(\gcd(p,q)\), \(\operatorname{lcm}(p,q)\), and prime factorization. The total Hopf space preserves phase information. The projective base records a quotient relation. The visible polygonal or cymatic figure is a further selection or projection.

Thus the Hopf-layer reading is:

\[
\text{fiber phase}
+
\text{finite polygonal sampling}
+
\text{projection to base}
\longrightarrow
\text{visible interference registry}.
\]

Inscribed and circumscribed polygonal layers then become inner and outer samples around the same fiber phase. They are not separate objects. They are paired metric cuts of one circular phase relation.

# 15. Other tilings as companion registries

The Penrose tiling is not the only tiling that matters to this synthesis. It is the \(5\)-fold golden case. Other tilings occupy other arithmetic rungs.

## 15.1 Ammann-Beenker tilings

Ammann-Beenker tilings display \(8\)-fold quasiperiodic order. Their scaling involves the silver ratio

\[
1+\sqrt2.
\]

They belong to the \(\sqrt2\) rung and demonstrate how octagonal quasicrystal order emerges outside ordinary lattice periodicity.

## 15.2 Dodecagonal tilings

Dodecagonal tilings display \(12\)-fold quasiperiodic order and involve \(\sqrt3\)-related angular structure. They show another way noncrystallographic visible order can arise from projection or substitution.

## 15.3 Periodic square, triangular, and hexagonal tilings

Square, triangular, and hexagonal tilings occupy ordinary crystallographic space. They support rotation orders

\[
n\in\{1,2,3,4,6\}.
\]

The crystallographic restriction can be expressed by the requirement

\[
2\cos\left(\frac{2\pi}{n}\right)\in\mathbb{Z}
\]

for a rank-two lattice-preserving rotation.

This separates periodic lattice order from quasiperiodic projected order. The excluded orders do not vanish; they require a different registry.

# 16. Chladni, Penrose, Hopf, and interval dictionary

The following table restores Section 16 as a proper table while avoiding the cramped six-column layout. Each row preserves the six registry components: domain, constraint, selection locus, phase or scale parameter, and visible form.

\begingroup
\small
\setlength{\tabcolsep}{6pt}
\renewcommand{\arraystretch}{1.25}

\begin{longtable}{p{0.23\textwidth} p{0.70\textwidth}}
\caption{Registry dictionary for Chladni, Penrose, Hopf, interval, and polygonal systems.}\\
\hline
\textbf{Registry} & \textbf{Structure of the registry} \\
\hline
\endfirsthead

\hline
\textbf{Registry} & \textbf{Structure of the registry} \\
\hline
\endhead

\hline
\endfoot

\textbf{Chladni plate}
&
\textbf{Domain:} a vibrating plate or bounded domain \(\Omega\subset\mathbb{R}^{2}\). \newline
\textbf{Constraint:} a spectral equation such as \(-\Delta\psi=\lambda\psi\), together with boundary conditions. \newline
\textbf{Selection locus:} the nodal set \(Z(\psi)=\{x\in\Omega:\psi(x)=0\}\). \newline
\textbf{Phase / scale parameter:} frequency, eigenvalue, and eigenspace phase \(\theta\). \newline
\textbf{Visible form:} a Chladni nodal figure. \\

\textbf{Cymatic medium}
&
\textbf{Domain:} a membrane, fluid, plate, powder-covered surface, or other driven resonant medium. \newline
\textbf{Constraint:} wave equation, forcing term, material response, and boundary condition. \newline
\textbf{Selection locus:} nodes, antinodes, and material accumulation regions. \newline
\textbf{Phase / scale parameter:} drive frequency, amplitude, phase, and boundary geometry. \newline
\textbf{Visible form:} a standing-wave or cymatic pattern. \\

\textbf{Penrose tiling}
&
\textbf{Domain:} a higher-dimensional lattice projected into a visible plane, \(\mathbb{Z}^{5}\to E_{\parallel}\). \newline
\textbf{Constraint:} irrational projection, acceptance window \(W\), local matching, and golden-ratio inflation. \newline
\textbf{Selection locus:} lattice points satisfying \(\pi_{\perp}(n)\in W\). \newline
\textbf{Phase / scale parameter:} inflation by \(\phi\), window offset, substitution level, and local matching state. \newline
\textbf{Visible form:} a nonperiodic Penrose tiling or finite Penrose patch. \\

\textbf{de Bruijn pentagrid}
&
\textbf{Domain:} five line families in the plane, each carrying an integer coordinate. \newline
\textbf{Constraint:} the pentagrid line-coordinate registry and dual tiling construction. \newline
\textbf{Selection locus:} changes in integer line coordinates and dual-grid adjacency. \newline
\textbf{Phase / scale parameter:} offset vector \(\gamma=(\gamma_0,\gamma_1,\gamma_2,\gamma_3,\gamma_4)\). \newline
\textbf{Visible form:} a Penrose tiling patch generated by multigrid data. \\

\textbf{Musical interval}
&
\textbf{Domain:} circular phase cycles, modeled by \(S^1\). \newline
\textbf{Constraint:} a frequency or phase-return ratio \(p:q\). \newline
\textbf{Selection locus:} phase realignment and interference closure. \newline
\textbf{Phase / scale parameter:} \(\gcd(p,q)\), \(\operatorname{lcm}(p,q)\), and prime factorization. \newline
\textbf{Visible form:} a consonance, dissonance, beat, or interference class. \\

\textbf{Polygonal layer}
&
\textbf{Domain:} a circle sampled by a regular \(n\)-gon, including inscribed and circumscribed cuts. \newline
\textbf{Constraint:} the polygon-circle relations
\[
\frac{P_{\mathrm{in}}}{P_{\mathrm{out}}}=\cos\left(\frac{\pi}{n}\right),
\qquad
\frac{A_{\mathrm{in}}}{A_{\mathrm{out}}}=\cos^2\left(\frac{\pi}{n}\right).
\]
\textbf{Selection locus:} inner and outer perimeter or area layers. \newline
\textbf{Phase / scale parameter:} polygon count \(n\), radius, edge scale, and nesting depth. \newline
\textbf{Visible form:} a gridded approximation of circular phase. \\

\textbf{Hopf layer}
&
\textbf{Domain:} a phase bundle \(S^{2n+1}\to\mathbb{CP}^{n}\). \newline
\textbf{Constraint:} fiber/base projection under the Hopf-style relation
\[
S^1\longrightarrow S^{2n+1}\longrightarrow \mathbb{CP}^{n}.
\]
\textbf{Selection locus:} fiber phase, quotient relation, or chosen cross-section. \newline
\textbf{Phase / scale parameter:} \(S^1\) fiber phase and projected base coordinate. \newline
\textbf{Visible form:} a projected phase registry or polygonal/toroidal cross-section. \\

\hline
\end{longtable}
\endgroup

This table is the heart of the synthesis. These structures show the same thing about registries: visible form is not raw unframed substance. It is constrained selection under a rule.

# 17. The \(1/f\) bridge

The \(1/f\) bridge belongs in this synthesis only under its proper mathematical scope. Suppose a signal is a superposition of relaxation modes with spectra

\[
S_\tau(f)
=
\frac{C\tau}{1+(2\pi f\tau)^2}.
\]

If the density of timescales is approximately log-uniform,

\[
g(\tau)\propto \frac{1}{\tau}
\quad
\text{for}
\quad
\tau\in[\tau_{\min},T],
\]

then

\[
S(f)
=
\int_{\tau_{\min}}^{T}
\frac{C\tau}{1+(2\pi f\tau)^2}g(\tau)\,d\tau.
\]

Taking \(g(\tau)=K/\tau\),

\[
S(f)
=
CK
\int_{\tau_{\min}}^{T}
\frac{1}{1+(2\pi f\tau)^2}\,d\tau.
\]

With \(u=2\pi f\tau\),

\[
S(f)
=
\frac{CK}{2\pi f}
\int_{2\pi f\tau_{\min}}^{2\pi fT}
\frac{1}{1+u^2}\,du.
\]

In the intermediate band

\[
\frac{1}{T}\ll f\ll \frac{1}{\tau_{\min}},
\]

the integral is approximately constant, giving

\[
S(f)\propto \frac{1}{f}.
\]

Thus \(1/f\) behavior arises when a system samples across a log-uniform hierarchy of unresolved timescales. In the present synthesis, that means \(1/f\) is a possible signature of scale-seam translation. It is not asserted as an unconditional property of every tiling or every cymatic pattern.

# 18. Kolmogorov \(5/3\) and the major sixth

The Kolmogorov inertial-range law is

\[
E(k)\propto k^{-5/3}.
\]

The major sixth is the musical interval

\[
5:3.
\]

The shared \(5/3\) invites comparison, especially inside a corpus concerned with scale cascades and interval ratios. But a spectral exponent is not the same mathematical object as a frequency ratio. Without a specific derivation connecting a turbulent operator to a musical interval registry, this relation should remain analogical.

The rigorous statement is:

> \(5/3\) appears as a scaling exponent in turbulence and as a frequency ratio in just intonation. Their comparison is structurally suggestive, not an identity.

This preserves the insight while preventing false equivalence.

# 19. Tetrahedral correction and spherical cuts

For a regular tetrahedron with edge length \(a\), the circumradius and inradius are

\[
R=\frac{a\sqrt6}{4},
\qquad
r=\frac{a\sqrt6}{12}.
\]

Therefore

\[
r:R=1:3.
\]

This corrects the erroneous \(1:6\) claim. The \(1:3\) relation remains useful. It describes inner and outer spherical cuts of a tetrahedral layer. In the ladder, this can be treated as a three-dimensional analogue of inscribed/circumscribed polygonal cuts.

# 20. Consolidated theorem

## Theorem: Registry equivalence of resonant visible forms

Let \(S\) be a source domain: a lattice, a plate, a membrane, a circle, a tiling hull, or a phase bundle. Let \(C\) be a constraint: a spectral operator, projection rule, matching rule, interval ratio, boundary condition, or fiber relation. Let \(\mathcal{O}\) be a selection map that extracts a visible or nameable locus from \(S\). Let \(\theta\) denote a phase, offset, scale, frequency, or substitution parameter. Let \(\sim\) be an equivalence relation declaring when selected forms count as the same registry object.

Define

\[
F_{\theta}
=
\mathcal{O}_{\theta}(S,C)/\sim.
\]

If \(F_{\theta}\) persists under the relevant transformations while permitting local variation as \(\theta\) changes, then \(F_{\theta}\) is a resonant named form in the registry determined by \((S,C,\mathcal{O},\theta,\sim)\).

Chladni figures, cymatic patterns, Penrose tiling patches, de Bruijn multigrid shifts, polygonal interval layers, and Hopf-fiber phase projections instantiate this theorem under their respective choices of source, constraint, selection, phase, and equivalence.

## Proof sketch

For Chladni figures, \(S=\Omega\), \(C\) is the Helmholtz operator plus boundary conditions, \(\mathcal{O}\) selects nodal or antinodal loci, and \(\theta\) is frequency or eigenspace phase. Persistence comes from the eigenspace and boundary condition.

For Penrose tilings, \(S=\mathbb{Z}^5\), \(C\) is the irrational projection plus acceptance window, \(\mathcal{O}\) selects lattice points whose internal projections lie in \(W\), and \(\theta\) may be a window offset, inflation level, or matching-rule state. Persistence comes from the tiling hull, local isomorphism class, and algebraic module.

For interval ratios, \(S=S^1\), \(C\) is the phase relation \(p:q\), \(\mathcal{O}\) selects realignment or interference loci, and \(\theta\) is cyclic phase. Persistence comes from reduced ratio, prime factorization, and least-common-multiple closure.

For Hopf layers, \(S=S^{2n+1}\), \(C\) is the fiber/base relation, \(\mathcal{O}\) is projection to \(\mathbb{CP}^n\) or to a chosen cross-section, and \(\theta\) is fiber phase. Persistence comes from the bundle relation.

In each case, visible form arises from constrained selection. Therefore the systems are not identical in substance, but equivalent in registry structure. \(\square\)

# 21. Final synthesis

Chladni figures, cymatic patterns, Penrose tilings, interval ratios, polygonal grids, and Hopf layers all show how registries work. They show that complex form can arise from simple rules when those rules are iterated, projected, excited, or sampled under constraint.

The Chladni plate shows this through nodal loci of wave eigenmodes. The Penrose tiling shows it through higher-dimensional lattice projection and golden-field inflation. Musical intervals show it through phase-return ratios and prime-factor interference. Polygonal grids show it through inscribed and circumscribed cuts of circular phase. Hopf language shows it through the relation between fiber phase, total space, and projected base.

The circle-of-fifths example sharpens the same point. When the base-12 cyclic registry is constructed first, the fifth is an exact primitive transport step, not a decimal approximation. Decimal/logarithmic artifacts appear only when a continuous analytic coordinate system is imposed as the measuring frame for a finite constructive registry.

The common structure is not a vague resemblance. It is a disciplined registry grammar:

\[
\text{rule}
+
\text{constraint}
+
\text{selection locus}
+
\text{phase or scale}
+
\text{persistence}
\longrightarrow
\text{visible form}.
\]

This is the music of the line and curve's dance. The line counts, grids, factors, and names. The curve carries phase, closure, and continuous relation. Their interference produces the forms that become visible enough to share.

# References

- de Bruijn, N. G. "Algebraic theory of Penrose's non-periodic tilings of the plane." *Indagationes Mathematicae* 43, no. 1 (1981): 39-52; 53-66.
- Gardner, M. "Extraordinary nonperiodic tiling that enriches the theory of tiles." *Scientific American* 236, no. 1 (1977): 110-121.
- Grünbaum, B., and Shephard, G. C. *Tilings and Patterns.* W. H. Freeman, 1987.
- Penrose, R. "The role of aesthetics in pure and applied mathematical research." *Bulletin of the Institute of Mathematics and its Applications* 10 (1974): 266-271.
- Sadun, L. *Topology of Tiling Spaces.* American Mathematical Society, 2008.
- Senechal, M. *Quasicrystals and Geometry.* Cambridge University Press, 1995.
- Courant, R., and Hilbert, D. *Methods of Mathematical Physics, Volume I.* Wiley.
- Kac, M. "Can one hear the shape of a drum?" *American Mathematical Monthly* 73, no. 4 (1966): 1-23.
- Rayleigh, J. W. S. *The Theory of Sound.* Macmillan.
