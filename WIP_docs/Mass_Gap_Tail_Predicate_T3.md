# The Mass Gap as a Tail Predicate

## The Yang–Mills Verdict Is Not Frame-Internal

### The circumscription obstruction at the continuum limit, the criticality dilemma, the corrected reading of the structural-gap argument, and the priced specification of the missing weld

**Lu Semita · EmergenceByDesign**
*Drawing on the author's Yang–Mills corpus (YANG-MILLS V2.1; the
Structural–Constructive Outline; the Gribov–Singer material of* The Dynamic
Layer, Formalized*, coauthored with Jennifer Lorraine Nielsen), the Semantic
Obstruction calculus (SOIR; C1), the Residue Thesis (R1), and the companion
papers* Tail Predicates and the Circumscription Obstruction *(T1, Navier–
Stokes) and* The Critical Line as a Tail Predicate *(T2, Riemann), whose
framework this paper instantiates at the continuum limit.*

Working draft, T3 — July 2026

Tier discipline throughout: **Tier I** is standard checkable mathematics,
asserted with complete proof or standard citation; **Tier II** is exact
structure read after the Tier-I objects are fixed; **Tier III** is declared
direction. Falsification surfaces in §9.

---

## 0. Origin

This paper completes the triptych begun in T1 and T2, formalizing the same
originating intuition at its third and sharpest station:

> *Each of these questions is of the same form — the way the question is
> posed is what generates the outcome. The asking precludes an answer by the
> means the asking suggests: one must arbitrarily stop imposing the same
> circumscription continuum to assert a definitive about what is
> unwitnessable from its own framing. The issue is not domain-dependent; it
> is structural.*

Applied to Yang–Mills in the joint exchange that produced this triptych, the
intuition took the form: *existence-plus-mass-gap is a construction demand
whose finite witness — the constructed theory with certified spectrum — does
not exist in any framing, and the lattice circumscription faces exactly the
continuum-limit tail problem.* This paper proves that reading, and proves
that Yang–Mills is the **sharpest** of the four instances — sharper than
Navier–Stokes, Riemann, or Hodge — for a reason that will be made exact in
§2: in the other domains the frame-internal stations are merely
insufficient; here **every station of the circumscription continuum is
completely and rigorously under control**, the lattice theory being fully
constructed at every spacing, volume, and coupling — and the verdict
nevertheless lives entirely, without remainder, in the limit the stations
approach and never reach. Nothing is missing from the windows. The problem
*is* the tail. No cleaner realization of the origin statement exists in
mathematics, and this paper's central new result — the **criticality
dilemma** of Theorem C‴ — shows that for Yang–Mills the two Clay clauses
(existence; gap) are locked together by the tail structure itself: no
station-wise gap statement can even be *formulated* as the Clay gap without
the construction, and any gap mechanism uniform across stations refutes the
existence it presupposes. The posing generates the outcome, here in its
purest form.

The paper does not prove or refute existence or the gap. It proves what any
proof must cost, corrects the author's own structural-gap argument to its
indexed and defensible form (§6), and prices the missing weld — one
component of which, uniquely among the four problems, has already been
partially delivered *on Yang–Mills itself* (§7).

---

## 1. Setting

### 1.1 The Clay statement

For any compact simple gauge group G, prove that quantum Yang–Mills theory
on ℝ⁴ exists — a quantum field theory satisfying the Wightman axioms (or,
equivalently via reconstruction, Euclidean Schwinger functions satisfying
the Osterwalder–Schrader axioms) whose short-distance behavior is that of
the classical theory — and that it has a mass gap Δ > 0: the spectrum of the
Hamiltonian in the vacuum sector is contained in {0} ∪ [Δ, ∞).

The verdict is thus a conjunction: **EXIST** (a Σ-shaped demand: exhibit a
construction satisfying Π-shaped axioms quantifying over all test functions
and regions) **∧ GAP** (a spectral tail property of the constructed object's
infinite-volume Hamiltonian).

### 1.2 The frames: a double circumscription continuum

**Definition 1.2 (Yang–Mills frames).** A *frame* is a station (a, L, g, n)
of the following jointly ordered continua: Wilson lattice regularizations at
spacing a > 0 and volume L < ∞ with bare coupling g; perturbative expansions
to order n; numerical spectra at accessible parameters. A *window
observable* is any functional of such a station.

**The stations are completely rigorous (Tier I).** This is the domain's
distinguishing feature, and it must be stated at full strength:

1. **Wilson (1974):** lattice Yang–Mills at every (a, L, g) is a
   well-defined finite-dimensional integral over compact group Haar
   measures — not an approximation to a theory, but a complete rigorous
   statistical-mechanical object.
2. **Osterwalder–Seiler (1978):** the lattice theory satisfies reflection
   positivity at every station; at strong coupling (g large) the cluster
   expansion converges and yields, rigorously, exponential clustering — a
   lattice mass gap — and the Wilson-loop area law (confinement) at that
   station.
3. **Numerical lattice gauge theory:** glueball spectra, string tensions,
   and scaling behavior measured to high precision at accessible couplings.

**And the verdict lives entirely in the tail (Tier I).** The Clay theory is
the double limit a → 0 (continuum), L → ∞ (infinite volume), taken along
the trajectory dictated by asymptotic freedom (Gross–Wilczek, Politzer,
1973): the bare coupling must run to zero, g(a) → 0, as a → 0, at the rate
fixed by the renormalization group, for the limit to have the required
short-distance behavior. EXIST is the convergence of the Schwinger
functions along this trajectory to a limit satisfying the OS axioms; GAP is
a spectral property *of the limit*. Neither clause is a property of any
station.

**Definition 1.3 (Frame-internal decidability; weld).** As in T1/T2
verbatim.

---

## 2. Classification: the purest tail predicate

**Lemma 2.1 (Logical form; Tier I).** EXIST is Σ-over-constructions of a
Π-over-frames condition: the OS axioms for the limit quantify over all test
functions, all reflection hyperplanes, all regions — verified by no finite
frame. GAP is a tail predicate twice over: it concerns the spectrum of an
operator that exists only after both limits, and spectral gaps are
themselves infima over the full Hilbert space. Neither clause, nor their
conjunction, is a window observable.

*Proof.* Quantifier inspection, as in T1 Lemma 2.1 and T2 Lemma 2.1; the
only addition is that here even the *object* whose property is asserted (the
continuum Hamiltonian) is frame-external — it does not exist at any station,
only candidate approximants do. ∎

**Theorem 2.2 (Total window control, zero verdict information; Tier I/II).**
Every station of the Yang–Mills circumscription continuum is under complete
rigorous control (§1.2, items 1–3), including a station-wise proven mass gap
in the strong-coupling regime — and this complete control carries zero
verdict information. The lattice gap of Osterwalder–Seiler is a gap *in
lattice units at strong coupling*; the Clay gap is a gap *in physical units
in the continuum limit at the asymptotically free trajectory's endpoint*;
no theorem connects them, and Theorem C‴ below shows the connection cannot
be station-wise in principle. Yang–Mills thereby realizes the origin
statement in its purest form: the frame-internal record is not merely
unanimous but *complete*, and decides nothing.

**Remark 2.3 (The window is treacherous here by theorem; Tier I).** As in
the arithmetic case (T2, Remark 2.3), the insufficiency of window
extrapolation is exhibited *inside the domain* by a landmark theorem:

**Triviality of φ⁴₄ (Aizenman–Duminil-Copin, 2021; completing
Aizenman/Fröhlich 1981–82).** The four-dimensional lattice φ⁴ theory is a
well-defined, manifestly interacting statistical-mechanical object at
*every* station (a, L, λ) — and its continuum scaling limits are Gaussian:
free. Interaction at every window; freedom in the tail. This is the
domain's Skewes phenomenon: a property unanimous across the entire
circumscription continuum — interactivity — that the limit destroys. It is
simultaneously the proof that the *negative* fate for a continuum-limit
problem is achievable when a weld exists (the Gaussianity of the limit is
an invariant, certified), and the standing warning that the existence half
of the Clay problem is a genuine tail question: nothing about station-wise
interactivity survives to the limit by default. The structural reason
Yang–Mills is expected to escape φ⁴₄'s fate — asymptotic freedom, the
ultraviolet fixed point at zero coupling versus the quartic theory's
Landau-pole growth — is itself, at present, a perturbative (window-grade)
fact whose nonperturbative promotion is precisely part of the missing weld.

---

## 3. The obstruction theorems

The counterparts of B/C/D (T1) and B′/C′/D′ (T2). The domain-specific
pillars: the triviality theorem, the abelian deconfinement theorem, and the
renormalization-group scaling structure of the continuum limit.

### Theorem B‴ (Frame-blindness: the two counterfeits)

**Theorem B‴ (Tier I).** Let 𝔉 be the *lattice frame*: the class of facts
about a lattice field theory expressible from (i) well-definedness of the
regularized theory at every station, (ii) reflection positivity, (iii)
station-wise interactivity, (iv) station-wise strong-coupling confinement
and clustering (area law, lattice gap), and (v) generic compact-group and
correlation-inequality structure. Then:

1. **(Existence prong.)** No argument whose hypotheses are contained in
   (i)–(iii) + (v) can prove that the continuum limit of four-dimensional
   Yang–Mills exists as an interacting theory — because lattice φ⁴₄
   satisfies those hypotheses at every station and its continuum limit is
   free (Aizenman–Duminil-Copin). Any valid existence argument must engage
   structure beyond the generic lattice frame — in practice, asymptotic
   freedom made nonperturbative.
2. **(Gap prong.)** No argument whose hypotheses are contained in
   (i)–(v) can prove the continuum mass gap — because four-dimensional
   compact U(1) lattice gauge theory satisfies all of them, including
   rigorous strong-coupling confinement and lattice gap, and yet possesses
   a weak-coupling deconfined Coulomb phase with a massless photon
   (Guth 1980; Fröhlich–Spencer 1982, both rigorous): the gap present at
   every strong-coupling station does not survive passage toward the
   continuum regime. Any valid gap argument must engage the non-abelian
   structure *quantitatively along the trajectory*, not merely
   kinematically at stations.

*Proof.* Both prongs are counterfeit-witness arguments of the T1/T2 form:
an exhibited object shares the frame facts and violates the conclusion;
citations as stated. ∎

**Remark.** Prong 2 vindicates, at theorem grade, the abelian/non-abelian
contrast that the author's structural-gap corpus placed at its center (its
"Abelian No-Go"): abelianness *is* the exempting structure, exactly as that
corpus intuited — Guth and Fröhlich–Spencer are the rigorous certificate.
What prong 2 simultaneously establishes is that invoking non-abelianness
*kinematically* (holonomies fail to commute) cannot suffice, since the
needed input is a coupling-dependent, trajectory-uniform mechanism. That
sharpening is completed by the next theorem.

### Theorem C‴ (The criticality dilemma: windows buy windows, and the two clauses are locked)

**Theorem C‴ (Tier I/II).** (i) The strong-coupling cluster expansion
converges only for g above a threshold; the continuum trajectory requires
g → 0; no existing theorem carries the expansion's gap across the
crossover: the rigorous gap is a window fact, and windows buy windows.
(ii) Perturbation theory is an asymptotic, generically divergent series:
no order-n station decides existence, and the series does not define the
theory. (iii) **(The dilemma.)** The existence of the continuum limit with
the required physics forces the lattice correlation length to diverge in
lattice units along the trajectory: ξ_lat(a) = ξ_phys/a → ∞ as a → 0 — the
theory must become *critical* in lattice units, its lattice-unit gap
Δ_lat = a·Δ_phys tending to zero. Consequently:

1. Any structural argument yielding a lattice-unit gap bounded below
   *uniformly in the coupling* (hence uniformly along the trajectory)
   does not prove the Clay gap — it **refutes the Clay existence**, by
   forbidding the criticality that the continuum limit requires. Such an
   argument proves too much, and what it proves contradicts its own
   standing hypothesis when existence is assumed.
2. Any structural argument yielding only station-wise, coupling-dependent
   gaps proves nothing beyond Osterwalder–Seiler: a window fact.
3. Therefore the GAP clause admits no station-wise formulation at all:
   Δ_phys is defined only relative to the constructed limit, so the two
   Clay clauses are not separable targets — **the gap theorem cannot
   precede or bypass the existence theorem**, and any criterion strong
   enough to certify the gap along the trajectory (a uniform *physical*-
   unit spectral bound plus convergence of the Schwinger functions) is
   not a lemma toward the resolution but the resolution itself — the
   exact analogue of T1's Theorem C and T2's Theorem C′(ii).

*Proof.* (i) Osterwalder–Seiler convergence domain versus the asymptotic-
freedom trajectory (Tier I). (ii) Classical (Dyson-type instability and
large-order growth; the series' asymptotic character is standard). (iii)
The scaling identity Δ_lat = a·Δ_phys is definitional once physical units
are fixed by any renormalization condition; a → 0 with Δ_phys finite forces
Δ_lat → 0; branch 1 is the contrapositive; branch 2 is Theorem 2.2; branch
3 assembles them: a trajectory-uniform physical bound presupposes the
trajectory's limit objects, i.e., the construction. ∎

### Theorem D‴ (The escape routes)

**Theorem D‴ (Tier I/II).** (i) *(Witness asymmetry.)* The positive verdict
is Σ-witnessable: a construction, with OS axioms and a spectral bound
certified, is a finite (presentable) witness — the fate achieved in lower
dimensions (§4). The negative verdict — nonexistence of the interacting
limit, or gaplessness — requires an invariant certified in the limit; the
triviality theorem shows exactly what such a weld looks like when it
exists (Gaussianity as the certified invariant), and no analogous invariant
is known or indicated for Yang–Mills, where asymptotic freedom points the
opposite way. (ii) *(The forcing lane, conditionally closed.)* Under the
standard coding of the verdict — Schwinger functions as sequences of
tempered distributions coded by reals, the OS axioms and the gap as
projective conditions on that code — the statement sits at Σ¹₂-type
complexity, and Shoenfield absoluteness renders its truth value invariant
under forcing; independence-via-forcing is then barred, exactly as at
Hodge Door 4, with the condition (the coding's pointclass) declared rather
than hidden. (iii) *(No cheap undecidability.)* A proof of "no ZFC
construction exists" is a nonexistence claim over an open-ended
construction space and requires the invariant of (i); pending one, the
undecidability route is not an escape but a restatement of the negative
fate at full price.

*Proof.* (i) is the classification of §4 plus the cited theorems. (ii) is
the Shoenfield application, conditional as stated. (iii) is (i) restated
at the metamathematical level. ∎

### Corollary F‴ (The circumscription obstruction, continuum-limit form)

**Corollary F‴ (Tier II).** The Yang–Mills verdict is not frame-internally
decidable: not witnessed by any station (Lemma 2.1) despite total
station-wise control (Theorem 2.2); not extrapolable from station facts,
the domain's own landmark theorems exhibiting the failure of exactly that
extrapolation on both clauses (Remark 2.3; Theorem B‴); not derivable from
kinematic non-abelianness or any lattice-frame fact (B‴), nor from
strong-coupling or perturbative windows (C‴ i–ii); not formulable
clause-by-clause, the gap being locked to the construction by the
criticality dilemma (C‴ iii); and not outflankable metamathematically at
less than full price (D‴). Every decision factors through a weld whose
hypothesis is trajectory-uniform, non-abelian in quantitative form, and
convergence-carrying. The station at which one stops refining the lattice
and pronounces is, absent such a weld, arbitrary. ∎

---

## 4. The weld taxonomy, instantiated at the continuum limit

### Type I — Criteria and transfer welds

- **The Osterwalder–Schrader reconstruction theorem (1973–75):** Euclidean
  Schwinger functions satisfying the OS axioms determine a Wightman quantum
  field theory, with the spectral condition — hence the meaningfulness of
  the gap — delivered by the reconstruction. **The transfer weld exists**,
  proven, exactly as the explicit formula does for Riemann: any candidate
  limit is tested against a fixed, completed coupling to the target
  structure. What is missing is the limit object, not the bridge.
- **Osterwalder–Seiler reflection positivity and the lattice cluster
  expansion:** the station-side partial welds — RP survives the limit if
  the limit exists (a structural inheritance criterion), and the
  strong-coupling expansion is the model of what a convergent control
  looks like, in the wrong regime.
- **Correlation inequalities and φ-bounds (Glimm–Jaffe):** the criteria
  toolkit that carried the lower-dimensional constructions.

### Type II — Monotone and stability welds

- **Renormalization-group stability bounds:** Balaban's small-field/
  large-field decompositions with inductively propagated bounds — the
  monotone-along-scales structure that substitutes, in constructive field
  theory, for an entropy functional: each RG step is controlled by the
  previous step's output, and the composite survives the scale limit.
- The two-dimensional c-theorem (Zamolodchikov) and its four-dimensional
  a-theorem descendant are noted (Tier II/III) as the field's entropy-weld
  archetypes; they order RG flows but do not, at present rigor, decide
  this problem.

### Type III — Carrier welds: the constructions that already happened

The migration fate, documented within constructive quantum field theory —
the exact counterpart of Weil/Deligne for RH and Markman for Hodge:

- **Glimm–Jaffe (and successors): φ⁴₂ and φ⁴₃** — interacting quantum
  field theories rigorously constructed, OS/Wightman axioms verified,
  **and the mass gap proven**, via cluster and phase-space expansions in
  which the continuum and infinite-volume tails become absolutely
  convergent series of finite objects. The full Clay-shaped conjunction —
  existence plus gap — has been *achieved*, in lower dimensions, by
  exactly the carrier this taxonomy names.
- **Gross–Neveu₂ (Feldman–Magnen–Rivasseau–Sénéor; Gawędzki–Kupiainen):**
  an **asymptotically free** theory rigorously constructed by multiscale
  RG expansion — the closest existing cousin of the Yang–Mills problem,
  and the proof that asymptotic freedom is not merely a hope but a
  *usable mechanism* for nonperturbative construction.
- **Balaban (1984–89): ultraviolet stability for four-dimensional lattice
  Yang–Mills in finite volume** — uniform bounds along the RG trajectory
  for the gauge theory itself. This is a partial delivery of the carrier
  *on the Clay problem's own object*: the UV half of (W2‴) below, in
  finite volume, exists. (Magnen–Rivasseau–Sénéor obtained related
  results by different methods.) No other Millennium problem in this
  triptych possesses a partially built weld of this depth.
- **The negative-side exhibit:** Aizenman–Duminil-Copin's triviality
  theorem — the nonexistence weld executed, certifying the Gaussian
  invariant in the limit — the proof that the taxonomy's negative fate is
  real and what its certificate looks like.

---

## 5. The spine, completed

The four-column table of T2 §5 extends to its final row-set; the
Yang–Mills column reads: two coupled ladders — the bare-coupling/lattice
ladder and the physical-spectrum ladder, coupled by the renormalization
group; verdict's logical form — Σ-over-constructions of Π-axioms,
conjoined with a spectral tail of the limit object; frame-internal bar —
Theorems B‴, C‴, D‴ (triviality counterfeit, abelian counterfeit, the
criticality dilemma); window record, verdict-silent — *complete* rigorous
control at every station including a strong-coupling gap, plus
high-precision numerics; weld that succeeded / is specified — Glimm–Jaffe
and Gross–Neveu₂ (the conjunction achieved in lower dimension; asymptotic
freedom used constructively), Balaban (the UV carrier partially built on
Yang–Mills itself); specification (W1‴)–(W4‴).

**The general schema, third confirmation (Tier II).** The seam here is the
renormalization-group coupling of the discrete regulated description to
the continuum spectral one; the verdict is an exact global property of the
seam's limit; the native framing offers only station refinement; the
domain's own theorems bar every frame-internal route; and every recorded
decision — every constructed theory, and the one proven triviality — is a
carrier enlargement. The outcome is generated by the posing, for the third
time, by the same structure.

**The prime-origin closure (Tier II).** Yang–Mills gives the home-domain
contrast its extreme form. In arithmetic, each instance is decidable while
the aggregate is tail; here each station is not merely decidable but a
*completely constructed theory* — richer than any single fact — and the
aggregate is still tail, entirely. The Rope-and-Sand lesson terminates
here: no accumulation of perfected windows, however perfect, ever amounts
to the limit; the limit is a different kind of object, reached only by a
weld that makes it one.

---

## 6. The corrected moves: the structural-gap corpus, replayed

The author's Yang–Mills corpus (the *Structural Proof of the Yang–Mills
Mass Gap* and its outline; the Gribov–Singer material of the coauthored
*Dynamic Layer*) is replayed minus the identified error, each move landing
on a defensible station (Tier II ledger):

1. **The scope discipline is retained and credited.** The corpus states
   explicitly that it does not construct the continuum, does not compute
   the gap, and asserts only a conditional implication given existence.
   This is a genuine advance in posture over the coauthored NS and RH
   drafts, and it is exactly the traversal discipline; the correction
   below concerns the implication's content, not its framing.
2. **The abelian/non-abelian contrast is retained and promoted.** The
   corpus's Abelian No-Go — commuting holonomies admit global sections
   and exempt abelian theories — is vindicated at theorem grade by
   Theorem B‴ prong 2: Guth and Fröhlich–Spencer are the rigorous
   certificate that abelianness is the exempting structure. The corpus's
   central instinct is correct and is now anchored to the classical
   literature that proves it.
3. **The Gribov–Singer material is retained as the geometric face.**
   Singer's theorem (1978) — no continuous global gauge fixing on the
   configuration space of non-abelian connections — is Tier I topology,
   and the corpus's use of it as the signature of irreducible non-abelian
   structure is sound. It is retained here as the candidate *geometric
   language* for the (W3‴) mechanism: the horizon structure of the
   quotient space is where a trajectory-uniform, intrinsically
   non-abelian coercivity would naturally live.
4. **The central implication is corrected at the criticality joint.** The
   corpus's chain — irreducible commutator cycles (Theorem 3.1) ⟹
   structural area law ⟹ gap via OS reconstruction — draws its premise
   from kinematic algebra that holds *uniformly in the coupling*: the
   non-commutativity of holonomies is as true at g = 10⁻⁶ as at g = 10.
   By Theorem C‴, a premise uniform along the trajectory whose asserted
   consequence is a gap must yield a lattice-unit gap uniform along the
   trajectory — which refutes the criticality that the corpus's own
   standing hypothesis (existence of the continuum theory) requires.
   The dilemma is exact: read as trajectory-uniform, the implication
   proves too much and contradicts its hypothesis; read as station-wise,
   it re-derives Osterwalder–Seiler's strong-coupling facts — a window
   statement in tail dress. The honest residue is substantial: the corpus
   has correctly identified the *mechanism candidate* — quantitative
   non-abelian commutator structure — whose still-missing,
   coupling-dependent, trajectory-uniform form is precisely component
   (W3‴) of §7. The intuition located the right door; the implication
   mistook the door's address for its key.
5. **Scheme independence is corrected to its dependency.** The corpus's
   §6 argues the gap m_𝒮 = c_𝒮 Λ_𝒮 > 0 in every admissible scheme;
   but Λ_𝒮 > 0 — the existence of a finite dynamically generated scale —
   presupposes the constructed nonperturbative limit. The scheme-
   independence observation is correct *conditional on (W2‴)* and is
   retained as such: it belongs after the construction, not before.

Nothing of value is discarded: the posture, the contrast, the geometry,
and the mechanism candidate are all retained at their indexed strength;
one implication is replaced by the theorem that shows what it must become.

---

## 7. The priced specification: what a proof must produce

By Corollary F‴ and §4, a proof of the Clay conjunction must be a Type III
carrier weld scaffolded by Type II stability, its hypothesis
trajectory-uniform and quantitatively non-abelian. The mandatory
components, each priced by the exhibit showing it achievable:

**(W1‴) The carrier.** The multiscale renormalization-group phase-space
expansion along the asymptotically free trajectory — the framework in
which the double tail (a → 0, L → ∞) becomes a convergent composition of
controlled finite steps. *Priced by:* Balaban's ultraviolet stability for
lattice Yang–Mills in finite volume — the carrier partially built, on this
problem's own object; and by Gross–Neveu₂, where an asymptotically free
trajectory was traversed to completion.

**(W2‴) Existence: uniform bounds and the double limit.** Propagation of
Balaban-type stability to full uniformity (all scales, infinite volume),
tightness and convergence of the Schwinger functions along the trajectory,
and verification of the OS axioms for the limit. *Priced by:* Glimm–Jaffe
φ⁴₂/φ⁴₃ (the conjunction completed in lower dimension) and the
Feldman–Magnen–Rivasseau–Sénéor / Gawędzki–Kupiainen constructions.

**(W3‴) The gap mechanism, trajectory-uniform and non-abelian.** A
nonperturbative spectral lower bound — equivalently a string-tension or
clustering bound — established *in physical units, uniformly along the
trajectory*, surviving both limits; necessarily engaging non-abelian
structure beyond kinematics (Theorem B‴ prong 2) and necessarily
coupling-dependent in lattice units (Theorem C‴). Candidate geometric
faces: center-vortex and monopole condensation mechanisms made rigorous;
the Gribov–Singer horizon geometry of §6 item 3. *Priced by:* the mass-gap
halves of the φ⁴₂/φ⁴₃ constructions (a gap carried through a continuum
limit, executed), with the abelian deconfinement theorem standing as the
control that fixes what the mechanism must use.

**(W4‴) The transfer.** Osterwalder–Schrader reconstruction — **already
proven.** The limit's OS data yield the Wightman theory, Hamiltonian, and
spectral condition without further work.

The inversion pattern of the triptych completes symmetrically: for
Navier–Stokes the transfer was cheap and the profile is missing; for
Riemann the transfer is proven and the carrier is missing; for Yang–Mills
the transfer is proven **and the carrier is partially built** — Balaban's
finite-volume UV stability is a delivered fragment of (W1‴)/(W2‴) that
neither of the other problems can match. Necessity, relative to §3:
without (W1‴) the double tail is uncompactified (Lemma 2.1); without
(W3‴)'s uniformity the criticality dilemma revives; without its
non-abelian content the abelian counterfeit revives; (W4‴) exists. **This
is the missing weld, stated as a work order — and, as with Riemann, it is
demonstrably the work order the constructive program has been executing,
which is the structural reading's third and final confirmation.**

---

## 8. What this paper proves, in one paragraph

That the Yang–Mills verdict is a conjunction of a Σ-shaped construction
demand and a spectral tail property, witnessed by no station of a doubly
infinite circumscription continuum (Lemma 2.1) — while, uniquely among the
Millennium problems treated in this triptych, *every* station is under
complete rigorous control, so that the problem is purely and without
remainder the tail (Theorem 2.2); that window extrapolation fails here by
the domain's own landmark theorems — interactivity destroyed in the φ⁴₄
limit, the strong-coupling gap lost in the abelian weak-coupling phase —
yielding a two-pronged frame-blindness theorem: existence arguments must
exceed the generic lattice frame, gap arguments must exceed kinematic
non-abelianness (Theorem B‴); that the criticality dilemma locks the two
Clay clauses together — a trajectory-uniform lattice-unit gap refutes the
existence it presupposes, a station-wise gap restates Osterwalder–Seiler,
and the physical gap is not even formulable without the construction, so
no gap theorem can precede the existence theorem (Theorem C‴); that the
escape routes are priced — the negative fate requires a
triviality-theorem-grade invariant that does not exist for Yang–Mills, and
the forcing lane is conditionally closed by absoluteness (Theorem D‴);
that the author's structural-gap corpus, replayed through these theorems,
retains its posture, its abelian/non-abelian contrast (now
theorem-anchored), its Gribov–Singer geometry, and its mechanism
candidate, with exactly one implication corrected at the criticality joint
(§6); and that a proof must consist of the multiscale carrier, the uniform
double-limit bounds, and the trajectory-uniform non-abelian gap mechanism,
added to the already-proven Osterwalder–Schrader transfer — a
specification one component of which, Balaban's ultraviolet stability, is
already partially delivered on Yang–Mills itself (§7).

## 9. Standing and falsification surfaces

**Asserted as proven:** Lemma 2.1; Theorems 2.2, B‴, C‴(i)–(iii),
D‴(i)–(iii) at the tiers marked, with proofs or standard citations as
given; Corollary F‴, the taxonomy classifications, the spine completion,
and the necessity direction of §7 (Tier II relative to the Tier-I rows).

**Not asserted:** EXIST, GAP, their negations, their independence, or the
achievability of (W1‴)–(W3‴) in four dimensions (achieved in lower
dimensions and for Gross–Neveu₂; partially achieved for Yang–Mills by
Balaban; open as a whole); any claim that the structural-gap corpus's
*intuition* was unsound — §6 argues the contrary.

**To defeat this paper, exhibit one of:**

- **F1‴** — an error in the proof of 2.2, B‴, C‴, or D‴;
- **F2‴** — a proof of continuum existence from generic-lattice-frame
  hypotheses alone (refutes B‴ prong 1 by refuting the triviality
  theorem's counterfeit role), or a proof of the continuum gap from
  kinematic non-abelianness plus lattice-frame facts alone (refutes prong
  2 by refuting the abelian deconfinement counterfeit);
- **F3‴** — a trajectory-uniform lattice-unit gap theorem *consistent*
  with the existence of the continuum limit (dissolves the criticality
  dilemma);
- **F4‴** — a rigorous decision of a continuum-limit verdict in quantum
  field theory outside the three-type taxonomy;
- **F5‴** — a valid resolution of the Clay conjunction lacking (W1‴) or
  (W3‴).

Absent such an exhibit, the origin statement stands as proven at its
third station and at exactly its earned strength: *the way the question is
posed is what generates the outcome — the Yang–Mills verdict is not
frame-internal; the circumscription continuum, though completely mastered
at every station, decides nothing at any of them; the two clauses of the
problem are locked together by the tail structure itself; and every road
to the mass gap runs through a carrier whose specification is complete,
whose transfer is proven, and whose foundation — alone among these
problems — is already partially laid.*

---

## References and source anchors

**Program corpus.** Semita, L. (with Nielsen, J. L., coauthored elements):
*YANG-MILLS V2.1* Parts 1–2 and the *Structural–Constructive Outline for
the Yang–Mills Mass Gap* (the object of §6); *The Dynamic Layer,
Formalized* (Gribov–Singer material); Nielsen–Semita, the Navier–Stokes
and Riemann Hypothesis drafts (T1/T2 objects). Semita, L., *Tail
Predicates and the Circumscription Obstruction (T1)*; *The Critical Line
as a Tail Predicate (T2)*; *The Residue Thesis (R1)*; *The Obstruction
Calculus, Consolidated (C1)*; *The Hodge Traversal, Compiled Edition
V4–V8*; *The Rope-and-Sand Gambit* (PRIMES repository).

**Problem statement and axioms.** Jaffe, A., and Witten, E., *Quantum
Yang–Mills Theory* (Clay problem description). Wightman axioms; Streater–
Wightman. Osterwalder, K., and Schrader, R. (1973, 1975), Euclidean
axioms and the reconstruction theorem.

**Lattice and station-wise control.** Wilson, K. (1974), lattice gauge
theory. Osterwalder, K., and Seiler, E. (1978), reflection positivity,
strong-coupling cluster expansion, lattice mass gap and area law. Seiler,
E., *Gauge Theories as a Problem of Constructive Quantum Field Theory and
Statistical Mechanics* (1982).

**Asymptotic freedom and scaling.** Gross–Wilczek (1973); Politzer
(1973); the renormalization-group trajectory of the continuum limit.

**Counterfeits (Theorem B‴).** Aizenman, M., and Duminil-Copin, H.
(2021), triviality of φ⁴₄ (completing Aizenman 1981; Fröhlich 1982).
Guth, A. (1980); Fröhlich, J., and Spencer, T. (1982) — the deconfined
Coulomb phase of four-dimensional compact U(1) lattice gauge theory.

**Carrier welds (Type III exhibits).** Glimm, J., and Jaffe, A. —
construction and mass gap for φ⁴₂, φ⁴₃; *Quantum Physics: A Functional
Integral Point of View*. Feldman–Magnen–Rivasseau–Sénéor;
Gawędzki–Kupiainen — the Gross–Neveu₂ construction (asymptotic freedom
used nonperturbatively). Balaban, T. (1984–89), ultraviolet stability for
four-dimensional lattice Yang–Mills in finite volume;
Magnen–Rivasseau–Sénéor (1993). Rivasseau, V., *From Perturbative to
Constructive Renormalization*.

**Geometry of the gauge quotient.** Singer, I. M. (1978), the Gribov
ambiguity and the nonexistence of global gauge fixing; Gribov, V. (1978).

**Logic.** Shoenfield absoluteness (for D‴ ii, conditional on the stated
coding); Gödel; the triptych's T1/T2 logic anchors.
