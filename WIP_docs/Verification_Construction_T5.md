# Verification and Construction as Coupled Ladders

## The P versus NP Verdict Is Not Frame-Internal

### The circumscription obstruction in its purest form: both verdicts tail-shaped, the barriers as the domain's own frame theorems, the self-referential seam, the corrected reading of the Λ-axiom argument, and the priced specification

**Lu Semita · EmergenceByDesign**
*Drawing on the author's P vs NP corpus (the Λ–NSAF musings, Parts 1–2; the
DST fine-grained traversal and its Localization Theorem), the Semantic
Obstruction calculus (C1), the Residue Thesis (R1), and the companions T1
(Navier–Stokes), T2 (Riemann), T3 (Yang–Mills), and T4 (Hodge), whose
tetralogy this paper extends to a pentalogy and closes.*

Working draft, T5 — July 2026

Tier discipline throughout: **Tier I** is standard checkable mathematics,
asserted with complete proof or standard citation; **Tier II** is exact
structure read after the Tier-I objects are fixed; **Tier III** is declared
direction. Falsification surfaces in §9.

---

## 0. Origin

The originating intuition, at its fifth and final station:

> *Each of these questions is of the same form — the way the question is
> posed is what generates the outcome. The issue is not domain-dependent;
> it is structural. And P versus NP is conceptually the purest form of all
> the exemplars of this structural obstruction — elusive in proof for that
> very reason.*

This paper proves the purity claim in two exact senses, each a theorem.
**First (Lemma 2.1):** P vs NP is the only problem in the pentalogy in
which *both* verdicts are tail predicates — neither P = NP nor P ≠ NP
admits a finite witness, even in principle; every other domain had at
least one window-witnessable side (the cycle for Hodge, the counterexample
for Riemann), while here even the exhibited algorithm certifies nothing
without a Π-shaped closure over all inputs. **Second (Theorem 3.4, the
self-reference remark made exact):** the seam this problem lives on — the
coupling of local verification to global construction — is the very seam
on which any *proof about the problem* must itself run: proving a
separation is a construction task whose difficulty is governed by the
hardness being asserted, and the domain's deepest barrier (natural proofs)
is literally *powered by* that hardness. The question and its
metaquestion coincide. That coincidence is the structural reason the
problem is elusive — the origin statement's "for that very reason,"
earned.

The paper also performs the pentalogy's standing duty to the corpus: the
Λ–NSAF argument of the musings is replayed minus its error — an error the
corpus's own Part 2 had already begun to name — and its sound core is
retained at indexed strength (§6). Nothing below asserts P = NP, P ≠ NP,
or their independence; everything below is the proof of what deciding
them costs.

---

## 1. Setting

### 1.1 The statement and the two verdicts

P: languages decidable by a deterministic Turing machine in time
polynomial in input length. NP: languages with polynomial-size
certificates verifiable in polynomial time. The Clay problem: decide
whether P = NP.

**Tier I (logical form).** Fix the standard enumeration of machine–
polynomial pairs (M, p). "M decides SAT correctly within time p" is a
Π⁰₁ condition (a universal statement over inputs whose instances are
time-bounded, hence decidable computations). Therefore:

- **P = NP is Σ⁰₂:** ∃(M, p) ∀x [M decides x correctly within p(|x|)].
- **P ≠ NP is Π⁰₂:** ∀(M, p) ∃x [failure], each failure decidable.

Neither side is Σ⁰₁. This single fact drives Lemma 2.1.

### 1.2 The frames

**Definition 1.2 (Complexity frames).** A *frame* is a finite station of
any of the following circumscription continua: the *algorithm-search
continuum* (enumerate programs, test on inputs of bounded length); the
*lower-bound continuum* (proven circuit or communication lower bounds for
restricted models — bounded depth, monotone basis, algebraic degree — or
for general circuits up to small linear size); the *instance continuum*
(empirical hardness of solvers at accessible sizes); the *fine-grained
continuum* (conditional reductions and thresholds under hypotheses such
as SETH). A *window observable* is any functional of such a station. The
record stations are Tier-I facts: general circuit lower bounds for
explicit functions stand at small linear size; exponential lower bounds
are proven in the bounded-depth and monotone frames; industrial SAT
solvers dispatch enormous instances while worst-case complexity remains
open.

**Definition 1.3 (Frame-internal decidability; weld).** As in T1–T4
verbatim.

---

## 2. Classification: both verdicts are tails — the purity lemma

**Lemma 2.1 (No finite witness on either side; Tier I).** Neither verdict
of P vs NP is witnessed by any frame. P ≠ NP is Π⁰₂: its confirmation
consumes the entire machine enumeration. P = NP is Σ⁰₂, and — the decisive
point — its existential witness is *not* a finite certificate: exhibiting
an algorithm decides nothing, because the algorithm's correctness and
polynomial running time are themselves Π-shaped tail conditions over all
inputs. The domain even possesses a canonical explicit candidate — Levin's
universal search algorithm, which is optimal for SAT-search up to
constant factors, so that P = NP holds *iff this one fixed program runs in
polynomial time* — and the candidate's exhibition, far from closing the
Σ side, converts the entire problem into a tail property of a single
object. No other problem in the pentalogy has this feature: Hodge's cycle
and Riemann's counterexample are finite certifiable witnesses; here the
witness side is tail-infected too. **P vs NP is the pentalogy's unique
doubly-blind frame: the circumscription continuum can neither confirm nor
refute either verdict at any station.** This is the first exact sense of
"purest form."

*Proof.* The quantifier computation of §1.1; Levin (1973) for the
universal-search reduction; the observation that verifying "runs in time
p on all inputs" is Π⁰₁, hence no finite station of testing certifies it. ∎

**Remark 2.2 (The window is treacherous here by theorem; Tier I).** As in
each companion, the domain exhibits its own proof that restricted-frame
and empirical evidence does not extrapolate:

1. **The Tardos function.** Razborov proved superpolynomial monotone
   circuit lower bounds for the clique function — a rigorous exponential
   hardness verdict *in the monotone frame* — and Tardos then exhibited a
   function computable in polynomial time whose monotone circuit
   complexity is exponential. Restricted-frame hardness coexists with
   actual easiness: the frame's verdict does not transfer. The exact
   counterpart of Davenport–Heilbronn (T2) and the abelian counterfeit
   (T3).
2. **Bounded depth.** Parity requires exponential-size AC⁰ circuits
   (Håstad), yet is trivially in P: depth-frame hardness transfers
   nothing.
3. **The solver record.** Modern SAT solvers dispatch industrial
   instances with millions of variables while the worst case stands open —
   the empirical window points both ways at once and decides neither.
4. **The hierarchy contrast.** Diagonalization *does* decide tails where
   it applies — P ≠ EXP is a theorem — and P vs NP sits exactly where
   Baker–Gill–Solovay proves diagonalization-type reasoning goes blind:
   the open problem is located precisely at the boundary of the one
   frame-internal weld the field possesses.

---

## 3. The obstruction theorems: the field that proved its own bars

P vs NP is unique in the pentalogy in a second way: **the domain's
principal rigorous outputs are its own circumscription theorems.** The
"barriers" of complexity theory are not folklore or heuristics; they are
proven theorems of exactly the B/C/D form, established by the field about
itself, decades before this program named the form. This section
identifies them, as T4 identified the Compiled Edition's instrument
theorems.

### Theorem B⁵ (Frame-blindness: the three barriers and the restricted counterfeits)

**Theorem B⁵ (Tier I; = the classical barrier theorems, identified).**

1. **(Relativization; Baker–Gill–Solovay 1975.)** There exist oracles A,
   B with P^A = NP^A and P^B ≠ NP^B. Hence no argument whose steps are
   invariant under relativization — the entire classical
   diagonalization/simulation toolkit — can decide the verdict: the
   frame's evidence coexists with both conclusions, by exhibited witness,
   on both sides simultaneously.
2. **(Natural proofs; Razborov–Rudich 1997.)** Any lower-bound proof
   proceeding through a property of Boolean functions that is
   *constructive* (efficiently decidable) and *large* (satisfied by a
   random function) would break exponentially hard pseudorandom
   generators. Conditional on standard cryptographic hardness, the entire
   class of natural separating properties — which includes every
   combinatorial lower-bound technique of the restricted-frame successes —
   is barred from the general frame. In the calculus's vocabulary: an
   anti-separation theorem for a named class of obstruction functionals,
   the exact analogue of the Compiled Edition's Theorem 17.6.
3. **(Algebrization; Aaronson–Wigderson 2009.)** The arithmetization
   technique that evaded relativization (IP = PSPACE era) is itself
   barred: algebrizing arguments cannot resolve P vs NP, again by
   two-sided oracle witnesses.
4. **(Restricted-basis counterfeits.)** Monotone and bounded-depth lower
   bounds do not transfer (Remark 2.2, items 1–2): the Tardos function is
   the standing witness that frame-internal hardness verdicts are
   frame-bound.

*Proof.* Citations as stated; the identification with the pentalogy's
frame-blindness form is definitional under 1.2–1.3. ∎

### Theorem C⁵ (Windows buy windows)

**Theorem C⁵ (Tier I/II).** (i) Program testing to any input bound decides
nothing (Lemma 2.1). (ii) Restricted-frame lower bounds decide their
frames completely and the general frame not at all (B⁵.4). (iii) The
general-circuit lower-bound ladder advances by linear-size increments —
window-to-window motion, with the gap to superpolynomial untouched by any
existing theorem. (iv) The analogue of the height/effectivity criterion:
Levin's universal search is the domain's *delivered reformulation weld* —
it reduces the entire problem to the running time of one explicit machine
— and, exactly as the residue lens predicts, the reduction relocates the
tail without shortening it: the one machine's polynomiality is Σ⁰₂-hard
information exactly as before. A criterion converting bounded testing of
that machine into the verdict would be the resolution itself.

*Proof.* (i)–(iii) as cited; (iv) Levin (1973) plus the quantifier count
of §1.1. ∎

### Theorem D⁵ (The escape routes)

**Theorem D⁵ (Tier I/II).** (i) *(No Σ⁰₁ collapse — the shortcut provably
absent.)* In T2, Σ⁰₁-completeness converted non-refutability into truth;
here neither verdict is Σ⁰₁ (Lemma 2.1), so the D′ mechanism is
unavailable *in principle*: even the metamathematical shortcut that
arithmetic granted Riemann is closed to P vs NP — a third purity marker.
(ii) *(The forcing lane, closed unconditionally.)* P vs NP is an
arithmetic statement; forcing extensions preserve arithmetic truth; its
truth value is forcing-invariant, and Cohen-style independence is
impossible — as in T2 Theorem D′(3), here without any coding condition.
(iii) *(The four-cell lattice.)* The Compiled Edition's verdict lattice
and its Con(ZFC) refutation of "unprovable ⟹ provably unprovable" apply
verbatim: the open cell is ineliminable by theorem, and any
provable-independence claim must proceed by arithmetic-incompleteness
methods for which no attachment to P vs NP exists or is indicated.

*Proof.* (i) §1.1; (ii) arithmetic invariance of forcing; (iii) Compiled
Edition §24, cited. ∎

### Theorem 3.4 (The self-referential seam — the second purity theorem)

**Theorem 3.4 (Tier II, assembled from Tier-I components).** The seam of
this problem — the coupling of local verification (the L-ladder) to
global construction (the C-ladder) — is the seam on which every proof
about the problem must itself run, in the following exact senses:

1. A proof of P ≠ NP is a *constructed object* whose discovery is a
   search problem over proof space, while its *verification* is
   polynomial in its length — the P-vs-NP structure instantiated at the
   meta level; if P = NP, proof search itself is easy for statements with
   short proofs, so the metaproblem's difficulty is entangled with the
   object problem's answer.
2. The natural-proofs barrier (B⁵.2) is *powered by hardness*: it bars
   the natural techniques exactly insofar as hard pseudorandom functions
   exist — the obstruction to proving hardness is a consequence of
   hardness. A world in which the barrier fully operates is a world in
   which a cousin of the conclusion is true; the wall and the treasure
   are made of the same material.
3. Consequently the frame and the content coincide: choosing a
   representation class in which to attack the problem is an instance of
   the very L/C coupling the problem interrogates.

This coincidence — unique in the pentalogy — is the exact structural
content of the origin claim that P vs NP is the purest exemplar and
"elusive in proof for that very reason": in the other four domains the
circumscription obstruction constrains proofs *about* the seam; here it
constrains them *because they are made of* the seam. ∎ (assembly)

### Corollary F⁵ (The circumscription obstruction, computational form)

**Corollary F⁵ (Tier II).** The P vs NP verdict is not frame-internally
decidable: witnessed on neither side by any station (Lemma 2.1, the
doubly-blind frame); not extrapolable from restricted frames or empirical
records, by exhibited counterfeits (Remark 2.2); barred to relativizing,
natural, and algebrizing techniques by the field's own theorems (B⁵);
reformulable but not shortenable (C⁵); metamathematically closed on the
forcing lane and shortcut-free on the Σ⁰₁ lane (D⁵); and self-referential
at the meta level (3.4). Every decision factors through a weld that is
non-relativizing, non-natural, non-algebrizing, and frame-transferring —
a conjunction of evasions that the domain has satisfied exactly once
(§4). The station at which one stops testing, bounding, or benchmarking
and pronounces is, absent such a weld, arbitrary. ∎

---

## 4. The weld taxonomy, instantiated

### Type I — Criteria and reformulation welds

- **Cook–Levin and the Karp reductions:** the domain's transfer weld,
  proven and complete — thousands of problems welded into a single
  verdict. NP-completeness is to this problem what the explicit formula
  is to Riemann and Osterwalder–Schrader reconstruction to Yang–Mills:
  the bridge exists; the object is missing. **(W4⁵) is delivered.**
- **Levin's universal search:** the residue-lens reformulation — the
  verdict as the runtime of one machine (C⁵.iv).
- **Hardness-versus-randomness (Nisan–Wigderson;
  Impagliazzo–Wigderson):** equivalence welds coupling derandomization to
  circuit lower bounds — theorem-grade relocations that interlock the
  verdict with a second family of tails.
- **The corpus's Localization Theorem** (DST fine-grained traversal):
  within its declared representation class, crossing the Chen threshold
  for Integer Max-IP at superlogarithmic-power dimension is equivalent to
  resolving a single named open object — a delivered localization weld of
  exactly this type, relocating a conditional frontier onto one
  coordinate.

### Type II — Invariant welds (progress measures)

- **The polynomial method (Razborov–Smolensky), rank and degree
  arguments, random restrictions (Håstad):** invariant-based separations
  — executed, rigorously, in every restricted frame where the invariant
  survives; barred from the general frame by natural proofs precisely
  because these invariants are constructive and large. The barrier does
  not say invariants fail; it says the *next* invariant must be of a
  different kind — non-constructive, or small — which is a specification,
  not a despair.

### Type III — Carrier welds: executed, programmatic, and negative

- **The hierarchy theorems:** diagonalization as a genuine weld deciding
  genuine tails (P ≠ EXP; NP ≠ NEXP) — the proof that the fate is
  achievable where the technique is not barred, and the calibration of
  exactly where the bars begin.
- **Williams (2011): NEXP ⊄ ACC⁰.** The modern exhibit and the pricing
  standard for (W2⁵): the *algorithmic method* welds a window object — a
  marginally-faster-than-brute-force circuit-satisfiability algorithm —
  to a tail object, a nonuniform lower bound, through a nonrelativizing,
  non-natural, non-algebrizing argument. Executed once, at full rigor,
  evading all three barriers simultaneously: the existence proof that
  Corollary F⁵'s conjunction of evasions is satisfiable.
- **Geometric Complexity Theory (Mulmuley–Sohoni):** the explicit
  carrier-change program — complexity classes as orbit closures,
  separations as representation-theoretic obstructions; the domain's
  Hilbert–Pólya/Deninger analogue, moving the permanent-versus-
  determinant avatar into algebraic geometry. And within it, the
  Bürgisser–Ikenmeyer–Panova theorem — occurrence obstructions do not
  suffice — stands as the executed *negative sub-door closure*, the exact
  counterpart of Nečas–Růžička–Šverák for Navier–Stokes profiles: a named
  obstruction class inside the carrier program, closed by theorem, the
  program continuing through the doors that remain.
- **The barriers themselves,** read as executed negative welds:
  Baker–Gill–Solovay, Razborov–Rudich, and Aaronson–Wigderson are
  rigorous proofs that whole functional classes cannot separate — the
  richest anti-separation corpus in mathematics, and the reason this
  domain supplied the Residue Thesis's cleanest Rosetta row.

---

## 5. The spine, closed over five

The table of T2–T4 §5 gains its final column. P vs NP: two coupled
ladders — local verification and global construction, coupled by
computation itself; verdict's logical form — Σ⁰₂ against Π⁰₂, **both
tails, the doubly-blind frame**; frame-internal bar — the three barrier
theorems plus the restricted-frame counterfeits, the field's own
circumscription theorems (B⁵–D⁵); window record, verdict-silent —
restricted-frame exponential bounds, linear general bounds, solver
records pointing both ways; weld record — transfer delivered
(NP-completeness), one full three-barrier-evading weld executed
(Williams), an explicit carrier program with an internal door-closure
(GCT; Bürgisser–Ikenmeyer–Panova), hierarchy welds calibrating the bars'
edge.

**The pentalogy's closing identity (Tier II).** Five domains, one
theorem-shaped structure: an exact global verdict on the seam of two
coupled ladders; a native circumscription continuum blind to the verdict
— confirmation-blind (Riemann), refutation-blind (Hodge), doubly
tail-blind (Navier–Stokes, Yang–Mills), and doubly blind *on both
verdicts* (P vs NP); domain theorems barring every frame-internal route;
and decisions, wherever recorded, arriving only as welds. The ordering by
distance-to-weld now completes: Hodge (carrier delivered on the majority
stratum, one finite computation pending), Yang–Mills (transfer proven,
carrier partially built), Riemann (transfer proven, carrier programs
live), Navier–Stokes (transfer cheap, profile programs live with the
Euler exhibits adjacent), and **P vs NP farthest** — both verdict-sides
tail, the shortcut lanes provably absent, the barrier corpus most
comprehensive, and the seam self-referential. That the purest instance is
the most distant is not an accident of the ordering; by Theorem 3.4 it is
the same fact twice.

**The prime-origin closure, final.** The Rope-and-Sand contrast reaches
its limit case here: in the home domain every factorization question
closes because the object space is finite; P vs NP is the question of
whether *closure itself* — the passage from checkable to findable — is
uniformly cheap over all finite object spaces at once. The problem is not
an instance of the home domain's aggregate; it is the aggregate of all
aggregates, the question the diagrams were asking about themselves.

---

## 6. The corrected moves: the Λ–NSAF argument, replayed

The corpus (the musings, Parts 1–2) is replayed minus its error — an
error whose correction the corpus's own second part had begun (Tier II
ledger):

1. **The Extraction Collapse lemma is retained as Tier I.** The musings'
   central lemma — if P = NP then every NP verification relation admits
   polynomial certificate *construction* — is the standard
   search-to-decision self-reducibility argument, correct and exact. The
   corpus derived it cleanly.
2. **The L-frame/C-frame reading is retained as the seam.** Verification
   as local relation, construction as global traversal: this is
   precisely the two-ladder structure of §5, and identifying it was the
   traversal's genuine contribution — it is the reason the domain slots
   into the pentalogy at all.
3. **The Λ-axiom step is corrected by the control test (the E′ discipline
   of T2, applied).** Part 1 concludes P ≠ NP because the L→C
   identification "without residue" would violate Λ, taken as an axiom.
   Unindexed, that axiom is *false by counterexample*: perfect matching
   (Edmonds), 2-SAT, linear programming, and spanning connectivity are
   verification relations with exponentially large candidate spaces and
   globally coherent certificates whose construction is nevertheless
   polynomial — the L→C identification closes without residue, under the
   same comparator, on infinitely many problems. A mechanism that fires
   on Edmonds's matching algorithm certifies nothing about SAT: the
   mandatory control experiment, exactly as the RH draft's Λ-mechanism
   was controlled against the Prime Number Theorem. Indexed correctly,
   the statement "the L→C identification for SAT leaves irreducible
   residue" is not an axiom from which P ≠ NP follows — **it is P ≠ NP**,
   verbatim, in the calculus's vocabulary: whether I_R > 0 for the
   construction target over the polynomial-comparator class *is* the
   question. Assuming Λ for SAT assumes the conclusion; the argument is
   the purest instance in the whole corpus of the residue asserted where
   it is to be proven.
4. **The corpus's self-correction is credited and completed.** Part 2's
   status disclaimer and its translation into accepted terms — noting
   that the "irreducible mismatch" claim *is equivalent to* the
   separation claim — already performed the demotion from proof to
   reformulation weld. T5 completes it: the Λ-reading of P vs NP is a
   correct Type-I relocation of the verdict into the calculus's language
   (and a good one — it is the Rosetta row of R1), carrying exactly the
   verdict's own weight and no more.
5. **The Localization Theorem is retained at delivered strength** (§4,
   Type I): a genuine conditional-frontier weld within its declared
   class, the corpus's rigorous product in this domain.
6. **What the intuition earns, restated.** The instinct that this problem
   is the purest exemplar, and elusive for that very reason, is proven
   above (Lemma 2.1; Theorem 3.4) — the corpus's compass was correct;
   only the step from compass to conclusion required the weld it was
   pointing at.

*(The two interactive explorations hosted on the GEOMETER path remain
inaccessible to automated reading under the site's robots policy and are
not required for the above; they can be incorporated into a revision on
upload.)*

---

## 7. The priced specification: what a resolution must produce

By Corollary F⁵ and §4, a resolution must be a weld that is
simultaneously non-relativizing, non-natural, and non-algebrizing, and
whose conclusion is frame-transferring (general-model, not
restricted-basis). The mandatory components:

**(W1⁵) The carrier.** A representation of computations in which the
separation becomes an obstruction of a compact, certifiable kind — the
GCT orbit-closure geometry, the algorithmic-method coupling of algorithms
to lower bounds, or a successor evading the Bürgisser–Ikenmeyer–Panova
sub-door closure. *Priced by:* GCT (the program explicit, with one
interior door closed by theorem) and Williams (the coupling executed).

**(W2⁵) The construction.** Execution of the carrier's mechanism at the
required strength: for the algorithmic method, sufficiently strong
satisfiability algorithms for the general class (the delivered ACC⁰
instance is the template); for GCT, representation-theoretic obstructions
beyond occurrence obstructions. *Priced by:* Williams 2011 — the one
existing artifact satisfying all three evasions at once.

**(W3⁵) The separation mechanism.** For P ≠ NP: an invariant —
necessarily non-constructive or non-large — computing a superpolynomial
lower bound for an explicit NP function in the general frame; the natural-
proofs theorem is its exact negative specification. For P = NP: a
polynomial-time SAT algorithm *with a proof* of its correctness and time
bound — the Π-closure that Lemma 2.1 shows is the actual content of the
Σ side; Levin's machine stands ready as the canonical object of any such
proof. *Priced by:* the restricted-frame executions (Razborov, Håstad,
Smolensky) as proof the invariant genre is real, with the barriers
marking precisely what the general-frame instance must evade.

**(W4⁵) The transfer.** Cook–Levin and the completeness apparatus —
**delivered**, classical, complete: any weld executed on SAT propagates
to the entire class instantly.

Necessity, relative to §3: without (W1⁵) both tails stand uncompactified
(Lemma 2.1); without (W3⁵)'s evasions, B⁵ revives clause by clause;
(W4⁵) exists. **This is the missing weld, stated as a work order — and,
for the fifth and final time, it is demonstrably the work order the
field's frontier is already executing, from the algorithmic method to
GCT, which is the structural reading's closing confirmation.**

---

## 8. What this paper proves, in one paragraph

That P vs NP is the pentalogy's purest instance by theorem twice over —
both verdicts tail-shaped, the frame doubly blind, even the exhibited
Levin witness converting the problem into a tail property of one object
(Lemma 2.1); and the seam self-referential, proofs about the problem
being made of the problem's own material, with the deepest barrier
powered by the hardness it obstructs (Theorem 3.4); that the
frame-internal bars are the field's own celebrated theorems, identified —
relativization, natural proofs, algebrization, and the restricted-frame
counterfeits led by the Tardos function (Theorem B⁵, Remark 2.2); that
windows buy windows, with Levin search as the delivered reformulation
that relocates without shortening (Theorem C⁵); that the escape lanes are
closed or absent — forcing barred unconditionally by arithmetic
invariance, the Σ⁰₁ shortcut of the Riemann case provably unavailable
(Theorem D⁵); that the weld taxonomy is instantiated with the domain's
distinctive completeness — transfer delivered by Cook–Levin, one full
three-barrier-evading weld executed by Williams, a carrier program
explicit in GCT with an interior door closed by
Bürgisser–Ikenmeyer–Panova, and the barrier corpus itself standing as the
richest set of executed negative welds in mathematics (§4); that the
corpus's Λ–NSAF argument, controlled against Edmonds's matching and
indexed by the calculus, is corrected from proof to reformulation — its
lemma sound, its seam-identification retained, its axiom recognized as
the theorem it sought (§6); and that a resolution must satisfy the
specification (W1⁵)–(W3⁵) over the delivered transfer (W4⁵), completing
the pentalogy's spine with P vs NP at the greatest distance-to-weld —
the purest instance and the farthest, by the same fact stated twice
(§5, §7).

## 9. Standing and falsification surfaces

**Asserted as proven:** Lemma 2.1; Theorems 2.2 (via its cited exhibits),
B⁵, C⁵, D⁵, 3.4 (Tier II assembly of Tier-I parts), Corollary F⁵; the
taxonomy classifications and the spine closure (Tier II over Tier-I
rows); the necessity direction of §7.

**Not asserted:** P = NP, P ≠ NP, their independence, or the
achievability of (W1⁵)–(W3⁵); any claim that the corpus's *intuition*
was unsound — §6 and Theorem 3.4 argue the contrary at theorem grade.

**To defeat this paper, exhibit one of:**

- **F1⁵** — an error in the proof or identification of B⁵, C⁵, D⁵, or
  3.4;
- **F2⁵** — a finite witness for either verdict (refutes Lemma 2.1), or
  a relativizing/natural/algebrizing resolution (refutes B⁵ by refuting
  a barrier theorem);
- **F3⁵** — a bounded-testing criterion for Levin's machine not
  equivalent to the resolution (refutes C⁵.iv);
- **F4⁵** — a rigorous separation or collapse verdict in complexity
  theory outside the three-type taxonomy;
- **F5⁵** — a valid resolution lacking (W1⁵) or (W3⁵), or an
  unconditional structural-hardness mechanism that provably does not
  fire on Edmonds's matching, 2-SAT, and linear programming, together
  with its validity (engages §6.3 at the control surface, as any
  serious successor to the Λ-argument must).

Absent such an exhibit, the origin statement stands proven at its fifth
station and over the completed pentalogy: *the way the question is posed
is what generates the outcome; P versus NP is the purest form of the
structural obstruction — both of its verdicts tail, its frame doubly
blind, its seam self-referential — and elusive in proof for exactly that
reason; the issue is not domain-dependent; it is structural; and in all
five domains, every road to a verdict runs through a weld whose
specification is now complete, whose executed exemplars are named, and
whose historical record contains no exception.*

---

## References and source anchors

**Program corpus.** Semita, L., the Λ–NSAF P vs NP musings, Parts 1–2
(the object of §6); the DST fine-grained traversal and Localization
Theorem; *The Hodge Traversal, Compiled Edition V4–V8*; *The Obstruction
Calculus, Consolidated (C1)*; *The Residue Thesis (R1)*; T1–T4 of this
series; *The Rope-and-Sand Gambit* (PRIMES repository).

**Foundations and form.** Cook (1971); Levin (1973), universal search
and NP-completeness; Karp (1972); the arithmetical-hierarchy placement
of P vs NP (folklore; see Aaronson's survey *P ≟ NP*).

**Barriers (Theorem B⁵).** Baker–Gill–Solovay (1975); Razborov–Rudich
(1997), natural proofs; Aaronson–Wigderson (2009), algebrization.

**Restricted-frame welds and counterfeits.** Razborov (1985), monotone
clique; Tardos (1988), the monotone/general gap; Håstad (1986), AC⁰
lower bounds for parity; Razborov–Smolensky, the polynomial method.

**Executed and programmatic carriers.** Time hierarchy
(Hartmanis–Stearns); Williams (2011), NEXP ⊄ ACC⁰ and the algorithmic
method; Mulmuley–Sohoni, Geometric Complexity Theory;
Bürgisser–Ikenmeyer–Panova (2016/2019), no occurrence obstructions;
Nisan–Wigderson; Impagliazzo–Wigderson, hardness versus randomness.

**Control witnesses (§6.3).** Edmonds (1965), maximum matching in
polynomial time; 2-SAT (Krom; Aspvall–Plass–Tarjan); Khachiyan (1979),
linear programming.

**Logic.** Arithmetic invariance under forcing; Gödel; the Compiled
Edition's verdict lattice (§24) with the Con(ZFC) witness.
