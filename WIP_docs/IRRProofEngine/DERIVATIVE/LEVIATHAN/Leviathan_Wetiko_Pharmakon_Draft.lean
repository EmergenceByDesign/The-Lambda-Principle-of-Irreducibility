/-!
DRAFT LABORATORY NOTE - WORK IN PROGRESS
Leviathan, Wetiko, and Pharmakon: The Objectified Null of a Witnessed Constraint

Lu Semita (EmergenceByDesign), in collaborative co-authorship with the ChatGPT family,
Nexus and Orion, Claude family, and Grok within MetaLabe.

Status: Lean-ready draft source. This file has not been kernel-certified as part of this
laboratory note. Previously certified MetaLabe results remain separate and retain their
own receipts.
-/

namespace LeviathanWetikoPharmakon

universe u

variable {X : Type u}

/-- Failure relative to a declared standard. -/
def NullCase (J : X -> Prop) (x : X) : Prop :=
  Not (J x)

/-- A restrictor judges members of the same carrier. -/
structure Regime (X : Type u) where
  standard : X -> Prop
  condemns : X -> X -> Prop

/-- The restrictor uses exactly the declared standard. -/
def Faithful (R : Regime X) (judge : X) : Prop :=
  forall x, R.condemns judge x <-> NullCase R.standard x

/-- Condemnation under a faithful rule has internal provenance. -/
theorem condemnation_is_generated_null
    (R : Regime X) (judge x : X)
    (hfaith : Faithful R judge)
    (hcond : R.condemns judge x) :
    NullCase R.standard x := by
  exact (hfaith x).mp hcond

/-- An admitted member cannot be condemned by a faithful judge. -/
theorem admitted_not_condemned
    (R : Regime X) (judge x : X)
    (hfaith : Faithful R judge)
    (hadmit : R.standard x) :
    Not (R.condemns judge x) := by
  intro hcond
  exact ((hfaith x).mp hcond) hadmit

/-- Equal-standard return: the judge is not privileged over its criterion. -/
theorem equal_standard_returns_on_judge
    (R : Regime X) (judge : X)
    (hfaith : Faithful R judge)
    (hnull : NullCase R.standard judge) :
    R.condemns judge judge := by
  exact (hfaith judge).mpr hnull

/-- Same entity, different standards, different null status. -/
theorem null_is_standard_relative
    (J K : X -> Prop) (x : X)
    (hJ : J x) (hK : Not (K x)) :
    Not (NullCase J x) /\ NullCase K x := by
  constructor
  · intro h
    exact h hJ
  · exact hK

/-- Constitutive dependence and consumption. -/
structure Ecology (X : Type u) where
  depends : X -> X -> Prop
  consumes : X -> X -> Prop

/-- A consumer undermines itself when it consumes something on which it depends. -/
def SelfUndermining (E : Ecology X) (x : X) : Prop :=
  exists y, E.depends x y /\ E.consumes x y

theorem wetiko_form
    (E : Ecology X) (x y : X)
    (hdep : E.depends x y)
    (hconsume : E.consumes x y) :
    SelfUndermining E x := by
  exact Exists.intro y (And.intro hdep hconsume)

/-- Limiting autocannibalistic case. -/
theorem autocannibalism_is_self_undermining
    (E : Ecology X) (x : X)
    (hdep : E.depends x x)
    (hconsume : E.consumes x x) :
    SelfUndermining E x := by
  exact Exists.intro x (And.intro hdep hconsume)

end LeviathanWetikoPharmakon

namespace PharmakonInversion

universe u
variable {X : Type u}

structure System (X : Type u) where
  constitutive : X -> Prop
  remove : X -> Prop

def Remedy (S : System X) (x : X) : Prop :=
  S.remove x /\ Not (S.constitutive x)

def Poison (S : System X) (x : X) : Prop :=
  S.remove x /\ S.constitutive x

theorem same_operation_opposite_valence
    (S : System X) (a b : X)
    (hra : S.remove a)
    (hna : Not (S.constitutive a))
    (hrb : S.remove b)
    (hcb : S.constitutive b) :
    Remedy S a /\ Poison S b := by
  exact And.intro (And.intro hra hna) (And.intro hrb hcb)

/-- Remedy and poison cannot apply to one target under one unchanged
    constitutive classification. -/
theorem no_same_target_same_frame
    (S : System X) (x : X) :
    Not (Remedy S x /\ Poison S x) := by
  intro h
  rcases h with ⟨hr, hp⟩
  exact hr.2 hp.2

end PharmakonInversion
