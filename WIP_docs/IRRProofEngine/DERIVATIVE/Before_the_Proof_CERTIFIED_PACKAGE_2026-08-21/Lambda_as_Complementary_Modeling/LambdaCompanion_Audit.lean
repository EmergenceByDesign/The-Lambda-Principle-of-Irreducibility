/-!
Lambda as Complementary Modeling - executable claim kernel

Scope: this file formalizes only the abstract registry-audit relations used in
the companion paper: a partial translation, directional source and target
residue, preservation of a registered anchor on the translated domain, and two
non-uniqueness consequences from explicit counter-witnesses.

It does not formalize or verify Big-Bang nucleosynthesis, the numerical
adequacy of the quoted estimate, baryogenesis, the Sakharov conditions,
Lambda/NSAF/TUFT physics, causal or ontological interpretations, or the
fidelity of the natural-language-to-Lean formalization seam.
-/

namespace LambdaCompanion

/-- A decimal scientific-notation record.  The intended display uses the
    central value, its stated uncertainty, and a power of ten. -/
structure EmpiricalAnchor where
  central : Nat
  uncertainty : Nat
  exponent : Int
deriving DecidableEq, Repr

/-- The paper's frozen 2024 PDG table entry, represented by central value 604,
    uncertainty 12, and exponent negative 12 (equivalently, central value
    6.04, uncertainty 0.12, and exponent negative 10).
    The source and empirical adequacy of this record are outside this file. -/
def bbn2024 : EmpiricalAnchor :=
  { central := 604, uncertainty := 12, exponent := -12 }

/-- Declared source-side items in the worked audit. -/
inductive StdItem where
  | registeredEstimate
  | ratioDefinition
  | hotBigBangHistory
  | baryonNumberViolation
  | cAndCpViolation
  | nonequilibrium
deriving DecidableEq, Repr

/-- Declared target-side items in the worked audit. -/
inductive LambdaItem where
  | registeredEstimate
  | ratioDefinition
  | datumProblemSeparation
  | jurisdictionRecord
  | residueRecord
deriving DecidableEq, Repr

/-- The deliberately partial translation used by the paper's finite worked
    example.  Only the shared datum and exact ratio definition are translated.
    `none` is a scope statement, not a verdict that the source item is false. -/
def translate : StdItem -> Option LambdaItem
  | .registeredEstimate => some .registeredEstimate
  | .ratioDefinition => some .ratioDefinition
  | .hotBigBangHistory => none
  | .baryonNumberViolation => none
  | .cAndCpViolation => none
  | .nonequilibrium => none

/-- Source-side omission: a declared source item is outside the map's domain. -/
def SourceResidue {A : Type} {B : Type} (tau : A -> Option B) (a : A) : Prop :=
  tau a = none

/-- Target-side residue: a declared target item is not hit by the map. -/
def TargetResidue {A : Type} {B : Type} (tau : A -> Option B) (b : B) : Prop :=
  forall a, Not (tau a = some b)

/-- Observable projection on the source carrier.  Only the registered estimate
    carries the empirical anchor in this small formal surrogate. -/
def stdAnchor : StdItem -> Option EmpiricalAnchor
  | .registeredEstimate => some bbn2024
  | _ => none

/-- Observable projection on the target carrier. -/
def lambdaAnchor : LambdaItem -> Option EmpiricalAnchor
  | .registeredEstimate => some bbn2024
  | _ => none

/-- The registered estimate is invariant on the translated point. -/
theorem registered_anchor_invariant :
    translate .registeredEstimate = some .registeredEstimate /\
      lambdaAnchor .registeredEstimate = stdAnchor .registeredEstimate := by
  exact And.intro rfl rfl

/-- A representative source-side residue witness. -/
theorem source_history_is_residue :
    SourceResidue translate .hotBigBangHistory := by
  rfl

/-- A representative source-side mechanism-condition residue witness. -/
theorem source_cp_condition_is_residue :
    SourceResidue translate .cAndCpViolation := by
  rfl

/-- A representative target-side methodological residue witness. -/
theorem target_jurisdiction_is_residue :
    TargetResidue translate .jurisdictionRecord := by
  intro a
  cases a <;> decide

/-- A second target-side methodological residue witness. -/
theorem target_residue_record_is_residue :
    TargetResidue translate .residueRecord := by
  intro a
  cases a <;> decide

/-- A registry uniquely generates `p` under a declared relation when every
    generator of `p` equals that registry. -/
def UniqueGenerator {Registry Problem : Type}
    (Generates : Registry -> Problem -> Prop)
    (g : Registry) (p : Problem) : Prop :=
  forall g', Generates g' p -> g' = g

/-- A problem is the unique problem admitted by a datum when every declared
    registry/problem pair generated from that datum yields that problem. -/
def UniqueProblemFrom {Registry Datum Problem : Type}
    (Generates : Registry -> Datum -> Problem -> Prop)
    (d : Datum) (p : Problem) : Prop :=
  forall g' p', Generates g' d p' -> p' = p

/-- Solving a problem does not certify uniqueness of its generator when a
    distinct generating registry is supplied as a counter-witness. -/
theorem solved_does_not_certify_unique_generator
    {Registry Problem : Type}
    (Solved : Problem -> Prop)
    (Generates : Registry -> Problem -> Prop)
    (g g' : Registry) (p : Problem)
    (hSolved : Solved p)
    (hGenerates : Generates g p)
    (hOtherGenerates : Generates g' p)
    (hDistinct : Not (g' = g)) :
    Solved p /\ Generates g p /\
      Not (UniqueGenerator Generates g p) := by
  refine And.intro hSolved (And.intro hGenerates ?_)
  intro hUnique
  exact hDistinct (hUnique g' hOtherGenerates)

/-- Solving one problem does not certify that it is the unique problem formed
    from the datum when a distinct generated problem is supplied as a witness. -/
theorem solved_does_not_certify_unique_problem
    {Registry Datum Problem : Type}
    (Solved : Problem -> Prop)
    (Generates : Registry -> Datum -> Problem -> Prop)
    (g g' : Registry) (d : Datum) (p p' : Problem)
    (hSolved : Solved p)
    (hGenerates : Generates g d p)
    (hOtherGenerated : Generates g' d p')
    (hDistinct : Not (p' = p)) :
    Solved p /\ Generates g d p /\
      Not (UniqueProblemFrom Generates d p) := by
  refine And.intro hSolved (And.intro hGenerates ?_)
  intro hUnique
  exact hDistinct (hUnique g' p' hOtherGenerated)

/-- Minimal compatibility at a registered anchor. -/
def CompatibleAt {Output : Type}
    (anchor outLeft outRight : Output) : Prop :=
  outLeft = anchor /\ outRight = anchor

/-- An explicit compatibility witness when both scoped outputs equal the same
    registered anchor. -/
theorem joint_closure_witness
    {Output : Type} (anchor outLeft outRight : Output)
    (hLeft : outLeft = anchor) (hRight : outRight = anchor) :
    CompatibleAt anchor outLeft outRight := by
  exact And.intro hLeft hRight

#check registered_anchor_invariant
#check source_history_is_residue
#check target_jurisdiction_is_residue
#check solved_does_not_certify_unique_generator
#check solved_does_not_certify_unique_problem
#check joint_closure_witness

#eval Lean.versionString

end LambdaCompanion
