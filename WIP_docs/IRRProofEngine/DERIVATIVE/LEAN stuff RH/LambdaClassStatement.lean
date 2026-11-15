/-
  Lambda class statement (DRAFT for correction, 15 November 2026).
  Consolidation of statements already certified in the corpus:
    UniversalRecoveryClosure, HardProblemUndecidable (HP1), LambdaPartIII.
  No imports. Definitions restate the HP1 definitions.
-/
namespace LambdaClass

universe u v w x
variable {Case : Type u} {Ev : Type v} {V : Type w} {A : Type x}

/-- A world assigns a value to every case. -/
abbrev World (Case : Type u) (V : Type w) := Case → V

/-- The reading is coarse: two different cases present the same readable evidence. -/
def Twins (read : Case → Ev) (a b : Case) : Prop := a ≠ b ∧ read a = read b

/-- An equal standard decides a world: one rule on readable evidence gives every case's value,
the assessor's own case included. -/
def EquallyDecidable (read : Case → Ev) (wd : World Case V) : Prop :=
  ∃ rule : Ev → V, ∀ c, wd c = rule (read c)

/-- The world is fixed by the reading: same evidence, same value. -/
def FixedBy (read : Case → Ev) (wd : World Case V) : Prop :=
  ∀ c d, read c = read d → wd c = wd d

/-- A procedure reading only the access is sound when it never affirms or excludes wrongly in an
admissible world. `none` is abstention. -/
def Sound (admissible : World Case V → Prop) (access : World Case V → A)
    (Q : World Case V → Prop) (verdict : A → Option Bool) : Prop :=
  ∀ wd, admissible wd →
    (verdict (access wd) = some true → Q wd) ∧ (verdict (access wd) = some false → ¬ Q wd)

/-- The rule. Twins under the reading, and the admissible class contains, at one and the same
access, a world the reading fixes and a world that separates the twins. -/
structure LambdaForm (read : Case → Ev) (admissible : World Case V → Prop)
    (access : World Case V → A) where
  a : Case
  b : Case
  twins : Twins read a b
  fixedWorld : World Case V
  splitWorld : World Case V
  fixed_admissible : admissible fixedWorld
  split_admissible : admissible splitWorld
  same_access : access fixedWorld = access splitWorld
  fixed : FixedBy read fixedWorld
  split : splitWorld a ≠ splitWorld b

/-- CLASS STATEMENT. Every description of Lambda form is closed against its own reading:
(1) no equal standard decides the split world;
(2) the question "is the world fixed by the reading?" has both answers at one access;
(3) every sound procedure reading that access abstains there. -/
theorem lambda_class_closed {read : Case → Ev} {admissible : World Case V → Prop}
    {access : World Case V → A} (L : LambdaForm read admissible access) :
    (¬ EquallyDecidable read L.splitWorld) ∧
    (FixedBy read L.fixedWorld ∧ ¬ FixedBy read L.splitWorld) ∧
    (∀ verdict : A → Option Bool,
      Sound admissible access (FixedBy read) verdict →
        verdict (access L.fixedWorld) = none) := by
  have notFixed : ¬ FixedBy read L.splitWorld :=
    fun h => L.split (h L.a L.b L.twins.2)
  refine ⟨?_, ⟨L.fixed, notFixed⟩, ?_⟩
  · intro ⟨rule, hrule⟩
    exact L.split ((hrule L.a).trans ((congrArg rule L.twins.2).trans (hrule L.b).symm))
  · intro verdict sound
    cases hv : verdict (access L.fixedWorld) with
    | none => rfl
    | some r =>
      cases r with
      | true =>
        have hv2 : verdict (access L.splitWorld) = some true := L.same_access ▸ hv
        exact absurd ((sound L.splitWorld L.split_admissible).1 hv2) notFixed
      | false =>
        exact absurd L.fixed ((sound L.fixedWorld L.fixed_admissible).2 hv)

/-- TRANSPORT. A description whose cases map into a Lambda-form description, carrying the
reading and both worlds back along the map, is itself of Lambda form. Membership is carried by
the form, not established case by case. -/
def transport {Case' : Type u} {Ev' : Type v} {A' : Type x}
    {read : Case → Ev} {admissible : World Case V → Prop} {access : World Case V → A}
    (L : LambdaForm read admissible access)
    (read' : Case' → Ev') (admissible' : World Case' V → Prop) (access' : World Case' V → A')
    (a' b' : Case') (twins' : Twins read' a' b')
    (pull : World Case V → World Case' V)
    (adm : ∀ wd, admissible wd → admissible' (pull wd))
    (acc : access' (pull L.fixedWorld) = access' (pull L.splitWorld))
    (keepsFixed : FixedBy read' (pull L.fixedWorld))
    (keepsSplit : pull L.splitWorld a' ≠ pull L.splitWorld b') :
    LambdaForm read' admissible' access' :=
  { a := a', b := b', twins := twins'
    fixedWorld := pull L.fixedWorld, splitWorld := pull L.splitWorld
    fixed_admissible := adm _ L.fixed_admissible
    split_admissible := adm _ L.split_admissible
    same_access := acc, fixed := keepsFixed, split := keepsSplit }

/-- FREE CASE (the hard-problem setting). When every assignment is admissible and the access is
the reading itself, twins alone give the Lambda form: the form causes membership. -/
def freeForm [DecidableEq Case] (read : Case → Ev) (a b : Case) (tw : Twins read a b) :
    LambdaForm (V := Bool) read (fun _ => True) (fun _ : World Case Bool => read) :=
  { a := a, b := b, twins := tw
    fixedWorld := fun _ => true
    splitWorld := fun c => if c = a then false else true
    fixed_admissible := trivial, split_admissible := trivial
    same_access := rfl
    fixed := fun _ _ _ => rfl
    split := by
      have hba : ¬ b = a := fun h => tw.1 h.symm
      show (if a = a then false else true) ≠ (if b = a then false else true)
      rw [if_pos rfl, if_neg hba]
      exact Bool.noConfusion }

end LambdaClass
