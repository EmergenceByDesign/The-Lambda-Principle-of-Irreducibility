import Lean

-- ===== lean/reused/UniversalRecoveryClosure.lean (verbatim, import lines removed) =====
section

/-!
Universal recovery closure, 24 October 2026.
A self-contained statement of the collision argument already used in the
seam work. The proof excludes the entire declared decoder class at once.
It uses no custom assumptions beyond its explicit theorem hypotheses.
-/

universe u v w r

namespace UniversalRecoveryClosure

theorem no_processing_recovers_erased_distinction
    {X : Type u} {Y : Type v} {Z : Type w}
    (observe : X → Y) (target : X → Z) (a b : X)
    (sameReading : observe a = observe b)
    (differentTargets : target a ≠ target b) :
    ∀ {R : Type r} (process : Y → R) (decode : R → Z),
      ¬ (∀ x, decode (process (observe x)) = target x) := by
  intro R process decode correct
  apply differentTargets
  calc
    target a = decode (process (observe a)) := (correct a).symm
    _ = decode (process (observe b)) := congrArg (fun y => decode (process y)) sameReading
    _ = target b := correct b

theorem no_decoder_recovers_erased_distinction
    {X : Type u} {Y : Type v} {Z : Type w}
    (observe : X → Y) (target : X → Z) (a b : X)
    (sameReading : observe a = observe b)
    (differentTargets : target a ≠ target b) :
    ¬ (∃ decode : Y → Z, ∀ x, decode (observe x) = target x) := by
  intro recovery
  obtain ⟨decode, correct⟩ := recovery
  exact no_processing_recovers_erased_distinction observe target a b
    sameReading differentTargets (fun y => y) decode correct

#print axioms no_processing_recovers_erased_distinction
#print axioms no_decoder_recovers_erased_distinction

end UniversalRecoveryClosure

end

-- ===== lean/reused/ClosureConsequences.lean (verbatim, import lines removed) =====
section

/-!
Consequences of universal recovery closure, R8, 24 October 2026.
The null case is proved from a seam and global soundness, rather than inferred
from elapsed search. Every declaration below has an explicit axiom audit.
-/

namespace ClosureConsequences

open UniversalRecoveryClosure

universe u v w r s
variable {X : Type u} {Y : Type v} {Z : Type w}

def Recovers (observe : X → Y) (target : X → Z) : Prop :=
  ∃ decode : Y → Z, ∀ x, decode (observe x) = target x

theorem two_cases_exclude_every_decoder
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    (decode : Y → Z) :
    ¬ (decode (observe a) = target a ∧ decode (observe b) = target b) := by
  intro both
  apply different
  exact both.1.symm.trans ((congrArg decode same).trans both.2)

theorem universal_class_is_closed
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b) :
    ¬ Recovers observe target :=
  no_decoder_recovers_erased_distinction observe target a b same different

def adaptiveTrace {State : Type r} (initial : Y → State) (advance : Y → State → State)
    (reading : Y) : Nat → State
  | 0 => initial reading
  | n + 1 => advance reading (adaptiveTrace initial advance reading n)

theorem no_adaptive_transcript_decoder
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    {State : Type r} (initial : Y → State) (advance : Y → State → State)
    (decode : (Nat → State) → Z) :
    ¬ (∀ x, decode (adaptiveTrace initial advance (observe x)) = target x) :=
  no_processing_recovers_erased_distinction observe target a b same different
    (adaptiveTrace initial advance) decode

def SoundAttempt (observe : X → Y) (target : X → Z)
    (attempt : Y → Nat → Option Z) : Prop :=
  ∀ x n value, attempt (observe x) n = some value → value = target x

def CertifiedAbstention (attempt : Y → Nat → Option Z) (reading : Y) : Prop :=
  ∀ n, attempt reading n = none

theorem forced_abstention_at_seam
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    (attempt : Y → Nat → Option Z) (sound : SoundAttempt observe target attempt) :
    CertifiedAbstention attempt (observe a) := by
  intro n
  cases output : attempt (observe a) n with
  | none => rfl
  | some value =>
    have atA : value = target a := sound a n value output
    have otherOutput : attempt (observe b) n = some value := by rw [← same]; exact output
    have atB : value = target b := sound b n value otherOutput
    exact False.elim (different (atA.symm.trans atB))

theorem both_witnesses_have_certified_abstention
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    (attempt : Y → Nat → Option Z) (sound : SoundAttempt observe target attempt) :
    CertifiedAbstention attempt (observe a) ∧ CertifiedAbstention attempt (observe b) :=
  ⟨forced_abstention_at_seam observe target a b same different attempt sound,
   forced_abstention_at_seam observe target b a same.symm different.symm attempt sound⟩

theorem no_sound_attempt_is_total
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    (attempt : Y → Nat → Option Z) (sound : SoundAttempt observe target attempt) :
    ¬ (∀ x, ∃ n value, attempt (observe x) n = some value) := by
  intro total
  obtain ⟨n, value, output⟩ := total a
  have abstains := forced_abstention_at_seam observe target a b same different attempt sound n
  rw [abstains] at output
  cases output

theorem adequate_coordinate_must_distinguish
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    {Coordinate : Type r} (coordinate : X → Coordinate)
    (adequate : Recovers (fun x => (observe x, coordinate x)) target) :
    coordinate a ≠ coordinate b := by
  intro sameCoordinate
  obtain ⟨decode, correct⟩ := adequate
  exact two_cases_exclude_every_decoder (fun x => (observe x, coordinate x)) target a b
    (Prod.ext same sameCoordinate) different decode ⟨correct a, correct b⟩

theorem essential_coordinate_is_not_recoverable
    (observe : X → Y) (target : X → Z) (a b : X)
    (same : observe a = observe b) (different : target a ≠ target b)
    {Coordinate : Type r} (coordinate : X → Coordinate)
    (adequate : Recovers (fun x => (observe x, coordinate x)) target) :
    ¬ Recovers observe coordinate :=
  universal_class_is_closed observe coordinate a b same
    (adequate_coordinate_must_distinguish observe target a b same different coordinate adequate)

theorem recovery_requires_target_constancy
    (observe : X → Y) (target : X → Z) (adequate : Recovers observe target) :
    ∀ a b, observe a = observe b → target a = target b := by
  obtain ⟨decode, correct⟩ := adequate
  intro a b same
  exact (correct a).symm.trans ((congrArg decode same).trans (correct b))

theorem constant_target_is_recovered (observe : X → Y) (value : Z) :
    Recovers observe (fun _ => value) := ⟨fun _ => value, fun _ => rfl⟩

theorem identity_readout_recovers (target : X → Z) :
    Recovers (fun x : X => x) target := ⟨target, fun _ => rfl⟩

theorem target_retention_recovers (observe : X → Y) (target : X → Z) :
    Recovers (fun x => (observe x, target x)) target := ⟨Prod.snd, fun _ => rfl⟩

def bitReadout (_ : Bool) : Unit := ()
def bitTarget (x : Bool) : Bool := x
def nullAttempt (_ : Unit) (_ : Nat) : Option Bool := none

theorem bit_seam_excludes_every_decoder : ¬ Recovers bitReadout bitTarget :=
  universal_class_is_closed bitReadout bitTarget false true rfl (by decide)

theorem null_attempt_is_sound : SoundAttempt bitReadout bitTarget nullAttempt := by
  intro _ _ _ impossible
  cases impossible

theorem bit_null_has_a_certificate : CertifiedAbstention nullAttempt () :=
  forced_abstention_at_seam bitReadout bitTarget false true rfl (by decide)
    nullAttempt null_attempt_is_sound

theorem bit_distinction_restores_recovery :
    Recovers (fun x => (bitReadout x, x)) bitTarget := ⟨Prod.snd, fun _ => rfl⟩

end ClosureConsequences

end

-- ===== lean/reused/LambdaSpatiotemporalFrame.lean (verbatim, import lines removed) =====
section

/-!
# Lambda, Reference, and the Spatiotemporal Descriptive Frame
Formal kernel for the companion paper.

Scope:
This file checks only the propositions encoded below.  The terms `self`, `other`,
`space`, `time`, `will`, `absolute`, and `meaning` receive only the formal roles
explicitly assigned here.  Physical, phenomenological, linguistic, or ontological
interpretations require separate bridge arguments in the paper.
-/

namespace LambdaSpatiotemporal

/-! ## 1. Reference polarity -/

inductive RefRole where
  | source
  | target
  deriving DecidableEq, Repr

structure RoleTagged (X : Type) where
  carrier : X
  role : RefRole
  deriving DecidableEq, Repr

def asSource {X : Type} (x : X) : RoleTagged X := ⟨x, .source⟩
def asTarget {X : Type} (x : X) : RoleTagged X := ⟨x, .target⟩

theorem source_target_roles_distinct : RefRole.source ≠ RefRole.target := by
  intro h
  cases h

theorem reference_polarity {X : Type} (x y : X) :
    asSource x ≠ asTarget y := by
  intro h
  have hr : RefRole.source = RefRole.target := congrArg RoleTagged.role h
  exact source_target_roles_distinct hr

/-- Even when the carrier is the same, referring and referred-to roles remain distinct. -/
theorem reflexive_reference_preserves_role_distinction {X : Type} (x : X) :
    asSource x ≠ asTarget x :=
  reference_polarity x x

/-- Repeating the tagging operation at any indexed station preserves role polarity. -/
theorem iterated_reference_polarity {X : Type} (x : X) (n : Nat) :
    (n, asSource x) ≠ (n, asTarget x) := by
  intro h
  have ht : asSource x = asTarget x := congrArg Prod.snd h
  exact reflexive_reference_preserves_role_distinction x ht

/-! ## 2. Binary partition and self/other bridge -/

def SelfSide {X : Type} (criterion : X → Bool) (x : X) : Prop := criterion x = true
def OtherSide {X : Type} (criterion : X → Bool) (x : X) : Prop := criterion x = false

def NontrivialCriterion {X : Type} (criterion : X → Bool) : Prop :=
  (∃ x, SelfSide criterion x) ∧ (∃ y, OtherSide criterion y)

theorem nontrivial_criterion_exhibits_poles {X : Type} (criterion : X → Bool)
    (h : NontrivialCriterion criterion) :
    ∃ x y, SelfSide criterion x ∧ OtherSide criterion y := by
  rcases h with ⟨⟨x, hx⟩, ⟨y, hy⟩⟩
  exact ⟨x, y, hx, hy⟩

theorem nontrivial_criterion_exhibits_distinct_states {X : Type} (criterion : X → Bool)
    (h : NontrivialCriterion criterion) :
    ∃ x y : X, x ≠ y := by
  rcases h with ⟨⟨x, hx⟩, ⟨y, hy⟩⟩
  refine ⟨x, y, ?_⟩
  intro hxy
  subst y
  have : true = false := hx.symm.trans hy
  cases this

/-! ## 3. Exclusion is indexed to a criterion -/

def ExcludedBy {X : Type} (criterion : X → Prop) (x : X) : Prop := ¬ criterion x

theorem exclusion_is_criterion_relative {X : Type} (criterion : X → Prop) (x : X) :
    ExcludedBy criterion x ↔ ¬ criterion x :=
  Iff.rfl

/-! ## 4. Lambda projection / fibre obstruction -/

theorem postprocessing_cannot_split_fibre
    {X Y Z : Type} (projection : X → Y) (g : Y → Z) {x₁ x₂ : X}
    (h : projection x₁ = projection x₂) :
    g (projection x₁) = g (projection x₂) :=
  congrArg g h

def FactorsThrough {X Y Z : Type} (projection : X → Y) (target : X → Z) : Prop :=
  ∃ g : Y → Z, ∀ x, g (projection x) = target x

theorem target_difference_blocks_factorization
    {X Y Z : Type} (projection : X → Y) (target : X → Z)
    {x₁ x₂ : X} (hproj : projection x₁ = projection x₂)
    (htarget : target x₁ ≠ target x₂) :
    ¬ FactorsThrough projection target := by
  intro hfac
  rcases hfac with ⟨g, hg⟩
  apply htarget
  calc
    target x₁ = g (projection x₁) := (hg x₁).symm
    _ = g (projection x₂) := congrArg g hproj
    _ = target x₂ := hg x₂

/-! ## 5. Compression may be exact for a target while remaining non-injective -/

def InjectiveMap {X Y : Type} (f : X → Y) : Prop :=
  ∀ ⦃x y⦄, f x = f y → x = y

theorem target_exact_compression_can_lose_other_distinctions :
    ∃ (compress : Bool × Bool → Bool) (target : Bool × Bool → Bool),
      FactorsThrough compress target ∧ ¬ InjectiveMap compress := by
  let compress : Bool × Bool → Bool := fun p => p.1
  let target : Bool × Bool → Bool := fun p => p.1
  refine ⟨compress, target, ?_, ?_⟩
  · refine ⟨(fun b => b), ?_⟩
    intro x
    rfl
  · intro hinj
    have hpair : (false, false) = (false, true) := hinj rfl
    have hsnd : false = true := congrArg Prod.snd hpair
    cases hsnd

/-! ## 6. Residual selection / will kernel -/

def UniqueOutcome {J S : Type} (Admissible : J → Prop) (outcome : J → S) : Prop :=
  ∃ s : S, ∀ j, Admissible j → outcome j = s

theorem residual_selection
    {J S : Type} (Admissible : J → Prop) (outcome : J → S)
    {j₁ j₂ : J} (h₁ : Admissible j₁) (h₂ : Admissible j₂)
    (hdiff : outcome j₁ ≠ outcome j₂) :
    ¬ UniqueOutcome Admissible outcome := by
  intro huniq
  rcases huniq with ⟨s, hs⟩
  apply hdiff
  calc
    outcome j₁ = s := hs j₁ h₁
    _ = outcome j₂ := (hs j₂ h₂).symm

/-- Formal role used by the paper's term `will`: an admissible selected procedure
    in a registry whose admissible procedures do not determine one unique outcome. -/
def ResidualWill {J S : Type} (Admissible : J → Prop) (outcome : J → S) (chosen : J) : Prop :=
  Admissible chosen ∧ ¬ UniqueOutcome Admissible outcome

theorem residual_will_from_competing_admissible_procedures
    {J S : Type} (Admissible : J → Prop) (outcome : J → S)
    {chosen j₂ : J} (hchosen : Admissible chosen) (h₂ : Admissible j₂)
    (hdiff : outcome chosen ≠ outcome j₂) :
    ResidualWill Admissible outcome chosen := by
  exact ⟨hchosen, residual_selection Admissible outcome hchosen h₂ hdiff⟩

/-- A selected procedure can index a criterion without the criterion being uniquely forced by
    the predecessor registry.  The substantive premise is that two admissible procedures induce
    different criteria. -/
def SelectedCriterion {J X : Type} (criterionOf : J → X → Bool) (chosen : J) : X → Bool :=
  criterionOf chosen

theorem competing_admissible_criteria_not_uniquely_forced
    {J X : Type} (Admissible : J → Prop) (criterionOf : J → X → Bool)
    {j₁ j₂ : J} (h₁ : Admissible j₁) (h₂ : Admissible j₂)
    (hdiff : criterionOf j₁ ≠ criterionOf j₂) :
    ¬ UniqueOutcome Admissible criterionOf :=
  residual_selection Admissible criterionOf h₁ h₂ hdiff

/-! ## 7. Absolute-priority schema and no-first-position kernel -/

def AbsolutePriority {C : Type} (Priority UsesComplement : C → Prop) (c : C) : Prop :=
  Priority c ∧ ¬ UsesComplement c

theorem complement_requirement_blocks_absolute_priority
    {C : Type} (Priority UsesComplement : C → Prop)
    (hbridge : ∀ c, Priority c → UsesComplement c) :
    ¬ ∃ c, AbsolutePriority Priority UsesComplement c := by
  intro h
  rcases h with ⟨c, hp, hnot⟩
  exact hnot (hbridge c hp)

structure SpatiotemporalBridge (Claim : Type) where
  SpaceFirst : Claim → Prop
  TimeFirst : Claim → Prop
  UsesTemporalResource : Claim → Prop
  UsesSpatialResource : Claim → Prop
  spaceFirstUsesTemporal : ∀ c, SpaceFirst c → UsesTemporalResource c
  timeFirstUsesSpatial : ∀ c, TimeFirst c → UsesSpatialResource c

def AbsoluteSpaceFirst {Claim : Type} (B : SpatiotemporalBridge Claim) (c : Claim) : Prop :=
  AbsolutePriority B.SpaceFirst B.UsesTemporalResource c

def AbsoluteTimeFirst {Claim : Type} (B : SpatiotemporalBridge Claim) (c : Claim) : Prop :=
  AbsolutePriority B.TimeFirst B.UsesSpatialResource c

theorem no_first_position {Claim : Type} (B : SpatiotemporalBridge Claim) :
    (¬ ∃ c, AbsoluteSpaceFirst B c) ∧ (¬ ∃ c, AbsoluteTimeFirst B c) := by
  constructor
  · exact complement_requirement_blocks_absolute_priority
      B.SpaceFirst B.UsesTemporalResource B.spaceFirstUsesTemporal
  · exact complement_requirement_blocks_absolute_priority
      B.TimeFirst B.UsesSpatialResource B.timeFirstUsesSpatial

/-! ## 8. Frame-local warrant does not self-promote to universal warrant -/

inductive TwoFrame where
  | local
  | other
  deriving DecidableEq, Repr

def SampleWarrant : TwoFrame → Prop
  | .local => True
  | .other => False

def UniversalWarrant {F : Type} (Warrant : F → Prop) : Prop := ∀ f, Warrant f

theorem local_warrant_not_universal_in_general :
    SampleWarrant .local ∧ ¬ UniversalWarrant SampleWarrant := by
  constructor
  · exact True.intro
  · intro hall
    exact hall .other

/-- A predicate named or intended as `absolute` has no elimination rule by logic alone. -/
theorem absolute_label_does_not_self_license :
    ¬ (∀ (Absolute : Prop → Prop) (p : Prop), Absolute p → p) := by
  intro h
  have hfalse : False := h (fun _ => True) False True.intro
  exact hfalse

/-! ## 9. Public-label compression can suppress operative meaning -/

inductive Usage where
  | original
  | extended
  deriving DecidableEq, Repr

inductive TinyState where
  | bare
  | marked
  deriving DecidableEq, Repr

def tinyMeaning : Usage → TinyState → Bool
  | .original, .bare => true
  | .original, .marked => false
  | .extended, _ => true

def publicLabel (_ : Usage) : String := "singularity"

theorem same_public_label : publicLabel .original = publicLabel .extended := rfl

theorem same_label_can_hide_different_meanings :
    publicLabel .original = publicLabel .extended ∧
    tinyMeaning .original .marked ≠ tinyMeaning .extended .marked := by
  constructor
  · rfl
  · decide

/-! ## 10. Translation bridges: preservation and noncommutation -/

def PreservesPredicate {A B : Type} (f : A → B) (P : A → Prop) (Q : B → Prop) : Prop :=
  ∀ a, P a ↔ Q (f a)

theorem predicate_preservation_composes
    {A B C : Type} (f : A → B) (g : B → C)
    (P : A → Prop) (Q : B → Prop) (R : C → Prop)
    (hAB : PreservesPredicate f P Q)
    (hBC : PreservesPredicate g Q R) :
    PreservesPredicate (fun a => g (f a)) P R := by
  intro a
  exact Iff.trans (hAB a) (hBC (f a))

theorem translations_need_not_commute :
    ∃ (AB BC AC : Bool → Bool) (x : Bool), AC x ≠ BC (AB x) := by
  refine ⟨(fun b => b), (fun b => b), Bool.not, false, ?_⟩
  decide

/-! ## 11. Finite resource budget forces a tradeoff when full demand exceeds it -/

theorem finite_budget_forces_tradeoff
    (costA costB allocA allocB budget : Nat)
    (hDemand : budget < costA + costB)
    (hBudget : allocA + allocB ≤ budget)
    (hA : costA ≤ allocA)
    (hB : costB ≤ allocB) : False := by
  have hsum : costA + costB ≤ allocA + allocB := Nat.add_le_add hA hB
  have hfit : costA + costB ≤ budget := Nat.le_trans hsum hBudget
  exact (Nat.not_le_of_lt hDemand) hfit

/-! ## 12. Frozen inscription does not by logic alone freeze interpretation -/

theorem same_input_can_receive_different_interpretations :
    ∃ (I₀ I₁ : Bool → Bool) (r : Bool), I₀ r ≠ I₁ r := by
  refine ⟨(fun b => b), Bool.not, false, ?_⟩
  decide

/-! ## 13. Audit checks -/

#check source_target_roles_distinct
#check reference_polarity
#check reflexive_reference_preserves_role_distinction
#check iterated_reference_polarity
#check nontrivial_criterion_exhibits_poles
#check nontrivial_criterion_exhibits_distinct_states
#check exclusion_is_criterion_relative
#check postprocessing_cannot_split_fibre
#check target_difference_blocks_factorization
#check target_exact_compression_can_lose_other_distinctions
#check residual_selection
#check residual_will_from_competing_admissible_procedures
#check SelectedCriterion
#check competing_admissible_criteria_not_uniquely_forced
#check complement_requirement_blocks_absolute_priority
#check no_first_position
#check local_warrant_not_universal_in_general
#check absolute_label_does_not_self_license
#check same_public_label
#check same_label_can_hide_different_meanings
#check predicate_preservation_composes
#check translations_need_not_commute
#check finite_budget_forces_tradeoff
#check same_input_can_receive_different_interpretations

#print axioms source_target_roles_distinct
#print axioms reference_polarity
#print axioms reflexive_reference_preserves_role_distinction
#print axioms iterated_reference_polarity
#print axioms nontrivial_criterion_exhibits_poles
#print axioms nontrivial_criterion_exhibits_distinct_states
#print axioms exclusion_is_criterion_relative
#print axioms postprocessing_cannot_split_fibre
#print axioms target_difference_blocks_factorization
#print axioms target_exact_compression_can_lose_other_distinctions
#print axioms residual_selection
#print axioms residual_will_from_competing_admissible_procedures
#print axioms competing_admissible_criteria_not_uniquely_forced
#print axioms complement_requirement_blocks_absolute_priority
#print axioms no_first_position
#print axioms local_warrant_not_universal_in_general
#print axioms absolute_label_does_not_self_license
#print axioms same_public_label
#print axioms same_label_can_hide_different_meanings
#print axioms predicate_preservation_composes
#print axioms translations_need_not_commute
#print axioms finite_budget_forces_tradeoff
#print axioms same_input_can_receive_different_interpretations

#eval Lean.versionString
#eval "LAMBDA_SPATIOTEMPORAL_TRANSLATION_AUDIT_COMPLETE"

end LambdaSpatiotemporal

end

-- ===== lean/DIYQCKernel.lean (verbatim, import lines removed) =====
section

/-!
# Spin isomers, the exchange lock and its key: formal kernel K1

Scope. This file checks only the propositions written below. The words nucleus, spin, rotation,
ortho, para, field, catalyst, sink, fermion, boson, swing, turn, calendar and fire receive only the
roles assigned to them here. Each physical identification is a bridge stated in the paper with its
own receipt; acceptance of this file by Lean does not certify any bridge.

Origin. Description starts from the first cut: a source role and a target role (a self-side and an
other-side) held by the describer. The cut is declared, not posited as fundamental, and nothing here
asserts a first position or a hierarchy. Section 0 ties the exchange of two identical nuclei to that
cut through the reused frame kernel (reference polarity and the factorization obstruction).

Reused unchanged (SHA-256 recorded in the receipt):
  UniversalRecoveryClosure, ClosureConsequences (Closure at the Adjudication Seam, R8 core)
  LambdaSpatiotemporalFrame (Lambda, Reference, and the Spatiotemporal Descriptive Frame)
-/

universe u

namespace DIYQC

/-! ## 0. The first cut and the exchange of two roles -/

namespace FirstCut

open LambdaSpatiotemporal

/-- The frame kernel's factorization and the seam kernel's recovery are the same proposition. -/
theorem factorsThrough_iff_recovers {X Y Z : Type} (p : X → Y) (t : X → Z) :
    FactorsThrough p t ↔ ClosureConsequences.Recovers p t := Iff.rfl

/-- Exchange of the two roles of an ordered pair. -/
def swap {X : Type} (p : X × X) : X × X := (p.2, p.1)

theorem swap_swap {X : Type} (p : X × X) : swap (swap p) = p := rfl

/-- A reading that does not depend on which carrier holds which role. -/
def RoleBlind {X R : Type} (reading : X × X → R) : Prop := ∀ p, reading (swap p) = reading p

/-- No role-blind reading recovers which of two different carriers holds the first role. -/
theorem role_blind_reading_cannot_order {X R : Type} (reading : X × X → R)
    (blind : RoleBlind reading) (a b : X) (hab : a ≠ b) :
    ¬ FactorsThrough reading Prod.fst :=
  target_difference_blocks_factorization reading Prod.fst
    (x₁ := (a, b)) (x₂ := (b, a)) (blind (a, b)).symm hab

/-- The cut is held by the describer and is not read off the described: the two roles stay
distinct even on one carrier, while no role-blind reading recovers which carrier is first. -/
theorem cut_is_held_not_read {X R : Type} (x : X) (reading : X × X → R)
    (blind : RoleBlind reading) (a b : X) (hab : a ≠ b) :
    asSource x ≠ asTarget x ∧ ¬ FactorsThrough reading Prod.fst :=
  ⟨reflexive_reference_preserves_role_distinction x,
   role_blind_reading_cannot_order reading blind a b hab⟩

/-- When the carriers can be told apart (a labelled reading), the order is readable: identity of
the carriers is what makes the exchange constraint. -/
theorem labelled_reading_recovers_order {X : Type} :
    ClosureConsequences.Recovers (fun p : X × X => p) Prod.fst :=
  ClosureConsequences.identity_readout_recovers Prod.fst

end FirstCut

/-! ## 1. The two exchange signs (the two square roots of one) -/

inductive Sign where
  | plus
  | minus
  deriving DecidableEq, Repr

namespace Sign

def mul : Sign → Sign → Sign
  | plus, s => s
  | minus, plus => minus
  | minus, minus => plus

def flip : Sign → Sign
  | plus => minus
  | minus => plus

theorem mul_self (s : Sign) : mul s s = plus := by cases s <;> rfl

theorem mul_comm (s t : Sign) : mul s t = mul t s := by cases s <;> cases t <;> rfl

theorem flip_flip (s : Sign) : flip (flip s) = s := by cases s <;> rfl

theorem flip_ne (s : Sign) : flip s ≠ s := by cases s <;> decide

theorem mul_minus (s : Sign) : mul minus s = flip s := by cases s <;> rfl

/-- The even-rotation family is the spin class whose sign equals the statistics sign. -/
theorem mul_eq_plus_iff (σ ε : Sign) : mul σ ε = plus ↔ ε = σ := by
  cases σ <;> cases ε <;> decide

end Sign

/-! ## 2. Carriers with a sign action -/

structure SignedCarrier (V : Type u) where
  neg : V → V
  zero : V
  neg_neg : ∀ v, neg (neg v) = v
  /-- No state other than zero equals its own negative. -/
  fixed_is_zero : ∀ v, neg v = v → v = zero

namespace SignedCarrier

variable {V : Type u} (C : SignedCarrier V)

def act : Sign → V → V
  | Sign.plus, v => v
  | Sign.minus, v => C.neg v

theorem act_self (s : Sign) (v : V) : C.act s (C.act s v) = v := by
  cases s with
  | plus => rfl
  | minus => exact C.neg_neg v

theorem act_act (s t : Sign) (v : V) : C.act s (C.act t v) = C.act (Sign.mul s t) v := by
  cases s <;> cases t
  · rfl
  · rfl
  · rfl
  · exact C.neg_neg v

theorem neg_act (s : Sign) (v : V) : C.neg (C.act s v) = C.act (Sign.flip s) v := by
  cases s with
  | plus => rfl
  | minus => exact C.neg_neg v

/-- The two sign sectors meet only at zero. -/
theorem sign_actions_agree_only_at_zero (s : Sign) (v : V)
    (h : C.act s v = C.act (Sign.flip s) v) : v = C.zero := by
  cases s with
  | plus => exact C.fixed_is_zero v h.symm
  | minus => exact C.fixed_is_zero v h

end SignedCarrier

/-! ## 3. The lock: spin exchange P, position exchange Q, and the statistics sign -/

structure ExchangePair (V : Type u) extends SignedCarrier V where
  /-- Exchange of the two nuclear spins. -/
  spinSwap : V → V
  /-- Exchange of the two nuclear positions: the half turn of the molecule. -/
  posSwap : V → V
  spinSwap_invol : ∀ v, spinSwap (spinSwap v) = v
  spinSwap_neg : ∀ v, spinSwap (neg v) = neg (spinSwap v)

namespace ExchangePair

variable {V : Type u} (E : ExchangePair V)

/-- Exchanging the two identical nuclei (spins and positions together) multiplies the state by
the statistics sign σ: minus for fermion nuclei (protons), plus for boson nuclei (deuterons). -/
def Statistics (σ : Sign) (v : V) : Prop :=
  E.spinSwap (E.posSwap v) = E.toSignedCarrier.act σ v

/-- Spin class: plus is the symmetric family, minus the antisymmetric family. -/
def SpinClass (ε : Sign) (v : V) : Prop :=
  E.spinSwap v = E.toSignedCarrier.act ε v

/-- Rotation parity under the half turn: plus for even J, minus for odd J. -/
def RotationParity (η : Sign) (v : V) : Prop :=
  E.posSwap v = E.toSignedCarrier.act η v

theorem spinSwap_act (s : Sign) (v : V) :
    E.spinSwap (E.toSignedCarrier.act s v) = E.toSignedCarrier.act s (E.spinSwap v) := by
  cases s with
  | plus => rfl
  | minus => exact E.spinSwap_neg v

/-- The isomer lock: the statistics of the pair ties rotation parity to spin class, η = σ·ε. -/
theorem isomer_lock (σ ε : Sign) (v : V)
    (hstat : E.Statistics σ v) (hspin : E.SpinClass ε v) :
    E.RotationParity (Sign.mul σ ε) v := by
  have hstat' : E.spinSwap (E.posSwap v) = E.toSignedCarrier.act σ v := hstat
  have hspin' : E.spinSwap v = E.toSignedCarrier.act ε v := hspin
  show E.posSwap v = E.toSignedCarrier.act (Sign.mul σ ε) v
  calc E.posSwap v
      = E.spinSwap (E.spinSwap (E.posSwap v)) := (E.spinSwap_invol _).symm
    _ = E.spinSwap (E.toSignedCarrier.act σ v) := congrArg E.spinSwap hstat'
    _ = E.toSignedCarrier.act σ (E.spinSwap v) := E.spinSwap_act σ v
    _ = E.toSignedCarrier.act σ (E.toSignedCarrier.act ε v) :=
          congrArg (E.toSignedCarrier.act σ) hspin'
    _ = E.toSignedCarrier.act (Sign.mul σ ε) v := E.toSignedCarrier.act_act σ ε v

/-- Fermion pair (hydrogen): the antisymmetric spin family (para) rotates evenly. -/
theorem fermion_antisymmetric_even (v : V) (hstat : E.Statistics Sign.minus v)
    (hspin : E.SpinClass Sign.minus v) : E.RotationParity Sign.plus v :=
  E.isomer_lock Sign.minus Sign.minus v hstat hspin

/-- Fermion pair (hydrogen): the symmetric spin family (ortho) rotates oddly. -/
theorem fermion_symmetric_odd (v : V) (hstat : E.Statistics Sign.minus v)
    (hspin : E.SpinClass Sign.plus v) : E.RotationParity Sign.minus v :=
  E.isomer_lock Sign.minus Sign.plus v hstat hspin

/-- Boson pair (deuterium): the symmetric spin family (ortho) rotates evenly. -/
theorem boson_symmetric_even (v : V) (hstat : E.Statistics Sign.plus v)
    (hspin : E.SpinClass Sign.plus v) : E.RotationParity Sign.plus v :=
  E.isomer_lock Sign.plus Sign.plus v hstat hspin

/-- Boson pair (deuterium): the antisymmetric spin family (para) rotates oddly. -/
theorem boson_antisymmetric_odd (v : V) (hstat : E.Statistics Sign.plus v)
    (hspin : E.SpinClass Sign.minus v) : E.RotationParity Sign.minus v :=
  E.isomer_lock Sign.plus Sign.minus v hstat hspin

/-! ## 4. The key: which couplings can change the spin class -/

/-- The coupling commutes with the sign. -/
def RespectsSign (A : V → V) : Prop := ∀ v, A (E.neg v) = E.neg (A v)

/-- Behaviour of a coupling under spin exchange: plus = commutes, minus = anticommutes. -/
def SpinParity (A : V → V) (s : Sign) : Prop :=
  ∀ v, A (E.spinSwap v) = E.toSignedCarrier.act s (E.spinSwap (A v))

/-- Behaviour of a coupling under position exchange: plus = commutes, minus = anticommutes. -/
def PosParity (A : V → V) (t : Sign) : Prop :=
  ∀ v, A (E.posSwap v) = E.toSignedCarrier.act t (E.posSwap (A v))

theorem act_respect (A : V → V) (hA : E.RespectsSign A) (s : Sign) (v : V) :
    A (E.toSignedCarrier.act s v) = E.toSignedCarrier.act s (A v) := by
  cases s with
  | plus => rfl
  | minus => exact hA v

theorem spinSwap_of_parity (A : V → V) (s : Sign) (hs : E.SpinParity A s) (w : V) :
    E.spinSwap (A w) = E.toSignedCarrier.act s (A (E.spinSwap w)) :=
  calc E.spinSwap (A w)
      = E.toSignedCarrier.act s (E.toSignedCarrier.act s (E.spinSwap (A w))) :=
          (E.toSignedCarrier.act_self s _).symm
    _ = E.toSignedCarrier.act s (A (E.spinSwap w)) :=
          congrArg (E.toSignedCarrier.act s) (hs w).symm

theorem posSwap_of_parity (A : V → V) (t : Sign) (ht : E.PosParity A t) (w : V) :
    E.posSwap (A w) = E.toSignedCarrier.act t (A (E.posSwap w)) :=
  calc E.posSwap (A w)
      = E.toSignedCarrier.act t (E.toSignedCarrier.act t (E.posSwap (A w))) :=
          (E.toSignedCarrier.act_self t _).symm
    _ = E.toSignedCarrier.act t (A (E.posSwap w)) :=
          congrArg (E.toSignedCarrier.act t) (ht w).symm

/-- A coupling of spin parity s moves spin class ε to spin class s·ε. -/
theorem spinClass_of_parity (A : V → V) (hA : E.RespectsSign A) (s : Sign)
    (hs : E.SpinParity A s) (ε : Sign) (v : V) (hv : E.SpinClass ε v) :
    E.SpinClass (Sign.mul s ε) (A v) := by
  have hv' : E.spinSwap v = E.toSignedCarrier.act ε v := hv
  show E.spinSwap (A v) = E.toSignedCarrier.act (Sign.mul s ε) (A v)
  calc E.spinSwap (A v)
      = E.toSignedCarrier.act s (A (E.spinSwap v)) := E.spinSwap_of_parity A s hs v
    _ = E.toSignedCarrier.act s (A (E.toSignedCarrier.act ε v)) :=
          congrArg (fun w => E.toSignedCarrier.act s (A w)) hv'
    _ = E.toSignedCarrier.act s (E.toSignedCarrier.act ε (A v)) :=
          congrArg (E.toSignedCarrier.act s) (E.act_respect A hA ε v)
    _ = E.toSignedCarrier.act (Sign.mul s ε) (A v) := E.toSignedCarrier.act_act s ε (A v)

/-- A coupling of spin parity s and position parity t moves statistics σ to t·(s·σ). -/
theorem statistics_of_parity (A : V → V) (hA : E.RespectsSign A) (s t : Sign)
    (hs : E.SpinParity A s) (ht : E.PosParity A t) (σ : Sign) (v : V)
    (hv : E.Statistics σ v) : E.Statistics (Sign.mul t (Sign.mul s σ)) (A v) := by
  have hv' : E.spinSwap (E.posSwap v) = E.toSignedCarrier.act σ v := hv
  show E.spinSwap (E.posSwap (A v)) = E.toSignedCarrier.act (Sign.mul t (Sign.mul s σ)) (A v)
  calc E.spinSwap (E.posSwap (A v))
      = E.spinSwap (E.toSignedCarrier.act t (A (E.posSwap v))) :=
          congrArg E.spinSwap (E.posSwap_of_parity A t ht v)
    _ = E.toSignedCarrier.act t (E.spinSwap (A (E.posSwap v))) := E.spinSwap_act t _
    _ = E.toSignedCarrier.act t (E.toSignedCarrier.act s (A (E.spinSwap (E.posSwap v)))) :=
          congrArg (E.toSignedCarrier.act t) (E.spinSwap_of_parity A s hs _)
    _ = E.toSignedCarrier.act t (E.toSignedCarrier.act s (A (E.toSignedCarrier.act σ v))) :=
          congrArg (fun w => E.toSignedCarrier.act t (E.toSignedCarrier.act s (A w))) hv'
    _ = E.toSignedCarrier.act t (E.toSignedCarrier.act s (E.toSignedCarrier.act σ (A v))) :=
          congrArg (fun w => E.toSignedCarrier.act t (E.toSignedCarrier.act s w))
            (E.act_respect A hA σ v)
    _ = E.toSignedCarrier.act t (E.toSignedCarrier.act (Sign.mul s σ) (A v)) :=
          congrArg (E.toSignedCarrier.act t) (E.toSignedCarrier.act_act s σ (A v))
    _ = E.toSignedCarrier.act (Sign.mul t (Sign.mul s σ)) (A v) :=
          E.toSignedCarrier.act_act t _ (A v)

theorem spinClass_disjoint (ε : Sign) (w : V) (h₁ : E.SpinClass ε w)
    (h₂ : E.SpinClass (Sign.flip ε) w) : w = E.zero := by
  have h₁' : E.spinSwap w = E.toSignedCarrier.act ε w := h₁
  have h₂' : E.spinSwap w = E.toSignedCarrier.act (Sign.flip ε) w := h₂
  exact E.toSignedCarrier.sign_actions_agree_only_at_zero ε w (h₁'.symm.trans h₂')

theorem statistics_disjoint (σ : Sign) (w : V) (h₁ : E.Statistics σ w)
    (h₂ : E.Statistics (Sign.flip σ) w) : w = E.zero := by
  have h₁' : E.spinSwap (E.posSwap w) = E.toSignedCarrier.act σ w := h₁
  have h₂' : E.spinSwap (E.posSwap w) = E.toSignedCarrier.act (Sign.flip σ) w := h₂
  exact E.toSignedCarrier.sign_actions_agree_only_at_zero σ w (h₁'.symm.trans h₂')

/-- A coupling that commutes with spin exchange keeps every state in its spin class. -/
theorem even_preserves_spin_class (A : V → V) (hA : E.RespectsSign A)
    (heven : E.SpinParity A Sign.plus) (ε : Sign) (v : V) (hv : E.SpinClass ε v) :
    E.SpinClass ε (A v) :=
  E.spinClass_of_parity A hA Sign.plus heven ε v hv

/-- A coupling that anticommutes with spin exchange moves every state to the other class. -/
theorem odd_flips_spin_class (A : V → V) (hA : E.RespectsSign A)
    (hodd : E.SpinParity A Sign.minus) (ε : Sign) (v : V) (hv : E.SpinClass ε v) :
    E.SpinClass (Sign.flip ε) (A v) := by
  have h := E.spinClass_of_parity A hA Sign.minus hodd ε v hv
  cases ε <;> exact h

/-- The lock is exact: a coupling that commutes with spin exchange converts nothing; whatever it
sends into the other spin class is zero. -/
theorem even_cannot_convert (A : V → V) (hA : E.RespectsSign A)
    (heven : E.SpinParity A Sign.plus) (ε : Sign) (v : V) (hv : E.SpinClass ε v)
    (hconv : E.SpinClass (Sign.flip ε) (A v)) : A v = E.zero :=
  E.spinClass_disjoint ε (A v) (E.even_preserves_spin_class A hA heven ε v hv) hconv

/-- A coupling odd under both exchanges keeps the statistics sign of the pair. -/
theorem doubly_odd_preserves_statistics (A : V → V) (hA : E.RespectsSign A)
    (hP : E.SpinParity A Sign.minus) (hQ : E.PosParity A Sign.minus) (σ : Sign) (v : V)
    (hv : E.Statistics σ v) : E.Statistics σ (A v) := by
  have h := E.statistics_of_parity A hA Sign.minus Sign.minus hP hQ σ v hv
  cases σ <;> exact h

/-- A coupling odd under spin exchange but even under position exchange sends every state of
statistics σ to statistics flip σ: it leaves the sector of the pair. -/
theorem spin_odd_pos_even_leaves_sector (A : V → V) (hA : E.RespectsSign A)
    (hP : E.SpinParity A Sign.minus) (hQ : E.PosParity A Sign.plus) (σ : Sign) (v : V)
    (hv : E.Statistics σ v) : E.Statistics (Sign.flip σ) (A v) := by
  have h := E.statistics_of_parity A hA Sign.minus Sign.plus hP hQ σ v hv
  cases σ <;> exact h

/-- Hence such a coupling produces nothing inside the sector it started from. -/
theorem spin_odd_pos_even_vanishes_in_sector (A : V → V) (hA : E.RespectsSign A)
    (hP : E.SpinParity A Sign.minus) (hQ : E.PosParity A Sign.plus) (σ : Sign) (v : V)
    (hv : E.Statistics σ v) (hsame : E.Statistics σ (A v)) : A v = E.zero :=
  E.statistics_disjoint σ (A v) hsame (E.spin_odd_pos_even_leaves_sector A hA hP hQ σ v hv)

/-- The key: a coupling odd under both exchanges converts the spin class, keeps the statistics
of the pair, and flips the rotation parity. -/
theorem key_converts (A : V → V) (hA : E.RespectsSign A)
    (hP : E.SpinParity A Sign.minus) (hQ : E.PosParity A Sign.minus) (σ ε : Sign) (v : V)
    (hstat : E.Statistics σ v) (hspin : E.SpinClass ε v) :
    E.Statistics σ (A v) ∧ E.SpinClass (Sign.flip ε) (A v) ∧
      E.RotationParity (Sign.mul σ (Sign.flip ε)) (A v) := by
  have h₁ := E.doubly_odd_preserves_statistics A hA hP hQ σ v hstat
  have h₂ := E.odd_flips_spin_class A hA hP ε v hspin
  exact ⟨h₁, h₂, E.isomer_lock σ (Sign.flip ε) (A v) h₁ h₂⟩

/-- Only the key converts. Among couplings with a definite parity under each exchange, any one
that carries a nonzero state into the other spin class while staying in its statistics sector is
odd under spin exchange and odd under position exchange. -/
theorem converting_coupling_is_doubly_odd (A : V → V) (hA : E.RespectsSign A) (s t : Sign)
    (hs : E.SpinParity A s) (ht : E.PosParity A t) (σ ε : Sign) (v : V)
    (hstat : E.Statistics σ v) (hspin : E.SpinClass ε v)
    (hstat' : E.Statistics σ (A v)) (hspin' : E.SpinClass (Sign.flip ε) (A v))
    (hne : A v ≠ E.zero) : s = Sign.minus ∧ t = Sign.minus := by
  have hsc := E.spinClass_of_parity A hA s hs ε v hspin
  have hst := E.statistics_of_parity A hA s t hs ht σ v hstat
  cases s with
  | plus =>
    exact absurd (E.spinClass_disjoint ε (A v) hsc hspin') hne
  | minus =>
    cases t with
    | plus =>
      cases σ
      · exact absurd (E.statistics_disjoint Sign.plus (A v) hstat' hst) hne
      · exact absurd (E.statistics_disjoint Sign.minus (A v) hstat' hst) hne
    | minus => exact ⟨rfl, rfl⟩

end ExchangePair

/-! ## 5. Two-site couplings: the part that differs between the nuclei is the part that converts -/

structure Additive (V : Type u) extends ExchangePair V where
  add : V → V → V
  add_comm : ∀ a b, add a b = add b a
  neg_add : ∀ a b, neg (add a b) = add (neg a) (neg b)
  spinSwap_add : ∀ a b, spinSwap (add a b) = add (spinSwap a) (spinSwap b)

/-- The same coupling applied at nucleus 1 and at nucleus 2: spin exchange carries one into the
other. -/
structure SitePair {V : Type u} (T : Additive V) where
  site₁ : V → V
  site₂ : V → V
  site₁_neg : ∀ v, site₁ (T.neg v) = T.neg (site₁ v)
  site₂_neg : ∀ v, site₂ (T.neg v) = T.neg (site₂ v)
  swap₁ : ∀ v, site₁ (T.spinSwap v) = T.spinSwap (site₂ v)
  swap₂ : ∀ v, site₂ (T.spinSwap v) = T.spinSwap (site₁ v)

namespace SitePair

variable {V : Type u} {T : Additive V} (S : SitePair T)

/-- The part of the coupling that is the same at both nuclei. -/
def sum (v : V) : V := T.add (S.site₁ v) (S.site₂ v)

/-- The part of the coupling that differs between the nuclei. -/
def difference (v : V) : V := T.add (S.site₁ v) (T.neg (S.site₂ v))

theorem sum_respects : T.toExchangePair.RespectsSign S.sum := by
  intro v
  show T.add (S.site₁ (T.neg v)) (S.site₂ (T.neg v)) = T.neg (T.add (S.site₁ v) (S.site₂ v))
  rw [S.site₁_neg, S.site₂_neg, T.neg_add]

theorem difference_respects : T.toExchangePair.RespectsSign S.difference := by
  intro v
  show T.add (S.site₁ (T.neg v)) (T.neg (S.site₂ (T.neg v)))
      = T.neg (T.add (S.site₁ v) (T.neg (S.site₂ v)))
  rw [S.site₁_neg, S.site₂_neg, T.neg_add]

theorem sum_even : T.toExchangePair.SpinParity S.sum Sign.plus := by
  intro v
  show T.add (S.site₁ (T.spinSwap v)) (S.site₂ (T.spinSwap v))
      = T.spinSwap (T.add (S.site₁ v) (S.site₂ v))
  calc T.add (S.site₁ (T.spinSwap v)) (S.site₂ (T.spinSwap v))
      = T.add (T.spinSwap (S.site₂ v)) (T.spinSwap (S.site₁ v)) := by rw [S.swap₁, S.swap₂]
    _ = T.add (T.spinSwap (S.site₁ v)) (T.spinSwap (S.site₂ v)) := T.add_comm _ _
    _ = T.spinSwap (T.add (S.site₁ v) (S.site₂ v)) := (T.spinSwap_add _ _).symm

theorem difference_odd : T.toExchangePair.SpinParity S.difference Sign.minus := by
  intro v
  show T.add (S.site₁ (T.spinSwap v)) (T.neg (S.site₂ (T.spinSwap v)))
      = T.neg (T.spinSwap (T.add (S.site₁ v) (T.neg (S.site₂ v))))
  calc T.add (S.site₁ (T.spinSwap v)) (T.neg (S.site₂ (T.spinSwap v)))
      = T.add (T.spinSwap (S.site₂ v)) (T.neg (T.spinSwap (S.site₁ v))) := by
          rw [S.swap₁, S.swap₂]
    _ = T.add (T.neg (T.spinSwap (S.site₁ v))) (T.spinSwap (S.site₂ v)) := T.add_comm _ _
    _ = T.add (T.neg (T.spinSwap (S.site₁ v))) (T.neg (T.neg (T.spinSwap (S.site₂ v)))) := by
          rw [T.neg_neg]
    _ = T.add (T.neg (T.spinSwap (S.site₁ v))) (T.neg (T.spinSwap (T.neg (S.site₂ v)))) := by
          rw [T.spinSwap_neg]
    _ = T.neg (T.add (T.spinSwap (S.site₁ v)) (T.spinSwap (T.neg (S.site₂ v)))) :=
          (T.neg_add _ _).symm
    _ = T.neg (T.spinSwap (T.add (S.site₁ v) (T.neg (S.site₂ v)))) := by
          rw [T.spinSwap_add]

/-- The part of a coupling that is the same at both nuclei cannot convert the isomer. -/
theorem sum_cannot_convert (ε : Sign) (v : V) (hv : T.toExchangePair.SpinClass ε v)
    (hconv : T.toExchangePair.SpinClass (Sign.flip ε) (S.sum v)) : S.sum v = T.zero :=
  T.toExchangePair.even_cannot_convert S.sum S.sum_respects S.sum_even ε v hv hconv

/-- The part that differs between the nuclei always moves a state to the other spin class. -/
theorem difference_flips (ε : Sign) (v : V) (hv : T.toExchangePair.SpinClass ε v) :
    T.toExchangePair.SpinClass (Sign.flip ε) (S.difference v) :=
  T.toExchangePair.odd_flips_spin_class S.difference S.difference_respects S.difference_odd ε v hv

end SitePair

/-! ## 6. Non-vacuity: two-proton and two-deuteron models with a uniform field and a field
difference -/

namespace Model

instance decForallFin (n : Nat) (p : Fin n → Prop) [DecidablePred p] : Decidable (∀ i, p i) :=
  decidable_of_iff (∀ k (h : k < n), p ⟨k, h⟩)
    ⟨fun h i => h i.1 i.2, fun h k hk => h ⟨k, hk⟩⟩

/-- The spin part of a two-nucleus model: n spin basis states, the exchange of the two spins, and
the z-spin of each nucleus in a fixed unit (twice the z-spin for protons, the z-spin itself for
deuterons). -/
structure Spins (n : Nat) where
  swapS : Fin n → Fin n
  iz₁ : Fin n → Int
  iz₂ : Fin n → Int
  swapS_invol : ∀ s, swapS (swapS s) = s
  iz_swap₁ : ∀ s, iz₁ s = iz₂ (swapS s)
  iz_swap₂ : ∀ s, iz₂ s = iz₁ (swapS s)

/-- A state: spin amplitudes in the even-J manifold and in the odd-J manifold. -/
abbrev State (n : Nat) := (Fin n → Int) × (Fin n → Int)

theorem state_ext {n : Nat} {a b : State n} (h₁ : ∀ s, a.1 s = b.1 s) (h₂ : ∀ s, a.2 s = b.2 s) :
    a = b := by
  obtain ⟨a₁, a₂⟩ := a
  obtain ⟨b₁, b₂⟩ := b
  have e₁ : a₁ = b₁ := funext h₁
  have e₂ : a₂ = b₂ := funext h₂
  rw [e₁, e₂]

def negV {n : Nat} (v : State n) : State n := (fun s => -(v.1 s), fun s => -(v.2 s))
def zeroV {n : Nat} : State n := (fun _ => 0, fun _ => 0)
def addV {n : Nat} (a b : State n) : State n := (fun s => a.1 s + b.1 s, fun s => a.2 s + b.2 s)
/-- The half turn: even-J amplitudes keep their sign, odd-J amplitudes change sign. -/
def posSwapV {n : Nat} (v : State n) : State n := (v.1, fun s => -(v.2 s))

namespace Spins

variable {n : Nat} (M : Spins n)

def spinSwapV (v : State n) : State n := (fun s => v.1 (M.swapS s), fun s => v.2 (M.swapS s))

def carrier : Additive (State n) where
  neg := negV
  zero := zeroV
  neg_neg := by
    intro v
    exact state_ext (fun s => Int.neg_neg (v.1 s)) (fun s => Int.neg_neg (v.2 s))
  fixed_is_zero := by
    intro v h
    apply state_ext
    · intro s
      have h₁ : -(v.1 s) = v.1 s := congrFun (congrArg Prod.fst h) s
      show v.1 s = 0
      omega
    · intro s
      have h₂ : -(v.2 s) = v.2 s := congrFun (congrArg Prod.snd h) s
      show v.2 s = 0
      omega
  spinSwap := M.spinSwapV
  posSwap := posSwapV
  spinSwap_invol := by
    intro v
    exact state_ext (fun s => congrArg v.1 (M.swapS_invol s))
      (fun s => congrArg v.2 (M.swapS_invol s))
  spinSwap_neg := by intro v; rfl
  add := addV
  add_comm := by
    intro a b
    exact state_ext (fun s => Int.add_comm (a.1 s) (b.1 s)) (fun s => Int.add_comm (a.2 s) (b.2 s))
  neg_add := by
    intro a b
    exact state_ext (fun _ => Int.neg_add) (fun _ => Int.neg_add)
  spinSwap_add := by intro a b; rfl

/-- A field that is the same at both nuclear positions (z-component). -/
def uniform : SitePair M.carrier where
  site₁ := fun v => (fun s => M.iz₁ s * v.1 s, fun s => M.iz₁ s * v.2 s)
  site₂ := fun v => (fun s => M.iz₂ s * v.1 s, fun s => M.iz₂ s * v.2 s)
  site₁_neg := by
    intro v
    exact state_ext (fun s => Int.mul_neg (M.iz₁ s) (v.1 s)) (fun s => Int.mul_neg (M.iz₁ s) (v.2 s))
  site₂_neg := by
    intro v
    exact state_ext (fun s => Int.mul_neg (M.iz₂ s) (v.1 s)) (fun s => Int.mul_neg (M.iz₂ s) (v.2 s))
  swap₁ := by
    intro v
    exact state_ext (fun s => congrArg (fun c => c * v.1 (M.swapS s)) (M.iz_swap₁ s))
      (fun s => congrArg (fun c => c * v.2 (M.swapS s)) (M.iz_swap₁ s))
  swap₂ := by
    intro v
    exact state_ext (fun s => congrArg (fun c => c * v.1 (M.swapS s)) (M.iz_swap₂ s))
      (fun s => congrArg (fun c => c * v.2 (M.swapS s)) (M.iz_swap₂ s))

/-- A field that differs across the molecule: the z-coupling at each nucleus carries a rotational
factor that exchanges the even-J and odd-J manifolds (odd under the half turn). -/
def gradient : SitePair M.carrier where
  site₁ := fun v => (fun s => M.iz₁ s * v.2 s, fun s => M.iz₁ s * v.1 s)
  site₂ := fun v => (fun s => M.iz₂ s * v.2 s, fun s => M.iz₂ s * v.1 s)
  site₁_neg := by
    intro v
    exact state_ext (fun s => Int.mul_neg (M.iz₁ s) (v.2 s)) (fun s => Int.mul_neg (M.iz₁ s) (v.1 s))
  site₂_neg := by
    intro v
    exact state_ext (fun s => Int.mul_neg (M.iz₂ s) (v.2 s)) (fun s => Int.mul_neg (M.iz₂ s) (v.1 s))
  swap₁ := by
    intro v
    exact state_ext (fun s => congrArg (fun c => c * v.2 (M.swapS s)) (M.iz_swap₁ s))
      (fun s => congrArg (fun c => c * v.1 (M.swapS s)) (M.iz_swap₁ s))
  swap₂ := by
    intro v
    exact state_ext (fun s => congrArg (fun c => c * v.2 (M.swapS s)) (M.iz_swap₂ s))
      (fun s => congrArg (fun c => c * v.1 (M.swapS s)) (M.iz_swap₂ s))

/-- The uniform field is even under the half turn, in both its parts. -/
theorem uniform_sum_pos_even : M.carrier.toExchangePair.PosParity M.uniform.sum Sign.plus := by
  intro v
  apply state_ext
  · intro s; rfl
  · intro s
    show M.iz₁ s * -(v.2 s) + M.iz₂ s * -(v.2 s) = -(M.iz₁ s * v.2 s + M.iz₂ s * v.2 s)
    rw [Int.mul_neg, Int.mul_neg]
    omega

theorem uniform_difference_pos_even :
    M.carrier.toExchangePair.PosParity M.uniform.difference Sign.plus := by
  intro v
  apply state_ext
  · intro s; rfl
  · intro s
    show M.iz₁ s * -(v.2 s) + -(M.iz₂ s * -(v.2 s)) = -(M.iz₁ s * v.2 s + -(M.iz₂ s * v.2 s))
    rw [Int.mul_neg, Int.mul_neg]
    omega

/-- The field difference is odd under the half turn. -/
theorem gradient_difference_pos_odd :
    M.carrier.toExchangePair.PosParity M.gradient.difference Sign.minus := by
  intro v
  apply state_ext
  · intro s
    show M.iz₁ s * -(v.2 s) + -(M.iz₂ s * -(v.2 s)) = -(M.iz₁ s * v.2 s + -(M.iz₂ s * v.2 s))
    rw [Int.mul_neg, Int.mul_neg]
    omega
  · intro s
    show M.iz₁ s * v.1 s + -(M.iz₂ s * v.1 s) = -(-(M.iz₁ s * v.1 s + -(M.iz₂ s * v.1 s)))
    omega

end Spins

/-- Two spin-1/2 nuclei (protons). Basis 0 = up-up, 1 = up-down, 2 = down-up, 3 = down-down. -/
def protons : Spins 4 where
  swapS := fun s => if s.val = 1 then 2 else if s.val = 2 then 1 else s
  iz₁ := fun s => if s.val < 2 then 1 else -1
  iz₂ := fun s => if s.val % 2 = 0 then 1 else -1
  swapS_invol := by decide
  iz_swap₁ := by decide
  iz_swap₂ := by decide

/-- Two spin-1 nuclei (deuterons). Basis s = 3a + b, where a and b = 0, 1, 2 stand for the
z-spin +1, 0, -1 of nucleus 1 and nucleus 2. -/
def deuterons : Spins 9 where
  swapS := fun s => ⟨3 * (s.val % 3) + s.val / 3, by have := s.isLt; omega⟩
  iz₁ := fun s => 1 - ((s.val / 3 : Nat) : Int)
  iz₂ := fun s => 1 - ((s.val % 3 : Nat) : Int)
  swapS_invol := by decide
  iz_swap₁ := by decide
  iz_swap₂ := by decide

namespace Hydrogen

/-- Para hydrogen: the antisymmetric spin state with even rotation. -/
def para : State 4 := (fun s => if s.val = 1 then 1 else if s.val = 2 then -1 else 0, fun _ => 0)

/-- What the field difference makes from para: the middle symmetric state with odd rotation. -/
def orthoOdd : State 4 :=
  (fun _ => 0, fun s => if s.val = 1 then 2 else if s.val = 2 then 2 else 0)

/-- What a spin difference without a position difference makes from para: symmetric spin with
even rotation, a state of the wrong statistics for two protons. -/
def symmetricEven : State 4 :=
  (fun s => if s.val = 1 then 2 else if s.val = 2 then 2 else 0, fun _ => 0)

def para4 : State 4 := (fun s => if s.val = 1 then 4 else if s.val = 2 then -4 else 0, fun _ => 0)

theorem para_is_fermion_pair : protons.carrier.toExchangePair.Statistics Sign.minus para :=
  state_ext (by decide) (by decide)

theorem para_is_antisymmetric : protons.carrier.toExchangePair.SpinClass Sign.minus para :=
  state_ext (by decide) (by decide)

theorem para_rotates_evenly : protons.carrier.toExchangePair.RotationParity Sign.plus para :=
  state_ext (by decide) (by decide)

theorem uniform_annihilates_para : protons.uniform.sum para = protons.carrier.zero :=
  state_ext (by decide) (by decide)

theorem spin_difference_without_gradient : protons.uniform.difference para = symmetricEven :=
  state_ext (by decide) (by decide)

theorem symmetricEven_wrong_statistics :
    protons.carrier.toExchangePair.Statistics Sign.plus symmetricEven :=
  state_ext (by decide) (by decide)

theorem gradient_converts_para : protons.gradient.difference para = orthoOdd :=
  state_ext (by decide) (by decide)

theorem orthoOdd_is_fermion_pair : protons.carrier.toExchangePair.Statistics Sign.minus orthoOdd :=
  state_ext (by decide) (by decide)

theorem orthoOdd_is_symmetric : protons.carrier.toExchangePair.SpinClass Sign.plus orthoOdd :=
  state_ext (by decide) (by decide)

theorem orthoOdd_rotates_oddly :
    protons.carrier.toExchangePair.RotationParity Sign.minus orthoOdd :=
  state_ext (by decide) (by decide)

/-- The same coupling leads back: the key does not choose a direction. -/
theorem gradient_returns_to_para : protons.gradient.difference orthoOdd = para4 :=
  state_ext (by decide) (by decide)

theorem orthoOdd_nonzero : orthoOdd ≠ protons.carrier.zero := by
  intro h
  have h₁ : orthoOdd.2 1 = protons.carrier.zero.2 1 := congrFun (congrArg Prod.snd h) 1
  exact absurd h₁ (by decide)

theorem symmetricEven_nonzero : symmetricEven ≠ protons.carrier.zero := by
  intro h
  have h₁ : symmetricEven.1 1 = protons.carrier.zero.1 1 := congrFun (congrArg Prod.fst h) 1
  exact absurd h₁ (by decide)

end Hydrogen

namespace Deuterium

/-- Ortho deuterium: the total-spin-zero state of two spin-1 nuclei (symmetric), even rotation. -/
def ortho : State 9 :=
  (fun s => if s.val = 2 then 1 else if s.val = 4 then -1 else if s.val = 6 then 1 else 0,
   fun _ => 0)

/-- What the field difference makes from it: an antisymmetric spin state with odd rotation. -/
def paraOdd : State 9 := (fun _ => 0, fun s => if s.val = 2 then 2 else if s.val = 6 then -2 else 0)

/-- A spin difference without a position difference: antisymmetric spin with even rotation, a
state of the wrong statistics for two deuterons. -/
def antisymmetricEven : State 9 :=
  (fun s => if s.val = 2 then 2 else if s.val = 6 then -2 else 0, fun _ => 0)

def orthoBack : State 9 := (fun s => if s.val = 2 then 4 else if s.val = 6 then 4 else 0, fun _ => 0)

theorem ortho_is_boson_pair : deuterons.carrier.toExchangePair.Statistics Sign.plus ortho :=
  state_ext (by decide) (by decide)

theorem ortho_is_symmetric : deuterons.carrier.toExchangePair.SpinClass Sign.plus ortho :=
  state_ext (by decide) (by decide)

theorem ortho_rotates_evenly : deuterons.carrier.toExchangePair.RotationParity Sign.plus ortho :=
  state_ext (by decide) (by decide)

theorem uniform_annihilates_ortho : deuterons.uniform.sum ortho = deuterons.carrier.zero :=
  state_ext (by decide) (by decide)

theorem spin_difference_without_gradient : deuterons.uniform.difference ortho = antisymmetricEven :=
  state_ext (by decide) (by decide)

theorem antisymmetricEven_wrong_statistics :
    deuterons.carrier.toExchangePair.Statistics Sign.minus antisymmetricEven :=
  state_ext (by decide) (by decide)

theorem gradient_converts_ortho : deuterons.gradient.difference ortho = paraOdd :=
  state_ext (by decide) (by decide)

theorem paraOdd_is_boson_pair : deuterons.carrier.toExchangePair.Statistics Sign.plus paraOdd :=
  state_ext (by decide) (by decide)

theorem paraOdd_is_antisymmetric :
    deuterons.carrier.toExchangePair.SpinClass Sign.minus paraOdd :=
  state_ext (by decide) (by decide)

theorem paraOdd_rotates_oddly :
    deuterons.carrier.toExchangePair.RotationParity Sign.minus paraOdd :=
  state_ext (by decide) (by decide)

theorem gradient_returns_to_ortho : deuterons.gradient.difference paraOdd = orthoBack :=
  state_ext (by decide) (by decide)

theorem paraOdd_nonzero : paraOdd ≠ deuterons.carrier.zero := by
  intro h
  have h₁ : paraOdd.2 2 = deuterons.carrier.zero.2 2 := congrFun (congrArg Prod.snd h) 2
  exact absurd h₁ (by decide)

end Deuterium

end Model

/-! ## 7. Recognition is a different question from conversion -/

namespace Recognition

/-- The four states of two spin-1/2 nuclei in the total-spin basis. -/
inductive PairState where
  | tPlus
  | tZero
  | tMinus
  | singlet
  deriving DecidableEq, Repr

/-- Reading of a field that is the same at both nuclei: twice the total spin projection. -/
def uniformReading : PairState → Int
  | .tPlus => 2
  | .tZero => 0
  | .tMinus => -2
  | .singlet => 0

/-- The isomer: minus for the antisymmetric singlet (para), plus for the triplet (ortho). -/
def isomer : PairState → Sign
  | .singlet => Sign.minus
  | _ => Sign.plus

/-- Twice the total spin: zero for the singlet, two for the triplet. -/
def totalSpinReading : PairState → Nat
  | .singlet => 0
  | _ => 2

/-- A uniform-field reading cannot tell para from the middle ortho state. -/
theorem uniform_reading_cannot_recognize :
    ¬ ClosureConsequences.Recovers uniformReading isomer :=
  ClosureConsequences.universal_class_is_closed uniformReading isomer
    PairState.tZero PairState.singlet rfl (by decide)

/-- Any added coordinate that, together with the uniform reading, recovers the isomer must separate
the middle ortho state from para. -/
theorem adequate_coordinate_separates {C : Type} (coordinate : PairState → C)
    (h : ClosureConsequences.Recovers (fun x => (uniformReading x, coordinate x)) isomer) :
    coordinate PairState.tZero ≠ coordinate PairState.singlet :=
  ClosureConsequences.adequate_coordinate_must_distinguish uniformReading isomer
    PairState.tZero PairState.singlet rfl (by decide) coordinate h

/-- A total-spin reading (an exchange-even quantity) recognizes the isomer. -/
theorem total_spin_recognizes : ClosureConsequences.Recovers totalSpinReading isomer :=
  ⟨fun n => if n = 0 then Sign.minus else Sign.plus, by intro x; cases x <;> rfl⟩

/-- Conversion changes the total spin, so the angular momentum has to go somewhere. -/
theorem conversion_changes_total_spin :
    totalSpinReading PairState.singlet ≠ totalSpinReading PairState.tZero := by decide

end Recognition

/-! ## 8. The sink: changing rotation parity costs at least the lowest rotational gap -/

namespace Sink

/-- Rotational energy in units of the rotational constant B: E_J = B·J(J+1). -/
def rotLevel (J : Nat) : Nat := J * (J + 1)

theorem lowest_gap : rotLevel 0 = 0 ∧ rotLevel 1 = 2 := ⟨rfl, rfl⟩

theorem rotLevel_gap {J K : Nat} (h : J < K) : rotLevel J + 2 * (J + 1) ≤ rotLevel K := by
  unfold rotLevel
  have h₁ : J + 1 ≤ K := by omega
  have h₂ : J + 2 ≤ K + 1 := by omega
  have hm : (J + 1) * (J + 2) ≤ K * (K + 1) := Nat.mul_le_mul h₁ h₂
  have he : (J + 1) * (J + 2) = J * (J + 1) + 2 * (J + 1) := by
    rw [Nat.mul_add, Nat.mul_comm (J + 1) J, Nat.mul_comm (J + 1) 2]
  omega

/-- Any change of rotation parity moves the rotational energy by at least 2B. -/
theorem parity_change_needs_energy (J K : Nat) (h : J % 2 ≠ K % 2) :
    rotLevel J + 2 ≤ rotLevel K ∨ rotLevel K + 2 ≤ rotLevel J := by
  by_cases hlt : J < K
  · left
    have := rotLevel_gap hlt
    omega
  · right
    have hne : J ≠ K := fun e => h (congrArg (· % 2) e)
    have hgt : K < J := by omega
    have := rotLevel_gap hgt
    omega

end Sink

/-! ## 9. Counting the spin families -/

namespace Counting

/-- Symmetric two-nucleus spin states for d levels per nucleus. -/
def sym : Nat → Nat
  | 0 => 0
  | d + 1 => sym d + (d + 1)

/-- Antisymmetric two-nucleus spin states for d levels per nucleus. -/
def anti : Nat → Nat
  | 0 => 0
  | d + 1 => anti d + d

theorem sym_add_anti (d : Nat) : sym d + anti d = d * d := by
  induction d with
  | zero => rfl
  | succ n ih =>
    simp only [sym, anti, Nat.add_mul, Nat.mul_add, Nat.one_mul, Nat.mul_one]
    omega

theorem sym_eq_anti_add (d : Nat) : sym d = anti d + d := by
  induction d with
  | zero => rfl
  | succ n ih =>
    simp only [sym, anti]
    omega

/-- Hydrogen nuclei (d = 2): three symmetric states, one antisymmetric (weights 3 : 1). -/
theorem hydrogen_families : sym 2 = 3 ∧ anti 2 = 1 := ⟨rfl, rfl⟩

/-- Deuterium nuclei (d = 3): six symmetric states, three antisymmetric (weights 2 : 1). -/
theorem deuterium_families : sym 3 = 6 ∧ anti 3 = 3 := ⟨rfl, rfl⟩

/-- The family that pairs with even rotation (the cold family) for statistics sign σ. -/
def coldFamily : Sign → Nat → Nat
  | Sign.minus, d => anti d
  | Sign.plus, d => sym d

theorem anti_ge_three (d : Nat) (h : 3 ≤ d) : 3 ≤ anti d := by
  induction d with
  | zero => omega
  | succ n ih =>
    simp only [anti]
    by_cases hn : 3 ≤ n
    · have := ih hn
      omega
    · have hn3 : n = 2 := by omega
      subst hn3
      decide

theorem sym_ge_three (d : Nat) (h : 2 ≤ d) : 3 ≤ sym d := by
  induction d with
  | zero => omega
  | succ n ih =>
    simp only [sym]
    by_cases hn : 2 ≤ n
    · have := ih hn
      omega
    · have hn2 : n = 1 := by omega
      subst hn2
      decide

/-- For nuclei that carry spin (d ≥ 2), the cold family is a single state exactly for a pair of
spin-1/2 fermions; for a boson pair it always holds three states or more. -/
theorem cold_family_single_iff (d : Nat) (hd : 2 ≤ d) :
    (coldFamily Sign.minus d = 1 ↔ d = 2) ∧ 3 ≤ coldFamily Sign.plus d := by
  refine ⟨⟨fun h => ?_, fun h => by subst h; rfl⟩, sym_ge_three d hd⟩
  have h' : anti d = 1 := h
  by_cases h3 : 3 ≤ d
  · have := anti_ge_three d h3
    omega
  · omega

end Counting

/-! ## 10. The witness: singlet weight above one half excludes every mixture of product states -/

namespace Witness

/-- Real and imaginary parts of the two amplitudes of one nucleus, scaled to integers. -/
structure Amp2 where
  re₁ : Int
  im₁ : Int
  re₂ : Int
  im₂ : Int

def norm2 (a : Amp2) : Int := a.re₁ * a.re₁ + a.im₁ * a.im₁ + a.re₂ * a.re₂ + a.im₂ * a.im₂

/-- Real and imaginary parts of a₁b₂ − a₂b₁: √2 times the singlet amplitude of a ⊗ b. -/
def detRe (a b : Amp2) : Int :=
  (a.re₁ * b.re₂ - a.im₁ * b.im₂) - (a.re₂ * b.re₁ - a.im₂ * b.im₁)
def detIm (a b : Amp2) : Int :=
  (a.re₁ * b.im₂ + a.im₁ * b.re₂) - (a.re₂ * b.im₁ + a.im₂ * b.re₁)

/-- Real and imaginary parts of a₁·conj b₁ + a₂·conj b₂. -/
def ipRe (a b : Amp2) : Int := a.re₁ * b.re₁ + a.im₁ * b.im₁ + a.re₂ * b.re₂ + a.im₂ * b.im₂
def ipIm (a b : Amp2) : Int := a.im₁ * b.re₁ - a.re₁ * b.im₁ + a.im₂ * b.re₂ - a.re₂ * b.im₂

/-- Lagrange's identity for two complex 2-vectors. -/
theorem lagrange (a b : Amp2) :
    norm2 a * norm2 b =
      (detRe a b * detRe a b + detIm a b * detIm a b) +
        (ipRe a b * ipRe a b + ipIm a b * ipIm a b) := by
  obtain ⟨p₁, q₁, p₂, q₂⟩ := a
  obtain ⟨r₁, t₁, r₂, t₂⟩ := b
  simp only [norm2, detRe, detIm, ipRe, ipIm, Int.mul_add, Int.mul_sub, Int.mul_comm,
    Int.mul_left_comm]
  omega

theorem square_nonneg (x : Int) : 0 ≤ x * x := by
  rcases Int.le_total 0 x with h | h
  · exact Int.mul_nonneg h h
  · have h' : 0 ≤ -x := by omega
    have hm := Int.mul_nonneg h' h'
    rw [Int.neg_mul_neg] at hm
    exact hm

/-- A product state has singlet weight at most one half. -/
theorem product_singlet_bound (a b : Amp2) :
    detRe a b * detRe a b + detIm a b * detIm a b ≤ norm2 a * norm2 b := by
  have h := lagrange a b
  have h₁ := square_nonneg (ipRe a b)
  have h₂ := square_nonneg (ipIm a b)
  omega

/-- Twice the singlet weight of a finite mixture of product states, unnormalized. -/
def mixtureSinglet : List (Nat × Amp2 × Amp2) → Int
  | [] => 0
  | (w, a, b) :: rest =>
      (w : Int) * (detRe a b * detRe a b + detIm a b * detIm a b) + mixtureSinglet rest

/-- The matching normalization of the mixture. -/
def mixtureNorm : List (Nat × Amp2 × Amp2) → Int
  | [] => 0
  | (w, a, b) :: rest => (w : Int) * (norm2 a * norm2 b) + mixtureNorm rest

theorem separable_singlet_bound (L : List (Nat × Amp2 × Amp2)) :
    mixtureSinglet L ≤ mixtureNorm L := by
  induction L with
  | nil => exact Int.le_refl 0
  | cons x rest ih =>
    obtain ⟨w, a, b⟩ := x
    have h := product_singlet_bound a b
    have hw : (0 : Int) ≤ (w : Int) := by omega
    have hm := Int.mul_le_mul_of_nonneg_left h hw
    show (w : Int) * (detRe a b * detRe a b + detIm a b * detIm a b) + mixtureSinglet rest
        ≤ (w : Int) * (norm2 a * norm2 b) + mixtureNorm rest
    omega

/-- Singlet weight above one half is impossible for any mixture of product states. -/
theorem above_half_is_entangled (L : List (Nat × Amp2 × Amp2))
    (h : mixtureNorm L < mixtureSinglet L) : False := by
  have := separable_singlet_bound L
  omega

end Witness

/-! ## 11. The two-turn return and the statistics sign -/

namespace TwoTurn

/-- Sign carried by a spin-1/2 state after n full turns. -/
def spinorSign (n : Nat) : Sign := if n % 2 = 0 then Sign.plus else Sign.minus

/-- What a single-system direction reading shows after n full turns: the same direction. -/
def directionReading (_ : Nat) : Unit := ()

theorem one_turn_flips : spinorSign 1 = Sign.minus := rfl

theorem returns_after_two_turns (n : Nat) : spinorSign (n + 2) = spinorSign n := by
  unfold spinorSign
  have h : (n + 2) % 2 = n % 2 := by omega
  rw [h]

/-- The direction reading cannot recover the turn parity. -/
theorem direction_cannot_recover_sign :
    ¬ ClosureConsequences.Recovers directionReading spinorSign :=
  ClosureConsequences.universal_class_is_closed directionReading spinorSign 0 1 rfl (by decide)

/-- Any adequate added coordinate (for example interference against a reference that did not
turn) must separate zero turns from one turn. -/
theorem reference_must_separate {C : Type} (coordinate : Nat → C)
    (h : ClosureConsequences.Recovers (fun n => (directionReading n, coordinate n)) spinorSign) :
    coordinate 0 ≠ coordinate 1 :=
  ClosureConsequences.adequate_coordinate_must_distinguish directionReading spinorSign 0 1 rfl
    (by decide) coordinate h

/-- Spin–statistics, held as a premise (a bridge, not a theorem of this file): the exchange sign of
two identical particles equals the sign one of them carries after one full turn, indexed by twice
the spin. -/
structure SpinStatisticsBridge where
  exchangeSign : Nat → Sign
  agrees : ∀ twiceSpin, exchangeSign twiceSpin = spinorSign twiceSpin

theorem proton_pair_is_fermion (B : SpinStatisticsBridge) : B.exchangeSign 1 = Sign.minus := by
  rw [B.agrees]
  rfl

theorem deuteron_pair_is_boson (B : SpinStatisticsBridge) : B.exchangeSign 2 = Sign.plus := by
  rw [B.agrees]
  rfl

end TwoTurn

/-! ## 12. The edge-on reading: a rotation seen in its own plane is a swing -/

namespace EdgeOn

/-- Position of the swing for the k-th of n evenly spaced phases of a rotation. -/
def fold (n k : Nat) : Nat := min (k % n) (n - k % n)

theorem fold_symm (n k : Nat) (hk : 0 < k) (hkn : k < n) : fold n k = fold n (n - k) := by
  unfold fold
  rw [Nat.mod_eq_of_lt hkn, Nat.mod_eq_of_lt (Nat.sub_lt (by omega) hk)]
  rw [show n - (n - k) = k by omega]
  exact Nat.min_comm k (n - k)

/-- Seen edge-on, the two senses of rotation give the same swing: the phase is not recovered. -/
theorem edge_on_cannot_recover_phase (n k : Nat) (hk : 0 < k) (hkn : k < n) (hne : k ≠ n - k) :
    ¬ ClosureConsequences.Recovers (fold n) (fun j : Nat => j % n) := by
  apply ClosureConsequences.universal_class_is_closed (fold n) (fun j : Nat => j % n) k (n - k)
    (fold_symm n k hk hkn)
  show k % n ≠ (n - k) % n
  rw [Nat.mod_eq_of_lt hkn, Nat.mod_eq_of_lt (Nat.sub_lt (by omega) hk)]
  exact hne

theorem quarter_turns_collide : fold 4 1 = fold 4 3 := by decide

theorem swing_positions_12 :
    (List.range 12).map (fold 12) = [0, 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1] := by
  decide

end EdgeOn

/-! ## 13. Closure in whole-number ratios: calendars, gates and the comma -/

namespace Closure

theorem tzolkin_round : Nat.lcm 13 20 = 260 := by decide
theorem calendar_round : Nat.lcm 260 365 = 18980 := by decide
theorem calendar_round_gcd : Nat.gcd 260 365 = 5 := by decide
theorem calendar_round_counts : 18980 / 365 = 52 ∧ 18980 / 260 = 73 := by decide

/-- Selective gate by closure: with off-resonance offset A² = 3Ω², the off-resonant rate is twice
the drive, so a half turn on resonance is a whole turn off resonance (squares as products). -/
theorem selective_closure (w : Nat) : w * w + 3 * (w * w) = (2 * w) * (2 * w) := by
  rw [Nat.mul_mul_mul_comm]
  omega

theorem three_pow_odd (m : Nat) : 3 ^ m % 2 = 1 := by
  induction m with
  | zero => rfl
  | succ k ih =>
    rw [Nat.pow_succ]
    generalize 3 ^ k = x at ih ⊢
    omega

theorem two_pow_even (k : Nat) : 2 ^ (k + 1) % 2 = 0 := by
  rw [Nat.pow_succ]
  generalize 2 ^ k = x
  omega

/-- No positive number of exact fifths (3 : 2) closes on a whole number of octaves (2 : 1). -/
theorem pythagorean_nonclosure (m n : Nat) (hm : 0 < m) : 3 ^ m ≠ 2 ^ (m + n) := by
  intro h
  have hodd := three_pow_odd m
  obtain ⟨k, hk⟩ : ∃ k, m + n = k + 1 := ⟨m + n - 1, by omega⟩
  have heven := two_pow_even k
  rw [h, hk] at hodd
  omega

/-- Twelve fifths against seven octaves leave the comma 531441 : 524288. -/
theorem pythagorean_comma : 3 ^ 12 = 531441 ∧ 2 ^ 19 = 524288 := by decide

end Closure

/-! ## 14. The threshold: a fire that goes out and a fire that spreads -/

namespace Threshold

/-- One round of layered correction on a scaled error count x out of N: x ↦ c·x·x / N. -/
def step (c N x : Nat) : Nat := c * x * x / N

def iter (c N : Nat) : Nat → Nat → Nat
  | 0, x => x
  | k + 1, x => iter c N k (step c N x)

theorem step_zero (c N : Nat) : step c N 0 = 0 := by
  unfold step
  rw [Nat.mul_zero, Nat.zero_div]

/-- Below threshold (c·x < N) each round leaves strictly fewer errors. -/
theorem step_lt (c N x : Nat) (hN : 0 < N) (hx : 0 < x) (hbelow : c * x < N) :
    step c N x < x := by
  unfold step
  have h : c * x * x < x * N := by
    have := Nat.mul_lt_mul_of_pos_right hbelow hx
    rw [Nat.mul_comm N x] at this
    exact this
  exact (Nat.div_lt_iff_lt_mul hN).mpr h

/-- Below threshold the count falls by at least one per round until it reaches zero. -/
theorem iter_bound (c N : Nat) (hN : 0 < N) :
    ∀ k x, c * x < N → iter c N k x ≤ x - k := by
  intro k
  induction k with
  | zero => intro x _; exact Nat.le_refl x
  | succ k ih =>
    intro x hbelow
    show iter c N k (step c N x) ≤ x - (k + 1)
    cases x with
    | zero =>
      rw [step_zero]
      have := ih 0 (by omega)
      omega
    | succ y =>
      have hlt := step_lt c N (y + 1) hN (Nat.succ_pos y) hbelow
      have hle : step c N (y + 1) ≤ y + 1 := Nat.le_of_lt hlt
      have hb : c * step c N (y + 1) < N :=
        Nat.lt_of_le_of_lt (Nat.mul_le_mul_left c hle) hbelow
      have := ih (step c N (y + 1)) hb
      omega

/-- Below threshold the cascade dies out within x rounds. -/
theorem below_threshold_dies_out (c N x : Nat) (hN : 0 < N) (hbelow : c * x < N) :
    iter c N x x = 0 := by
  have := iter_bound c N hN x x hbelow
  omega

/-- At or above threshold (N ≤ c·x) a round never lowers the count. -/
theorem above_threshold_no_decrease (c N x : Nat) (hN : 0 < N) (habove : N ≤ c * x) :
    x ≤ step c N x := by
  unfold step
  apply (Nat.le_div_iff_mul_le hN).mpr
  have := Nat.mul_le_mul_right x habove
  rw [Nat.mul_comm N x] at this
  exact this

end Threshold

end DIYQC

end

-- ===== audit =====
#print axioms DIYQC.FirstCut.factorsThrough_iff_recovers
#print axioms DIYQC.FirstCut.swap
#print axioms DIYQC.FirstCut.swap_swap
#print axioms DIYQC.FirstCut.RoleBlind
#print axioms DIYQC.FirstCut.role_blind_reading_cannot_order
#print axioms DIYQC.FirstCut.cut_is_held_not_read
#print axioms DIYQC.FirstCut.labelled_reading_recovers_order
#print axioms DIYQC.Sign
#print axioms DIYQC.Sign.mul
#print axioms DIYQC.Sign.flip
#print axioms DIYQC.Sign.mul_self
#print axioms DIYQC.Sign.mul_comm
#print axioms DIYQC.Sign.flip_flip
#print axioms DIYQC.Sign.flip_ne
#print axioms DIYQC.Sign.mul_minus
#print axioms DIYQC.Sign.mul_eq_plus_iff
#print axioms DIYQC.SignedCarrier
#print axioms DIYQC.SignedCarrier.act
#print axioms DIYQC.SignedCarrier.act_self
#print axioms DIYQC.SignedCarrier.act_act
#print axioms DIYQC.SignedCarrier.neg_act
#print axioms DIYQC.SignedCarrier.sign_actions_agree_only_at_zero
#print axioms DIYQC.ExchangePair
#print axioms DIYQC.ExchangePair.Statistics
#print axioms DIYQC.ExchangePair.SpinClass
#print axioms DIYQC.ExchangePair.RotationParity
#print axioms DIYQC.ExchangePair.spinSwap_act
#print axioms DIYQC.ExchangePair.isomer_lock
#print axioms DIYQC.ExchangePair.fermion_antisymmetric_even
#print axioms DIYQC.ExchangePair.fermion_symmetric_odd
#print axioms DIYQC.ExchangePair.boson_symmetric_even
#print axioms DIYQC.ExchangePair.boson_antisymmetric_odd
#print axioms DIYQC.ExchangePair.RespectsSign
#print axioms DIYQC.ExchangePair.SpinParity
#print axioms DIYQC.ExchangePair.PosParity
#print axioms DIYQC.ExchangePair.act_respect
#print axioms DIYQC.ExchangePair.spinSwap_of_parity
#print axioms DIYQC.ExchangePair.posSwap_of_parity
#print axioms DIYQC.ExchangePair.spinClass_of_parity
#print axioms DIYQC.ExchangePair.statistics_of_parity
#print axioms DIYQC.ExchangePair.spinClass_disjoint
#print axioms DIYQC.ExchangePair.statistics_disjoint
#print axioms DIYQC.ExchangePair.even_preserves_spin_class
#print axioms DIYQC.ExchangePair.odd_flips_spin_class
#print axioms DIYQC.ExchangePair.even_cannot_convert
#print axioms DIYQC.ExchangePair.doubly_odd_preserves_statistics
#print axioms DIYQC.ExchangePair.spin_odd_pos_even_leaves_sector
#print axioms DIYQC.ExchangePair.spin_odd_pos_even_vanishes_in_sector
#print axioms DIYQC.ExchangePair.key_converts
#print axioms DIYQC.ExchangePair.converting_coupling_is_doubly_odd
#print axioms DIYQC.Additive
#print axioms DIYQC.SitePair
#print axioms DIYQC.SitePair.sum
#print axioms DIYQC.SitePair.difference
#print axioms DIYQC.SitePair.sum_respects
#print axioms DIYQC.SitePair.difference_respects
#print axioms DIYQC.SitePair.sum_even
#print axioms DIYQC.SitePair.difference_odd
#print axioms DIYQC.SitePair.sum_cannot_convert
#print axioms DIYQC.SitePair.difference_flips
#print axioms DIYQC.Model.decForallFin
#print axioms DIYQC.Model.Spins
#print axioms DIYQC.Model.State
#print axioms DIYQC.Model.state_ext
#print axioms DIYQC.Model.negV
#print axioms DIYQC.Model.zeroV
#print axioms DIYQC.Model.addV
#print axioms DIYQC.Model.posSwapV
#print axioms DIYQC.Model.Spins.spinSwapV
#print axioms DIYQC.Model.Spins.carrier
#print axioms DIYQC.Model.Spins.uniform
#print axioms DIYQC.Model.Spins.gradient
#print axioms DIYQC.Model.Spins.uniform_sum_pos_even
#print axioms DIYQC.Model.Spins.uniform_difference_pos_even
#print axioms DIYQC.Model.Spins.gradient_difference_pos_odd
#print axioms DIYQC.Model.protons
#print axioms DIYQC.Model.deuterons
#print axioms DIYQC.Model.Hydrogen.para
#print axioms DIYQC.Model.Hydrogen.orthoOdd
#print axioms DIYQC.Model.Hydrogen.symmetricEven
#print axioms DIYQC.Model.Hydrogen.para4
#print axioms DIYQC.Model.Hydrogen.para_is_fermion_pair
#print axioms DIYQC.Model.Hydrogen.para_is_antisymmetric
#print axioms DIYQC.Model.Hydrogen.para_rotates_evenly
#print axioms DIYQC.Model.Hydrogen.uniform_annihilates_para
#print axioms DIYQC.Model.Hydrogen.spin_difference_without_gradient
#print axioms DIYQC.Model.Hydrogen.symmetricEven_wrong_statistics
#print axioms DIYQC.Model.Hydrogen.gradient_converts_para
#print axioms DIYQC.Model.Hydrogen.orthoOdd_is_fermion_pair
#print axioms DIYQC.Model.Hydrogen.orthoOdd_is_symmetric
#print axioms DIYQC.Model.Hydrogen.orthoOdd_rotates_oddly
#print axioms DIYQC.Model.Hydrogen.gradient_returns_to_para
#print axioms DIYQC.Model.Hydrogen.orthoOdd_nonzero
#print axioms DIYQC.Model.Hydrogen.symmetricEven_nonzero
#print axioms DIYQC.Model.Deuterium.ortho
#print axioms DIYQC.Model.Deuterium.paraOdd
#print axioms DIYQC.Model.Deuterium.antisymmetricEven
#print axioms DIYQC.Model.Deuterium.orthoBack
#print axioms DIYQC.Model.Deuterium.ortho_is_boson_pair
#print axioms DIYQC.Model.Deuterium.ortho_is_symmetric
#print axioms DIYQC.Model.Deuterium.ortho_rotates_evenly
#print axioms DIYQC.Model.Deuterium.uniform_annihilates_ortho
#print axioms DIYQC.Model.Deuterium.spin_difference_without_gradient
#print axioms DIYQC.Model.Deuterium.antisymmetricEven_wrong_statistics
#print axioms DIYQC.Model.Deuterium.gradient_converts_ortho
#print axioms DIYQC.Model.Deuterium.paraOdd_is_boson_pair
#print axioms DIYQC.Model.Deuterium.paraOdd_is_antisymmetric
#print axioms DIYQC.Model.Deuterium.paraOdd_rotates_oddly
#print axioms DIYQC.Model.Deuterium.gradient_returns_to_ortho
#print axioms DIYQC.Model.Deuterium.paraOdd_nonzero
#print axioms DIYQC.Recognition.PairState
#print axioms DIYQC.Recognition.uniformReading
#print axioms DIYQC.Recognition.isomer
#print axioms DIYQC.Recognition.totalSpinReading
#print axioms DIYQC.Recognition.uniform_reading_cannot_recognize
#print axioms DIYQC.Recognition.adequate_coordinate_separates
#print axioms DIYQC.Recognition.total_spin_recognizes
#print axioms DIYQC.Recognition.conversion_changes_total_spin
#print axioms DIYQC.Sink.rotLevel
#print axioms DIYQC.Sink.lowest_gap
#print axioms DIYQC.Sink.rotLevel_gap
#print axioms DIYQC.Sink.parity_change_needs_energy
#print axioms DIYQC.Counting.sym
#print axioms DIYQC.Counting.anti
#print axioms DIYQC.Counting.sym_add_anti
#print axioms DIYQC.Counting.sym_eq_anti_add
#print axioms DIYQC.Counting.hydrogen_families
#print axioms DIYQC.Counting.deuterium_families
#print axioms DIYQC.Counting.coldFamily
#print axioms DIYQC.Counting.anti_ge_three
#print axioms DIYQC.Counting.sym_ge_three
#print axioms DIYQC.Counting.cold_family_single_iff
#print axioms DIYQC.Witness.Amp2
#print axioms DIYQC.Witness.norm2
#print axioms DIYQC.Witness.detRe
#print axioms DIYQC.Witness.detIm
#print axioms DIYQC.Witness.ipRe
#print axioms DIYQC.Witness.ipIm
#print axioms DIYQC.Witness.lagrange
#print axioms DIYQC.Witness.square_nonneg
#print axioms DIYQC.Witness.product_singlet_bound
#print axioms DIYQC.Witness.mixtureSinglet
#print axioms DIYQC.Witness.mixtureNorm
#print axioms DIYQC.Witness.separable_singlet_bound
#print axioms DIYQC.Witness.above_half_is_entangled
#print axioms DIYQC.TwoTurn.spinorSign
#print axioms DIYQC.TwoTurn.directionReading
#print axioms DIYQC.TwoTurn.one_turn_flips
#print axioms DIYQC.TwoTurn.returns_after_two_turns
#print axioms DIYQC.TwoTurn.direction_cannot_recover_sign
#print axioms DIYQC.TwoTurn.reference_must_separate
#print axioms DIYQC.TwoTurn.SpinStatisticsBridge
#print axioms DIYQC.TwoTurn.proton_pair_is_fermion
#print axioms DIYQC.TwoTurn.deuteron_pair_is_boson
#print axioms DIYQC.EdgeOn.fold
#print axioms DIYQC.EdgeOn.fold_symm
#print axioms DIYQC.EdgeOn.edge_on_cannot_recover_phase
#print axioms DIYQC.EdgeOn.quarter_turns_collide
#print axioms DIYQC.EdgeOn.swing_positions_12
#print axioms DIYQC.Closure.tzolkin_round
#print axioms DIYQC.Closure.calendar_round
#print axioms DIYQC.Closure.calendar_round_gcd
#print axioms DIYQC.Closure.calendar_round_counts
#print axioms DIYQC.Closure.selective_closure
#print axioms DIYQC.Closure.three_pow_odd
#print axioms DIYQC.Closure.two_pow_even
#print axioms DIYQC.Closure.pythagorean_nonclosure
#print axioms DIYQC.Closure.pythagorean_comma
#print axioms DIYQC.Threshold.step
#print axioms DIYQC.Threshold.iter
#print axioms DIYQC.Threshold.step_zero
#print axioms DIYQC.Threshold.step_lt
#print axioms DIYQC.Threshold.iter_bound
#print axioms DIYQC.Threshold.below_threshold_dies_out
#print axioms DIYQC.Threshold.above_threshold_no_decrease
