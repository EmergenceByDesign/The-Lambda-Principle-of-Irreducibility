/-
================================================================================
  THE UNWITNESSABLE VERDICT  —  LEAN DEMONSTRATOR
  A self-contained enactment of the paper's central distinction.

  Lu Semita · EmergenceByDesign

  WHAT THIS FILE IS.
    This file does not "prove the paper." It cannot, and that impossibility
    IS the paper's thesis. What it does is make a proof assistant PERFORM the
    thesis: a passing kernel check certifies that a derivation is valid (the
    paper's C*), and NEVER that the formal statement captures the informal
    claim a human reader means (the paper's C). Run this file through Lean and
    the green check is itself the demonstration — the oracle pronouncing its
    own limit.

  HOW TO VERIFY.
    Paste the whole file into the official Lean 4 playground at
    https://live.lean-lang.org/ and wait for it to load. No install, no
    mathlib. Every `theorem` below should check. The `#print axioms` lines
    report, in public, exactly which adoptions each result rests on.

  HOW TO READ THE STATUS OF EACH LINE.
    [CHK]  a finitely checkable claim. Emitted as `theorem`. Lean proves it.
    [ADPT] a declared adoption. Emitted as `def`. Lean ACCEPTS it and
           certifies NOTHING by doing so — a definition has no truth value.
    The paper's tail-level thesis ("truth is unwitnessable from any state that
    could draw the distinction") is emitted as NEITHER. It appears nowhere as
    a `theorem`, because no station proves it, and nowhere as an `axiom`,
    because we refuse to assume what we are discussing. Its ABSENCE is the
    point: a file that "proved the thesis" would commit the paper's error
    inside the theorem prover.

  THE ONE ADOPTION THIS WHOLE ARTIFACT RESTS ON.
    That the Lean statements below faithfully render the informal sentences in
    their comments. No green build can close this gap — it is precisely the
    specification-adequacy residue the file is about. It is declared here, in
    the open, and it is the correct target of any refutation.
================================================================================
-/

namespace UnwitnessableVerdict

/- ============================================================================
   PART A — THE CHECKABLE KERNEL  [CHK]
   Claims the paper marks as finitely checkable. Lean proves them outright.
   ============================================================================ -/

/-- Lemma 3.2 (Verification asymmetry), the witnessed half.
    A single counterexample refutes a universal claim: refutation has a finite
    station witness. (The other half — that no finite set of instances CROWNS
    a universal — is the untyped tail, and by design it is NOT provable here.) -/
theorem refutation_is_witnessed
    {α : Type} (P : α → Prop) (a : α) (h : ¬ P a) :
    ¬ (∀ x, P x) :=
  fun hall => h (hall a)


/- ============================================================================
   PART B — THE SPECIFICATION GAP  (the centerpiece)
   Lean certifies that a derivation is valid. It does NOT certify that the
   formal statement means what the English sentence means. We exhibit theorems
   that PASS the kernel while carrying no information about their stated target.
   ============================================================================ -/

/-- The specification gap in its purest form.
    If a hypothesis H is satisfied by nothing, then `∀ x, H x → G x` holds for
    EVERY conclusion G — the kernel certifies it without G ever being examined.
    A formalization whose hypothesis is mis-scoped (true of nothing in the
    intended domain) passes VACUOUSLY and says nothing about the intended G.
    This is C* (the derivation checks) with C (the claim about the real
    objects) left entirely untouched. -/
theorem vacuous_pass
    {α : Type} (H G : α → Prop) (empty : ∀ x, ¬ H x) :
    ∀ x, H x → G x :=
  fun x hx => absurd hx (empty x)

/-  A concrete, vivid instance. "No natural number is negative" is the
    mis-scoped hypothesis. Watch: BOTH of the following pass the kernel, though
    their conclusions flatly contradict each other. The conclusion after the
    arrow is never tested — that IS the gap. A green check on either one tells
    a reader nothing about whether the intended claim holds.                  -/

/-- Passes. Says every "negative natural" equals itself. -/
theorem misscoped_says_equal :
    ∀ n : Nat, n < 0 → n = n :=
  fun n h => absurd h (Nat.not_lt_zero n)

/-- Also passes. Says every "negative natural" does NOT equal itself.
    Two contradictory "theorems," both kernel-certified, because in each the
    conclusion is vacuously reached. The build is green; the meaning is empty. -/
theorem misscoped_says_not_equal :
    ∀ n : Nat, n < 0 → n ≠ n :=
  fun n h => absurd h (Nat.not_lt_zero n)


/- ============================================================================
   PART C — BULLETPROOFING, THE DECIDABLE HEART  [CHK]
   Lemma 3.4: the outcome of a finite check is settled mechanically. That, and
   only that, is what C* asserts.
   ============================================================================ -/

/-- A finite check yields a determinate Boolean outcome. -/
def checkPasses (b : Bool) : Bool := b

/-- The outcome is settled: it is one value or the other, decided by the check
    itself, with no appeal to anything outside it. This is the exact and
    attainable sense in which C* is bulletproof. -/
theorem check_outcome_settled (b : Bool) :
    checkPasses b = true ∨ checkPasses b = false := by
  cases b
  · exact Or.inr rfl
  · exact Or.inl rfl


/- ============================================================================
   PART D — THE DISCHARGE CRITERION  [ADPT]
   Definition 7.2 is an ADOPTION, not a theorem. Emitting it as a `def` makes
   that visible: Lean accepts the definition and certifies NOTHING by doing so.
   The file does not launder a definition into a proof.
   ============================================================================ -/

/-- A premise is discharged when it does NOT occur free in the conclusion's
    warrant. This is a definition we ADOPT; accepting it proves nothing. -/
def Discharged (premiseOccursFreeInConclusion : Bool) : Prop :=
  premiseOccursFreeInConclusion = false


/- ============================================================================
   PART E — EXPOSING THE SUBSCRIPT
   `#print axioms` is the Discharge Test, automated. It reports, in public, the
   adoptions each result leans on. The checkable kernel below leans on none.
   (If anyone ever patches a proof with `sorry`, these same lines flag
   `sorryAx` — the incompleteness is exposed even though the build stays green.)
   ============================================================================ -/

#print axioms refutation_is_witnessed
#print axioms vacuous_pass
#print axioms misscoped_says_equal
#print axioms misscoped_says_not_equal
#print axioms check_outcome_settled


/- ============================================================================
   PART F — THE REFLEXIVE CAPSTONE  (comment only; deliberately not a theorem)

   Con(Lean) is unprovable in Lean. If Lean's logic is consistent, Lean cannot
   prove its own consistency — this is Gödel's second theorem pointed at the
   prover, i.e. the paper's Theorem 4.3 applied to the checker itself. The
   trust concentrated in Lean's small kernel is RISK REDUCTION on an
   unwitnessable-from-inside property, never a certificate of it. The kernel's
   soundness is adopted, not proved.

   Therefore "Lean is infallible" is false in the exact grammar the paper
   diagnoses: it applies a station observable's confidence ("this proof
   checks") to a tail predicate ("this system is sound"). Lean is a frame. It
   has maximal [CHK] power and no more. It cannot witness its own tail either —
   which is why a passing check of THIS file, and the absence within it of any
   proof of the thesis, is the most trusted available witness that witnessing
   has limits.
   ============================================================================ -/

end UnwitnessableVerdict
