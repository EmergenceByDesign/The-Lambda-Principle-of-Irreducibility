---
silo: lambda
subcat: instrument
exposure: internal
tier: I
status: draft
tags:
  - lambda
  - lambda/dst
  - x/internal
  - residue/closed
links-latent: []
---

# The Relational Crucible

### A browser-resident instrument exhibiting certified residue over a circumscription continuum

**Recorded:** Lu Semita · EmergenceByDesign
**Artifact:** `GEOMETER_Relational_Crucible_v0.3_REV_B.html` — 80,479 bytes, single file, no network assets, no persistent storage.

> **Record of independent research.** This document is a laboratory record. It asserts no
> priority, no ownership, and no discovery of any mathematical result. Every theorem invoked
> here is classical and attributed. What is new is only the *instrument*: an arrangement of
> known mathematics that executes in a browser and exhibits, in real time, the distinction
> between a residue that has been **certified** and one that has **migrated**. The instrument
> does not model that distinction. It performs the arithmetic that constitutes it.

---

## 0 · Scope, and the precise sense of "not simulating"

The claim that the instrument computes rather than simulates is narrow and worth stating
exactly, because it is the only strong claim in this document.

When the instrument reports that a point is present in the registry, it has constructed that
point by solving the actual intersection equations of the actual loci, in IEEE-754 double
precision, and compared the result to the target value. It has not consulted a table of
expected outcomes. When it reports that a target is unreachable, it is not reporting a failed
search: it is reporting a theorem, and the certificate — a minimal polynomial, its irreducible
factorisation status over ℚ, and the degree obstruction — is fixed in advance of any run and is
independent of the agent's behaviour. The agent's failure is *predicted by* the certificate, not
evidence for it.

Three things are therefore separable and are kept separate throughout:

| | Status | Basis |
|---|---|---|
| The reachability facts | **Tier I** | Classical theorems, machine-checked here |
| The instrument's arithmetic | **Tier I** | Exact formulas, verified against closed forms |
| The agent's search behaviour | **Tier II** | Measured, reproducible, seed-dependent |
| Any reading of what the behaviour *means* | **Tier III** | Declared and not argued |

No interpretation is offered. Section 15 lists what is deliberately not claimed.

---

## 1 · Formal setting

### 1.1 Registry

A **registry** is a triple `R = (V, E, Γ)`:

- `V` — a finite set of **distinctions**, here points of ℝ².
- `E` — a finite set of **loci**: lines and circles determined by elements of `V`.
- `Γ` — the **grammar**: the set of admissible operations producing new loci from `V`.

`Γ` is not a parameter of the agent. It is a declaration about the representation class, and
changing it mid-run is a recordable event (§9.3).

### 1.2 Stations

A **station** is a fixed choice of `Γ`. The instrument implements three, ordered by inclusion:

| Station | Admissible operations |
|---|---|
| Γ₀ | `orient(i,j)` — the line through two distinctions |
| Γ₁ | Γ₀ + `circle(i,j)` (centre *i*, through *j*), `transport(i,j,k)` (centre *k*, radius \|ij\|), `bifurcate(i,j)` (perpendicular bisector) |
| Γ₂ | Γ₁ + `neusis(i)` — marked-ruler operations |

`Γ₀ ⊂ Γ₁ ⊂ Γ₂` is a **circumscription continuum**: an ordered family of finite stations, each
strictly extending the last. `bifurcate` is included as a primitive rather than a macro because
bifurcation is the primitive operator of the underlying framework; its inclusion has an
accounting consequence recorded in §5.2.

### 1.3 Window observables

A **window observable** is a decidable predicate on a registry. Five are implemented, in three
kinds:

| Observable | Kind | Predicate | Invariant | Seed |
|---|---|---|---|---|
| √2 | point | ∃p ∈ V : \|p − (√2, 0)\| < ε | algebraic degree 2 | unit square |
| φ | distance | ∃p,q ∈ V : \| \|p−q\| − φ \| < ε | degree 2, `x²−x−1` | unit square |
| τ/12 | angle | ∃p ∈ V : \|\|p\|−1\| + \|arg p − τ/12\| < ε′ | 12 = 2²·3 | unit square |
| τ/18 | angle | ∃p ∈ V : \|\|p\|−1\| + \|arg p − τ/18\| < ε′ | 18 = 2·3² | unit square |
| ∛2 | point | ∃p ∈ V : \|p − (∛2, 0)\| < ε | degree 3, `x³−2` | unit square |

with ε = 10⁻⁷, ε′ = 10⁻⁶, and τ the full turn. **Every observable is seeded from the unit square
alone.** An earlier build injected (½, √3/2) and (2, 0) as "given data from the classical problem
statement"; §1.4 records why that was wrong and what removing it cost.

### 1.4 Imposed bases, and a withdrawn injection

Two related errors were present in the first build, both of the kind that disguise an imposed
convention as structure.

**The base.** Naming the angle observables "60°" and "20°" imports 360 as a counting base. The
mathematics never depended on it — the cubic `8x³ − 6x − 1` descends from the triple-angle
identity and carries no base — but the *label* concealed which invariant was doing the work. The
base-free objects are **ratios of a full turn**, and the operative structure is the
**denominator**. By Gauss–Wantzel on regular *n*-gons, the turn-ratio `1/n` is constructible with
straightedge and compass exactly when

```
n = 2^k · p₁ ⋯ p_r     with p₁ … p_r distinct Fermat primes
```

So `12 = 2²·3` is constructible because 3 appears once, and `18 = 2·3²` is not because **3 is
repeated**. That is the entire obstruction, stated without reference to degrees, and it
generalises immediately: 1/9 and 1/36 fail for the same reason; 1/15, 1/17, 1/20 and 1/24 succeed.
The instrument now labels these observables `τ/12` and `τ/18` and displays the denominator
factorisation as the invariant. Degree measure is retained only as a declared chart over base 360,
never as the object.

**The injection.** The seed for the angle observables carried (½, √3/2), and cube duplication
carried (2, 0), described as presupposed by the classical problem statements. Two things are wrong
with that.

First, **both points are constructible at Γ₁ from the unit square.** (2, 0) in two moves: the
circle centred (1,0) through (0,0) has radius 1 and meets the axis at 0 and 2. (½, √3/2) in three:
two unit circles centred (0,0) and (1,0) meet at exactly (0.5, 0.8660254037844386). Machine
verified to below 10⁻¹⁵. They were never presuppositions; they were convenience shortcuts
labelled as problem data.

Second, and worse: **(½, √3/2) is irrational, and it was injected at Γ₀ as well.** Lemma 3.1
requires `S ⊆ ℚ²`. With that point present the hypothesis fails, so the Γ₀ certificate — *the
closure of a rational seed stays in ℚ²* — did not apply to the angle observables at all. The
conclusion happens to survive by a different argument: the closure stays in ℚ(√3)², and since
`[ℚ(√3, cos τ/18) : ℚ] = 6` the target retains degree 3 over the seed field. But the printed
certificate was unsound, and an instrument whose purpose is to distinguish certified residue from
migrated residue cannot assert a certificate whose hypothesis it has itself violated.

Both are withdrawn. The source ratio is now constructed by the agent at the station's own cost,
and the Γ₀ hypothesis holds for every observable.

**What the injection was worth, measured.** Removing the seeded points, with no other change,
dropped reachability at Γ₂ from **12/12 to 5/12** for τ/18 and from **12/12 to 4/12** for ∛2.
Supplying the source ratio to the *progress measure* instead (§1.5) recovered 10/12 and 8/12. The
residual gap between 12/12 and 10/12 is what the injected data was doing that a declared heuristic
does not, and it is reported rather than closed.

### 1.5 The preimage heuristic, declared

At Γ₂ the neusis operator has a known preimage: thirding a turn-ratio requires the point at three
times the target argument, and a real cube root requires the point at the cubed radius. That
preimage is supplied to the **progress measure** — candidate scoring, shortlist construction and
harvest ordering all take the minimum of the distance to the target and to the preimage. This is
Type II invariant work and is declared as such. It is *not* supplied as a seed point, which would
be injected data of exactly the kind §1.4 withdraws.

The distinction is the whole content of the correction. A heuristic that *searches toward* an
intermediate is a move policy operating inside the declared class. A seed that *hands over* the
intermediate is a widening of the class, and if undeclared it is indistinguishable in the output
from a genuine construction.

### 1.6 Presence, not derivation — declared

The observables test whether a ratio is **present** in the registry, not whether it was **obtained
by** operating on a source. These differ, and the difference was found by measurement: τ/12 is
reached in two turns without ever constructing τ/6, because two unit circles centred (0,0) and
(0,1) meet at (√3/2, ½) directly. The instrument's success there does not witness a halving of
anything.

For the **impossibility** direction the distinction is immaterial: if a point is not constructible
at all then no derivation of it exists either, so every certified ✗ in §3.7 stands unchanged. For
the **reachability** direction the predicate is strictly weaker than the classical problem, and is
reported as presence.

---

## 2 · The arithmetic kernel

All coordinates are IEEE-754 doubles. Lines are stored in normalised implicit form
`ax + by = c` with `a² + b² = 1`, which makes the signed point-line distance a single dot
product and removes a normalisation from the inner loop.

### 2.1 Line through two points, and the sign convention

For distinct `p, q`:

```
a = (q_y − p_y)/n,   b = (p_x − q_x)/n,   c = (a·p_x + b·p_y),
n = √((q_y−p_y)² + (p_x−q_x)²)
```

A line has two implicit representations differing by an overall sign, and `lineThrough(p,q)`
and `lineThrough(q,p)` return them respectively. A canonical orientation is therefore imposed:
negate `(a, b, c)` whenever `a < −10⁻¹²`, or `|a| ≤ 10⁻¹²` and `b < 0`. Without it, the two
representations store as distinct loci and their intersection yields
`det = a(−b) − (−a)b = 0`, read as parallelism — see defect 10 in §14.

### 2.2 Perpendicular bisector

With `d = q − p`, `n = |d|`, `m = (p+q)/2`:

```
a = d_x/n,   b = d_y/n,   c = (d_x·m_x + d_y·m_y)/n
```

### 2.3 Line ∩ line

`det = a₁b₂ − a₂b₁`. If `|det| < 10⁻¹¹` the lines are treated as parallel and no point is
produced. Otherwise, by Cramer's rule:

```
x = (c₁b₂ − c₂b₁)/det,     y = (a₁c₂ − a₂c₁)/det
```

### 2.4 Line ∩ circle

Because the line is normalised, `d = a·O_x + b·O_y − c` is the signed distance from the centre
`O` to the line. The foot of the perpendicular is `F = O − d·(a, b)`. With half-chord
`h = √(r² − d²)`:

- `r² − d² < −10⁻¹⁰` → no intersection
- `h < 10⁻⁹` → tangency, one point `F`
- otherwise two points `F ± h·(−b, a)`

`(−b, a)` is the unit direction along the line, orthogonal to the unit normal `(a, b)`.

### 2.5 Circle ∩ circle

With `δ = O₂ − O₁`, `d = |δ|`:

- `d < 10⁻¹¹` (concentric), `d > r₁ + r₂ + 10⁻¹⁰` (separate), or `d < |r₁ − r₂| − 10⁻¹⁰`
  (contained) → no intersection

otherwise, with

```
α = (r₁² − r₂² + d²)/(2d),      h = √(r₁² − α²),      M = O₁ + α·δ/d
```

the intersections are `M ± h·(δ_y, −δ_x)/d`. The `α` expression is the standard radical-line
projection: subtracting the two circle equations eliminates the quadratic terms and gives the
radical line, whose distance from `O₁` along `δ` is `α`.

### 2.6 Deduplication and tolerance

Points are keyed on `x.toFixed(9) + "," + y.toFixed(9)` — a fixed 10⁻⁹ lattice. Points with
`|x| > 14` or non-finite coordinates are rejected. Loci are deduplicated on their parameters to
10⁻⁹.

The tolerance hierarchy is deliberate and ordered: **detection** at 10⁻¹⁰ to 10⁻¹¹ (looser, so
that a genuinely tangent configuration is not silently dropped), **identity** at 10⁻⁹ (the
dedup lattice), **satisfaction** at 10⁻⁷ (the observable). Each is at least an order of
magnitude looser than the one below, so a point cannot be simultaneously "distinct from" and
"identical to" a neighbour.

### 2.7 Tower bound

Each point carries an integer `h`, incremented over its parents whenever the intersection
producing it involved a circle. The recorded quantity is therefore an **upper bound**
`[ℚ(p) : ℚ] ≤ 2^h`, not the exact degree — a line-circle intersection whose discriminant
happens to be a rational square adds no extension, and the counter does not detect this.

The bound suffices for every use made of it, because the impossibility arguments in §3 run in
the direction *constructible ⇒ degree is a power of 2*. An upper bound on the tower height
never weakens a conclusion of that form. The instrument displays `2^h` and labels it a bound.

---

## 3 · The certificates

Each result below is stated, proved or attributed, and then reported as machine-checked. The
verification harness is described in §16.

### 3.1 Γ₀ produces only rational points

**Lemma 3.1.** Let `S ⊆ ℚ²` be finite. Every point in the straightedge closure of `S` lies in ℚ².

*Proof.* A line through distinct `p, q ∈ ℚ²` may be written
`(q_y − p_y)(x − p_x) − (q_x − p_x)(y − p_y) = 0`, i.e. `Ax + By = C` with `A, B, C ∈ ℚ`. Two
such lines with `A₁B₂ − A₂B₁ ≠ 0` meet at the unique solution of a 2×2 linear system with
rational coefficients and non-zero rational determinant; by Cramer's rule that solution lies in
ℚ². Induction on construction depth. ∎

*Implementation note.* The kernel stores lines in normalised form, dividing by
`√(A² + B²) ∉ ℚ` in general. This does not affect the lemma, since scaling `(A, B, C)` by a
non-zero constant leaves the solution set unchanged; but it does mean the *running instrument*
cannot itself witness rationality. The verification harness therefore recomputes the closure in
exact arithmetic over ℚ using arbitrary-precision integer fractions (`BigInt` numerator and
denominator, reduced by Euclid's algorithm at every operation), independent of the kernel.

**Lemma 3.2 (saturation).** The straightedge closure of `V₀ = {(0,0), (1,0), (0,1), (1,1)}` is
exactly `V₀ ∪ {(½, ½)}`, of cardinality 5.

*Proof.* The six lines determined by pairs of `V₀` are the four sides and the two diagonals.
Opposite sides are parallel and do not meet. Each side meets the other two sides, and each
diagonal, only at points of `V₀`. The two diagonals meet at `(½, ½)`. Hence exactly one new
point.

Now let `V₁ = V₀ ∪ {(½, ½)}`. The lines determined by pairs of `V₁` are the previous six
together with the four lines joining `(½, ½)` to a corner; each of those four is contained in a
diagonal already present. The line set is therefore unchanged, so no further intersection
arises, and `V₁` is closed. ∎

**Corollary 3.3.** `(√2, 0)` is not in the Γ₀ closure of the unit square, since `√2 ∉ ℚ`. The
same holds for every observable in §1.3, each of which requires an irrational coordinate.

Note what Lemma 3.2 also shows: the *midpoints of the sides* are never obtained, so no
perpendicular bisector ever becomes available. The failure at Γ₀ is not slow exhaustion. It is
immediate saturation after one productive step.

**Machine check.** Exact rational closure of the unit square, three rounds: **5 points**, all
coordinates rational (`true`), points satisfying `x² = 2`: **0**.

**In-run check.** The instrument reproduces the closure at run time: at Γ₀ it builds exactly six
loci and reaches `|V| = 5` including `(0.50, 0.50)`, on every one of six seeds tested, then
issues the negative weld with charged branching `C(5,2) = 10`. Prior to the fixes recorded as
defects 10 and 11 in §14 it stalled at `|V| = 4` and never obtained the centre, contradicting
Lemma 3.2. The lemma was correct and the instrument was wrong.

### 3.2 Γ₁ reaches √2 and φ

The circle centred `(0,0)` through `(1,1)` has radius `√2` and meets the line through `(0,0)`
and `(1,0)` at `(±√2, 0)`. Two loci, hence two moves.

For φ: with the midpoint `(½, 0)` available via `bifurcate`, the circle centred `(½, 0)` through
`(1,1)` has radius `√(¼ + 1) = √5/2`, and meets the x-axis at `½ + √5/2 = φ`.

**Machine check.** `|(0,0) − (1,1)| = 1.4142135623730951`, error against `Math.SQRT2` exactly
**0**. φ construction error exactly **0**. (Both are exact in double precision because the
operations involved introduce no additional rounding beyond the representation of the radical
itself.)

### 3.3 The degree obstruction

**Theorem 3.4 (Gauss–Wantzel; Wantzel 1837).** A real number α is constructible from `{0, 1}`
by straightedge and compass if and only if there is a tower
`ℚ = F₀ ⊂ F₁ ⊂ ⋯ ⊂ F_n` with `[F_{i+1} : F_i] = 2` and `α ∈ F_n`. Consequently
`[ℚ(α) : ℚ] = 2^k` for some `k ≥ 0`.

Cited, not proved. Every intersection available at Γ₁ solves a linear or quadratic equation over
the field generated by the existing points, so each step adjoins at most one square root; the
converse direction is the standard construction of a square root by semicircle.

### 3.4 Trisection of 60° is impossible at Γ₁

**Proposition 3.5.** `cos 20°` is not constructible with straightedge and compass.

*Proof.* From the triple-angle identity `cos 3θ = 4cos³θ − 3cos θ` with `θ = 20°` and
`cos 60° = ½`, writing `c = cos 20°`:

```
4c³ − 3c = ½        ⟹        8c³ − 6c − 1 = 0
```

Let `f(x) = 8x³ − 6x − 1`. By the rational root theorem, any rational root `p/q` in lowest
terms has `p | 1` and `q | 8`, so the candidates are `±1, ±½, ±¼, ±⅛`. Evaluating exactly:

| x | f(x) | | x | f(x) |
|---|---|---|---|---|
| 1 | 1 | | −1 | −3 |
| ½ | −3 | | −½ | 1 |
| ¼ | −19/8 | | −¼ | 3/8 |
| ⅛ | −111/64 | | −⅛ | −17/64 |

None is zero. A cubic over a field with no root in that field has no linear factor, and a cubic
with no linear factor is irreducible. Hence `f` is irreducible over ℚ and
`[ℚ(c) : ℚ] = 3`. Since 3 is not a power of 2, Theorem 3.4 forbids `c`. ∎

**Machine check.** `f(cos 20°) = 8.882 × 10⁻¹⁶` (confirming `cos 20°` is a root to double
precision); 8 rational candidates tested, **0** roots found.

### 3.4a The obstruction without a base

**Theorem 3.4a (Gauss).** The regular *n*-gon is constructible with straightedge and compass if
and only if `n = 2^k p₁ ⋯ p_r` with `p₁ … p_r` distinct Fermat primes.

Cited. Applied to the turn-ratio observables: `12 = 2²·3` carries the single Fermat prime 3, so
τ/12 is constructible; `18 = 2·3²` repeats 3, so τ/18 is not. Proposition 3.5 below reaches the
same fact through the minimal polynomial and is retained because it exhibits the degree obstruction
explicitly, but Theorem 3.4a is the statement of record: it is base-free, and it makes the
operative quantity — the multiplicity of 3 in the denominator — visible.

**Machine check.** The criterion was evaluated for `n ∈ {3,4,5,6,8,9,10,12,15,17,18,20,24,36}`,
returning constructible for all but 9, 18 and 36, each of which carries a repeated 3.

### 3.5 Cube duplication is impossible at Γ₁

**Proposition 3.6.** `∛2` is not constructible with straightedge and compass.

*Proof.* `g(x) = x³ − 2`. Rational candidates `±1, ±2`, giving `g` values `−1, −3, 6, −10`
respectively. No root, so `g` is irreducible over ℚ and `[ℚ(∛2) : ℚ] = 3`, not a power of 2. ∎

**Machine check.** 4 candidates tested, **0** roots found.

### 3.6 Γ₂ closes exactly that residue

A marked ruler permits a neusis: a line may be placed through a given point such that a
specified segment of it, of fixed length, has endpoints on two given curves. The resulting
constraint is cubic, and marked-ruler constructions realise real solutions of cubics —
Archimedes' trisection being the classical instance.

**Machine check.** The Archimedes neusis condition for `θ = 60°` was solved by bisection on the
placement angle to 200 iterations, recovering **20.000000000°** with error
**3.553 × 10⁻¹⁵** against the exact 20°.

The instrument implements the neusis as two named marked-ruler primitives — angle trisection of
an existing point's argument, and extraction of a real cube root of an existing radius — each
justified by the verified construction rather than re-derived at run time. This is a declared
shortcut: the instrument computes `cos(θ/3)` directly rather than iterating the neusis
placement. The *reachability* claim is unaffected, since the classical construction establishes
that the point is obtainable at Γ₂; what the instrument does not do is exhibit the placement.

### 3.7 Reachability matrix

| | √2 | φ | τ/12 | τ/18 | ∛2 |
|---|---|---|---|---|---|
| **Γ₀** | ✗ certified (3.1) | ✗ certified | ✗ certified | ✗ certified | ✗ certified |
| **Γ₁** | ✓ (3.2) | ✓ (3.2) | ✓ (3.4a) | ✗ certified (3.4a, 3.5) | ✗ certified (3.6) |
| **Γ₂** | ✓ | ✓ | ✓ | ✓ (3.6) | ✓ (3.6) |

Denominators, base-free: τ/12 has `12 = 2²·3`, one Fermat prime, constructible. τ/18 has
`18 = 2·3²`, a repeated 3, not constructible. See Theorem 3.4a.

Every ✗ in this table is a theorem. None is a search result.

---

## 4 · Weld typing

Moves are typed following the three-way taxonomy of the parent corpus:

- **Type I — criteria and reformulation.** Relocates the observable without shortening the
  distance to it. In the instrument this is a recorded event that changes coordinates and
  provably leaves the residual unchanged.
- **Type II — invariant welds.** Adopts a progress measure and acts on it. Here: evaluate a
  scalar heuristic over the registry and promote the best-scoring fraction.
- **Type III — carrier welds.** Executes a construction. Includes **negative** carriers: a
  proof of unreachability is a delivered Type III weld, not a failure.

The last point is load-bearing for the instrument's design. When the Auditor prints
*20° unreachable, minimal polynomial 8x³−6x−1, irreducible, degree 3*, the run has **succeeded**
in delivering a negative carrier weld, and the readout says so. An instrument that reported this
as a failed search would be misreporting its own result.

**Machine check.** At Γ₁ with the 20° observable, over every trial run, the agent reached the
observable **0 times** and the negative weld was issued at turn **14** (the point at which the
minimum-evidence turn count is satisfied). At Γ₂ the same observable was reached **12/12**,
fastest in **1 turn**. Reachability over 12 seeds at default dials: √2 **12/12** (fastest 3
turns), τ/12 **12/12** (2), φ **11/12** (170), τ/18 at Γ₂ **10/12** (7), ∛2 at Γ₂ **8/12** —
all with no injected data; §1.4 records what withdrawing it cost.

---

## 5 · Branching

### 5.1 Closed form

The charged admissible-move count at station `s` with `V = |V|`:

- lines from unordered pairs: `C(V, 2) = V(V−1)/2`
- circles from ordered (centre, through-point) pairs: `V(V−1)`
- neusis, one per point, only at Γ₂: `V`

```
b(V, s) = V(V−1)/2 + [s ≥ 1]·V(V−1) + [s = 2]·V
        = (3/2)·V(V−1) + [s = 2]·V        (at Γ₁ and above)
        = V(V−1)/2                        (at Γ₀)
```

so `b = Θ(V²)`. This is the structural difference from the predecessor instrument, whose move
set was a fixed list of eight actions at every state: there, branching was constant and the
search space could not open out.

**Machine check.** Measured `b` against the closed form at Γ₁, seven independent samples:

| `V` | station | measured `b` | closed form | match |
|---|---|---|---|---|
| 5 | Γ₀ | 10 | `C(5,2) = 10` | exact |
| 120 | Γ₁ | 21,420 | 21,420 | exact |
| 151 | Γ₁ | 33,975 | 33,975 | exact |
| 385 | Γ₁ | 221,760 | 221,760 | exact |
| 387 | Γ₁ | 224,073 | 224,073 | exact |
| 436 | Γ₁ | 284,490 | 284,490 | exact |
| 900 | Γ₁ | 1,213,650 | 1,213,650 | exact |

Every measured value equals the closed form identically. The reported branching factor is not
an estimate.

### 5.2 What the charge omits — declared

`b` as defined above is a **lower bound** on the true admissible set at Γ₁ and Γ₂, and this is a
modelling decision that must be declared rather than discovered:

- `bifurcate(i,j)` produces a distinct locus for each unordered pair and is **not counted**. The
  true line-like family is therefore `2·C(V,2)`, not `C(V,2)`.
- `transport(i,j,k)` is a **three-point** operation — centre `k`, radius `|ij|` — and the
  admissible family is `Θ(V³)`. It is **not counted**.

Consequently the true admissible set is `Θ(V³)`, while the charged quantity is `Θ(V²)`. The
charge prices the quadratic subfamily `{orient, circle, neusis}` only. Every asymptotic
statement in §6 is therefore a statement about the *charged* model, and is conservative with
respect to the true one.

---

## 6 · Cost accounting

This section corrects a claim made in the instrument's own explanatory text. The correction is
recorded rather than quietly applied.

### 6.1 What is charged

**Construction**, per turn:

```
ΔC = b(V, s)  +  [new locus created]·(2 + number of intersection tests performed)
```

The `b` term prices the space the Pilot must range over. The remainder prices the locus and the
inscription work actually done.

**Verification**, per Juror call:

```
ΔV = |V|        for point and angle observables
ΔV = 2|V|       for the distance observable
```

**Machine check.** Per-turn `ΔC` exceeds `b` by the small additive carrier term, and equals it
when the proposed locus is rejected as a duplicate. Measured with `wIII = 1` so every turn is a
carrier move: at `V = 8`, `b = 84`, `ΔC = 90` (excess 6); at `V = 861`, `b = 1,110,690`,
`ΔC = 1,110,742` (excess 52); at `V = 686`, `b = 704,865`, `ΔC = 705,033` (excess 168). The
excess is `O(|E|)` and negligible against the `Θ(V²)` leading term. Juror charge measured
directly: `√2` and `30°` charge `1·|V|`, `φ` charges `2·|V|`.

### 6.2 The instantaneous ratio, and why the cumulative one misleads

Dividing:

```
ΔC/ΔV  =  (3/2)(V − 1)        point and angle observables
       =  (3/4)(V − 1)        distance observable
```

Both are `Θ(V)`. The charged construction-to-verification ratio therefore grows **linearly in
the registry size**, without bound as the registry cap is raised.

The instrument displays the **cumulative** ratio `C/V`, which is a history-weighted average and
behaves differently: it lags the instantaneous value and then plateaus, because `|V|` itself
saturates at the registry cap. Measured, cap 900, forced continuation:

| turn | cumulative `C:V` |
|---|---|
| 50 | 86.8 : 1 |
| 100 | 127.2 : 1 |
| 150 | 128.4 : 1 |

The flattening from 127 to 128 is not evidence against the linear instantaneous law; it is the
registry cap binding, which fixes `|V|` and therefore fixes `b`. The instrument's text formerly read "watch the ratio diverge", measured on the
φ observable. That phrasing is wrong on two counts: the displayed quantity is cumulative and
plateaus, and φ is the observable for which the true (as opposed to charged) verification work is
itself quadratic. The correct statement is the closed form above, with the cap dependence made
explicit.

### 6.3 Charged versus executed — declared

The Pilot does not evaluate all `b` moves. It samples

```
K = max(6, round[(5 + 20g)·(1 + ln(1 + V)/3)])
```

candidates, where `g` is the commit-pressure dial: `K = O(log V)`. Executed per-turn work is
dominated by the shortlist sort at `O(V log V)`, plus `O(|E|)` intersection tests, plus
`O(K)` candidate scorings.

So the charged asymmetry is a statement about the size of the space a complete search must
range over; the executed asymmetry is different, and smaller, because the agent samples. Both
are true of different quantities and neither is offered as the other. Similarly, the **true**
verification work for the distance observable is `V(V−1)/2` pair evaluations against a charge of
`2V` — the charge understates it by `Θ(V)`.

Summarising the four quantities, per turn:

| | charged | executed |
|---|---|---|
| construction | `Θ(V²)` (a lower bound on the true set, §5.2) | `O(V log V)` |
| verification, point/angle | `Θ(V)` | `Θ(V)` |
| verification, distance | `Θ(V)` | `Θ(V²)` |

---

## 7 · Held variables and status dynamics

Each distinction carries one of six statuses, following the agency account of the parent corpus:
`unassessed`, `presumptive`, `foundational`, `under review`, `dissociated`, `integrated`.

### 7.1 Transition kernel

With `σ` the solve⟷coagula dial and `θ` the hold threshold:

| Transition | Condition | Probability per turn |
|---|---|---|
| unassessed → presumptive | — | `0.25 + 0.55σ` |
| presumptive → foundational | `turn − promo ≥ θ` | `p = 0.35 + 0.50σ` |
| foundational → under review | `idle > 14 + 2θ` | `0.10` |
| under review → integrated | has been used | `1` |
| under review → dissociated | otherwise | `0.30` |

Anchor formation accompanies promotion with probability `0.30`, endowing reserve `10 + 14σ`,
depleting at `0.14` per turn beyond radius 4 and `0.03` within it.

### 7.2 Closed form for the hold time

Let `H` be the number of turns a distinction spends `presumptive`. Eligibility begins at
`H = θ`, and each eligible turn is an independent Bernoulli trial with success probability `p`.
Because the promotion pass does not re-examine a point in the same sweep in which it became
presumptive, the first eligible turn is `max(θ, 1)`. Hence

```
E[H] = max(θ, 1) + (1 − p)/p,        p = 0.35 + 0.50σ
```

**Machine check**, Type III only so that a single promotion channel is active, four seeds per
cell, 220 turns:

| σ | p | θ | predicted `E[H]` | measured | n |
|---|---|---|---|---|---|
| 1.0 | 0.85 | 0 | 1.18 | 1.15 | 14,036 |
| 1.0 | 0.85 | 2 | 2.18 | 2.16 | 13,136 |
| 1.0 | 0.85 | 4 | 4.18 | 4.16 | 10,382 |
| 1.0 | 0.85 | 8 | 8.18 | 8.16 | 7,054 |
| 1.0 | 0.85 | 20 | 20.18 | 20.17 | 2,296 |
| 0.5 | 0.60 | 4 | 4.67 | 4.46 | 11,912 |
| 0.5 | 0.60 | 20 | 20.67 | 20.59 | 1,267 |
| 0.0 | 0.35 | 4 | 5.86 | 5.06 | 6,531 |
| 0.0 | 0.35 | 20 | 21.86 | 21.75 | 1,161 |

At `p = 0.85` agreement is within 0.03 turns across the whole range of θ, including the
`max(θ, 1)` floor at `θ = 0` (predicted 1.18, measured 1.15). At lower `p` the measurement falls
consistently **below** prediction, by roughly 0.02 turns at `p = 0.85`, 0.21 at `p = 0.60`, and
0.85 at `p = 0.35`.

### 7.3 The estimator is right-censored — declared

The deficit in §7.2 is not a failure of the closed form. The instrument accumulates
`holdSum / holdN` over distinctions that were **actually promoted** within the run. A
distinction that waits a long time is disproportionately likely to be removed first — the
coagulation pass prunes `dissociated`, then `unassessed`, then `under review`, then
`presumptive`, in that order — or to be still waiting when the run ends. The sample is therefore
right-censored and biased low, with severity increasing as `p` falls, exactly as observed. The
bias vanishes as `p → 1`.

The displayed "mean hold before promotion" should accordingly be read as a **lower bound** on
the true expected hold. This is a property of the readout, not of the mechanism.

### 7.4 The two failure modes

The parent corpus names two symmetric failures of a registry: **premature closure**, in which a
possibility becomes a fact before it has been tested, and **permanent suspension**, in which no
position can be taken. Both are reachable by the θ dial alone, and both are measured.

| θ | unassessed | presumptive | foundational | under review | dissociated | integrated | mean hold |
|---|---|---|---|---|---|---|---|
| 0 | 1 | 6 | 117 | 5 | 2 | 22 | 1.5 |
| 4 | 2 | 45 | 82 | 0 | 1 | 22 | 4.5 |
| 20 | 0 | 37 | 94 | 3 | 0 | 7 | 20.7 |

At θ = 0, 117 distinctions are foundational having spent a mean of at most 1.5 turns untested and
only 6 remain presumptive: almost nothing is left in an open state. At θ = 20, 94 are foundational
against only 7 integrated — commitments that never complete. At θ = 4 the load redistributes to 45
presumptive against 82 foundational with 22 integrated. The
middle setting is not an interpolation between the extremes; it is the only one of the three in
which the registry both commits and completes.

---

## 8 · The complexity measure

```
C(R) = α|V| + β|E| + γ|S| + δ|H|,        α = 1, β = 1, γ = 2, δ = 3
```

- `|V|` — distinctions.
- `|E|` — point-on-locus incidences, tested at tolerance 10⁻⁷.
- `|S|` — distance classes realised more than once, at 10⁻⁶ resolution: the symmetry constraints.
- `|H|` — collinear triples, by vanishing signed area below 10⁻⁹: relations among relations.

### 8.1 Estimator bias — declared

`|H|` is cubic in `|V|` and `|E|` is a product; both are capped for tractability. `|E|` scans at
most 120 loci against at most 160 points and is then rescaled by
`(|E_total|/120)·(|V|/160)`, a ratio estimator that assumes incidence density is uniform across
the sampled and unsampled portions — it is not, because later loci are generated near the target
and are incidence-dense. `|S|` is computed over the first 90 points only; `|H|` over the first
34. The superlinear terms are recomputed on an 8-turn stride or when `|V|` moves by 12 or more,
and interpolated between.

`C(R)` is therefore a **biased estimate**, not a count, and comparisons of `C(R)` across runs at
very different `|V|` are not reliable. It is retained because its *shape* over a single run is
informative and its components are individually meaningful.

---

## 9 · Migration, and the self-enlargement audit

### 9.1 The two fates

The parent framework recognises exactly two outcomes for a residue: **certification**, in which
the residue is proved to be irreducible over the declared class, and **migration**, in which the
residue disappears because the class was enlarged. These are not degrees of the same thing.

### 9.2 The instrument exhibits both, in sequence

At Γ₁ with the 20° observable, the residue is certified (§3.4). Switching to Γ₂ makes the same
observable reachable in a single turn (§4). Nothing about the observable changed. What changed
was `Γ`.

### 9.3 MR-Q6

The Auditor implements the self-enlargement audit: it records the station at run start and
compares it to the current station, and it counts Type I reformulations. If the station changed,
the readout states that any residue that vanished has **migrated, not been certified**, and the
run is flagged. This is not a warning about user error. It is the correct name for what
happened, and the instrument refuses to report a migration as a certification.

---

## 10 · Published prediction

The instrument includes an Advisor that announces a prediction of the Pilot's next move type
**before** the Pilot moves, where the Pilot can see the announcement. Two propositions, both
exact.

Let `M` be the move-type set, `k = |M| = 3`.

**Proposition 10.1.** Let `P` be any predictor that publishes `m̂ ∈ M`, and let the agent play
`f(m̂)` where `f : M → M` satisfies `f(m) ≠ m` for all `m`. Then `P`'s accuracy is exactly 0.

*Proof.* Immediate: accuracy is the probability that `f(m̂) = m̂`, which is 0 by hypothesis. Such
`f` exists iff `k ≥ 2` — a fixed-point-free self-map of a finite set. ∎

This holds for *every* predictor, including one with perfect knowledge of the agent's policy,
because publication precedes the move and the negation is defined on the published value.

**Proposition 10.2.** Let `P` announce a distribution `q ∈ Δ(M)` rather than a move, and let the
agent's response `r : Δ(M) → Δ(M)` be continuous. Then `r` has a fixed point `q*` (Brouwer, since
`Δ(M)` is a non-empty compact convex subset of ℝᵏ), and at `q*` the accuracy of sampling from the
announcement is

```
Σᵢ (q*ᵢ)²
```

*Proof.* Accuracy is the probability that an independent draw from `q*` coincides with the
agent's move, itself drawn from `r(q*) = q*`, giving `Σᵢ q*ᵢ · q*ᵢ`. ∎

**Corollary 10.3.** `Σᵢ qᵢ² ∈ [1/k, 1]`, with equality at `1/k` iff `q` is uniform. So a
self-fulfilling announcement is possible, and it is worthless *only* against an agent that
minimises its own predictability. A lopsided agent remains legible even though it cannot be
pinned to a single move.

**Machine check.** Proposition 10.1: accuracy `0` over 20,000 rounds in a direct two-move test,
and `0.0%` in the instrument in both `oracle` mode (which sees the Pilot's true argmax, n = 300)
and `frequency` mode, both n = 300. With `δ = 0` the same predictors score `58.7%` and `65.3%`
over 300 rounds each — unpublished in effect, they are informative.

Proposition 10.2, measured against `Σqᵢ²`:

| Pilot weights (I/II/III) | predicted `Σqᵢ²` | observed | n |
|---|---|---|---|
| 0.10 / 0.30 / 0.60 | 46.0% | 45.4% | 901 |
| 0.3333 / 0.3333 / 0.3333 | 33.3% | 32.1% | 901 |
| 0.05 / 0.05 / 0.90 | 81.5% | 81.7% | 901 |

All three agree within 1.2 points at n = 901, against a standard error of roughly 1.6 points.

A separate symmetric test found the fixed point at `q* = 0.5` for every softmax inverse
temperature `β ∈ {0, 2, 8, 32}` with accuracy `0.500000` — i.e. `1/k` for `k = 2`, confirming
Corollary 10.3 at the uniform point.

### 10.1 What this does not establish — stated in the instrument itself

A deterministic lookup table that returns "whatever was not announced" satisfies the hypothesis
of Proposition 10.1 and drives accuracy to zero. The panel therefore measures
**unpublishability**, a real and narrow property, and does not distinguish a free agent from a
stubborn one. The instrument prints this alongside the readout rather than in a footnote. No
claim about volition is made or implied anywhere in the artifact.

---

## 11 · Determinism

The pseudo-random source is a 32-bit xorshift:

```
s ^= s << 13;   s ^= s >>> 17;   s ^= s << 5;   s >>>= 0;   return s / 2³²
```

with period `2³² − 1` over non-zero states. Seeded from the UI or from the clock when blank; the
seed is displayed and included in every export.

**Machine check.** Three independent runs at seed 424242, 200 turns each, agreed exactly on
`|V| = 200`, charged construction cost `1,643,111`, and dissociation count `46`. A traversal is
therefore reproducible from its seed and dial settings alone, which is what makes an exported
run auditable by a third party.

---

## 12 · Dial-space sweep

Seven dials is too large a space to explore by moving sliders. The sweep takes two at a time.

### 12.1 Method

For an `N × N` grid over two chosen dials, `q` seeds per cell, `T` turns per run: each cell is
run `q` times from fixed seeds `{11, 29, 53, 71, 97}` and the following are recorded.

- **cascade** — the longest unbroken run of turns each producing at least one new distinction.
- **reach** — peak `|V|`.
- **spread** — normalised Shannon entropy of the six-status histogram,
  `H/ln 6` with `H = −Σ pᵢ ln pᵢ`.
- **speed** — `1/(turns to weld)`, zero where unreached.
- **instability** — `sd(cascade)/mean(cascade)` across seeds.

The seed ensemble is the null: the same cell under different seeds. Variance is displayed rather
than averaged away, because a cell whose behaviour is not reproducible cannot support a
conclusion however bright it looks.

### 12.2 Basin test

The reported peak is accompanied by a count of how many of its eight grid neighbours score
within two-thirds of it. Four or more is reported as a basin and trustworthy; fewer is reported
as isolated and likely a seed artifact. A single bright cell in a dark field is not a regime.

### 12.3 Measured, and a retraction

An earlier draft of this document reported, as the sweep's principal finding, that the
high-commit row of the `solve⟷coagula × commit` landscape was uniformly at the floor — that
near-maximum greed produces no cascade at all. The cascade range was 0.50 – 8.50, a
seventeenfold spread, and the flat row was clean and structured.

**That finding is withdrawn.** It was not a property of the search. It was the joint signature of
defects 10 and 11 (§14): lines were stored in both sign representations and never deduplicated,
and no term penalised proposing a locus already present. Together these let a strongly greedy
Pilot re-propose its own best move indefinitely, producing zero new distinctions per turn — which
the cascade metric correctly reported as zero, of a phenomenon that did not exist.

The corrected landscape, same axes, `5 × 5`, 2 seeds, 60 turns:

| metric | range across cells |
|---|---|
| cascade | 3.00 – 9.50 |
| reach | 151 – 260 |
| spread | 0.31 – 0.73 |
| instability | 0.00 – 0.50 |

```
    6    5    8    3    5
    9    5    6    5    7
    6    6    7    6    6
    7    7    6    7   10
    5    6    5    7    8
```

Roughly a threefold spread, no dead region, and no monotone structure in the commit direction.
Instability also halved, from a maximum of 1.00 to 0.50: the corrected search is more
reproducible across seeds as well as more productive.

The retraction is recorded rather than deleted. The methodological point it yields is more useful
than the finding it replaces: **a dramatic, cleanly structured landscape warrants more suspicion
than a noisy one**, because a defect that suppresses an entire mechanism produces exactly the
kind of clean, monotone, publishable-looking structure that a genuine search over a
seven-dimensional dial space rarely produces. The basin test of §12.2 does not catch this —
the flat row was a connected region of twenty-five neighbours and would have passed. Nothing in
the sweep panel could have caught it. It was caught by asking whether the instrument reproduced
a theorem it was supposed to reproduce, and finding that it did not (§3.1).

### 12.4 Session isolation

The sweep deep-copies the live registry and all dial values before starting and restores them on
completion or abort.

**Machine check.** Turn count, `|V|`, charged cost, seed, and all dial values were byte-identical
before and after a completed sweep.

---

## 13 · Performance

Measured in a headless harness with the full render path exercised, 200 turns:

| registry cap | before decoupling | after decoupling |
|---|---|---|
| 160 | 9.35 ms/turn | 3.54 ms/turn |
| 320 | 33.47 ms/turn | 10.45 ms/turn |

The 3.2× improvement came from removing the DOM rebuild — log and status histogram — from the
step path and flushing it on a 55 ms timer instead. The superlinear ledger terms are cached on
the stride described in §8.1.

---

## 14 · Construction record

The instrument was built in one pass and then corrected by testing. Nine defects were found
after the code was believed complete, and they are recorded because the class of error is
informative.

1. **Misdiagnosed as missing given data.** The angle and cube observables were unreachable at
   every station, and this was attributed to the seed lacking "the given 60° angle and the given
   length 2", on the reasoning that the classical problem statements presuppose them. *So-called
   fix: goal-specific seed points, marked as given.* **This diagnosis was wrong and the fix became
   defect 12.** The points are constructible at Γ₁; the classical statements presuppose a *source
   ratio to operate on*, not a coordinate to be handed; and one of the injected points is
   irrational, which broke the Γ₀ certificate's hypothesis. The real defect was that the agent had
   no search pressure toward the intermediate — which is a heuristic deficiency, addressed at
   §1.5, not a missing datum. Recorded in this form rather than silently rewritten, because the
   error was in the diagnosis and that is the more instructive part.

2. **Ring depth pinned.** In the derived instrument, one genome field saturated its clamp
   because the tower bound grows without limit; every glyph had identical ring structure.
   *Fixed by decoupling the field from the unbounded quantity.*

3. **Neusis mis-scored.** The marked-ruler move was scored by its parent point's radius, which
   *penalised* the one point that would have produced the target. *Fixed: score by what the move
   produces.*

4. **Harvest too narrow.** Intersections were harvested in target-proximity order with
   insufficient randomisation, so intermediate constructions that score badly were never built.
   *Fixed: randomisation scaled by the solve dial.*

5. **The important one — candidate generation.** Reachable observables were failing on roughly
   half of seeds. Diagnosis showed the winning circle was built but the axis line was not, or the
   reverse; the two halves existed across runs and almost never together. Cause: candidates were
   sampled **uniformly over point pairs**, so as `|V|` grew past a few hundred the probability of
   proposing any *specific* useful move went to zero — 13 samples from a set of 200,000. The
   heuristic could only rank what chance handed it. *Fixed: the progress measure was moved
   upstream to steer generation, via a shortlist of the 16 nearest points to the target plus all
   givens plus foundational structure. √2 went from 5/10 to 12/12.*

6. **Exhaustion threshold too low.** Runs were being terminated as exhausted after 26
   unproductive turns, cutting runs that would have succeeded. *Raised to 70.*

7. **Ledger cost.** `|H|` is cubic and was recomputed every frame. *Fixed by caching on a
   stride; see §13.*

8. **A false claim in the documentation.** The distributional-Advisor text asserted accuracy
   "exactly 1/k". Measurement gave 81.5% at skewed weights. The correct value is `Σqᵢ²`
   (Corollary 10.3), equal to `1/k` only at uniform. *The text was corrected to the measurement,
   not the reverse.*

9. **A second false claim, found while writing this paper.** The cost-ratio text asserted
   divergence on the basis of a cumulative readout measured on the observable whose true
   verification work is itself quadratic. §6 replaces this with the closed form and the declared
   charged/executed distinction.

10. **Sign-twin loci — found by testing the paper's own Lemma 3.2.** A line has two implicit
    representations differing by an overall sign, and `orient(i,j)` versus `orient(j,i)` returned
    them respectively. The deduplication test compared `(a, b, c)` componentwise, so the twins
    stored as distinct loci. Two consequences, the second serious: locus counts and `|E|`
    inflated by up to a factor of two; and intersecting a line with its own negation gives
    `det = a(−b) − (−a)b = 0`, read as parallelism, so every twin silently consumed harvest
    budget and returned nothing. At Γ₀ the instrument built four loci comprising only two
    distinct lines and never obtained the centre point, halting at `|V| = 4` where Lemma 3.2
    proves the closure is 5. *Fixed: canonical sign convention, §2.1. Γ₀ now reaches `|V| = 5`
    with six loci on every seed.*

11. **No novelty constraint on candidate scoring.** Nothing penalised proposing a locus already
    in the registry, so a Pilot with a strong heuristic re-proposed its single best move
    indefinitely, each turn rejected as a duplicate at zero yield. This is what suppressed the
    high-commit region of the sweep landscape (§12.3), and it also depressed registry growth at
    every station. *Fixed: candidate score set to −10⁶ for an existing locus, sharing one
    predicate with the carrier's own duplicate test.* Registry growth at turn 30 rose from
    `|V| = 22` to `|V| = 140`, φ reachability from 11/12 to 12/12, and sweep instability halved.

12. **An imposed base, and an undeclared injection.** The angle observables were named in
    degrees, importing 360 as a counting base and concealing that the operative invariant is the
    multiplicity of a Fermat prime in the *denominator of a turn-ratio* (Theorem 3.4a). Worse, the
    seed carried (½, √3/2) and (2, 0) as "given data from the classical problem statement". Both
    are constructible at Γ₁ from the unit square — three and two moves respectively — so they were
    shortcuts mislabelled as presuppositions. And (½, √3/2) is irrational, injected at Γ₀ too,
    which violated the `S ⊆ ℚ²` hypothesis of Lemma 3.1 and left the Γ₀ certificate asserting a
    conclusion its own stated argument did not reach. *Fixed: relabelled by turn ratio with the
    denominator factorisation shown as the invariant; injection withdrawn; source ratio supplied
    to the progress measure as a declared preimage (§1.5) instead.* Cost measured in §1.4.

Defects 10, 11 and 12 were all found by the same procedure and it is worth naming: the instrument
was asked to reproduce a result the paper proves independently, and it failed. Lemma 3.2 states
the Γ₀ closure has five points; the instrument reported four. Lemma 3.1 requires a rational seed;
the instrument had installed an irrational one. No behavioural test in the suite detected either,
because every behavioural test asks whether the instrument does what the instrument does. The
checks that worked were external and mathematical: state the theorem independently, then ask
whether the instrument satisfies its hypotheses and reproduces its conclusion.

Defect 12 has a further property worth recording. It was not found by testing at all. It was found
by a reader asking whether "60°" names an object or a convention. The instrument was behaving
exactly as designed, every test passed, and the defect lay in what the design took for granted.
No amount of internal verification would have surfaced it.

Defect 5 has a bearing on the instrument's own subject matter that is worth recording without
elaborating: the invariant did its decisive work upstream of the choice, in determining which
options were live at all, rather than in ranking options already present. That is an observation
about this program, and it is left at that.

---

## 15 · What is not claimed — Tier III

Held as declared direction, argued nowhere in the artifact and nowhere here:

- That agent-level status dynamics in a five-observable, three-station toy indicate anything
  about traversal at scale.
- That the weld taxonomy transfers to domains whose stations are not finite or not ordered.
- That the Advisor panel bears on volition. §10.1 states the contrary.
- That `C(R)` is a meaningful complexity measure rather than a convenient aggregate; §8.1 gives
  reasons for doubt.
- That the sweep landscape's basins correspond to anything beyond this implementation's search
  policy.
- That presence of a ratio in the registry witnesses a derivation of it. §1.6 states the
  contrary; the impossibility direction is unaffected.
- That the preimage heuristic of §1.5 is the only admissible way to supply a search direction, or
  that the 10/12 it reaches against the injection's 12/12 exhausts what a declared heuristic can do.
- That the classical impossibility results gain anything from being exhibited this way. They do
  not. What is gained is a place to watch the apparatus operate where the answers are already
  settled, which is the only honest way to calibrate an apparatus.

---

## 16 · Reproduction protocol

Every number in this document is reproducible from the artifact plus four harnesses.

**Certificates (§3).** Exact rational arithmetic over `BigInt` fraction pairs reduced by Euclid
at each operation. Additionally, the instrument's own Γ₀ behaviour is compared against Lemma 3.2
at run time over six seeds — the check that located defects 10 and 11. Straightedge closure of the unit square, three rounds, checked for
rationality and for `x² = 2`. Cubic evaluation at all rational-root candidates. Archimedes neusis
solved by 200-iteration bisection on the placement angle.

**Behaviour (§4, 5, 7, 10, 11).** The artifact's own script is loaded into a sandboxed context
under a minimal DOM shim, and its internal functions are exposed by appending a single
assignment to the module's closing statement. No behaviour is reimplemented: the tested code is
the shipped code, byte for byte. Ten tests: reachability by station and observable over 12
seeds; Γ₀ saturation; the Γ₁ negative weld; Γ₂ closure; branching growth against the closed
form; cost series; status dynamics across θ; Advisor accuracy across four modes and two defiance
settings; the `Σqᵢ²` prediction at three weight vectors; and seed reproducibility.

**Accounting (§6, 7.2).** Per-turn deltas measured with `wIII = 1` so that every turn is a
carrier move and the accounting is not confounded by mixed move types; `S.done` cleared each
turn to force continuation past the stopping conditions, with the double-charge artifact this
induces identified and excluded.

**Sweep (§12).** Grid executed cell by cell with dial values set programmatically, live state
deep-copied and restored, and before/after equality asserted on turn count, `|V|`, cost, seed
and all dial values.

**Environment.** Node 22.22.2 for the harnesses; the artifact itself requires only a browser
with Canvas 2D. No dependencies, no build step, no network access at run time.

---

## Appendix A · Symbols

| Symbol | Meaning |
|---|---|
| `Γ₀, Γ₁, Γ₂` | stations of the circumscription continuum |
| `R = (V, E, Γ)` | registry: distinctions, loci, grammar |
| `b(V, s)` | charged admissible-move count at `V` distinctions, station `s` |
| `C(R)` | aggregate complexity estimate, §8 |
| `σ` | solve ⟷ coagula dial, `[0, 1]` |
| `θ` | hold threshold, turns |
| `g` | commit pressure dial, `[0, 1]` |
| `p` | promotion success probability per eligible turn, `0.35 + 0.50σ` |
| `H` | hold time in the presumptive status |
| `h` | tower height; degree bound `2^h` |
| `k` | move-type cardinality, 3 |
| `q ∈ Δ(M)` | announced distribution over move types |
| `δ` | Pilot defiance, `[0, 1]` |
| `ε, ε′` | observable satisfaction tolerances, `10⁻⁷`, `10⁻⁶` |

## Appendix B · Derived instrument

A second artifact shares the arithmetic kernel of §2 and compiles registry residue into a
procedurally generated script and formant-synthesised phonology, with a genome space of 41,472
verified-distinct characters. It makes no mathematical claim, is documented separately, and is
out of scope here. It is noted only so that the shared kernel is not later mistaken for two
independent implementations.

---

*Laboratory record. Lu Semita · EmergenceByDesign. Tier I results are classical and attributed;
Tier II results are measured and reproducible from the stated seeds; Tier III items are declared
directions and are argued nowhere. Residue held open where open.*
