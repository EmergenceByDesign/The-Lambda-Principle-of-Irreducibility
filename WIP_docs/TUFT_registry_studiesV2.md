---
title: "Operator-Agnostic Geometry, Topological Obstruction, and Why Completeness Is Not Comprehension"
subtitle: "The lift–twist–reattach operation as norm factorization, a quantitative registry/map separation, and the charged-lepton hierarchy as a spectral-determinant curvature"
author: "Lu Semita & Jenny Lorraine Nielsen · EmergenceByDesign"
date: "Working draft — June 2026"
---

> **Registry Studies · Lambda / NSAF / TUFT.** This paper collects the parts of the program that stand on standard, independently checkable mathematics, states them at full rigor, and marks exactly where the framework reading begins. Every identity below is verified symbolically; every spectral and information-theoretic fact is standard. The contribution is the assembly, the residue lens, the identification of *lift–twist–reattach* with a norm factorization, a quantitative demonstration that membership in a complete registry is uninformative, the consolidation of the √5 rung across its algebraic, spectral, and geometric realizations (Penrose inflation and Chladni degeneracy), and an honest accounting of the charged-lepton hierarchy as a spectral-determinant curvature. Framework readings are flagged as the authors' own and are not claimed to be institutionally accepted.

**Tier legend.** **Tier I — Verifiable:** standard, checkable mathematics, stated as fact. **Tier II — Structural:** exact correspondences of structure across systems, read within the framework. **Tier III — Program:** framework readings and constructions still to be specified, offered as direction, the authors' own.

---

## 1. Operator-agnostic geometry

**Tier I — Verifiable.**

The framework fixes a carrier *before* placing any differential operator on it, and the carrier is built from circles. The Hopf fibration $S^1 \hookrightarrow S^3 \to S^2$ threads circle fibers over a sphere so that any two distinct fibers are linked exactly once (linking number $\pm 1$), and the bundle map generates $\pi_3(S^2)\cong\mathbb{Z}$ with Hopf invariant one. Iterating, $S^1 \hookrightarrow S^{2n+1}\to\mathbb{CP}^n$ stacks the same construction through every odd-dimensional shell.

Between the fibers sit the Clifford tori. Writing $S^3=\{(z_1,z_2)\in\mathbb{C}^2 : |z_1|^2+|z_2|^2=1\}$, the family
$$T_r=\{(z_1,z_2)\in S^3 : |z_1|=r,\ |z_2|=\sqrt{1-r^2}\},\qquad r\in(0,1),$$
foliates $S^3$ minus two core circles (a linked pair of fibers), and each $T_r$ is the preimage of a latitude circle on $S^2$. The equatorial case $r=1/\sqrt 2$ is the intrinsically flat Clifford torus $|z_1|=|z_2|=1/\sqrt2$.

The conjugate pair is exact here. There are two Hopf fibrations of opposite handedness — left, $(z_1,z_2)\mapsto(e^{i\theta}z_1,e^{i\theta}z_2)$, and right, $(z_1,z_2)\mapsto(e^{i\theta}z_1,e^{-i\theta}z_2)$. Parametrizing the Clifford torus by $(\tfrac1{\sqrt2}e^{i\alpha},\tfrac1{\sqrt2}e^{i\beta})$, the left action moves $(\alpha,\beta)\mapsto(\alpha+\theta,\beta+\theta)$ and the right action moves $(\alpha,\beta)\mapsto(\alpha+\theta,\beta-\theta)$: the diagonal geodesic families $(1,1)$ and $(1,-1)$, a genuine orientation-reversed conjugate pair.

**Operator-agnosticism.** The carrier is a smooth Riemannian manifold; operators come second. The Laplace–Beltrami operator on functions, the Hodge Laplacian on forms, and the Dirac operator on spinors all act on this same carrier, each with a discrete real spectrum fixed by the geometry, each tied to the others by standard identities. On the round $S^3$ the spectra are explicit:
$$\Delta:\ \lambda_k=k(k+2)\ \ (\text{mult. }(k+1)^2),\qquad |\!\!\not{D}|:\ \tfrac{3}{2}+k\ \ (k=0,1,2,\dots),$$
and the Lichnerowicz–Weitzenböck identity $\not{D}^2=\nabla^*\nabla+\tfrac{R}{4}$ relates the Dirac square to the connection Laplacian and the scalar curvature. No single operator is foundational. The framework is *operator-agnostic* precisely in the sense that it can equally well read the carrier through Dirac or through Beltrami; a spectrum is a reading of the carrier through a chosen operator, not a property of the operator alone.

**Tier III — Framework reading.** Whether this nested continuum of looped circles is *constitutive* of physical reality or only its most economical description is left open — and the distinction is partly terminological, turning on whether "real" is taken to mean the best definable, modellable structure or something beyond what any model licenses. Either reading is the author's interpretation and is not required for any method below.

---

## 2. The irreducible-residue lens and the obstruction spine

To say what a re-description cannot remove, the framework needs one abstract object, then a spine of genuine obstructions that the object describes faithfully.

**Tier I — Verifiable.**

**The residue.** Let $X$ be a space of states. For $x\in X$ let $R(x)$ be a nonempty set of admissible representations (charts, gauges, encodings, coarse-grainings). Fix a target $T$ (a global trivialisation, a flattening, a consistent gluing) and an obstruction functional $\mathcal{O}(r,x;T)\in[0,\infty]$. The **irreducible residue** is the orbit-minimised obstruction,
$$\mathcal{I}(x;T):=\inf_{r\in R(x)}\mathcal{O}(r,x;T),\qquad \mathcal{A}(r,x;T):=\mathcal{O}-\mathcal{I}\ge 0,\qquad \mathcal{O}=\mathcal{A}+\mathcal{I}.$$
Orbit invariance and monotonicity ($R_2\subseteq R_1\Rightarrow\mathcal{I}|_{R_2}\ge\mathcal{I}|_{R_1}$) are immediate. A caution: $\mathcal{O}(r)>0$ for every $r$ does *not* give $\mathcal{I}>0$; positivity needs either compact attainment or a uniform separation $\mathcal{O}(r)\ge\delta$.

**Gauge holonomy (Gribov–Singer).** For a principal bundle of connections $\mathcal{A}$ modulo gauge $\mathcal{G}$ with compact non-Abelian structure group, Singer's theorem (1978) states that $\mathcal{A}\to\mathcal{A}/\mathcal{G}$ admits no global continuous section — no global gauge-fixing exists. With $T=$ global trivialisation and admissible representations the local gauge choices, the failure is topological and survives every re-description:
$$\mathcal{I}\big(\mathcal{A}/\mathcal{G};\ \text{global section}\big)>0.$$
A clean, citable positive residue, established independently of any framework.

**The degree-one de Rham residue.** On the punctured plane $\mathbb{R}^2\setminus\{0\}$ take
$$\omega=\frac{-y\,dx+x\,dy}{x^2+y^2}.$$
Direct computation gives $d\omega=0$ (closed, curl-free), yet $\oint_{S^1}\omega=2\pi\neq 0$, so $\omega$ is not exact: it is not the gradient of any single-valued function. Its would-be potential is the angle $\theta$, which jumps by $2\pi$ per turn. The residue $2\pi$ is not error; it counts how the domain wraps its hole. The exact measure of "closed but not exact" is de Rham cohomology,
$$H^k_{\mathrm{dR}}(M)=\frac{\ker(d:\Omega^k\to\Omega^{k+1})}{\operatorname{im}(d:\Omega^{k-1}\to\Omega^k)},$$
and on a contractible domain the Poincaré lemma forces every $H^k=0$: the obstruction is never local, only global.

**Orientability.** Orientability of a smooth manifold $M$ is governed by a single degree-one class, the first Stiefel–Whitney class,
$$w_1(TM)\in H^1(M;\mathbb{Z}/2),\qquad M\ \text{orientable}\iff w_1(TM)=0.$$
A non-orientable surface is one on which a local orientation transported around the wrong loop returns reversed — the same kind of degree-one obstruction as the de Rham residue, in a different coefficient system.

**The universal gluing obstruction.** The shared slot is a theorem, not a metaphor: a degree-one cohomology class $H^1$ is the universal obstruction to extending compatible local data to a single global object. In Čech terms, local sections that agree on overlaps glue into one global section exactly when the corresponding class in $\check H^1$ vanishes.

**Tier II — Structural.** Reading $\check H^1$-as-gluing-obstruction *as* the registry compatibility law is the framework's interpretive step: the product rule / trivial-class case is where everything globalizes; the Möbius / $w_1\neq 0$ case is where a coherent global description exists only after lifting to a carrier on which the class can be represented.

**Hodge reattachment.** The one composite of $d$ and its adjoint that does not vanish is the Laplacian. On a compact, oriented, Riemannian manifold the Hodge theorem gives a unique harmonic representative in each class,
$$H^k_{\mathrm{dR}}(M;\mathbb{R})\ \cong\ \mathcal{H}^k(M)=\{\omega:\Delta\omega=0\}.$$
The Laplacian selects the canonical, coordinate-free representative of each residue — reattachment made constructive. The hypotheses are load-bearing: on a non-orientable $M$ one works through the orientation double cover or twisted coefficients, with $w_1$ the quantity to account for either way.

---

## 3. Lift–twist–reattach, made rigorous

The operation that recurs across these instances has three beats: **lift** a description into a higher-capacity container; **twist** it into a conjugate pair carrying opposite couplings; **reattach** by recomposing so the original invariant is recovered exactly. This section pins the operation to two exact realizations.

**Tier I — Verifiable.**

**The algebraic prototype (Germain, $p=2$).** Sophie Germain's identity is a sum that ought not to factor over the integers, yet does:
$$x^4+4y^4=(x^2+2xy+2y^2)(x^2-2xy+2y^2)=(x^2+2y^2)^2-(2xy)^2.$$
Each factor is irreducible over $\mathbb{R}$ — as a quadratic in $x$, the discriminant is $-4y^2<0$. The **twist** is the conjugate cross-term pair $\pm 2xy$; the product over both signs **reattaches** the invariant. This is the rational, degenerate case of the family below.

**The prime-indexed family (Gaussian periods).** For each prime $p$, the cyclotomic atom $\Psi_p(x,y)=(x^p-y^p)/(x-y)=x^{p-1}+x^{p-2}y+\cdots+y^{p-1}$ is irreducible over $\mathbb{Q}$. The unique quadratic subfield of $\mathbb{Q}(\zeta_p)$ is $\mathbb{Q}(\sqrt{p^\ast})$, with the sign set by the quadratic Gauss sum,
$$p^\ast=(-1)^{(p-1)/2}\,p\quad\Longleftrightarrow\quad p^\ast=+p\ (p\equiv1\bmod 4),\qquad p^\ast=-p\ (p\equiv3\bmod 4).$$
Over that field — and only there — $\Psi_p$ splits into **exactly two conjugate factors** of degree $(p-1)/2$, the Gaussian-period polynomials, swapped by $\sqrt{p^\ast}\mapsto-\sqrt{p^\ast}$, whose product reattaches $\Psi_p$. Classical (Gauss, *Disquisitiones*); verified symbolically here:

| $p$ | $p\bmod 4$ | twist field $\mathbb{Q}(\sqrt{p^\ast})$ | factors | each degree |
|----:|:----------:|:---------------------------------------|:-------:|:-----------:|
| 3  | 3 | $\mathbb{Q}(\sqrt{-3})=\mathbb{Q}(\omega)$ | 2 conjugate | 1 |
| 5  | 1 | $\mathbb{Q}(\sqrt{5})$ (golden)            | 2 conjugate | 2 |
| 7  | 3 | $\mathbb{Q}(\sqrt{-7})$                     | 2 conjugate | 3 |
| 11 | 3 | $\mathbb{Q}(\sqrt{-11})$                    | 2 conjugate | 5 |
| 13 | 1 | $\mathbb{Q}(\sqrt{13})$                     | 2 conjugate | 6 |

The $p=5$ case puts the golden ratio on the page:
$$\Psi_5(x,y)=\Big(x^2+\tfrac{1+\sqrt5}{2}\,xy+y^2\Big)\Big(x^2+\tfrac{1-\sqrt5}{2}\,xy+y^2\Big),\qquad \tfrac{1+\sqrt5}{2}=\varphi,$$
both factors irreducible over $\mathbb{R}$, exchanged by $\sqrt5\mapsto-\sqrt5$ — the conjugate twist now living in a genuine quadratic field rather than a sign on a monomial.

**Tier II — Structural.** Lift–twist–reattach is then an exact algebraic identity, not an analogy:

| step | traversal language | algebraic content |
|:-----|:-------------------|:------------------|
| **Lift** | embed into a higher container; add freedom | extend scalars $\mathbb{Q}\rightsquigarrow\mathbb{Q}(\sqrt{p^\ast})$ |
| **Twist** | conjugate coupling / orientation flip | apply the Galois automorphism $\sqrt{p^\ast}\mapsto-\sqrt{p^\ast}$ |
| **Reattach** | recompose, invariant preserved | take the norm $N(g)=g\bar g$, recovering $\Psi_p\in\mathbb{Q}[x,y]$ |

The same operation appears topologically: when a $\check H^1$ class (e.g. $w_1$) obstructs gluing, one *lifts* to a carrier where the class trivializes (an orientation double cover, a non-orientable carrier, or a bundle), *twists* by the holonomy that the class records, and *reattaches* by projecting the now-globalizable object back down. The underlying math is classical throughout; the contribution is the identification — that "extend scalars / conjugate / norm" and "lift to a trivializing carrier / holonomy / project" are the same three-beat move.

---

## 4. Completeness is not comprehension

A structure can contain everything and explain nothing. This section draws that line precisely and then quantifies it.

**Tier I — Verifiable.**

**The infinite registry.** An infinite registry contains every admissible string. The cleanest provable specimen is Champernowne's constant $C=0.123456789101112\dots$, which is provably normal in base ten (Champernowne 1933), so its expansion contains every finite digit string. ($\pi$ is only *conjectured* normal, so $C$, not $\pi$, is the honest example.) Such a structure is descriptively complete and **inert**, for four independent reasons: there is **no selection principle** (the address of a true statement is as long as the statement); by Kolmogorov incompressibility, a fraction at least $1-2^{-c}$ of length-$n$ strings admit no description shorter by $c$ bits, so a structure holding all strings is, by measure, almost all noise; **truth carries no marker**, so the mutual information between "is in the registry" and "is true" is $\approx 0$; and there is **no prediction**, since completeness is reached by storing everything, which is transcription.

**The structured map.** A structured map is a low-complexity generative schema: compression *is* explanation (Minimum Description Length; Solomonoff–Kolmogorov), constraint *is* content (Popper — the more a schema forbids, the more it says and the more it can be falsified), and prediction follows because unmeasured values are constrained by measured ones along the schema's relations. The Hopf foliation is of this kind: a handful of equations fix the entire family of tori, fibers, and linking.

**A quantitative separation (new).** The distinction has a sharp numerical face. Consider building a value from a modest vocabulary of dimensionless constants under a bounded number of multiplicative "moves," and ask how the reachable set grows. With a 15-element vocabulary and exponents in $\{-3,\dots,3\}$:

| moves | distinct reachable values in $[10^9,10^{11}]$ | within $0.2\%$ of a chosen target $R$ | within $0.2\%$ of an arbitrary control |
|:-----:|:--------------------------------------------:|:------------------------------------:|:--------------------------------------:|
| 2 | 43 | 0 | 0 |
| 3 | 1128 | 0 | 4 |

In the constrained regime (few moves) the reachable set is **sparse**, and a generic vocabulary reaches *neither* a specific target nor a control — a short path is genuinely informative. As moves increase the set **densifies** ($43\to 1128\to\cdots$) toward the limit in which every value in range is hit; in that limit a control (an arbitrary, meaningless number) is reached as readily as the target. That dense limit *is* the infinite registry. So "$X$ is reachable within the structure" carries information only in the sparse, generator-constrained regime; in the complete-registry limit it carries $\approx 0$ bits — a numerical instance of the mutual-information statement above.

**Tier II — Structural.** The consequence for the program is a criterion. A *derivation* of a physical quantity inside the framework must be a structured-map path: short, forced by a small fixed set of generators, and **exclusionary** — the same generators must *fail* to reach control targets. "A path exists because the structure is an infinite registry" establishes only the inert, dense-limit sense and is not, by the program's own standard, a derivation. Posing any "shortest path from $A$ to $B$" question therefore requires the generator set to be specified first; without it the question is undefined, and with all moves admitted it is trivially and uninformatively true.

---

## 5. The √5 rung: tilings and Chladni degeneracy as geometric realizations

The Gaussian-period atom at $p=5$ (§3) and the sum-of-two-squares selection rule (§4.2) are not only algebraic and information-theoretic facts; they have an exact *geometric* and *spectral* face. Five-fold quasicrystalline tiling and vibrating-plate mode degeneracy are the same $\mathbb{Q}(\sqrt5)$ and $\mathbb{Z}[i]$ structure made visible and audible. This section consolidates that bridge; the full development is in the companion papers (Semita 2026a, 2026b).

**Tier I — Verifiable.**

**5.1 The golden field is the $p=5$ atom.** The fifth cyclotomic field $\mathbb{Q}(\zeta_5)$ has real quadratic subfield $\mathbb{Q}(\sqrt5)$, since $\zeta_5+\zeta_5^{-1}=2\cos(2\pi/5)=\tfrac{\sqrt5-1}{2}=\varphi-1$. This is exactly the $p^\ast=+5$ ($p\equiv1\bmod4$) field of §3, and $\varphi=\tfrac{1+\sqrt5}{2}$ is the same golden unit that appears there as the conjugate-twist coefficient in $\Psi_5=(x^2+\varphi\,xy+y^2)(x^2+\bar\varphi\,xy+y^2)$. Penrose inflation is governed by the same unit: the tile-substitution matrix $M=\left(\begin{smallmatrix}2&1\\1&1\end{smallmatrix}\right)$ has characteristic polynomial $\lambda^2-3\lambda+1$ and Perron–Frobenius eigenvalue $\varphi^2=\tfrac{3+\sqrt5}{2}$, with $\operatorname{tr}(M^n)=L_{2n}$ (Lucas numbers $3,7,18,47,\dots$). The five-fold tiling and the $p=5$ Gaussian-period factorization are the geometric and algebraic faces of one field.

**5.2 Five-fold order must be quasicrystalline.** The crystallographic restriction $2\cos(2\pi/n)\in\mathbb{Z}$ holds only for $n\in\{1,2,3,4,6\}$; $n=5$ is excluded, so five-fold order cannot be periodic. It is realized instead by cut-and-project from $\mathbb{Z}^5$: with an irrational physical plane $E_\parallel$ and a bounded acceptance window $W\subset E_\perp$, the set $\Lambda(W)=\{\pi_\parallel(n):n\in\mathbb{Z}^5,\ \pi_\perp(n)\in W\}$ is a Delone set whose dual is the tiling. This is the structured-map side of §4 made concrete: a handful of generators — lattice, irrational orientation, window — fix a rich, constrained, aperiodic body of relations under extreme compression.

**5.3 Chladni degeneracy is the sum-of-two-squares rule.** For an ideal square plate the modes satisfy $\lambda_{mn}\propto m^2+n^2$, so single-pitch coincidences of distinct nodal figures are counted by $r_2(N)$, $N=m^2+n^2$ — governed by Gaussian-prime splitting in $\mathbb{Z}[i]$ ($p\equiv1\bmod4$ split and representable; $p\equiv3\bmod4$ inert, required to even power). This is verbatim the selection rule of §4.2, now realized as audible mode degeneracy: e.g. $N=65=5\cdot13$, both $\equiv1\bmod4$, gives $r_2=16$ — a doubly-split coincidence.

**Tier II — Structural.** Each system is *constrained selection*: a domain, a rule, and a selection locus where the rule changes state. The Chladni nodal set $Z(\psi)=\{\psi=0\}$ and the Penrose acceptance-window boundary $\partial W$ play the same role — lower-dimensional traces made visible by the registry (Semita 2026b, §5, §20). The structural identity worth recording is that the √5 rung carries *one* arithmetic environment realized three ways: algebraically as the $p=5$ Gaussian periods (§3), spectrally as square-plate degeneracy via $\mathbb{Z}[i]$ (§5.3), and geometrically as golden-ratio quasicrystal inflation (§§5.1–5.2).

**Tier III — Program.** These are not claimed to be one object. They are distinct mechanisms — Helmholtz eigenmodes, cut-and-project lattices, cyclotomic algebra — sharing a registry grammar, exactly the posture of the companion corpus ("registries, not privileged maps"). Suggestive cross-rung connections there (the $1/f$ bridge under a log-uniform timescale hierarchy; the numerical coincidence between the Kolmogorov $5/3$ exponent and the major-sixth $5{:}3$ ratio) are scoped as analogical and are *not* imported here as identities.

---

## 6. The charged-lepton hierarchy as a spectral-determinant curvature

The TUFT charged-lepton mass formula on the $S^3$ shell (Nielsen) is
$$m_n=\Lambda_{\mathrm{Hopf}}\cdot(n+1)\cdot\exp\!\Big(a\,n-D(n)+\tfrac{n\alpha}{6}+\sigma_3\ln\tau_3(K_n)\Big),\qquad n=1,2,3,$$
with the overall scale set by the electroweak $v=246220$ MeV, $\sigma_3=\zeta(3)/4\pi^2$, knot torsions $\tau_3(K_1)=\tau_3(K_2)=1,\ \tau_3(K_3)=\sqrt3$, and $D(n)$ the lens-space spectral determinant on $L(n,1)=S^3/\mathbb{Z}_n$ — computed, not fit:
$$D(1)=1.203011,\quad D(2)=4.806545,\quad D(3)=10.818229,\qquad D(n)\approx\zeta(3)\,n^2.$$
The slope constant $a=6\sqrt2\,\exp(\zeta(3)/24\pi^2)=8.528451$ and the spectral factor $\alpha$ — the fine-structure constant, derived in TUFT as a volume ratio $\alpha=1/137.0360824$ — are closed-form geometric constants with no adjustable input. We cite TUFT (Nielsen) for their derivations and use them as given.

**Tier I — Verifiable.** Strip the formula to its lepton content. Taking logs, the only $n$-linear freedom is the single slope $b=a+\alpha/6$, so the formula carries exactly **two numbers** — an overall scale $\Lambda_{\mathrm{Hopf}}$ and the slope $b$ — across **three** masses. Form the transformed quantity
$$y_n=\ln m_n-\ln(n+1)+D(n)-\sigma_3\ln\tau_3(K_n),$$
which must be linear in $n$ if those two numbers suffice. Using the measured masses $\{0.5109989,\,105.6584,\,1776.86\}$ MeV:
$$y_1=-0.161524,\quad y_2=+8.368144,\quad y_3=+16.897812,$$
$$\text{slope}_{1\to2}=8.529668,\qquad \text{slope}_{2\to3}=8.529668.$$
The three transformed log-masses are collinear in $n$ to the precision of the measured masses (the computed second difference is $4.5\times10^{-10}$). A leave-one-out check — fit scale and slope on the electron and tau, then predict the muon — returns $105.6584$ MeV against $105.6584$ measured.

Two independent facts make this a parameter-free reproduction rather than a fit. First, the **curvature**: the hierarchy departs from a straight line in log-space by exactly the amount the lens-space determinant supplies — $D(n)\approx\zeta(3)\,n^2$ is what bends the spectrum into the observed $1:206.8:3477$ ratio, with no mass input. Second, the **slope**: the empirically required $b=8.529668$ is reproduced by the two independently derived TUFT constants,
$$a+\tfrac{\alpha}{6}=8.528451+\tfrac{0.00729735}{6}=8.529667,$$
matching to $3.5\times10^{-7}$ — six to seven significant figures, from a Chern–Simons framing constant and the fine-structure constant, neither tuned to the leptons. The overall scale is the electroweak $v$.

**Tier III — Program.** We cite TUFT (Nielsen) for the derivations of $a$ and $\alpha$ rather than re-deriving them here, and we have independently verified only the charged-lepton sector. The verified content of this section is the collinearity and the curvature/slope reproduction above; the broader claim that the same construction yields the quark, gluon, neutrino, and boson sectors at comparable precision with zero free parameters is TUFT's, cited as such, and an independent multi-sector audit is future work.

---

## 7. Scope

**Banked (Tier I–II).** The Hopf–Clifford geometry and its operator-agnostic character (§1); the residue lens, the Gribov–Singer obstruction, the de Rham degree-one residue, $w_1$-orientability, the Čech $H^1$ gluing obstruction, and Hodge reattachment (§2); Germain and the Gaussian-period factorizations of $\Psi_p$, all verified, and their identification with extend-scalars / Galois-conjugate / norm (§3); the registry/map distinction and the quantitative density separation showing membership in a complete registry is uninformative (§4); the realization of the $p=5$ Gaussian-period atom and the sum-of-two-squares rule as five-fold quasicrystalline inflation ($\varphi^2$, $\operatorname{tr}M^n=L_{2n}$) and square-plate degeneracy ($r_2(N)$ via $\mathbb{Z}[i]$), with the crystallographic restriction forcing the cut-and-project realization (§5); and the parameter-free reproduction of the charged-lepton hierarchy — collinearity to input precision, curvature supplied by the lens-space spectral determinant, and slope reproduced by the independently derived TUFT constants $a$ and $\alpha$ to a residual of $3.5\times10^{-7}$ (§6).

**Program (Tier III).** The ontological reading (§1); promoting the gluing-obstruction reading to a defined registry category (§2); the predicted physical role of the prime-indexed twist atoms (§3); the generator set that would make "shortest path" questions well-posed in the program (§4); the status of the cross-rung $1/f$ and Kolmogorov-$5/3$ connections as analogical rather than derived (§5); and an independent re-derivation of the TUFT constants $a$ and $\alpha$ used in §6, together with a multi-sector audit (quarks, gluons, neutrinos, bosons) of the construction we cite here for the charged leptons only (§6).

**On sources and standing.** Hopf fibration and Clifford tori; Laplace–Beltrami, Hodge, and Dirac spectral theory with the Lichnerowicz–Weitzenböck identities; the Gribov–Singer obstruction (Singer 1978); de Rham cohomology and the Poincaré lemma; the first Stiefel–Whitney class (Milnor–Stasheff); Čech cohomology and sheaf gluing; the Hodge theorem (Warner; Griffiths–Harris); Sophie Germain's identity, Aurifeuillian factorization, and the theory of Gaussian periods and quadratic Gauss sums (Gauss); Champernowne's normal number (1933); Kolmogorov complexity and incompressibility (Li–Vitányi); Minimum Description Length (Rissanen) and Solomonoff induction; Popper on falsifiability; the cut-and-project and de Bruijn pentagrid theory of quasicrystals (de Bruijn 1981; Senechal 1995) and the crystallographic restriction; and the TUFT lepton construction (Nielsen). The §5 material consolidates two companion papers in this corpus: *Prime Divisibility, Geometric Resonance, and Higher-Dimensional Projection — Penrose Tilings as a Lattice-Projection Case in the Hyperdimensional Ladder* (Semita 2026a) and *Cymatic Resonance, Interval Interference, and Projection Registries* (Semita 2026b). None of the Tier-I mathematics is novel or in dispute. The contribution is the assembly, the residue lens, the lift–twist–reattach/norm identification, the quantitative registry/map separation, the spectral-determinant reading of the lepton hierarchy, and the consolidation of the √5 rung across its algebraic, spectral, and geometric realizations. Tier-III readings are the authors' own and are not claimed to be institutionally accepted.

**Open work.** A working draft within an ongoing program. Tier-III items are promoted one at a time as their defining objects are written down and checked; all identities and numerical results in §§3–6 are machine-verified.
