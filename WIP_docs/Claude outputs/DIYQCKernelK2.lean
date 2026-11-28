import DIYQCKernel
import ScopedPolarity
import CompanionBridges

/-!
# What a reading can recover: codes, cylinders, lattices and observers — formal kernel K2

Scope. This file checks only the propositions written below. The words check, syndrome, error,
decoder, loop, face, ring, protofilament, lattice, seam, helix, observer and registry receive only the
roles assigned to them here. Each physical identification (that a given molecule, lattice or device
satisfies the hypotheses) is a bridge stated in the paper with its own receipt; acceptance of this
file by Lean does not certify any bridge.

Every "cannot recover" result below is an application of the reused seam kernel
`ClosureConsequences.universal_class_is_closed` (R8 core), unchanged.

Reused unchanged: UniversalRecoveryClosure, ClosureConsequences (R8 core), LambdaSpatiotemporalFrame,
DIYQCKernel (K1), ScopedPolarity and CompanionBridges (the Inverted Dimensional Ladder and its
Perception companion).
-/

namespace DIYQC.K2

open ClosureConsequences

/-! ## 1. One collision: the dual ladder's non-recovery is the seam collision -/

/-- The admissible descriptions of a dual-ladder Frame, as a type. -/
abbrev Adm {M O : Type} (F : ScopedPolarity.Frame M O) := {m : M // F.admissible m}

/-- The ladder's "shared evidence does not identify the pole" is the seam kernel's collision,
applied to a description and its reverse. -/
theorem frame_nonrecovery_is_the_seam_collision {M O : Type} (F : ScopedPolarity.Frame M O) :
    ¬ Recovers (fun d : Adm F => F.observation d.1) (fun d : Adm F => F.orientation d.1) := by
  obtain ⟨m, hm⟩ := F.inhabited
  apply universal_class_is_closed (fun d : Adm F => F.observation d.1)
    (fun d : Adm F => F.orientation d.1) ⟨m, hm⟩ ⟨F.reverse m, F.closed m hm⟩
  · exact (F.sameObservation m).symm
  · intro h
    exact ScopedPolarity.flip_ne (F.orientation m) ((F.flips m).symm.trans h.symm)

/-- The ladder's original statement, recovered from the seam form. -/
theorem no_observation_recovery_from_the_seam {M O : Type} (F : ScopedPolarity.Frame M O) :
    ¬ ∃ choose : O → ScopedPolarity.Pole,
      ∀ m, F.admissible m → choose (F.observation m) = F.orientation m := by
  intro h
  obtain ⟨choose, hc⟩ := h
  exact frame_nonrecovery_is_the_seam_collision F ⟨choose, fun d => hc d.1 d.2⟩

/-- The companion's `paired_scope_no_selector` is the same collision. -/
theorem reversal_scope_is_the_seam_collision {D O : Type} (f : CompanionBridges.ReversalScope D O) :
    ¬ Recovers (fun d : {d : D // f.adm d} => f.obs d.1) (fun d : {d : D // f.adm d} => f.pole d.1) := by
  obtain ⟨d, hd⟩ := f.witness
  apply universal_class_is_closed (fun d : {d : D // f.adm d} => f.obs d.1)
    (fun d : {d : D // f.adm d} => f.pole d.1) ⟨d, hd⟩ ⟨f.rev d, f.closed d hd⟩
  · exact (f.same d).symm
  · intro h
    exact CompanionBridges.bool_not_ne (f.pole d) ((f.flips d).symm.trans h.symm)

/-! ## 2. Two identical carriers form a dual-ladder Frame -/

/-- Ordered pairs of two different carriers. -/
abbrev OffDiag := {p : Bool × Bool // p.1 ≠ p.2}

/-- The exchange of two identical carriers as a dual-ladder Frame: the reverse is K1's role swap,
the observation is any role-blind reading, and the orientation records which carrier holds the
first role. -/
def exchangeFrame {R : Type} (r : Bool × Bool → R) (blind : DIYQC.FirstCut.RoleBlind r) :
    ScopedPolarity.Frame OffDiag R where
  admissible _ := True
  reverse m := ⟨DIYQC.FirstCut.swap m.1, fun h => m.2 h.symm⟩
  observation m := r m.1
  orientation m := if m.1.1 then .constructive else .inverted
  inhabited := ⟨⟨(true, false), by decide⟩, True.intro⟩
  closed := fun _ _ => True.intro
  involution := fun _ => rfl
  sameObservation := fun m => blind m.1
  flips := by
    intro m
    obtain ⟨⟨a, b⟩, h⟩ := m
    cases a <;> cases b
    · exact absurd rfl h
    · rfl
    · rfl
    · exact absurd rfl h

/-- Which identical carrier is first (K1, Theorem 2) and which explanatory pole is taken (ladder,
Theorem 6.4) are one non-forcing. -/
theorem identical_carriers_force_no_pole {R : Type} (r : Bool × Bool → R)
    (blind : DIYQC.FirstCut.RoleBlind r) (p : ScopedPolarity.Pole) :
    ¬ ScopedPolarity.Entails (exchangeFrame r blind).admissible
        (fun m => (exchangeFrame r blind).orientation m = p) :=
  ScopedPolarity.no_forced_pole (exchangeFrame r blind) p

/-! ## 3. Phase and history (Increment, Registry, and Measure, Proposition 6.1) -/

namespace PhaseHistory

/-- The phase of an accumulated count on a cycle of n steps. -/
def phase (n k : Nat) : Nat := k % n

theorem phase_returns (n k : Nat) : phase n (k + n) = phase n k := Nat.add_mod_right k n

/-- A reading of the phase alone does not recover the accumulated count. -/
theorem phase_does_not_recover_history (n : Nat) (hn : 0 < n) :
    ¬ Recovers (phase n) (fun k => k) :=
  universal_class_is_closed (phase n) (fun k => k) 0 n
    ((phase_returns n 0).symm.trans (by rw [Nat.zero_add])) (Nat.ne_of_lt hn)

end PhaseHistory

/-! ## 4. The ring code, for every number of edges -/

namespace Ring

/-- The edge before edge v on a ring of n edges. -/
def prev (n v : Nat) : Nat := if v = 0 then n - 1 else v - 1

theorem prev_lt (n v : Nat) (hv : v < n) : prev n v < n := by
  unfold prev
  split <;> omega

theorem prev_succ (n v : Nat) : prev n (v + 1) = v := by
  unfold prev
  simp

/-- The syndrome of an error pattern e on edges 0 … n-1: check v reads edges v and prev v. -/
def syn (n : Nat) (e : Nat → Bool) (v : Nat) : Bool :=
  if v < n then xor (e v) (e (prev n v)) else false

/-- Adding the whole ring, the one nontrivial cycle: every edge 0 … n-1 flips. -/
def shift (n : Nat) (e : Nat → Bool) (i : Nat) : Bool := if i < n then !e i else e i

theorem shift_keeps_the_syndrome (n : Nat) (e : Nat → Bool) : syn n (shift n e) = syn n e := by
  funext v
  by_cases hv : v < n
  · have hp := prev_lt n v hv
    simp only [syn, shift, hv, hp, ↓reduceIte]
    cases e v <;> cases e (prev n v) <;> rfl
  · simp only [syn, hv, ↓reduceIte]

theorem shift_flips_edge_zero (n : Nat) (hn : 0 < n) (e : Nat → Bool) : shift n e 0 ≠ e 0 := by
  simp only [shift, hn, ↓reduceIte]
  cases e 0 <;> decide

/-- The syndrome does not recover whether edge 0 was flipped. -/
theorem the_syndrome_does_not_recover_edge_zero (n : Nat) (hn : 0 < n) :
    ¬ Recovers (syn n) (fun e => e 0) :=
  universal_class_is_closed (syn n) (fun e => e 0) (fun _ => false) (shift n (fun _ => false))
    (shift_keeps_the_syndrome n _).symm (fun h => shift_flips_edge_zero n hn _ h.symm)

/-- No decoder that reads only the syndrome corrects both an error and the same error plus the ring:
the residue taken over decoders is never zero. -/
theorem no_decoder_corrects_both (n : Nat) (hn : 0 < n) (D : (Nat → Bool) → Nat → Bool)
    (e : Nat → Bool) : D (syn n e) 0 ≠ e 0 ∨ D (syn n (shift n e)) 0 ≠ shift n e 0 := by
  rw [shift_keeps_the_syndrome]
  have h := shift_flips_edge_zero n hn e
  by_cases h1 : D (syn n e) 0 = e 0
  · right
    rw [h1]
    exact fun h2 => h h2.symm
  · left
    exact h1

/-- By contrast, the residue taken over repairs consistent with the syndrome is always zero, because
the error itself is such a repair. -/
theorem the_true_repair_is_always_admissible (n : Nat) (e : Nat → Bool) :
    ∃ c : Nat → Bool, syn n c = syn n e ∧ ∀ i, xor (e i) (c i) = false :=
  ⟨e, rfl, fun i => by cases e i <;> rfl⟩

/-- Integrating a syndrome along the ring, starting from edge 0 unflipped. -/
def integ (s : Nat → Bool) : Nat → Bool
  | 0 => false
  | v + 1 => xor (integ s v) (s (v + 1))

theorem integ_of_syn (n : Nat) (e : Nat → Bool) :
    ∀ v, v < n → integ (syn n e) v = xor (e v) (e 0) := by
  intro v
  induction v with
  | zero =>
    intro _
    show false = xor (e 0) (e 0)
    cases e 0 <;> rfl
  | succ v ih =>
    intro hv
    have h1 := ih (by omega)
    show xor (integ (syn n e) v) (syn n e (v + 1)) = xor (e (v + 1)) (e 0)
    rw [h1]
    simp only [syn, hv, ↓reduceIte, prev_succ]
    cases e v <;> cases e 0 <;> cases e (v + 1) <;> rfl

/-- Weight on the first k edges. -/
def cnt (e : Nat → Bool) : Nat → Nat
  | 0 => 0
  | k + 1 => cnt e k + (e k).toNat

theorem cnt_le (e : Nat → Bool) : ∀ k, cnt e k ≤ k := by
  intro k
  induction k with
  | zero => exact Nat.le_refl 0
  | succ k ih =>
    show cnt e k + (e k).toNat ≤ k + 1
    have : (e k).toNat ≤ 1 := by cases e k <;> decide
    omega

theorem cnt_congr (f g : Nat → Bool) : ∀ k, (∀ i, i < k → f i = g i) → cnt f k = cnt g k := by
  intro k
  induction k with
  | zero => intro _; rfl
  | succ k ih =>
    intro h
    show cnt f k + (f k).toNat = cnt g k + (g k).toNat
    rw [ih (fun i hi => h i (by omega)), h k (by omega)]

theorem cnt_not (f : Nat → Bool) : ∀ k, cnt (fun i => !f i) k = k - cnt f k := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
    show cnt (fun i => !f i) k + (!f k).toNat = (k + 1) - (cnt f k + (f k).toNat)
    rw [ih]
    have := cnt_le f k
    cases f k
    · show k - cnt f k + 1 = k + 1 - (cnt f k + 0)
      omega
    · show k - cnt f k + 0 = k + 1 - (cnt f k + 1)
      omega

theorem integ_on_ring (n : Nat) (e : Nat → Bool) :
    ∀ i, i < n → integ (syn n e) i = cond (e 0) (!e i) (e i) := by
  intro i hi
  rw [integ_of_syn n e i hi]
  cases e i <;> cases e 0 <;> rfl

theorem cnt_integ (n : Nat) (e : Nat → Bool) :
    cnt (integ (syn n e)) n = cond (e 0) (n - cnt e n) (cnt e n) := by
  cases h0 : e 0
  · show cnt (integ (syn n e)) n = cnt e n
    exact cnt_congr _ _ n (fun i hi => by rw [integ_on_ring n e i hi, h0]; rfl)
  · show cnt (integ (syn n e)) n = n - cnt e n
    rw [cnt_congr (integ (syn n e)) (fun i => !e i) n
      (fun i hi => by rw [integ_on_ring n e i hi, h0]; rfl)]
    exact cnt_not e n

/-- Minimum-weight decoder: integrate the syndrome, and of the two chains it determines (the
integral and the integral plus the ring) return the lighter. -/
def dec (n : Nat) (s : Nat → Bool) : Nat → Bool :=
  if 2 * cnt (integ s) n ≤ n then integ s else shift n (integ s)

/-- Below half the ring the decoder returns the error itself, for every number of edges. -/
theorem min_weight_corrects_below_half (n : Nat) (e : Nat → Bool) (h : 2 * cnt e n < n) :
    ∀ i, i < n → dec n (syn n e) i = e i := by
  intro i hi
  have hc := cnt_integ n e
  have hle := cnt_le e n
  have hint := integ_on_ring n e i hi
  unfold dec
  cases h0 : e 0
  · rw [h0] at hc hint
    have hc' : cnt (integ (syn n e)) n = cnt e n := hc
    have hcond : 2 * cnt (integ (syn n e)) n ≤ n := by omega
    simp only [hcond, ↓reduceIte]
    exact hint
  · rw [h0] at hc hint
    have hc' : cnt (integ (syn n e)) n = n - cnt e n := hc
    have hcond : ¬ 2 * cnt (integ (syn n e)) n ≤ n := by omega
    simp only [hcond, shift, hi, ↓reduceIte]
    rw [hint]
    cases e i <;> rfl

/-- Above half it returns the error plus the ring: the correction closes into the nontrivial loop. -/
theorem min_weight_fails_above_half (n : Nat) (e : Nat → Bool) (h : n < 2 * cnt e n) :
    ∀ i, i < n → dec n (syn n e) i = !e i := by
  intro i hi
  have hc := cnt_integ n e
  have hle := cnt_le e n
  have hint := integ_on_ring n e i hi
  unfold dec
  cases h0 : e 0
  · rw [h0] at hc hint
    have hc' : cnt (integ (syn n e)) n = cnt e n := hc
    have hcond : ¬ 2 * cnt (integ (syn n e)) n ≤ n := by omega
    simp only [hcond, shift, hi, ↓reduceIte]
    rw [hint]
    rfl
  · rw [h0] at hc hint
    have hc' : cnt (integ (syn n e)) n = n - cnt e n := hc
    have hcond : 2 * cnt (integ (syn n e)) n ≤ n := by omega
    simp only [hcond, ↓reduceIte]
    exact hint

end Ring

/-! ## 5. The cylinder code: the loop around a ring is closed, uncut by faces, and invisible -/

namespace Cylinder

/-- Edges of a cylinder with n sites per ring: `h i j` runs around ring j from site i, and
`v i j` runs up line i from ring j to ring j + 1. -/
inductive Edge where
  | h (i j : Nat)
  | v (i j : Nat)

abbrev Chain := Edge → Bool

def add (c d : Chain) : Chain := fun x => xor (c x) (d x)

def zero : Chain := fun _ => false

/-- The check at site i of ring j (n sites, H rings): parity of the incident edges. -/
def syn (n H : Nat) (c : Chain) (p : Nat × Nat) : Bool :=
  if p.1 < n ∧ p.2 < H then
    xor (xor (c (.h p.1 p.2)) (c (.h (Ring.prev n p.1) p.2)))
      (xor (if p.2 + 1 < H then c (.v p.1 p.2) else false)
        (if 0 < p.2 then c (.v p.1 (p.2 - 1)) else false))
  else false

/-- The loop around ring J: every edge of that ring. -/
def loop (n J : Nat) : Chain
  | .h i j => decide (j = J ∧ i < n)
  | .v _ _ => false

/-- The boundary of the face between rings j and j + 1 at site i (its two ring edges and two line
edges; `next` closes the ring). -/
def next (n i : Nat) : Nat := if i + 1 = n then 0 else i + 1

def face (n i j : Nat) : Chain
  | .h a b => decide (a = i ∧ (b = j ∨ b = j + 1))
  | .v a b => decide (b = j ∧ (a = i ∨ a = next n i))

theorem xor_twice (a b t w : Bool) : xor (xor (xor a t) (xor b t)) w = xor (xor a b) w := by
  cases a <;> cases b <;> cases t <;> cases w <;> rfl

theorem xor_middle_swap (a b c d : Bool) : xor (xor a b) (xor c d) = xor (xor a c) (xor b d) := by
  cases a <;> cases b <;> cases c <;> cases d <;> rfl

/-- Adding the loop changes no check. -/
theorem the_loop_is_invisible (n H J : Nat) (c : Chain) : syn n H (add c (loop n J)) = syn n H c := by
  funext p
  obtain ⟨i, j⟩ := p
  by_cases hij : i < n ∧ j < H
  · have hp : Ring.prev n i < n := Ring.prev_lt n i hij.1
    simp only [syn, add, loop, hij, hp, ↓reduceIte, and_true, Bool.xor_false]
    exact xor_twice _ _ _ _
  · simp only [syn, hij, ↓reduceIte]

theorem prev_eq_iff_next (n a i : Nat) (ha : a < n) :
    Ring.prev n a = i ↔ a = next n i := by
  unfold Ring.prev next
  constructor
  · intro h
    split at h <;> split <;> omega
  · intro h
    split <;> split at h <;> omega

theorem next_ne (n i : Nat) (hn : 2 ≤ n) : next n i ≠ i := by
  unfold next
  split <;> omega

/-- Every face boundary is closed: no check sees it (the boundary of a boundary is zero). -/
theorem faces_are_closed (n H i j : Nat) (hn : 2 ≤ n) (hj : j + 1 < H) :
    ∀ p, syn n H (face n i j) p = false := by
  intro p
  obtain ⟨a, b⟩ := p
  by_cases hab : a < n ∧ b < H
  · have hp := prev_eq_iff_next n a i hab.1
    have hne := next_ne n i hn
    have hAN : ¬ (a = i ∧ a = next n i) := fun h => hne (h.2.symm.trans h.1)
    simp only [syn, hab, and_self, ↓reduceIte, face, Bool.decide_and, Bool.decide_or]
    rw [show decide (Ring.prev n a = i) = decide (a = next n i) from decide_eq_decide.mpr hp]
    by_cases e0 : b = j
    · have e1 : ¬ b = j + 1 := by omega
      have c1 : b + 1 < H := by omega
      rw [decide_eq_true e0, decide_eq_false e1]
      simp only [c1, ↓reduceIte]
      by_cases z : 0 < b
      · rw [decide_eq_false (by omega : ¬ b - 1 = j)]
        simp only [z, ↓reduceIte]
        cases hA : decide (a = i) <;> cases hN : decide (a = next n i)
        · rfl
        · rfl
        · rfl
        · exact absurd ⟨of_decide_eq_true hA, of_decide_eq_true hN⟩ hAN
      · simp only [z, ↓reduceIte]
        cases hA : decide (a = i) <;> cases hN : decide (a = next n i)
        · rfl
        · rfl
        · rfl
        · exact absurd ⟨of_decide_eq_true hA, of_decide_eq_true hN⟩ hAN
    · by_cases e1 : b = j + 1
      · have z : 0 < b := by omega
        rw [decide_eq_false e0, decide_eq_true e1, decide_eq_true (by omega : b - 1 = j)]
        simp only [z, ↓reduceIte, Bool.false_and, ite_self]
        cases hA : decide (a = i) <;> cases hN : decide (a = next n i)
        · rfl
        · rfl
        · rfl
        · exact absurd ⟨of_decide_eq_true hA, of_decide_eq_true hN⟩ hAN
      · rw [decide_eq_false e0, decide_eq_false e1]
        by_cases z : 0 < b
        · rw [decide_eq_false (by omega : ¬ b - 1 = j)]
          simp only [z, ↓reduceIte, Bool.false_and, Bool.and_false, Bool.or_false,
            Bool.xor_false, ite_self]
        · simp only [z, ↓reduceIte, Bool.false_and, Bool.and_false, Bool.or_false,
            Bool.xor_false, ite_self]
  · simp only [syn, hab, ↓reduceIte]

/-- Parity of a chain on the cut: the edges `h 0 j` of rings j < k, one line along the cylinder. -/
def cut (c : Chain) : Nat → Bool
  | 0 => false
  | k + 1 => xor (cut c k) (c (.h 0 k))

theorem cut_add (c d : Chain) : ∀ k, cut (add c d) k = xor (cut c k) (cut d k) := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
    show xor (cut (add c d) k) (xor (c (.h 0 k)) (d (.h 0 k)))
      = xor (xor (cut c k) (c (.h 0 k))) (xor (cut d k) (d (.h 0 k)))
    rw [ih]
    exact xor_middle_swap _ _ _ _

theorem cut_zero : ∀ k, cut zero k = false := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
    show xor (cut zero k) false = false
    rw [ih]
    rfl

theorem cut_loop (n J : Nat) (hn : 0 < n) : ∀ k, cut (loop n J) k = decide (J < k) := by
  intro k
  induction k with
  | zero => simp [cut]
  | succ k ih =>
    show xor (cut (loop n J) k) (decide (k = J ∧ 0 < n)) = decide (J < k + 1)
    rw [ih]
    by_cases h1 : J < k
    · rw [decide_eq_true h1, decide_eq_false (fun h : k = J ∧ 0 < n => by have := h.1; omega),
        decide_eq_true (by omega : J < k + 1)]
      rfl
    · by_cases h4 : k = J
      · rw [decide_eq_false h1, decide_eq_true (⟨h4, hn⟩ : k = J ∧ 0 < n),
          decide_eq_true (by omega : J < k + 1)]
        rfl
      · rw [decide_eq_false h1, decide_eq_false (fun h : k = J ∧ 0 < n => h4 h.1),
          decide_eq_false (by omega : ¬ J < k + 1)]
        rfl

/-- A face away from the cut does not meet it. -/
theorem cut_face_off (n i j : Nat) (hi : i ≠ 0) : ∀ k, cut (face n i j) k = false := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih =>
    show xor (cut (face n i j) k) (decide (0 = i ∧ (k = j ∨ k = j + 1))) = false
    rw [ih, decide_eq_false (fun h : 0 = i ∧ (k = j ∨ k = j + 1) => hi h.1.symm)]
    rfl

/-- A face on the cut meets it twice, at rings j and j + 1. -/
theorem cut_face_on (n j : Nat) : ∀ k, cut (face n 0 j) k = decide (j < k ∧ k ≤ j + 1) := by
  intro k
  induction k with
  | zero => simp [cut]
  | succ k ih =>
    show xor (cut (face n 0 j) k) (decide (0 = 0 ∧ (k = j ∨ k = j + 1)))
      = decide (j < k + 1 ∧ k + 1 ≤ j + 1)
    rw [ih]
    by_cases h1 : k < j
    · rw [decide_eq_false (fun h : j < k ∧ k ≤ j + 1 => by have := h.1; omega),
        decide_eq_false (fun h : 0 = 0 ∧ (k = j ∨ k = j + 1) => by cases h.2 <;> omega),
        decide_eq_false (fun h : j < k + 1 ∧ k + 1 ≤ j + 1 => by have := h.1; omega)]
      rfl
    · by_cases h2 : k = j
      · rw [decide_eq_false (fun h : j < k ∧ k ≤ j + 1 => by have := h.1; omega),
          decide_eq_true (⟨rfl, Or.inl h2⟩ : 0 = 0 ∧ (k = j ∨ k = j + 1)),
          decide_eq_true (⟨by omega, by omega⟩ : j < k + 1 ∧ k + 1 ≤ j + 1)]
        rfl
      · by_cases h3 : k = j + 1
        · rw [decide_eq_true (⟨by omega, by omega⟩ : j < k ∧ k ≤ j + 1),
            decide_eq_true (⟨rfl, Or.inr h3⟩ : 0 = 0 ∧ (k = j ∨ k = j + 1)),
            decide_eq_false (fun h : j < k + 1 ∧ k + 1 ≤ j + 1 => by have := h.2; omega)]
          rfl
        · rw [decide_eq_false (fun h : j < k ∧ k ≤ j + 1 => by have := h.1; have := h.2; omega),
            decide_eq_false (fun h : 0 = 0 ∧ (k = j ∨ k = j + 1) => by cases h.2 <;> omega),
            decide_eq_false (fun h : j < k + 1 ∧ k + 1 ≤ j + 1 => by
              have := h.1; have := h.2; omega)]
          rfl

/-- The logical class read on the cut over H rings. -/
def cls (H : Nat) (c : Chain) : Bool := cut c H

theorem cls_add (H : Nat) (c d : Chain) : cls H (add c d) = xor (cls H c) (cls H d) :=
  cut_add c d H

theorem cls_loop (n H J : Nat) (hn : 0 < n) (hJ : J < H) : cls H (loop n J) = true := by
  unfold cls
  rw [cut_loop n J hn H]
  exact decide_eq_true hJ

theorem cls_face (n H i j : Nat) (hj : j + 1 < H) : cls H (face n i j) = false := by
  unfold cls
  by_cases hi : i = 0
  · subst hi
    rw [cut_face_on n j H]
    exact decide_eq_false (fun h => by have := h.2; omega)
  · exact cut_face_off n i j hi H

/-- The loop flips the class. -/
theorem the_loop_flips_the_class (n H J : Nat) (hn : 0 < n) (hJ : J < H) (c : Chain) :
    cls H (add c (loop n J)) = !cls H c := by
  rw [cls_add, cls_loop n H J hn hJ]
  cases cls H c <;> rfl

/-- A face boundary leaves the class unchanged. -/
theorem faces_keep_the_class (n H i j : Nat) (hj : j + 1 < H) (c : Chain) :
    cls H (add c (face n i j)) = cls H c := by
  rw [cls_add, cls_face n H i j hj]
  cases cls H c <;> rfl

/-- Sum of a list of chains. -/
def sumOf : List Chain → Chain
  | [] => zero
  | c :: cs => add c (sumOf cs)

/-- Every sum of face boundaries has class zero. -/
theorem cls_sum_of_faces (n H : Nat) : ∀ L : List (Nat × Nat), (∀ p, p ∈ L → p.2 + 1 < H) →
    cls H (sumOf (L.map (fun p => face n p.1 p.2))) = false := by
  intro L
  induction L with
  | nil => intro _; exact cut_zero H
  | cons p ps ih =>
    intro hL
    show cls H (add (face n p.1 p.2) (sumOf (ps.map (fun p => face n p.1 p.2)))) = false
    rw [cls_add, cls_face n H p.1 p.2 (hL p (List.mem_cons_self ..)),
      ih (fun q hq => hL q (List.mem_cons_of_mem p hq))]
    rfl

/-- The loop is not a sum of face boundaries: it is a logical, not a stabilizer. -/
theorem the_loop_is_not_a_sum_of_faces (n H J : Nat) (hn : 0 < n) (hJ : J < H)
    (L : List (Nat × Nat)) (hL : ∀ p, p ∈ L → p.2 + 1 < H) :
    loop n J ≠ sumOf (L.map (fun p => face n p.1 p.2)) := by
  intro h
  have h1 := cls_loop n H J hn hJ
  rw [h, cls_sum_of_faces n H L hL] at h1
  exact Bool.noConfusion h1

/-- The checks do not recover the logical class. -/
theorem the_checks_do_not_recover_the_class (n H J : Nat) (hn : 0 < n) (hJ : J < H) :
    ¬ Recovers (syn n H) (cls H) :=
  universal_class_is_closed (syn n H) (cls H) zero (add zero (loop n J))
    (the_loop_is_invisible n H J zero).symm
    (by rw [the_loop_flips_the_class n H J hn hJ zero]; cases cls H zero <;> decide)

end Cylinder

/-! ## 6. Helices on a cylindrical lattice, and the seam -/

namespace Lattice

abbrev V := Int × Int

def det (x y : V) : Int := x.1 * y.2 - x.2 * y.1

/-- y lies on the helix of direction d through x, on the cylinder that identifies x with x + W. -/
def SameHelix (d W x y : V) : Prop :=
  ∃ a b : Int, y.1 = x.1 + a * d.1 + b * W.1 ∧ y.2 = x.2 + a * d.2 + b * W.2

theorem det_shift (d W x : V) (a b : Int) :
    det d (x.1 + a * d.1 + b * W.1, x.2 + a * d.2 + b * W.2) = det d x + b * det d W := by
  show d.1 * (x.2 + a * d.2 + b * W.2) - d.2 * (x.1 + a * d.1 + b * W.1)
    = (d.1 * x.2 - d.2 * x.1) + b * (d.1 * W.2 - d.2 * W.1)
  simp only [Int.mul_add, Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
  omega

/-- The helix invariant: det d · modulo det d W is the same at every point of one helix. -/
theorem helix_keeps_the_invariant (d W x y : V) (h : SameHelix d W x y) :
    det d y % det d W = det d x % det d W := by
  obtain ⟨a, b, h1, h2⟩ := h
  have hy : y = (x.1 + a * d.1 + b * W.1, x.2 + a * d.2 + b * W.2) := Prod.ext h1 h2
  rw [hy, det_shift]
  exact Int.add_mul_emod_self_right _ _ _

theorem cramer_fst (d e x : V) (he : det d e = 1) : x.1 = det x e * d.1 + det d x * e.1 := by
  have h : x.1 * det d e = det x e * d.1 + det d x * e.1 := by
    show x.1 * (d.1 * e.2 - d.2 * e.1) = (x.1 * e.2 - x.2 * e.1) * d.1 + (d.1 * x.2 - d.2 * x.1) * e.1
    simp only [Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
    omega
  rw [he, Int.mul_one] at h
  exact h

theorem cramer_snd (d e x : V) (he : det d e = 1) : x.2 = det x e * d.2 + det d x * e.2 := by
  have h : x.2 * det d e = det x e * d.2 + det d x * e.2 := by
    show x.2 * (d.1 * e.2 - d.2 * e.1) = (x.1 * e.2 - x.2 * e.1) * d.2 + (d.1 * x.2 - d.2 * x.1) * e.2
    simp only [Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
    omega
  rw [he, Int.mul_one] at h
  exact h

/-- Every point lies on one of the listed helices: the helix through r · e, with
r = det d x mod det d W. -/
theorem every_point_meets_a_listed_helix (d e W x : V) (he : det d e = 1) :
    SameHelix d W ((det d x % det d W) * e.1, (det d x % det d W) * e.2) x := by
  have c1x := cramer_fst d e x he
  have c2x := cramer_snd d e x he
  have c1W := cramer_fst d e W he
  have c2W := cramer_snd d e W he
  have hrq := Int.emod_add_mul_ediv (det d x) (det d W)
  refine ⟨det x e - (det d x / det d W) * det W e, det d x / det d W, ?_, ?_⟩
  · generalize det x e = A at *
    generalize det W e = B at *
    generalize det d x / det d W = q at *
    generalize det d x % det d W = r at *
    generalize det d W = D at *
    generalize det d x = X at *
    show x.1 = r * e.1 + (A - q * B) * d.1 + q * W.1
    rw [c1x, c1W, ← hrq]
    simp only [Int.mul_add, Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
    omega
  · generalize det x e = A at *
    generalize det W e = B at *
    generalize det d x / det d W = q at *
    generalize det d x % det d W = r at *
    generalize det d W = D at *
    generalize det d x = X at *
    show x.2 = r * e.2 + (A - q * B) * d.2 + q * W.2
    rw [c2x, c2W, ← hrq]
    simp only [Int.mul_add, Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
    omega

theorem det_scale (d e : V) (r : Int) (he : det d e = 1) : det d (r * e.1, r * e.2) = r := by
  have h : det d (r * e.1, r * e.2) = r * det d e := by
    show d.1 * (r * e.2) - d.2 * (r * e.1) = r * (d.1 * e.2 - d.2 * e.1)
    simp only [Int.mul_sub, Int.mul_comm, Int.mul_left_comm]
  rw [h, he, Int.mul_one]

/-- The listed helices are pairwise different. -/
theorem listed_helices_are_distinct (d e W : V) (he : det d e = 1) (r s : Int)
    (hr : 0 ≤ r ∧ r < det d W) (hs : 0 ≤ s ∧ s < det d W)
    (h : SameHelix d W (r * e.1, r * e.2) (s * e.1, s * e.2)) : r = s := by
  have hinv := helix_keeps_the_invariant d W _ _ h
  rw [det_scale d e r he, det_scale d e s he, Int.emod_eq_of_lt hr.1 hr.2,
    Int.emod_eq_of_lt hs.1 hs.2] at hinv
  exact hinv.symm

/-- So a helix family of primitive direction d on the cylinder with wrap W has exactly det d W
members: the helices through 0, e, 2e, …, (det d W − 1)e, which the invariant tells apart. -/
theorem helix_count (d e W : V) (he : det d e = 1) (hD : 0 < det d W) :
    (∀ x, ∃ r, 0 ≤ r ∧ r < det d W ∧ SameHelix d W (r * e.1, r * e.2) x) ∧
    (∀ r s, 0 ≤ r ∧ r < det d W → 0 ≤ s ∧ s < det d W →
      SameHelix d W (r * e.1, r * e.2) (s * e.1, s * e.2) → r = s) :=
  ⟨fun x => ⟨det d x % det d W, Int.emod_nonneg _ (by omega), Int.emod_lt_of_pos _ hD,
      every_point_meets_a_listed_helix d e W x he⟩,
   fun r s hr hs h => listed_helices_are_distinct d e W he r s hr hs h⟩

/-- Start numbers add when directions add. -/
theorem det_add_left (a b W : V) : det (a.1 + b.1, a.2 + b.2) W = det a W + det b W := by
  show (a.1 + b.1) * W.2 - (a.2 + b.2) * W.1 = (a.1 * W.2 - a.2 * W.1) + (b.1 * W.2 - b.2 * W.1)
  rw [Int.add_mul, Int.add_mul]
  omega

/-- The 13-3 monomer lattice: thirteen lateral steps return to the same protofilament three
monomers up, so the cylinder identifies x with x + (13, −3). -/
def wrap13_3 : V := (13, -3)

/-- Monomer families: the protofilament direction has 13 members and the lateral direction 3. -/
theorem monomer_families :
    det (0, -1) (1, 0) = 1 ∧ det (0, -1) wrap13_3 = 13 ∧
    det (-1, 0) (0, -1) = 1 ∧ det (-1, 0) wrap13_3 = 3 := by decide

/-- Sites of one type in the A-lattice labelling are the points with even coordinate sum; they are
exactly the integer combinations of (1, 1) and (1, −1). -/
theorem a_sites_have_dimer_coordinates (x : V) :
    (x.1 + x.2) % 2 = 0 ↔ ∃ u w : Int, x.1 = u + w ∧ x.2 = u - w := by
  constructor
  · intro h
    exact ⟨(x.1 + x.2) / 2, (x.1 - x.2) / 2, by omega, by omega⟩
  · intro h
    obtain ⟨u, w, h1, h2⟩ := h
    omega

/-- In those dimer coordinates the wrap is (5, 8): (13, −3) = 5 (1, 1) + 8 (1, −1). -/
def wrapDimer : V := (5, 8)

theorem the_wrap_in_dimer_coordinates :
    wrap13_3.1 = wrapDimer.1 + wrapDimer.2 ∧ wrap13_3.2 = wrapDimer.1 - wrapDimer.2 := by decide

/-- Dimer helix directions (in dimer coordinates) and their complements. -/
def d1 : V := (2, 3)
def d2 : V := (-1, -2)
def d3 : V := (1, 1)
def d5 : V := (0, -1)
def d8 : V := (1, 0)
def d13 : V := (1, -1)
def d21 : V := (2, -1)

/-- The directions follow the Fibonacci recursion, each is primitive, and their start numbers on
the (5, 8) wrap are 1, 2, 3, 5, 8, 13, 21. -/
theorem dimer_families_are_fibonacci :
    (d1.1 + d2.1, d1.2 + d2.2) = d3 ∧ (d2.1 + d3.1, d2.2 + d3.2) = d5 ∧
    (d3.1 + d5.1, d3.2 + d5.2) = d8 ∧ (d5.1 + d8.1, d5.2 + d8.2) = d13 ∧
    (d8.1 + d13.1, d8.2 + d13.2) = d21 ∧
    det d1 (1, 2) = 1 ∧ det d2 (1, 1) = 1 ∧ det d3 (0, 1) = 1 ∧ det d5 (1, 0) = 1 ∧
    det d8 (0, 1) = 1 ∧ det d13 (0, 1) = 1 ∧ det d21 (1, 0) = 1 ∧
    det d1 wrapDimer = 1 ∧ det d2 wrapDimer = 2 ∧ det d3 wrapDimer = 3 ∧ det d5 wrapDimer = 5 ∧
    det d8 wrapDimer = 8 ∧ det d13 wrapDimer = 13 ∧ det d21 wrapDimer = 21 := by decide

/-- The 13-member dimer family is the protofilaments: d13 = (1, −1) in dimer coordinates is
(0, 2) in monomer coordinates, one dimer up a protofilament. -/
theorem d13_is_the_protofilament : d13.1 + d13.2 = 0 ∧ d13.1 - d13.2 = 2 := by decide

/-- Along-protofilament alternation of the two subunit types. -/
def Alternates (τ : V → Bool) : Prop := ∀ p m : Int, τ (p, m + 1) = !τ (p, m)

/-- Closure on the 13-3 cylinder. -/
def Closes (τ : V → Bool) : Prop := ∀ x : V, τ (x.1 + 13, x.2 - 3) = τ x

theorem alternates_three (τ : V → Bool) (h : Alternates τ) (p m : Int) :
    τ (p, m + 3) = !τ (p, m) := by
  have e1 : m + 3 = (m + 2) + 1 := by omega
  have e2 : m + 2 = (m + 1) + 1 := by omega
  rw [e1, h, e2, h, h]
  cases τ (p, m) <;> rfl

/-- Lateral contacts between protofilament p and p + 1 at height m that join unlike subunits. -/
def seamCount (τ : V → Bool) (m : Int) : Nat → Nat
  | 0 => 0
  | k + 1 => seamCount τ m k + (xor (τ ((k : Int) + 1, m)) (τ ((k : Int), m))).toNat

theorem parity_step (c : Nat) (t : Bool) :
    decide ((c + t.toNat) % 2 = 1) = xor (decide (c % 2 = 1)) t := by
  cases t
  · show decide ((c + 0) % 2 = 1) = xor (decide (c % 2 = 1)) false
    rw [Nat.add_zero]
    cases decide (c % 2 = 1) <;> rfl
  · show decide ((c + 1) % 2 = 1) = xor (decide (c % 2 = 1)) true
    by_cases hc : c % 2 = 1
    · rw [decide_eq_true hc, decide_eq_false (by omega : ¬ (c + 1) % 2 = 1)]
      rfl
    · rw [decide_eq_false hc, decide_eq_true (by omega : (c + 1) % 2 = 1)]
      rfl

theorem seam_parity (τ : V → Bool) (m : Int) :
    ∀ k : Nat, τ ((k : Int), m) = xor (τ (0, m)) (decide (seamCount τ m k % 2 = 1)) := by
  intro k
  induction k with
  | zero =>
    show τ (0, m) = xor (τ (0, m)) (decide (0 % 2 = 1))
    cases τ (0, m) <;> rfl
  | succ k ih =>
    have ek : ((k + 1 : Nat) : Int) = (k : Int) + 1 := by omega
    rw [ek]
    show τ ((k : Int) + 1, m)
      = xor (τ (0, m)) (decide ((seamCount τ m k + (xor (τ ((k : Int) + 1, m)) (τ ((k : Int), m))).toNat) % 2 = 1))
    rw [parity_step, ih]
    generalize τ ((k : Int) + 1, m) = a
    generalize τ (0, m) = b
    generalize decide (seamCount τ m k % 2 = 1) = q
    cases a <;> cases b <;> cases q <;> rfl

/-- In any labelling of the 13-3 cylinder that alternates along protofilaments, each ring of
thirteen lateral contacts joins unlike subunits an odd number of times. -/
theorem the_seam_count_is_odd (τ : V → Bool) (halt : Alternates τ) (hclose : Closes τ) (m : Int) :
    seamCount τ m 13 % 2 = 1 := by
  have h13 := seam_parity τ m 13
  have hw := hclose (0, m + 3)
  have hw' : τ (13, m) = τ (0, m + 3) := by
    have e : ((0 : Int) + 13, m + 3 - 3) = ((13 : Int), m) := by
      apply Prod.ext <;> show _ = _ <;> omega
    rw [← e]
    exact hw
  rw [alternates_three τ halt 0 m] at hw'
  have h13' : τ (13, m) = xor (τ (0, m)) (decide (seamCount τ m 13 % 2 = 1)) := h13
  rw [h13'] at hw'
  revert hw'
  cases τ (0, m) <;> by_cases hc : seamCount τ m 13 % 2 = 1 <;> simp [hc]

/-- Hence at least one seam per ring: a 13-3 lattice cannot be homotypic all the way round. -/
theorem every_closed_13_3_lattice_has_a_seam (τ : V → Bool) (halt : Alternates τ)
    (hclose : Closes τ) (m : Int) : 1 ≤ seamCount τ m 13 := by
  have := the_seam_count_is_odd τ halt hclose m
  omega

/-- The B-lattice rule everywhere (alike subunits across every lateral contact) cannot close. -/
theorem no_seamless_b_lattice (τ : V → Bool) (halt : Alternates τ)
    (hB : ∀ p m : Int, τ (p + 1, m) = τ (p, m)) (hclose : Closes τ) : False := by
  have hz : ∀ k : Nat, seamCount τ 0 k = 0 := by
    intro k
    induction k with
    | zero => rfl
    | succ k ih =>
      show seamCount τ 0 k + (xor (τ ((k : Int) + 1, 0)) (τ ((k : Int), 0))).toNat = 0
      rw [ih, hB]
      cases τ ((k : Int), 0) <;> rfl
  have := the_seam_count_is_odd τ halt hclose 0
  rw [hz 13] at this
  exact absurd this (by decide)

/-- The A-lattice labelling (unlike subunits across every lateral contact) closes on the 13-3
cylinder with no seam, because 13 + 3 is even. -/
def aLabel (x : V) : Bool := decide ((x.1 + x.2) % 2 = 0)

theorem the_a_lattice_closes_without_a_seam :
    Alternates aLabel ∧ (∀ p m : Int, aLabel (p + 1, m) = !aLabel (p, m)) ∧ Closes aLabel := by
  refine ⟨?_, ?_, ?_⟩
  · intro p m
    by_cases h : (p + m) % 2 = 0
    · have h' : ¬ (p + (m + 1)) % 2 = 0 := by omega
      simp [aLabel, h, h']
    · have h' : (p + (m + 1)) % 2 = 0 := by omega
      simp [aLabel, h, h']
  · intro p m
    by_cases h : (p + m) % 2 = 0
    · have h' : ¬ (p + 1 + m) % 2 = 0 := by omega
      simp [aLabel, h, h']
    · have h' : (p + 1 + m) % 2 = 0 := by omega
      simp [aLabel, h, h']
  · intro x
    have h : (x.1 + 13 + (x.2 - 3)) % 2 = (x.1 + x.2) % 2 := by omega
    simp only [aLabel, h]

end Lattice

/-! ## 7. The three-qubit bit-flip code: Knill–Laflamme and recovery -/

namespace BitFlip

/-- A three-qubit state with integer amplitudes on |000⟩ … |111⟩ (index = 4 q₁ + 2 q₂ + q₃). -/
structure St where
  a0 : Int
  a1 : Int
  a2 : Int
  a3 : Int
  a4 : Int
  a5 : Int
  a6 : Int
  a7 : Int

inductive Err where
  | I
  | X1
  | X2
  | X3
  deriving DecidableEq

def x1 (s : St) : St := ⟨s.a4, s.a5, s.a6, s.a7, s.a0, s.a1, s.a2, s.a3⟩
def x2 (s : St) : St := ⟨s.a2, s.a3, s.a0, s.a1, s.a6, s.a7, s.a4, s.a5⟩
def x3 (s : St) : St := ⟨s.a1, s.a0, s.a3, s.a2, s.a5, s.a4, s.a7, s.a6⟩

def act : Err → St → St
  | .I, s => s
  | .X1, s => x1 s
  | .X2, s => x2 s
  | .X3, s => x3 s

def enc (α β : Int) : St := ⟨α, 0, 0, 0, 0, 0, 0, β⟩

def zeroSt : St := ⟨0, 0, 0, 0, 0, 0, 0, 0⟩

/-- Projector onto the code space spanned by |000⟩ and |111⟩. -/
def code (s : St) : St := ⟨s.a0, 0, 0, 0, 0, 0, 0, s.a7⟩

/-- Projector onto the syndrome sector of each single flip, read by the checks Z₁Z₂ and Z₂Z₃:
none {000, 111}, first {011, 100}, second {010, 101}, third {001, 110}. -/
def sector : Err → St → St
  | .I, s => ⟨s.a0, 0, 0, 0, 0, 0, 0, s.a7⟩
  | .X1, s => ⟨0, 0, 0, s.a3, s.a4, 0, 0, 0⟩
  | .X2, s => ⟨0, 0, s.a2, 0, 0, s.a5, 0, 0⟩
  | .X3, s => ⟨0, s.a1, 0, 0, 0, 0, s.a6, 0⟩

def addSt (s t : St) : St :=
  ⟨s.a0 + t.a0, s.a1 + t.a1, s.a2 + t.a2, s.a3 + t.a3, s.a4 + t.a4, s.a5 + t.a5, s.a6 + t.a6,
    s.a7 + t.a7⟩

/-- Recovery: in each syndrome sector, undo the flip that sector names. -/
def recover (s : St) : St :=
  addSt (addSt (sector .I s) (x1 (sector .X1 s))) (addSt (x2 (sector .X2 s)) (x3 (sector .X3 s)))

/-- The checks report the error's sector with certainty, whatever the encoded state. -/
theorem the_checks_report_the_error_sector (E F : Err) (α β : Int) :
    sector F (act E (enc α β)) = if E = F then act E (enc α β) else zeroSt := by
  cases E <;> cases F <;> rfl

/-- The Knill–Laflamme condition for single flips: P E† F P = δ(E, F) P (each flip is its own
adjoint and inverse). -/
theorem knill_laflamme (E F : Err) (s : St) :
    code (act E (act F (code s))) = if E = F then code s else zeroSt := by
  cases E <;> cases F <;> rfl

/-- Recovery undoes every single flip, for every encoded state. -/
theorem recovery_undoes_every_single_flip (E : Err) (α β : Int) :
    recover (act E (enc α β)) = enc α β := by
  cases E <;> simp [recover, addSt, sector, act, x1, x2, x3, enc]

/-- A double flip is read as the third single flip and recovered to the logical flip of the state. -/
theorem a_double_flip_becomes_a_logical_flip (α β : Int) :
    recover (x1 (x2 (enc α β))) = enc β α := by
  simp [recover, addSt, sector, x1, x2, x3, enc]

end BitFlip

/-! ## 8. Two observers over a lossy channel (coordinated attack) -/

namespace Coordination

/-- In run k the first k alternating messages arrive (odd ones from A to B, even ones from B to A)
and the rest are lost. A has then received k / 2 messages and B (k + 1) / 2. If the two always agree
and A does not act on no evidence, then no run has either act. -/
theorem no_finite_exchange_licenses_joint_action (dA dB : Nat → Bool)
    (agree : ∀ k, dA (k / 2) = dB ((k + 1) / 2)) (valid : dA 0 = false) :
    ∀ k, dA (k / 2) = false ∧ dB ((k + 1) / 2) = false := by
  intro k
  induction k with
  | zero => exact ⟨valid, (agree 0).symm.trans valid⟩
  | succ k ih =>
    have hk := agree (k + 1)
    have hpar : k % 2 = 0 ∨ k % 2 = 1 := by omega
    cases hpar with
    | inl h =>
      have e1 : (k + 1) / 2 = k / 2 := by omega
      have hA : dA ((k + 1) / 2) = false := by rw [e1]; exact ih.1
      exact ⟨hA, hk.symm.trans hA⟩
    | inr h =>
      have e2 : (k + 1 + 1) / 2 = (k + 1) / 2 := by omega
      have hB : dB ((k + 1 + 1) / 2) = false := by rw [e2]; exact ih.2
      exact ⟨hk.trans hB, hB⟩

/-- Control: agreement alone allows joint action; validity is the premise doing the work. -/
theorem agreement_alone_allows_action :
    ∃ dA dB : Nat → Bool, (∀ k, dA (k / 2) = dB ((k + 1) / 2)) ∧ dA 0 = true :=
  ⟨fun _ => true, fun _ => true, fun _ => rfl, rfl⟩

end Coordination

/-! ## 9. Scope-aware cut: finite at every declared decay, absent at none -/

namespace Cut

def iter (f : Nat → Nat) : Nat → Nat → Nat
  | 0, x => x
  | k + 1, x => iter f k (f x)

theorem decay_cut_within (f : Nat → Nat) (hdecay : ∀ x, 0 < x → f x < x) (hzero : f 0 = 0) :
    ∀ k x, iter f k x ≤ x - k := by
  intro k
  induction k with
  | zero => intro x; exact Nat.le_refl x
  | succ k ih =>
    intro x
    cases x with
    | zero =>
      show iter f k (f 0) ≤ 0 - (k + 1)
      rw [hzero]
      have := ih 0
      omega
    | succ y =>
      show iter f k (f (y + 1)) ≤ (y + 1) - (k + 1)
      have h1 := hdecay (y + 1) (Nat.succ_pos y)
      have h2 := ih (f (y + 1))
      omega

/-- With decay at every positive level, the residue is gone within as many levels as it started. -/
theorem decay_reaches_zero (f : Nat → Nat) (hdecay : ∀ x, 0 < x → f x < x) (hzero : f 0 = 0)
    (x : Nat) : iter f x x = 0 := by
  have := decay_cut_within f hdecay hzero x x
  omega

/-- With no decay, no level cuts the residue. -/
theorem no_decay_no_cut (x : Nat) : ∀ k, iter (fun y => y) k x = x := by
  intro k
  induction k with
  | zero => rfl
  | succ k ih => exact ih

/-- Slower decay retains at least as much residue at every level. -/
theorem slower_decay_retains_more (f g : Nat → Nat) (hfg : ∀ x, f x ≤ g x)
    (hmono : ∀ x y, x ≤ y → g x ≤ g y) : ∀ k x y, x ≤ y → iter f k x ≤ iter g k y := by
  intro k
  induction k with
  | zero => intro x y hxy; exact hxy
  | succ k ih =>
    intro x y hxy
    exact ih (f x) (g y) (Nat.le_trans (hfg x) (hmono x y hxy))

/-- So a level that cuts the slower decay also cuts the faster one. -/
theorem faster_decay_cuts_no_later (f g : Nat → Nat) (hfg : ∀ x, f x ≤ g x)
    (hmono : ∀ x y, x ≤ y → g x ≤ g y) (L x : Nat) (hg : iter g L x = 0) : iter f L x = 0 := by
  have := slower_decay_retains_more f g hfg hmono L x x (Nat.le_refl x)
  omega

end Cut

/-! ## 10. Registry discipline (Completeness Is Not Comprehension, §4; QEC response, §2.2, §8.7) -/

/-- A complete registry recovers every target, including two that disagree: representability
there discriminates nothing. -/
theorem a_complete_registry_recovers_both_rivals {X Z : Type} (t₁ t₂ : X → Z) :
    Recovers (fun x : X => x) t₁ ∧ Recovers (fun x : X => x) t₂ :=
  ⟨identity_readout_recovers t₁, identity_readout_recovers t₂⟩

/-- Membership in a complete registry marks no truth. -/
theorem membership_in_a_complete_registry_marks_no_truth {S : Type} (mem truth : S → Bool)
    (complete : ∀ s, mem s = true) (t f : S) (ht : truth t = true) (hf : truth f = false) :
    ¬ Recovers mem truth :=
  universal_class_is_closed mem truth t f ((complete t).trans (complete f).symm)
    (by rw [ht, hf]; decide)

/-- A score that a control geometry shares cannot select the candidate geometry. -/
theorem a_score_shared_with_a_control_cannot_select {G R : Type} (score : G → R)
    (isCandidate : G → Bool) (candidate control : G) (same : score candidate = score control)
    (hc : isCandidate candidate = true) (hk : isCandidate control = false) :
    ¬ Recovers score isCandidate :=
  universal_class_is_closed score isCandidate candidate control same (by rw [hc, hk]; decide)

end DIYQC.K2
