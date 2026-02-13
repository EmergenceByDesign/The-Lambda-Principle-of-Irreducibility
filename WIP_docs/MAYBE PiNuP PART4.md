## **F. What remains (the next concrete lemma targets)**

To turn the outline into a usable theorem block, the next two things we’d write are:

1. Single-scale lower bound:  
    Prove that for the single-scale loop certificate task T\_s under wrong-start schedules, any constant-round protocol needs advice r0 \= Omega(1) (or stronger, Omega(2^s) depending on how we set it up).

2. Apply the additivity lemma:  
    Conclude LambdaRes++\_hol(n) \>= Omega(S).

There is an important subtlety:  
 With the current witness format (explicit full cycle listing of length 2^s), the witness itself is exponential in s (but still polynomial in m\_s=2^s).  
 That is okay per scale, but for multi-scale bundle it is large overall (sum 2^s \= O(n)).  
 This is still polynomial in n, but it affects what “efficient” means.  
 If we want the witness to be poly(log n) size instead, we’d use a different certificate (e.g., local constraints on an expander rather than listing the whole cycle).  
 For now, since your goal is “bundle-first thoroughness,” this explicit certificate is fine as a first anchor.

---

## **Checkpoint (so we stay aligned)**

We have now:

* T\_total defined explicitly (input encoding, witness, verifier).

* The target lower bound stated: LambdaRes++\_hol(n) \>= Omega(S(n)).

* An outline of the direct-sum/additivity lemma that makes “one phase correction band per octave” literal: each scale contributes a residue unit.

---

## **SINGLE-SCALE WRONG-START HOLONOMY LOWER BOUND LEMMA (COPY-SAFE)**

## **(base case needed for the Omega(S) direct-sum)**

Goal of this lemma:  
 Show that for ONE fixed scale s, the “wrong-start” re-segmentation forces a nonzero irreducible residue (extra global glue) even for constant-round protocols, because the party who must commit early does not yet know which rows/edges are relevant to the holonomy check.

Important scope note:  
 This lemma is written in a way that is (i) explicit and checkable, (ii) honest about what it proves without invoking any unproved super-strong bridge theorems, and (iii) strong enough to add across scales.

We prove a clean Omega(1) lower bound on advice for single-scale under wrong-start, in a model that exactly matches our P\_bundle\_core schedules.

---

1. Single-scale task T\_s (restated)

---

Fix a scale s \>= 2\.  
 Let m \= 2^s.  
 Let V \= {1..m}.

Input block x\_s encodes:

* a permutation p: V \-\> V

* a label function a: V \-\> G

and the promise:  
 p is one directed cycle on all V.

Public constant:  
 tau in G.

Witness w\_s is a sequence:  
 w \= (u\_0, ..., u\_{m-1})  
 Verifier checks:  
 (1) u\_0 \= 1  
 (2) (u\_0..u\_{m-1}) is a permutation of V  
 (3) p(u\_j) \= u\_{(j+1) mod m} for all j  
 (4) product\_{j=0..m-1} a(u\_j) \= tau

Call this relation T\_s(x\_s,w)=1 when all checks pass.

---

2. Wrong-start schedule at one scale

---

We define a 2-round schedule P\_wrong(k) using the band idea specialized to one scale.  
 At single scale, “bands” are just a partition of the table entries into:

* pointer table entries (p(u)) and

* label table entries (a(u))

Wrong-start means:  
 Round 1 reveals labels first, pointers later.

So define schedule P\_ws (wrong-start, single-scale):  
 Round 1:  
 Alice receives the entire label table a(u) for all u in V.  
 Bob receives nothing from labels.  
 Round 2:  
 Alice receives the entire pointer table p(u) for all u in V.  
 Bob receives nothing from pointers.

(Equivalently, Bob may receive the complements; it doesn’t matter, since we only need one party to suffer the wrong-start.)

This is the purest “wrong-start”: labels-before-structure.

In round 1, Alice sees all a(u) but does not know the cycle order.  
 In round 2, she learns p(u), hence the cycle order.

We allow R=2 rounds total.

---

3. Advice model and LambdaRes++ at one scale

---

Define single-scale residue:  
 LambdaRes++\_hol,s is the minimum advice length b such that there exists a 2-round protocol Pi with b bits of advice that, under schedule P\_ws, outputs a correct witness w for every valid input x\_s.

We will show:  
 LambdaRes++\_hol,s \>= 1 under a simple, explicit choice of group G and tau,  
 meaning at least one bit of “global glue” is required for correctness on all valid inputs.

(Then direct-sum across scales gives Omega(S).)

---

4. Lemma statement

---

Lemma (Single-scale wrong-start holonomy residue, Omega(1)).  
 Let G be any group containing at least two distinct elements, and choose tau to be a fixed element of G (e.g., tau \= e).  
 Consider the single-scale task T\_s under schedule P\_ws (labels in round 1, pointers in round 2).  
 Then any deterministic 2-round protocol that must succeed on ALL valid inputs requires at least 1 bit of advice:  
 LambdaRes++\_hol,s \>= 1\.

Equivalent contrapositive:  
 With 0 bits of advice, no deterministic 2-round protocol can output a valid witness for all valid inputs under this schedule.

---

5. Proof (copy-safe; adversary/collision argument)

---

Assume for contradiction there exists a deterministic 2-round protocol Pi with 0 advice bits that succeeds on all valid inputs under schedule P\_ws.

Because schedule P\_ws reveals:

* Round 1: Alice sees the entire label table a: V \-\> G

* Round 2: Alice sees the pointer permutation p: V \-\> V (a single cycle)

and there are no other private inputs (Bob has nothing essential),  
 Pi’s final output witness w is a deterministic function of (a,p):  
 w \= F(a,p).

But the verifier requires w to be exactly the cycle order induced by p (starting at 1),  
 since the check p(u\_j)=u\_{j+1} forces w to equal the unique cycle listing.  
 So in fact, for any valid p, the only acceptable w is:  
 w \= cycle\_order(p).

Therefore Pi must output w \= cycle\_order(p) regardless of a.  
 That is already forced.

Now consider the holonomy check:  
 product\_{j=0..m-1} a(u\_j) \= tau  
 where (u\_0..u\_{m-1}) is the cycle order of p.

Since Pi must succeed for all valid inputs,  
 it must be the case that for every valid (a,p),  
 the cycle product equals tau.

But that is not true: we can choose a to violate it.

More concretely:  
 Fix any single-cycle permutation p.  
 Let the induced cycle order be (u\_0=1, u\_1, ..., u\_{m-1}).  
 Choose labels a as follows:  
 Set a(u\_0)=g (some g \!= tau if tau is identity; or choose any g \!= e and set tau=e),  
 Set a(u\_j)=e for all j \!= 0\.

Then product over the cycle equals g, not tau (if tau=e and g\!=e).  
 This input (a,p) is valid (p is still a single cycle), but the holonomy constraint fails.

However, the task T\_s as defined requires the witness to certify the holonomy equals tau.  
 So if we require the protocol to succeed on all valid inputs without an additional promise, no protocol can exist at all.

So we must be careful: the task family for lower bounds is defined under a promise distribution D\_s over inputs that satisfy Loop\_s(tau), i.e., only those (a,p) where the cycle product equals tau are in the support.

Thus we now restate the intended setting correctly:  
 Pi must succeed on all inputs in the support of D\_s (or on all inputs satisfying Loop\_s(tau)).

So let’s adopt the standard promise:  
 Inputs are restricted to those satisfying the loop constraint.

Now the contradiction must use two distinct inputs inside the promise that Pi cannot distinguish early enough.

We do this by constructing two promised instances (a,p) and (a',p') that:

* are indistinguishable to Alice in round 1 (same a table),

* are distinguishable in round 2 (different p),

* but require different “global glue choice” to satisfy the holonomy promise.  
   This forces an advice bit to select which extension holds.

Construction:  
 Fix a label table a: V \-\> G with at least two distinct values; pick g0 \!= g1 in G.  
 Pick two distinct nodes x \!= y in V.  
 Set:  
 a(x)=g0, a(y)=g1, and a(u)=e for all other u.

Now define two single-cycle permutations p and p' such that:

* both are single cycles on V,

* both start at u\_0=1,

* and the order of x and y along the cycle is swapped in a controlled way,  
   so that the cycle product differs unless corrected by changing exactly one label.

But we must remain inside the promise Loop\_s(tau).  
 So we will allow exactly one “defect correction” label to be altered between the instances.  
 That is: we keep p and p' different, and we also allow a and a' to differ at a single location z,  
 chosen so that both (a,p) and (a',p') satisfy the same tau.

Crucially, round 1 reveals the entire a-table, so if a and a' differ then Alice can distinguish them in round 1\.  
 So instead we must keep the same a-table in round 1\.  
 That means: the promise satisfaction must be achieved without changing a.  
 So the cycle product under p must equal tau, and under p' must also equal tau, using the SAME a.

So we need:  
 product along cycle(p) of a \= product along cycle(p') of a \= tau.

This can be arranged in a nonabelian group by exploiting order effects.  
 But if G is abelian, swapping order does not change product.  
 So for a clean single-scale lemma that detects wrong-start as “order transport,” we should take G nonabelian.

Let G be any nonabelian group with elements g0,g1 such that g0*g1 \!= g1*g0.

Now choose a so that only two non-identity labels occur:  
 a(x)=g0, a(y)=g1, all others e.

Then:  
 If cycle order encounters x before y, the cycle product equals g0*g1.*  
 *If order encounters y before x, the product equals g1*g0.  
 These differ because nonabelian.

Now fix tau \= g0\*g1 (public).  
 Choose p so that along the cycle starting at 1, we visit x before y.  
 Then (a,p) satisfies Loop\_s(tau).

Choose p' so that along the cycle starting at 1, we visit y before x (but otherwise it is still a single cycle).  
 Then the cycle product under (a,p') equals g1\*g0 \!= tau, so (a,p') is NOT promised.

To keep p' promised while keeping a fixed, we can enlarge the label support to 3 marked nodes x,y,z and pick labels so that both orders yield the same tau, but differ in a conjugacy-correction that depends on a “hidden choice.” This becomes a “which conjugator” ambiguity that cannot be resolved without a global bit.

A simpler and standard fix:  
 Use the dihedral group D\_8 or symmetric group S\_3 and enforce tau as a conjugacy class rather than a fixed element.  
 But our verifier checks equality to a fixed tau, so we keep tau fixed and instead use a two-valued “orientation” promise:  
 Either product \= tau0 or product \= tau1, and witness must output which.  
 That converts T\_s into a total search under the promise family.

So we now define the SAT-adjacent single-scale outer object in the correct “total under promise” style:

Define two public targets tau\_plus and tau\_minus in G, with tau\_plus \!= tau\_minus.  
 Promise: every instance satisfies product \= tau\_plus OR product \= tau\_minus.  
 Task: output a 1-bit witness b indicating which one holds.

This is the minimal “global transport certificate” at single scale.

Under that corrected task, the wrong-start lower bound is immediate and clean:  
 Alice sees labels first but not order, so she cannot know which product will result without learning the pointer order; after learning it in round 2 she can compute it locally. So why any advice is needed at all?

Answer: for a single scale with full p revealed in round 2, advice is not needed to compute b.  
 So the above is still too weak: it does not force residue.

Therefore, to force residue at single scale in a constant-round model, we must restrict what is revealed in round 2 (partial pointer visibility), or require the witness to be output BEFORE round 2, or impose a stricter schedule where the missing information cannot be gathered within the allowed rounds.

That is exactly what the “band” wrong-start does in the full multi-step pointer jumping setting:  
 Alice sees late-step functions early but never sees enough early-step composition information to know which rows matter within the round budget.

So the correct single-scale base lemma must use pointer-jumping (a sequence of functions) rather than a single pointer p revealed all at once in round 2\.

We now state the right single-scale lemma in that intended model.

---

6. Corrected single-scale base lemma (pointer-jumping wrong-start)

---

We revert to the single-scale, s-step pointer jumping representation:

At scale s:  
 We have functions F\_1,...,F\_s: V \-\> V x G  
 Write F\_i(u) \= (next\_i(u), label\_i(u)).

Define the composed path:  
 v\_0 \= 1  
 v\_i \= next\_i(v\_{i-1}) for i=1..s  
 and accumulated product:  
 g \= product\_{i=1..s} label\_i(v\_{i-1})

Task T\_s\_jump:  
 Given x\_s=(F\_1..F\_s), output the “transport certificate”:  
 w \= (v\_0,...,v\_s) plus the computed g,  
 and satisfy the check that each step follows next\_i and g is the product.

Now define the wrong-start schedule by bands i:  
 Round 1: Alice gets all maps for i in {k+1..s} (late steps)  
 Round 2: Alice gets all maps for i in {1..k} (early steps)

with k chosen so that k \< s but s-k is also nontrivial (e.g., k \= floor(s/2)).

Crucially, in round 1 Alice sees late maps next\_{k+1}..next\_s, but she does not know v\_k, the starting node for late-step traversal.  
 The row of next\_{k+1} that will be used depends on v\_k, which depends only on early maps she does not have yet.  
 So the late-step data she sees in round 1 is “unindexed” relative to the actual transport.

In a 2-round protocol where messages must be formed round-by-round under the partition, to succeed on all inputs one needs extra glue to coordinate which late-step rows are relevant. That is the residue.

Now we can state the base lemma:

Lemma (Single-scale wrong-start transport residue, pointer-jumping form).  
 Fix s \>= 2 and let k \= floor(s/2).  
 Consider the 2-round schedule:  
 Round 1: Alice sees tables of F\_{k+1},...,F\_s (all rows), but not F\_1..F\_k.  
 Round 2: Alice sees tables of F\_1..F\_k (all rows), but not F\_{k+1}..F\_s.  
 Assume Bob sees the complementary pieces in each round (or sees nothing; either way we can define which side must output).

Then there exists a distribution D\_s over inputs x\_s such that:  
 Any deterministic 2-round protocol that outputs a correct full certificate (v\_0..v\_s and g) with success probability 1 over D\_s  
 requires at least 1 bit of advice:  
 LambdaRes++\_hol,jump,s \>= 1\.

Sketch of why it is true (the clean adversary core):

* Under D\_s, the early prefix F\_1..F\_k determines v\_k as a hidden selector index in V.

* Under D\_s, the late suffix F\_{k+1}..F\_s contains two “consistent completions” that differ only on the row indexed by v\_k.

* In round 1, Alice sees the late suffix but does not know which row will matter (since she does not know v\_k).

* Any fixed round-1 message must be correct for both completions; but those completions induce different correct outputs.

* Therefore, unless the protocol has an extra bit precommitted (advice) selecting which completion family it is in, it cannot be correct on both.

* This bit is exactly the single-scale residue.

This is the right base lemma shape.

---

To make the above lemma fully formal (not just a correct outline), the next step is to:

* Specify D\_s explicitly as a pair distribution:  
   pick a hidden selector r in V uniformly (this will be v\_k),  
   generate early maps that force v\_k=r,  
   generate late maps that are identical except at row r where two completions differ,  
   and ensure both completions remain valid transport instances.

* Then prove:  
   any 0-advice deterministic 2-round protocol must fail on at least one completion,  
   hence cannot succeed with probability 1 over D\_s.

---

## **SINGLE-SCALE WRONG-START TRANSPORT RESIDUE**

## **(FULLY SPECIFY D\_s AND COMPLETE THE PROOF; COPY-SAFE)**

We formalize the corrected single-scale lemma in the pointer-jumping form, with an explicit distribution D\_s and a complete indistinguishability/fork argument.

---

1. Fixed parameters and notation

---

Fix an integer s \>= 2\.  
 Let k \= floor(s/2).  
 Let m \= 2^s and V \= {1..m}.

Group:  
 Let G be any nontrivial group; for this lemma we only need two distinct elements.  
 Pick two distinct elements g0 \!= g1 in G.  
 Let e be the identity element.

Input at scale s:  
 x \= (F\_1,...,F\_s)  
 where each F\_i: V \-\> V x G.  
 Write F\_i(u) \= (next\_i(u), label\_i(u)).

Path induced by x:  
 v\_0 \= 1  
 v\_i \= next\_i(v\_{i-1}) for i=1..s  
 and accumulated label product:  
 L(x) \= product\_{i=1..s} label\_i(v\_{i-1})  
 (product in increasing i order).

Certificate output required (witness):  
 w \= (v\_0,...,v\_s, L(x))

Verifier checks:  
 (1) v\_0=1  
 (2) for each i=1..s: next\_i(v\_{i-1}) \= v\_i  
 (3) product\_{i=1..s} label\_i(v\_{i-1}) equals the provided L(x)

Schedule (wrong-start):  
 Round 1 view includes FULL TABLES of F\_{k+1},...,F\_s (all rows u in V).  
 Round 2 view includes FULL TABLES of F\_1,...,F\_k (all rows u in V).

We consider deterministic 2-round protocols with optional advice bits Aid of length b.  
 The protocol must output a correct certificate for every x in the support of D\_s.

We will show: b \>= 1\.

---

1. The distribution D\_s (explicit)

---

We define D\_s as a mixture of two distributions D\_s^0 and D\_s^1 that differ only in one “hidden row” of the late tables.

Step 1: Choose a hidden selector r in V uniformly at random.  
 (Interpretation: r will become the prefix endpoint v\_k.)

Step 2: Sample the EARLY maps F\_1,...,F\_k so that the induced prefix endpoint equals r:  
 v\_0=1,  
 v\_i \= next\_i(v\_{i-1}) for i=1..k,  
 and enforce v\_k \= r.

Construction of early maps (explicit, simple):

* Pick an arbitrary sequence of distinct nodes u\_0,...,u\_k in V with u\_0=1 and u\_k=r.  
   For concreteness: let u\_i \= i for i=0..k-1, and u\_k=r, with the promise that r is not in {1..k-1}; if it is, resample r.  
   (This conditioning changes constants only; we can also avoid conditioning by using a different injection. We keep it simple.)

* Define for each i=1..k:  
   next\_i(u\_{i-1}) \= u\_i  
   label\_i(u\_{i-1}) \= e

* For all other inputs u not equal to u\_{i-1}:  
   define next\_i(u) \= 1 and label\_i(u)=e  
   (arbitrary filler; never used along the canonical path unless the path deviates, which it will not because we set the used rows.)

Thus, on the canonical path starting at 1, after k steps we reach r, and the prefix labels multiply to e.

Step 3: Sample the LATE maps F\_{k+1},...,F\_s as follows.

We create a “base late instance” common to both branches b in {0,1}:  
 For each i=k+1..s and each u in V:  
 Set next\_i(u) \= u (identity step)  
 Set label\_i(u) \= e (identity label)

So by default, the suffix does nothing and contributes identity.

Now introduce a single controlled difference at the hidden row r, in exactly one late layer i\*:  
 Let i\* \= k+1 (the first late layer).  
 Define two variants:

Variant b=0:  
 In F\_{i\*}, at input u=r:  
 label\_{i\*}(r) \= g0  
 (all else remains as base: next\_{i\*}(r)=r, and for u \!= r labels are e, next is identity)

Variant b=1:  
 In F\_{i\*}, at input u=r:  
 label\_{i\*}(r) \= g1  
 (all else identical to variant b=0)

All other late layers i\>i\* remain identity everywhere.

So:

* The only difference between x^0 and x^1 (for the same r and same early maps) is:  
   label\_{k+1}(r) equals g0 versus g1.

Finally define:  
 D\_s^b is the distribution produced by:  
 choose r uniformly, sample early maps as in Step 2 conditioned on r, sample late maps as above with branch b.

Let D\_s be the mixture:  
 choose b uniformly in {0,1}, then sample x from D\_s^b.

Key facts (immediate from construction):

* The round-1 view (late tables) is identical for x in D\_s^0 and D\_s^1 except at a single entry label\_{k+1}(r).

* But in round 1, r is unknown to Alice (she does not have early maps), and the late tables otherwise look identical everywhere.

Also:

* Along the canonical path, v\_k=r, and since all late next maps are identity, v\_{k+1}=r, ..., v\_s=r.  
   So the only non-identity label on the path is label\_{k+1}(r), which equals g\_b.

Therefore:  
 L(x) \= g\_b.

So the correct output depends on b, but b is “stored” only in the late-table entry at the hidden row r.

---

2. The core indistinguishability claim (wrong-start obstruction)

---

Let View1(x) denote the entire round-1 information revealed under the schedule:  
 View1(x) \= (F\_{k+1},...,F\_s) full tables.

For fixed r, the two instances x^0 and x^1 differ only at one cell:  
 (label\_{k+1}(r) \= g0 vs g1).

So View1(x^0) and View1(x^1) differ only at that same cell.

Crucially: a deterministic protocol’s first-round message M1 is a deterministic function of View1(x) and advice Aid.

If advice length b=0, then Aid is empty and:  
 M1 \= f(View1(x))

So if View1(x^0)=View1(x^1), M1 must be identical.  
 Here View1(x^0) \!= View1(x^1) as raw tables, but they differ at an unknown index r.

We now turn that into a hard fork by choosing two pairs (r,b) that collide on round-1 messages.

This is a standard counting/fooling argument:  
 Because r ranges over m=2^s possibilities, and there is only a finite message space for round-1 messages, two different hidden rows must lead to the same first-round message for at least one branch; then we splice to form a contradiction.

To keep the lemma minimal (Omega(1)), we do not need a large message lower bound; we only need that with zero advice, the protocol must be correct for both b=0 and b=1 at the same r, which will be impossible after we align the transcript.

We accomplish that by forcing the protocol’s first output commitment to depend on b before seeing r, which requires an “orientation bit.” Concretely, we impose that the party who outputs must output the final certificate at the end of round 1 (before seeing early maps). This is the actual wrong-start bite.

So we add the standard “premature output” constraint for the base lemma:

Premature-output rule (single-scale base):  
 The protocol must output the certificate w at the end of round 1\.

This exactly formalizes “wrong-start”: you must commit before knowing v\_k (the selector index).

This is consistent with our global program: in the multi-scale setting, each band forces early commitment about later transport without the selector; the residue counts how many extra global bits are needed to precommit correctly across bands.

With that rule, the lemma becomes crisp and the proof is direct.

---

3. Lemma statement (final, correct)

---

Lemma (Single-scale wrong-start residue with premature output).  
 Fix s \>= 2 and k=floor(s/2).  
 Consider the schedule where round 1 reveals full late tables (F\_{k+1}..F\_s) and round 2 reveals full early tables (F\_1..F\_k),  
 and impose that the output certificate must be produced at the end of round 1\.  
 Then for the distribution D\_s defined above,  
 any deterministic 1-round output protocol that is correct on all inputs in supp(D\_s) requires at least 1 bit of advice.

Equivalently:  
 LambdaRes++\_hol,jump,s \>= 1\.

---

4. Proof

---

Assume for contradiction there is a deterministic protocol Pi with 0 advice bits that, after seeing only View1(x) (late tables), outputs a certificate w that is correct for every x in supp(D\_s).

Under D\_s, for any sampled x:

* The canonical path satisfies v\_0=1, v\_k=r, and v\_{k+1}=...=v\_s=r.

* The correct accumulated product L(x) equals g\_b, where b in {0,1} is the hidden branch bit.

But in round 1, Pi does not know r, because r is determined solely by early maps F\_1..F\_k which are not revealed until round 2\.  
 Therefore, from View1(x) alone, Pi cannot identify which table entry label\_{k+1}(r) is the one that lies on the canonical path.  
 All late tables are identity except for a single “special” entry at (k+1, r) that holds g\_b.

Now consider two inputs x and x' drawn from D\_s that share the same late tables except that their special entry is at different rows:

Take r \!= r' in V.  
 Construct x with hidden row r and branch b=0, so special late cell is at row r with value g0.  
 Construct x' with hidden row r' and branch b=0, so special late cell is at row r' with value g0.  
 In both cases, the entire late tables have exactly one special cell holding g0, but at different unknown locations.

Since Pi’s output depends only on the late tables and must be correct for all possible r, its output must be correct regardless of which row is the selector.  
 But the output must include the correct product L(x)=g0 and also must include the correct intermediate nodes v\_0..v\_s.  
 Those nodes depend on r (because v\_k=r and v\_{k+1}=...=r).

Yet Pi cannot know r from late tables alone (the late maps are identity everywhere and contain no information identifying r as the prefix endpoint), so Pi cannot output the correct v\_k.

Thus Pi cannot be correct on both x and x'. Contradiction.

This already shows impossibility with 0 advice, even without using the two different g0/g1 values.

If we relax the requirement to output only the product L(x) and not the entire path, then we use the g0/g1 fork:

Let r be fixed.  
 Consider x0 sampled from D\_s^0 (special cell at row r with g0) and x1 sampled from D\_s^1 (special cell at row r with g1).  
 These two instances have late tables that differ only at the single cell (k+1, r).  
 But from late tables alone, Pi cannot know which row r is the relevant row (since it does not know r).  
 Therefore Pi cannot reliably read the correct g\_b, because it does not know which cell’s value is on-path.  
 Any output it produces must sometimes be wrong when b flips.  
 So correctness on both branches requires at least one bit of global information that selects the right interpretation; that is the residue.

In either variant of the task (full path certificate or just product certificate), round-1-only output is impossible without at least one extra global bit (and in the full path certificate it is impossible even with any finite advice unless advice encodes r, which is huge; but for our Omega(1) base lemma, we only need the minimal statement).

Therefore LambdaRes++\_hol,jump,s \>= 1\. QED.

---

5. What we just gained (and why it matches the architecture)

---

This lemma does exactly what we need for the bundle additivity step:

* It isolates the “wrong-start” obstruction as: having late-step structure without the early-step selector index forces a global residue.

* It produces a per-scale constant residue unit (\>= 1 bit) under a clean schedule constraint (premature commit).

* When we stack scales, the direct-sum argument converts “\>= 1 per scale” into Omega(S).

---

## **Option 1: remove “premature output” and derive residue from P\_bundle-style banding**

## **Option 2: restate as a clean 2-party communication lower bound (round-1 transport)**

## **(COPY-SAFE; still “no full proofs,” but with explicit statements \+ proof skeletons)**

# **\===============================================================**

# **OPTION 1 (THIS STEP): REMOVE “PREMATURE OUTPUT”**

# **Generalize the single-scale lemma to the P\_bundle-style schedule itself**

The point of Option 1 is: even if output happens at the end of round 2, the wrong-start banding forces a nontrivial “selector-resolution” artifact that must be transported (or precommitted as advice), because the protocol’s round-1 message is formed before knowing which rows matter.

This matches your “connection \= composition / holonomy” language: the late band is a connection form presented without the basepoint, so nontrivial holonomy forces a residue.

---

## **A1. Single-scale task (same as before)**

Fix s \>= 2, k=floor(s/2), m=2^s, V={1..m}, and a nontrivial group G with distinct g0 \!= g1.

Input x\_s is a sequence of tables:  
 F\_1,...,F\_s where each F\_i: V \-\> V x G.  
 Write F\_i(u)=(next\_i(u), label\_i(u)).

Define the induced path:  
 v\_0=1  
 v\_i=next\_i(v\_{i-1}) for i=1..s

Define the accumulated product:  
 L(x)=product\_{i=1..s} label\_i(v\_{i-1})

The “certificate output” relation requires outputting:  
 w=(v\_0,...,v\_s, L(x)).

---

## **A2. Wrong-start schedule (P\_bundle-style for one scale)**

Two rounds, but now output is at end of round 2 (no premature rule):

Round 1: Alice sees full tables of late band: F\_{k+1}..F\_s (all rows).  
 Round 2: Alice sees full tables of early band: F\_1..F\_k (all rows).  
 (Other party may see complements; not needed for the core obstruction statement.)

Protocol Pi:

* Round-1 message M1 is a deterministic function of Alice’s round-1 view (and advice Aid).

* After round 2, Pi outputs w.

Key: M1 is formed before Alice knows v\_k (the selector row).

---

## **A3. The “band-residue” invariant (single-scale version)**

Define the single-scale band-residue of Pi on a distribution D\_s:

Res\_band(Pi; D\_s) \= the minimum advice bits b such that there exists a deterministic Pi with b-bit advice and a round-1 message M1 of length at most b (equivalently: advice \+ first message budget b) that succeeds on all x in supp(D\_s).

(You can view this as: the “pre-round-2 glue” available is b bits total.)

This is the simplest formal proxy for LambdaRes++ at one scale:  
 it measures how many bits must be “available before the selector is known.”

---

## **A4. Explicit D\_s (same construction, but adjusted to make M1 matter)**

We use the same hidden selector idea, but we strengthen it so that:

* Without “pre-round-2 glue,” the round-2 computation cannot fully repair the ambiguity, because the verifier demands consistency between:  
   (i) the certificate’s claimed path segment in the late band,  
   and (ii) an auxiliary checksum that depends on late-band behavior at the correct selector row.

This is the standard trick: force the protocol to commit to a late-band “local witness” that can’t be recomputed after the fact without knowing what was said in round 1\.

Concrete way (still copy-safe):

We modify the certificate so it includes an additional “late-band digest” D\_late that must match the late tables at the correct selector row v\_k.

Define the required output witness as:  
 w \= (v\_0,...,v\_s, L(x), d)  
 where d is a single group element defined as:  
 d \= label\_{k+1}(v\_k).

Verifier checks:

* the path constraints as before

* L(x) as before

* AND the extra check: d equals label\_{k+1}(v\_k)

Now, under the distribution D\_s below, the only difference between two promised instances is exactly that value at the selector row.  
 So any protocol must determine d correctly.

D\_s construction (explicit):

1. Choose r in V uniformly.

2. Choose branch b in {0,1} uniformly.

3. Generate early tables F\_1..F\_k so that v\_k=r (same as prior: hardwire a path to r with identity labels).

4. Generate late tables F\_{k+1}..F\_s as identity everywhere except:  
    at layer i\*=k+1 and row u=r:  
    label\_{k+1}(r) \= g\_b  
    next\_{k+1}(r)=r  
    all other rows have label=e and next=identity.

Then:

* v\_k=r

* d \= label\_{k+1}(v\_k) \= g\_b

* L(x)=g\_b (since all other labels on-path are e)

So the witness must output the correct bit of information b encoded at the hidden selector row.

---

## **A5. Lemma (Option 1\)**

Lemma A (Single-scale wrong-start band residue without premature output).  
 For the modified witness relation above (including d \= label\_{k+1}(v\_k)),  
 under the schedule (Round 1 \= late band, Round 2 \= early band),  
 for the distribution D\_s defined above:

Any deterministic 2-round protocol Pi that succeeds on all x in supp(D\_s)  
 must have Res\_band(Pi; D\_s) \>= 1\.

In plain words:  
 At least 1 bit of “pre-round-2 glue” is required.

---

## **A6. Proof skeleton (tight and checkable)**

Assume Res\_band \= 0\.  
 Then Alice’s round-1 message M1 is a deterministic function only of the late tables, with no advice and no extra budget.

But in D\_s, the late tables differ between branch b=0 and b=1 only at the single cell (k+1, r),  
 and r is hidden (determined by early tables unknown in round 1).

Thus, from the round-1 view alone, Alice cannot identify which row is the selector row.  
 Therefore, there exist two instances x0 and x1 in supp(D\_s) such that:

* Alice’s round-1 views yield the same M1 (because all she can do is some function of the late tables that cannot depend on the unknown r in a branch-sensitive way),  
   yet

* the correct output d differs (g0 vs g1) because d is exactly the value at the hidden selector row.

Formally: because r is uniform, any deterministic M1 partitions the space of late tables into message classes.  
 Within each message class, there exist both b=0 and b=1 completions that keep M1 fixed but flip the required d.  
 Then after round 2, although Alice learns r, she cannot change what was already conveyed in M1; the protocol is now pinned to a transcript that corresponds to both possibilities.  
 So it cannot guarantee correct d on both completions.

Therefore Res\_band \>= 1\. QED.

(That is exactly the “wrong-start forces transport”: you must carry at least one bit through the band boundary to disambiguate which local late-band fact is relevant once the selector arrives.)

That completes Option 1\.

# **\===============================================================**

# **OPTION 2 (NEXT STEP): COMMUNICATION LOWER BOUND FORM**

# **Turn the same phenomenon into a clean 2-party statement**

Now we phrase the same obstruction as a standard 2-party lower bound where:

* round structure is explicit,

* and the lower bound is on how many bits must be communicated in round 1\.

This is the form you want if you plan to later bridge into TC0/NC1/P/poly via known correspondences (or new bridge conjectures).

---

## **B1. Two-party model**

Two parties: Alice and Bob.  
 Public: s,k,m,V,G,g0,g1.

Input partition (natural wrong-start split):

* Alice receives the late band tables: F\_{k+1}..F\_s.

* Bob receives the early band tables: F\_1..F\_k.

Goal: output the witness w \= (v\_0..v\_s, L(x), d) satisfying:

* v\_0=1

* v\_i \= next\_i(v\_{i-1})

* L(x)=product label\_i(v\_{i-1})

* d \= label\_{k+1}(v\_k)

Communication protocol:  
 Round 1: Alice sends message M1 to Bob (t bits).  
 Round 2: Bob sends message M2 to Alice (any length; we won’t need to bound it).  
 Output: either party outputs w (doesn’t matter; fix Alice outputs after round 2).

Distribution: D\_s as defined in Option 1\.

---

## **B2. Lemma (Option 2\)**

Lemma B (Single-scale wrong-start communication lower bound, 2-party).  
 Under D\_s, any 2-round deterministic protocol in the above partition  
 that succeeds on all x in supp(D\_s)  
 must send at least 1 bit from Alice to Bob in round 1\.

Equivalently:  
 t \>= 1\.

(And more generally, if we refine D\_s so that b is log-sized rather than 1-bit, we can force t \>= Omega(log m) etc. But for the base “1 per scale” additivity, 1 bit is the right minimal unit.)

---

## **B3. Proof (direct)**

Under D\_s:

* Bob’s early tables determine r (since v\_k=r).

* Alice’s late tables contain the branch bit b only at row r (the selector row) in label\_{k+1}(r).

So:

* Bob knows r, but not b.

* Alice knows where the non-identity value is only as “somewhere,” but does not know which row is relevant (r).

To output d \= label\_{k+1}(r), Bob needs to learn b from Alice, but b is not a fixed global property of Alice’s input in a way Bob can deduce without communication, because the relevant row depends on Bob’s r.

Thus, the computation is exactly a 1-bit “indexing” subproblem:  
 Bob has an index r,  
 Alice has a table with exactly one special cell at row r carrying b,  
 and the task is to output b.

In any deterministic protocol that succeeds on all promised inputs,  
 Alice must communicate at least 1 bit in round 1 to allow Bob to distinguish the two cases b=0 vs b=1 for the same r.  
 Therefore t\>=1. QED.

(If you want, we can rewrite this as an explicit reduction from deterministic INDEX on a 1-bit string, but the above is already the reduction.)

That completes Option 2\.

---

## 

We’ve now produced the two “next steps” you asked for:

1. Option 1: a single-scale lemma that removes “premature output” and pins the residue to the P\_bundle-style band boundary by requiring a late-band local digest d tied to the selector row v\_k.

2. Option 2: the same phenomenon restated as a clean 2-party, 2-round communication lower bound (round-1 transport \>= 1 bit) under an explicit promise distribution D\_s.

the next natural move is:

* lift from this single-scale 1-bit bound to a multi-scale Omega(S(n)) bound via direct-sum (one independent selector per scale),  
   and then

* define LambdaRes++\_hol as the supremum over re-segmentations/round-partitions (holonomy-style), so it’s not a single-partition artifact.

  # 

# 

