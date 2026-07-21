---
title: "DST Traversal Report: Collapse-Locus Boundary Projection and Route-Exhaustion Stopping Condition"
author: "Lu Semita - EmergenceByDesign"
date: "July 2026"
geometry: margin=1in
toc: true
toc-depth: 3
numbersections: true
fontsize: 11pt
header-includes:
  - |
    \usepackage{amsmath,amssymb,amsthm,mathtools}
    \usepackage{microtype}
    \usepackage{booktabs}
    \usepackage{longtable}
    \usepackage{enumitem}
    \usepackage{fancyhdr}
    \usepackage{hyperref}
    \hypersetup{colorlinks=true,linkcolor=black,citecolor=black,urlcolor=blue}
    \pagestyle{fancy}
    \fancyhf{}
    \fancyhead[L]{DST Collapse-Locus Traversal Report}
    \fancyhead[R]{Lu Semita - EmergenceByDesign}
    \fancyfoot[C]{\thepage}
    \newtheorem{theorem}{Theorem}[section]
    \newtheorem{proposition}[theorem]{Proposition}
    \newtheorem{lemma}[theorem]{Lemma}
    \newtheorem{corollary}[theorem]{Corollary}
    \theoremstyle{definition}
    \newtheorem{definition}[theorem]{Definition}
    \newtheorem{construction}[theorem]{Construction}
    \theoremstyle{remark}
    \newtheorem{remark}[theorem]{Remark}
---

# Publication Notice and Scope

This report records laboratory notes from an independent mathematical traversal conducted under the Dynamical Semantic Traversal (DST) method. It is published to preserve a dated account of the definitions, deductions, countermodels, route eliminations, and stopping condition reached during that work.

Publication does not assert ownership of the Square Peg Problem, Schwartz's theorem, any cited result, or any mathematical object already present in the literature. It does not claim priority or discovery beyond the limited content explicitly identified here as an internal construction or deduction. The report distinguishes established external results, deductions conditional on stated premises, abstract countermodels, unresolved geometric realization questions, and conjectural frontier statements.

The present work proposes no proof of the Toeplitz Square Peg Conjecture and no refutation of Richard Evan Schwartz's trichotomy theorem. Its strongest warranted conclusion is a scoped insufficiency theorem: a specified family of abstract-topological and cyclic-configuration hypotheses does not force broad zero-diameter boundary projection. Consequently, any proof of the remaining frontier statement must introduce additional rectangle-specific or construction-specific structure.

# Abstract

Let $\gamma$ be a Jordan loop and let $\Gamma_\gamma$ denote the space of gracefully inscribed rectangles whose vertex order agrees with the cyclic order on $\gamma$. Schwartz proved that $\Gamma_\gamma$ contains a connected set satisfying one of three alternatives. In the third alternative, the connected set contains rectangles of every sufficiently small diameter, while all but at most two points of $\gamma$ occur as vertices of rectangles in the set.

A tempting strengthening would connect these two conclusions pointwise: one might try to prove that all but at most two points of $\gamma$ occur as collapse points of shrinking rectangles. This report formalizes that proposed strengthening through a collapse locus $K_\gamma(A)$ and pushes the associated proof routes to a declared stopping condition.

The report establishes four principal results. First, any shrinking sequence of genuine inscribed rectangles must escape every compact interval of the circular invariant; after subsequence extraction, the invariant tends to $0$ or to infinity. Second, shrinking cyclic quadruples admit four role-labeled degeneration types, according to the unique complementary gap tending to $1$. Third, an explicit connected subset of the actual cyclic-quadruple configuration space is constructed that has full circular-invariant range, complete vertex coverage, and configurations of every sufficiently small diameter, while its collapse locus remains confined to a prescribed proper closed arc. Fourth, this construction proves that connectedness, cyclic order, full invariant range, total vertex coverage, compactness of bounded-invariant slices, and availability of arbitrarily small configurations do not by themselves imply broad collapse-locus coverage.

The stopping condition therefore eliminates a precisely stated route class. It does not eliminate arguments using the Euclidean rectangle equations, a diameter-filtered invariant inherited from Schwartz's polygonal approximations, a nontrivial degree or relative-homology class on small-diameter incidence sets, additional regularity of the Jordan loop, or another theorem specific to the graceful-rectangle locus.

# Traversal Question and Ontological Discipline

## Source problem

The Toeplitz Square Peg Conjecture asks whether every Jordan loop in the plane contains the four vertices of a square. The conjecture remains open for arbitrary Jordan loops. Many important special cases have been proved under additional regularity or geometric hypotheses.

Schwartz's trichotomy supplies a structural theorem for gracefully inscribed rectangles. In the notation adapted below, it guarantees a connected subset of the rectangle locus satisfying one of three alternatives. The present traversal concerns the third alternative and does not alter the theorem as published.

## Frontier question

The source theorem combines two global statements in its third alternative:

1. the connected set contains rectangles of every sufficiently small diameter; and
2. all but at most two points of the Jordan loop occur as vertices of rectangles in the connected set.

These statements do not, on their face, assert that the small rectangles occur near almost every point. The frontier question asks whether the two global statements can be coupled:

> Must all but at most two points of the Jordan loop occur as collapse points of shrinking rectangles from the same connected extensive set?

The report calls this the **collapse-locus boundary projection problem**.

## Tier discipline

The report uses the following epistemic labels.

- **Tier A - External established result.** A result taken from the cited mathematical literature.
- **Tier B - Internal theorem.** A deduction proved here from explicitly stated hypotheses.
- **Tier C - Countermodel or obstruction object.** A construction showing that a proposed implication fails under a declared abstraction.
- **Tier D - Open frontier statement.** A statement not proved or refuted here.
- **Route-exhaustion statement.** A conclusion that a defined family of arguments cannot establish a target, because a countermodel satisfies all premises available to that route while violating the target.

A route-exhaustion statement does not assert that the target theorem is false. It states that a specified information set is insufficient.

# Configuration Spaces and Invariants

## Cyclic quadruples

Identify $S^1$ with $\mathbb{R}/\mathbb{Z}$. Define the cyclic-quadruple configuration space

$$
\Sigma = \left\{(\sigma_0,\sigma_1,\sigma_2,\sigma_3) \in (S^1)^4 :
\sigma_0,\sigma_1,\sigma_2,\sigma_3 \text{ are distinct and cyclically ordered}\right\}.
$$

Each element of $\Sigma$ admits a gap-coordinate representation

$$
(x;g_0,g_1,g_2,g_3),
$$

where $x=\sigma_0$, each $g_i>0$, and

$$
g_0+g_1+g_2+g_3=1.
$$

The vertices are

$$
\begin{aligned}
\sigma_0 &= x,\\
\sigma_1 &= x+g_0,\\
\sigma_2 &= x+g_0+g_1,\\
\sigma_3 &= x+g_0+g_1+g_2
\end{aligned}
\qquad \pmod 1.
$$

The open gap simplex is

$$
\Delta^3_{\circ}=\left\{(g_0,g_1,g_2,g_3)\in\mathbb{R}_{>0}^4:\sum_{i=0}^3g_i=1\right\}.
$$

Thus $\Sigma$ may be viewed as $S^1\times\Delta^3_{\circ}$ with the chosen first-vertex convention.

## Circular invariant

Define

$$
\Lambda(\sigma)=\frac{g_0+g_2}{g_1+g_3}.
$$

This invariant takes values in $(0,\infty)$. A subset $A\subset\Sigma$ will be called **extensive** when

$$
\Lambda(A)=(0,\infty).
$$

This terminology tracks the invariant-range property used in the source construction. It should not be read as an additional geometric theorem.

## Jordan loops and the graceful-rectangle locus

Let

$$
\phi:S^1\longrightarrow\mathbb{R}^2
$$

be a continuous injective map and write

$$
\gamma=\phi(S^1).
$$

The image $\gamma$ is a Jordan loop.

Define $\Gamma_\gamma\subset\Sigma$ to consist of cyclic quadruples whose image vertices form a Euclidean rectangle and whose rectangle order agrees with the cyclic order inherited from $\gamma$. Such rectangles are called graceful.

For $\sigma\in\Sigma$, define

$$
d_\phi(\sigma)=\operatorname{diam}\{\phi(\sigma_0),\phi(\sigma_1),\phi(\sigma_2),\phi(\sigma_3)\}.
$$

For $k\in\mathbb{Z}/4\mathbb{Z}$, define the coordinate projection

$$
\pi_k(\sigma)=\sigma_k.
$$

For $A\subset\Sigma$, define its total parameter-space vertex image by

$$
V(A)=\bigcup_{k=0}^{3}\pi_k(A).
$$

Its geometric vertex image is $\phi(V(A))\subset\gamma$.

# Collapse Locus and Equivalent Formulations

## Definition

Let $A\subset\Sigma$. The collapse locus of $A$ relative to $\phi$ is

$$
K_\phi(A)=\left\{p\in\gamma:
\begin{array}{l}
\text{there exist }\sigma_n\in A\text{ with }d_\phi(\sigma_n)\to 0,\\
\text{and }\phi(\sigma_{n,k})\to p\text{ for one, hence every, }k
\end{array}
\right\}.
$$

The phrase "for one, hence every" follows from Lemma 3.1 below.

## Common-collapse lemma

**Lemma 3.1 (Common collapse point).**  
Let $\phi:S^1\to\gamma$ be a Jordan parametrization. If $\sigma_n\in\Sigma$ and

$$
d_\phi(\sigma_n)\to0,
$$

then any convergent subsequence of one vertex sequence $\phi(\sigma_{n,k})$ forces all four vertex sequences to converge to the same point.

**Proof.** For any indices $j,k$,

$$
\|\phi(\sigma_{n,j})-\phi(\sigma_{n,k})\|\le d_\phi(\sigma_n)\to0.
$$

If $\phi(\sigma_{n,k})\to p$, the triangle inequality gives $\phi(\sigma_{n,j})\to p$ for every $j$. Since $\gamma$ is compact, every vertex sequence has convergent subsequences. $\square$

## Sublevel formulation

For $\varepsilon>0$, define the small-diameter vertex set

$$
V_{\varepsilon}(A)=\left\{\phi(\sigma_k):\sigma\in A,\ d_\phi(\sigma)<\varepsilon,\ k\in\mathbb{Z}/4\mathbb{Z}\right\}.
$$

**Proposition 3.2 (Sublevel characterization).**  
For every $A\subset\Sigma$,

$$
K_\phi(A)=\bigcap_{m=1}^{\infty}\overline{V_{1/m}(A)}.
$$

**Proof.** Suppose $p\in K_\phi(A)$. Choose $\sigma_n\in A$ with $d_\phi(\sigma_n)\to0$ and vertices converging to $p$. For each $m$, all sufficiently large $n$ satisfy $d_\phi(\sigma_n)<1/m$, so $p\in\overline{V_{1/m}(A)}$.

Conversely, suppose $p$ belongs to every $\overline{V_{1/m}(A)}$. For each $m$, choose $\sigma_m\in A$ and a vertex index $k_m$ such that

$$
d_\phi(\sigma_m)<1/m
$$

and

$$
\|\phi(\sigma_{m,k_m})-p\|<1/m.
$$

By Lemma 3.1, every vertex of $\sigma_m$ converges to $p$. Hence $p\in K_\phi(A)$. $\square$

**Corollary 3.3.** The set $K_\phi(A)$ is closed, and therefore compact.

## Exclusion arcs

**Proposition 3.4 (Open exclusion neighborhood).**  
If $p\notin K_\phi(A)$, then there exist an open neighborhood $U\subset\gamma$ of $p$ and $\varepsilon>0$ such that no rectangle or cyclic configuration in $A$ of diameter less than $\varepsilon$ has a vertex in $U$.

**Proof.** By Proposition 3.2, $p\notin\overline{V_{1/m}(A)}$ for some $m$. The complement of that closed set contains an open neighborhood $U$ of $p$. Set $\varepsilon=1/m$. $\square$

Thus the complement $\gamma\setminus K_\phi(A)$ is an open union of exclusion arcs. The frontier statement

$$
|\gamma\setminus K_\phi(A)|\le2
$$

would assert that this open complement contains at most two points and therefore no nontrivial open arc.

# Source-Theorem Interface

## Schwartz's trichotomy

The following is used as an external theorem in paraphrased form.

**External Theorem 4.1 (Schwartz trichotomy, adapted).**  
For every Jordan loop $\gamma$, the graceful-rectangle locus contains a connected set satisfying one of three alternatives. In the third alternative, the connected set contains rectangles of every sufficiently small diameter, and all but at most two points of $\gamma$ are vertices of rectangles in the set.

The theorem does not state that the all-but-two vertex coverage is achieved by rectangles whose diameters tend to zero at those points.

## Proposed strengthening

**Frontier Statement 4.2 (Pointwise sublevel vertex recurrence).**  
Let $A\subset\Gamma_\gamma$ be a connected set occurring in the third alternative of the trichotomy. Then

$$
|\gamma\setminus K_\phi(A)|\le2.
$$

This statement is not established by the source theorem. The remainder of the report tests whether it follows from the abstract information retained by the construction.

# Shrinking Rectangles and Invariant Escape

The next result uses a compactness property of bounded-$\Lambda$ cyclic configurations that appears in the source proof architecture.

**Proposition 5.1 (Bounded-invariant exclusion).**  
Let $A\subset\Gamma_\gamma$. Suppose the bounded-invariant slice

$$
A[a,b]=\{\sigma\in A:a\le\Lambda(\sigma)\le b\}
$$

has compact closure in $\Sigma$ whenever $0<a<b<\infty$. If $\sigma_n\in A$ and

$$
d_\phi(\sigma_n)\to0,
$$

then $\Lambda(\sigma_n)$ leaves every compact subset of $(0,\infty)$. Consequently, after passage to a subsequence,

$$
\Lambda(\sigma_n)\to0
$$

or

$$
\Lambda(\sigma_n)\to\infty.
$$

**Proof.** Suppose the conclusion fails. Then there exist $0<a<b<\infty$ and a subsequence, not relabeled, such that

$$
a\le\Lambda(\sigma_n)\le b.
$$

Compactness gives a further subsequence converging to some $\sigma_{\infty}\in\Sigma$. Since the four coordinates of $\sigma_{\infty}$ are distinct and $\phi$ is injective, the image quadruple has positive diameter:

$$
d_\phi(\sigma_{\infty})>0.
$$

Continuity of $d_\phi$ yields

$$
d_\phi(\sigma_n)\to d_\phi(\sigma_{\infty})>0,
$$

contradicting $d_\phi(\sigma_n)\to0$. Therefore no shrinking sequence remains in a compact invariant interval. Every positive sequence escaping all compact subintervals of $(0,\infty)$ has a subsequence tending to $0$ or infinity. $\square$

## Two invariant ends

Define

$$
K^-_\phi(A)=\left\{p\in K_\phi(A):
\begin{array}{l}
\text{some shrinking sequence collapsing at }p\\
\text{satisfies }\Lambda(\sigma_n)\to0
\end{array}
\right\},
$$

and define $K^+_\phi(A)$ similarly with $\Lambda(\sigma_n)\to\infty$.

Under Proposition 5.1,

$$
K_\phi(A)=K^-_\phi(A)\cup K^+_\phi(A).
$$

This decomposes the zero-diameter boundary into two invariant ends. It does not show that either end projects onto a large subset of the Jordan loop.

# Degeneration Types in Gap Coordinates

**Lemma 6.1 (Parameter collapse).**  
If $d_\phi(\sigma_n)\to0$, then all four parameter points $\sigma_{n,k}$ converge in $S^1$ to a common parameter after passage to a subsequence.

**Proof.** Since $\phi:S^1\to\gamma$ is a homeomorphism between compact Hausdorff spaces, its inverse is uniformly continuous. Euclidean distances among all image vertices tend to zero, so circular distances among all parameter vertices tend to zero. Compactness of $S^1$ supplies a common limiting parameter after subsequence extraction. $\square$

**Proposition 6.2 (Four role-labeled degeneration types).**  
Let $\sigma_n$ have gap coordinates $(x_n;g_{0,n},g_{1,n},g_{2,n},g_{3,n})$ and suppose $d_\phi(\sigma_n)\to0$. After passing to a subsequence and cyclically fixing the role labels, exactly one gap tends to $1$ and the other three tend to $0$.

If the large gap is $g_1$ or $g_3$, then

$$
\Lambda(\sigma_n)\to0.
$$

If the large gap is $g_0$ or $g_2$, then

$$
\Lambda(\sigma_n)\to\infty.
$$

**Proof.** Four cyclically ordered points that converge to a common parameter occupy a circular arc whose length tends to zero. The three gaps internal to that arc tend to zero, while the complementary gap tends to one. The parity claims follow directly from

$$
\Lambda=\frac{g_0+g_2}{g_1+g_3}.
$$

If an odd-indexed gap tends to $1$, the denominator tends to $1$ and the numerator tends to $0$. If an even-indexed gap tends to $1$, the numerator tends to $1$ and the denominator tends to $0$. $\square$

This classification describes the form of any degeneration that already exists. It does not force degeneration to occur over any specified point.

# Exact Cyclic-Space Countermodel

The earlier abstract incidence objection can be strengthened. The countermodel below lies inside the actual cyclic-quadruple carrier $\Sigma$ and uses the exact circular invariant $\Lambda$.

Let $\phi_0:S^1\to\mathbb{R}^2$ be the standard unit-circle embedding

$$
\phi_0(x)=(\cos 2\pi x,\sin 2\pi x).
$$

Fix a proper closed arc $U\subsetneq S^1$.

## Extensive full-coverage branch

**Construction 7.1.** For $x\in S^1$ and $\lambda>0$, define

$$
Q(x,\lambda)=\left(x;
\frac{\lambda}{2(1+\lambda)},
\frac{1}{2(1+\lambda)},
\frac{\lambda}{2(1+\lambda)},
\frac{1}{2(1+\lambda)}\right).
$$

Define

$$
A_{\mathrm{large}}=\{Q(x,\lambda):x\in S^1,\ \lambda>0\}.
$$

**Lemma 7.2.** The set $A_{\mathrm{large}}$ is connected, satisfies

$$
\Lambda(A_{\mathrm{large}})=(0,\infty),
$$

and has complete vertex coverage

$$
V(A_{\mathrm{large}})=S^1.
$$

**Proof.** The parameter domain $S^1\times(0,\infty)$ is connected and the construction is continuous. Direct calculation gives

$$
\Lambda(Q(x,\lambda))=
\frac{\lambda/(1+\lambda)}{1/(1+\lambda)}=\lambda.
$$

Finally, $x$ itself is the zeroth vertex of $Q(x,\lambda)$, so every $x\in S^1$ lies in the total vertex image. $\square$

This branch supplies global invariant reach and global vertex coverage. Its configurations do not collapse to a single point as $\lambda$ varies.

## Localized shrinking branch

Choose $a,b,c>0$. Choose $t_0>0$ such that

$$
t_0(a+b+c)<\frac12.
$$

For $x\in U$ and $0<t\le t_0$, define

$$
P(x,t)=\left(x;ta,tb,tc,1-t(a+b+c)\right).
$$

Define

$$
A_{\mathrm{small}}=\{P(x,t):x\in U,\ 0<t\le t_0\}.
$$

**Lemma 7.3.** Every configuration in $A_{\mathrm{small}}$ lies in $\Sigma$. For each fixed $x\in U$, its four vertices lie on the circular arc from $x$ to $x+t(a+b+c)$, and

$$
d_{\phi_0}(P(x,t))=2\sin\bigl(\pi t(a+b+c)\bigr).
$$

Consequently, $A_{\mathrm{small}}$ contains configurations of every diameter in

$$
\left(0,2\sin\bigl(\pi t_0(a+b+c)\bigr)\right],
$$

and its collapse locus is exactly $\phi_0(U)$.

**Proof.** Positivity of all gaps follows from the choice of $t_0$. Since the total occupied arc has parameter length less than $1/2$, the farthest pair consists of the first and fourth vertices. Their chord distance on the unit circle is the displayed formula. The function is continuous and strictly increasing on the chosen interval, giving every sufficiently small diameter.

As $t\to0$, all four vertices converge to $x$, so $\phi_0(U)$ lies in the collapse locus. Conversely, every configuration in this branch has first vertex in $U$, and any shrinking sequence must have $t\to0$. Compactness of $U$ then places every collapse point in $\phi_0(U)$. $\square$

The circular invariant on this branch satisfies

$$
\Lambda(P(x,t))=
\frac{t(a+c)}{tb+1-t(a+b+c)}\to0
$$

as $t\to0$.

## Connecting branch

Fix $\lambda_0>0$. Let $q$ be the gap vector of $Q(x,\lambda_0)$; it is independent of $x$. Let $p$ be the gap vector of $P(x,t_0)$; it is also independent of $x$.

For $x\in U$ and $s\in[0,1]$, define the interpolated gap vector

$$
h(s)=(1-s)q+sp.
$$

Because $\Delta^3_{\circ}$ is convex, $h(s)\in\Delta^3_{\circ}$. Let

$$
J(x,s)=(x;h(s))
$$

and define

$$
A_{\mathrm{join}}=\{J(x,s):x\in U,\ s\in[0,1]\}.
$$

Finally set

$$
A_{\mathrm{cyc}}=A_{\mathrm{large}}\cup A_{\mathrm{join}}\cup A_{\mathrm{small}}.
$$

## Countermodel theorem

**Theorem 7.4 (Cyclic-configuration insufficiency).**  
The set $A_{\mathrm{cyc}}\subset\Sigma$ has all of the following properties:

1. $A_{\mathrm{cyc}}$ is connected.
2. $\Lambda(A_{\mathrm{cyc}})=(0,\infty)$.
3. $V(A_{\mathrm{cyc}})=S^1$.
4. $A_{\mathrm{cyc}}$ contains configurations of every sufficiently small Euclidean diameter relative to $\phi_0$.
5. The collapse locus is the prescribed proper closed arc:

$$
K_{\phi_0}(A_{\mathrm{cyc}})=\phi_0(U).
$$

In particular,

$$
\left|\phi_0(S^1)\setminus K_{\phi_0}(A_{\mathrm{cyc}})\right|>2.
$$

**Proof.** The set $A_{\mathrm{large}}$ is connected. The joining set meets it along $\{Q(x,\lambda_0):x\in U\}$ and meets $A_{\mathrm{small}}$ along $\{P(x,t_0):x\in U\}$. Therefore the union is connected.

The full invariant range and total vertex coverage already hold on $A_{\mathrm{large}}$. Every sufficiently small diameter occurs on $A_{\mathrm{small}}$ by Lemma 7.3.

It remains to check that adding the large and joining branches introduces no additional collapse points. The closure of the joining gap path is compact and remains inside the open gap simplex. Hence there exists $\delta>0$ such that every gap on the joining branch is at least $\delta$. The same is true for any compact subbranch of $A_{\mathrm{large}}$ with $\lambda$ bounded away from $0$ and infinity. At the two invariant ends of $A_{\mathrm{large}}$, the alternating gaps approach $0$ while the other two approach $1/2$; therefore the four points do not converge to one common parameter, and their unit-circle diameter remains bounded below. Thus no sequence from $A_{\mathrm{large}}$ or $A_{\mathrm{join}}$ has diameter tending to zero.

All shrinking sequences therefore eventually lie in, or approach, the localized small branch, whose collapse locus is exactly $\phi_0(U)$. Since $U$ is a proper closed arc, its complement contains a nonempty open arc and therefore more than two points. $\square$

## Exact force of the countermodel

Theorem 7.4 proves that the following implication is false:

$$
\begin{aligned}
&\text{connectedness in }\Sigma
+\text{ exact cyclic order}
+\Lambda(A)=(0,\infty)\\
&+\text{ complete total vertex coverage}
+\text{ every sufficiently small diameter occurs}\\
&\qquad\Longrightarrow
|\gamma\setminus K_\phi(A)|\le2.
\end{aligned}
$$

The theorem does **not** construct a subset of $\Gamma_\gamma$. Most configurations in $A_{\mathrm{cyc}}$ are not rectangles. Therefore it does not refute Frontier Statement 4.2.

Its precise consequence is that any proof of Frontier Statement 4.2 must use information that distinguishes the graceful-rectangle locus $\Gamma_\gamma$ from the ambient cyclic-configuration space $\Sigma$.

# Eliminated Route I: Scalar Intermediate-Value Reasoning

Connectedness of $A$ and continuity of $\Lambda$ imply that $\Lambda(A)$ is an interval. Extensiveness makes this interval $(0,\infty)$. This scalar conclusion records that every invariant value occurs somewhere in $A$.

It does not couple the invariant value to the vertex position. A continuous path may move through all invariant values while its small-diameter tail remains over one proper arc. Theorem 7.4 realizes exactly that pattern.

Therefore no argument based only on

$$
A\text{ connected},\qquad \Lambda\text{ continuous},\qquad \Lambda(A)=(0,\infty)
$$

can establish broad collapse-locus coverage.

**Route status:** eliminated for the declared target.

# Eliminated Route II: Compactness and Nested Sublevel Sets

The sets

$$
F_m=\overline{V_{1/m}(A)}
$$

are closed and nested:

$$
F_{m+1}\subset F_m.
$$

If each is nonempty, compactness gives

$$
\bigcap_{m=1}^{\infty}F_m\ne\varnothing.
$$

By Proposition 3.2, this proves only that $K_\phi(A)$ is nonempty. It gives no lower bound on the size of $K_\phi(A)$.

Theorem 7.4 supplies nested nonempty sublevel closures whose intersection is a prescribed proper arc. With a minor variation of the localized branch, the same abstract method can produce a single collapse point or other closed localization sets. Thus nested-set compactness cannot imply an all-but-two conclusion without an additional essentiality property for every filtered vertex set.

**Route status:** eliminated for the declared target.

# Eliminated Route III: Total Vertex Coverage

The full incidence space may be written as

$$
I_A=A\times\{0,1,2,3\},
$$

with vertex projection

$$
\Pi:I_A\to S^1,\qquad \Pi(\sigma,k)=\sigma_k.
$$

Total vertex coverage says that $\Pi(I_A)$ is all of $S^1$, or all but a finite exceptional set in the source theorem.

For $\varepsilon>0$, define the filtered incidence space

$$
I_A^{<\varepsilon}=\{(\sigma,k)\in I_A:d_\phi(\sigma)<\varepsilon\}.
$$

The collapse locus depends on the asymptotic images

$$
\bigcap_{m=1}^{\infty}\overline{\Pi(I_A^{<1/m})},
$$

not on $\Pi(I_A)$.

Surjectivity of a map on the full domain does not imply surjectivity on any filtered subdomain. Theorem 7.4 has

$$
\Pi(I_{A_{\mathrm{cyc}}})=S^1
$$

while every sufficiently small filtered image lies near $U$.

**Route status:** eliminated for the declared target.

# Eliminated Route IV: Cyclic Order and Degeneration Type

Cyclic order constrains how four parameter points may collide. Proposition 6.2 shows that exactly one complementary gap tends to $1$, leading to four role-labeled degeneration types and two invariant ends.

This classification provides local form, not global distribution. It answers:

> What must a shrinking cyclic quadruple look like?

It does not answer:

> At which points must shrinking cyclic quadruples exist?

The localized branch $A_{\mathrm{small}}$ obeys the exact cyclic-order constraints and one of the allowed degeneration types while remaining confined to $U$.

**Route status:** eliminated for the declared target.

# Eliminated Route V: Bounded-Invariant Compactness

Proposition 5.1 forces shrinking configurations toward the two ends $\Lambda\to0$ or $\Lambda\to\infty$. One might hope that extensiveness then forces these ends to sweep around the full Jordan loop.

Theorem 7.4 shows that this does not follow. Its global branch supplies the entire invariant range and all vertex positions. Its shrinking branch approaches only the $\Lambda\to0$ end and collapses only over $U$. A reciprocal localized branch could be added at the $\Lambda\to\infty$ end without changing the essential obstruction.

Thus bounded-invariant compactness separates finite-scale configurations from zero-scale degenerations but does not control the spatial projection of the degeneration boundary.

**Route status:** eliminated for the declared target.

# Tested but Unresolved Route: Euclidean Rectangle Equations

The countermodel does not satisfy the rectangle equations. These equations therefore remain a possible source of the missing global constraint.

Let $z_k=\phi(\sigma_k)\in\mathbb{C}$. A cyclic quadrilateral is a parallelogram when

$$
z_0+z_2=z_1+z_3.
$$

A nondegenerate parallelogram is a rectangle when adjacent sides are perpendicular:

$$
\operatorname{Re}\left((z_1-z_0)\overline{(z_2-z_1)}\right)=0.
$$

Equivalently, there exists a nonzero real aspect parameter $\rho$ such that, after a consistent orientation choice,

$$
z_2-z_1=i\rho(z_1-z_0),
$$

and

$$
z_3-z_2=z_1-z_0.
$$

## Blow-up at an existing collapse point

Suppose $R_n$ is a sequence of rectangles collapsing at $p$ with diameters $d_n>0$. Set

$$
w_{n,k}=\frac{z_{n,k}-p}{d_n}.
$$

The normalized vertices lie in a bounded set. After translation, subsequence extraction produces a limiting normalized rectangle or a degenerate rectangular configuration of diameter $1$. This classifies tangent-scale shapes once a shrinking family exists.

## Failure to force existence

At a point $p\notin K_\phi(A)$, no shrinking family exists to normalize. The rectangle equations are algebraic relations among four points already selected on the curve. They do not, by themselves, supply those four points near every $p$.

For an arbitrary Jordan loop, one cannot assume differentiability, a tangent line, bounded turning, local graph regularity, rectifiability, or a uniform local model. Accordingly, the local equations classify a present degeneration but do not automatically propagate degeneration across an exclusion arc.

**Route status:** not eliminated in principle, but blocked at an existence theorem. A new global consequence of the rectangle equations would be required.

# Tested but Unresolved Route: Polygonal Ancestry

Schwartz's construction proceeds through global components for polygonal approximations and bounded-invariant Hausdorff limits. The available source structure preserves connectedness and invariant reach in the limiting set.

The frontier requires more: it requires a property of the diameter-filtered pieces that survives passage to the limit. A sufficient mechanism could take one of the following forms:

1. a nontrivial projection degree on every sufficiently small diameter sublevel;
2. a relative homology class carried by the small-diameter incidence set;
3. a continuum joining the two invariant ends whose vertex projection remains essential under diameter filtration;
4. a uniform polygonal theorem preventing all shrinking rectangles from localizing over a proper arc;
5. a compactification whose zero-diameter boundary inherits a nontrivial class from the polygonal global components.

The inspected source theorem does not state such a diameter-filtered inheritance result. It remains possible that a stronger analysis of the polygonal construction could produce one, but it cannot be inferred merely from the connectedness and Hausdorff-limit statements already registered.

**Route status:** unresolved as a source-strengthening program; exhausted if restricted to the currently extracted connectedness, compactness, and invariant-range data.

# Tested but Unresolved Route: Degree and Boundary Essentiality

A degree argument would require more than total vertex coverage. For each sufficiently small $\varepsilon$, one would need a cycle or relative class

$$
\alpha_\varepsilon\in H_1(I_A^{<\varepsilon})
$$

or in a suitable compactly supported or relative homology group, such that

$$
(\Pi_{\varepsilon})_*(\alpha_\varepsilon)\ne0
\quad\text{in}\quad H_1(S^1).
$$

Uniform compatibility as $\varepsilon\to0$ could then force the zero-scale projection to remain essential.

No such class follows from the hypotheses defeated by Theorem 7.4. Indeed, the countermodel has full unfiltered projection but localized filtered projection, so any valid class must use rectangle-specific or construction-specific data unavailable in the ambient cyclic carrier.

**Route status:** obstruction identified; required class not constructed.

# Geometric Falsification Program

A refutation of Frontier Statement 4.2 would require substantially more than Theorem 7.4. One would need to construct:

1. a Jordan loop $\gamma$;
2. an actual connected set $A\subset\Gamma_\gamma$ satisfying the relevant third-alternative hypotheses;
3. rectangles of every sufficiently small diameter in $A$;
4. all-but-two total vertex coverage in $A$;
5. a proper closed localization set $U\subsetneq\gamma$ such that

$$
K_\phi(A)\subset U;
$$

6. control of unintended inscribed rectangles that might enlarge the collapse locus or yield a square through another component.

The cyclic countermodel supplies a design pattern:

$$
\text{global finite-scale coverage branch}
+\text{localized shrinking branch}.
$$

Realizing both branches simultaneously inside the rectangle locus of one Jordan loop presents a nontrivial inverse-geometric problem. No such realization is claimed here.

**Falsification status:** open.

# Formal Route-Exhaustion Theorem

We now state the exact stopping condition reached by the traversal.

**Theorem 17.1 (Route-exhaustion theorem).**  
Let $\mathcal{H}$ denote the following information about a subset $A\subset\Sigma$ relative to a Jordan parametrization $\phi$:

1. $A$ is connected;
2. $A$ lies in the cyclic-quadruple configuration space and respects exact cyclic order;
3. $\Lambda(A)=(0,\infty)$;
4. the total vertex image is all of $S^1$, or a fortiori all but finitely many points;
5. $A$ contains configurations of every sufficiently small Euclidean diameter;
6. bounded-$\Lambda$ slices satisfy the compactness needed to force shrinking sequences toward $\Lambda=0$ or $\Lambda=\infty$;
7. the proof may use continuity of the coordinate projections, scalar intermediate-value reasoning, nested closed-set compactness, and the four degeneration types.

Then $\mathcal{H}$ does not imply

$$
|\gamma\setminus K_\phi(A)|\le2.
$$

**Proof.** The set $A_{\mathrm{cyc}}$ from Theorem 7.4 satisfies items 1 through 5. Its explicit gap formulas also satisfy the bounded-invariant compactness behavior relevant to item 6: every shrinking sequence lies on the localized branch and has $\Lambda\to0$, while bounded-invariant portions remain separated from the zero-diameter boundary. Item 7 lists operations that preserve truth in the countermodel. Nevertheless,

$$
K_{\phi_0}(A_{\mathrm{cyc}})=\phi_0(U)
$$

for a proper closed arc $U$, so the complement contains infinitely many points. Therefore no theorem whose premises and deductions use only $\mathcal{H}$ can establish the target implication. $\square$

## Logical interpretation

Theorem 17.1 establishes an insufficiency result, not an impossibility result for all mathematics. It proves:

$$
\mathcal{H}\not\models |\gamma\setminus K_\phi(A)|\le2.
$$

It does not prove:

$$
A\subset\Gamma_\gamma\Longrightarrow
|\gamma\setminus K_\phi(A)|>2.
$$

Nor does it prove that no stronger theorem can be extracted from Schwartz's construction. It proves that such a theorem must employ at least one premise not represented in $\mathcal{H}$.

# Precisely Eliminated Mathematical Routes

Under the current traversal, the following routes have been eliminated for proving the collapse-locus target **when used without additional rectangle-specific input**:

1. **Scalar invariant route.** Connectedness plus $\Lambda(A)=(0,\infty)$ does not couple scale to vertex location.
2. **Unfiltered incidence route.** Total or all-but-finite vertex coverage does not imply coverage by arbitrarily small configurations.
3. **Nested compactness route.** Nonempty nested sublevel closures force only a nonempty collapse locus.
4. **Ambient cyclic-topology route.** Exact cyclic order and the topology of $\Sigma$ permit localized degeneration.
5. **Degeneration-classification route.** The four allowed collision types classify existing collapse but do not distribute it.
6. **Bounded-invariant compactness route.** Forcing collapse toward the two invariant ends does not force those ends to project broadly.
7. **Unfiltered connected-component route.** A connected global branch can carry total coverage while a connected attached tail carries all small scales over a proper arc.

These eliminations remain valid even if the hypotheses are strengthened from all-but-two total vertex coverage to complete total vertex coverage, because the countermodel has complete coverage.

# Routes Not Eliminated

The stopping theorem leaves the following routes open:

1. **Rectangle-locus equations.** A global theorem derived from the parallelogram and orthogonality equations might forbid localization.
2. **Polygonal inheritance.** The approximating global components might carry a diameter-filtered invariant not yet extracted.
3. **Boundary degree or homology.** A nonzero class on small-diameter incidence sets might survive at zero scale.
4. **Geometric nonrealizability.** One might prove that the countermodel's branch pattern cannot occur in $\Gamma_\gamma$ for any Jordan loop.
5. **Additional regularity.** For smoother or geometrically controlled loops, local differential structure may propagate shrinking rectangles.
6. **External theorem.** A result beyond the currently surveyed framework may already or eventually control the parabolic or zero-diameter boundary.

No claim of exhaustion applies to these route classes.

# Remaining Frontier Object

The appropriate surviving theorem object is the following.

**Open Frontier 20.1 (Rectangle-locus boundary projection theorem).**  
Let $\gamma$ be a Jordan loop, let $\Gamma_\gamma\subset\Sigma$ be its graceful-rectangle locus, and let $A\subset\Gamma_\gamma$ be a connected set satisfying the third alternative of Schwartz's trichotomy.

Construct a compactification $\overline{A}$ in which every zero-diameter sequence records its common collapse point. Let

$$
\partial_0 A=\{\xi\in\overline{A}:d(\xi)=0\}
$$

be the zero-diameter boundary, and let

$$
c:\partial_0 A\to\gamma
$$

be the collapse projection.

Determine whether

$$
|\gamma\setminus c(\partial_0 A)|\le2.
$$

Equivalent sequentially, determine whether

$$
|\gamma\setminus K_\phi(A)|\le2.
$$

The exact missing mechanism must distinguish $\Gamma_\gamma$ from $\Sigma$ or distinguish the source-constructed component from an arbitrary connected extensive subset.

# DST Stopping Certificate

## Frontier object

The frontier object is the zero-diameter boundary projection

$$
c:\partial_0A\to\gamma,
$$

or equivalently the collapse locus $K_\phi(A)$.

## Tests performed

The traversal tested:

- scalar invariant continuation;
- compactness of bounded-invariant slices;
- nested sublevel closures;
- full incidence projection;
- exact cyclic order;
- degeneration-type classification;
- ambient configuration-space topology;
- Euclidean rectangle equations at an existing collapse point;
- polygonal ancestry as presently extracted;
- degree and homology requirements;
- direct geometric falsification.

## Obstruction witness

The explicit set $A_{\mathrm{cyc}}\subset\Sigma$ satisfies the entire abstract-cyclic hypothesis package while violating broad collapse-locus coverage.

## Stopping condition

The traversal reaches the following stopping condition:

> **Route exhausted for abstract cyclic-topological forcing.** No proof using only connectedness, exact cyclic order, the circular invariant and its full range, unfiltered vertex coverage, existence of every sufficiently small diameter, bounded-invariant compactness, scalar intermediate-value reasoning, nested compactness, and degeneration classification can establish that the collapse locus omits at most two points.

## Non-overclaim clause

This stopping condition does not apply to proofs using the defining equations of the graceful-rectangle locus, additional structure inherited from the polygonal construction, a newly established diameter-filtered topological invariant, additional regularity of the Jordan loop, or another external theorem.

# Final Determination

The traversal supports the following determinations.

- The Toeplitz Square Peg Conjecture remains open in the generality relevant here.
- Schwartz's trichotomy remains intact and is not challenged by the countermodel.
- The pointwise sublevel vertex recurrence statement remains open for actual graceful-rectangle loci.
- The collapse-locus reduction is exact.
- Shrinking genuine rectangles must approach one of the two circular-invariant ends.
- Four cyclic degeneration types exhaust the role-labeled collision patterns.
- The ambient cyclic-configuration hypotheses are insufficient to force broad collapse projection.
- Scalar, compactness-only, connectedness-only, unfiltered incidence, and ambient cyclic-topology routes have been precisely eliminated for the target.
- Rectangle-specific, construction-specific, and diameter-filtered topological routes remain open.

The strongest warranted stopping declaration is therefore:

$$
\boxed{\text{ROUTE EXHAUSTED FOR ABSTRACT CYCLIC-TOPOLOGICAL FORCING}}
$$

This declaration records a completed negative result about a proof strategy. It does not convert an unresolved geometric theorem into either a proof or a counterexample.

# References

1. R. E. Schwartz, "A Trichotomy for Rectangles Inscribed in Jordan Loops," *Geometriae Dedicata* 208 (2020), 177-196. DOI: 10.1007/s10711-020-00516-8.
2. R. E. Schwartz, "Rectangles, Curves, and Klein Bottles," *Bulletin of the American Mathematical Society* 59 (2022), 1-17. DOI: 10.1090/bull/1755.
3. B. Matschke, "On the Square Peg Problem and Its Relatives," *Transactions of the American Mathematical Society* 375 (2022), 6255-6286.
4. A. Greene and A. Lobb, work on the rectangular peg problem for smooth Jordan curves, cited for contextual comparison only; no result from that work is used to close the arbitrary-Jordan-loop frontier in this report.

# Author Statement

**Lu Semita - EmergenceByDesign**

This document records independent laboratory work, including formalized questions, deductions, obstruction constructions, and stopping conditions. It is circulated to establish a transparent research record and invite verification. It does not assert ownership of established mathematics, does not claim institutional endorsement, and does not represent the route-exhaustion theorem as a resolution of the Square Peg Problem.
