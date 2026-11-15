# Certificate Absence — working supplement

Lu Semita (EmergenceByDesign). Working document, no revision number assigned. 14 November 2026.

This supplement carries the Lean core, its audit, the kernel's axiom report, the source
map and the record of how the file was made. The paper it supports is not yet drafted.

## 1. What is certified here

Subject: the inference "no certificate for P has been exhibited, therefore P is false,
refuted, or less supported."

The core file states 18 theorems in Lean 4 with no imports and no Mathlib. In the run
recorded below the kernel's axiom report reads "does not depend on any axioms" for all 18.

| § | Statement, in plain terms | Theorem |
|---|---|---|
| 1 | "Underivable, therefore refuted" fails in a two-sentence frame | `underivable_not_refuted` |
| 1 | A sentence that holds exactly when unprovable, in a system sound at it, is unprovable | `diagonal_is_unprovable` |
| 1 | That sentence holds | `diagonal_is_true` |
| 1 | "Unprovable, therefore not true" fails wherever such a sentence exists | `unprovability_does_not_imply_falsity` |
| 2 | "No certified refutation, therefore P" is not a valid rule | `no_refutation_is_not_a_general_proof` |
| 2 | "No certificate, therefore not-P" is not a valid rule | `no_certificate_is_not_a_general_refutation` |
| 3 | A refutation of a derived claim contains a premise the frame does not derive | `refutation_requires_new_premise` |
| 3 | Keeping the frame and deriving the negation makes the premises inconsistent | `refuting_extension_inconsistent` |
| 3 | Non-acceptance yields no derivation of the negation | `nonacceptance_not_refutation` |
| 4 | Same observation, different target: no processing recovers the target | `no_processing_recovers_erased_distinction` |
| 4 | Decoder form of the same | `no_decoder_recovers_erased_distinction` |
| 4 | Every finite window has a passing and a failing extension | `finite_window_has_opposite_extensions` |
| 5 | Under a fair standard, equal criteria force equal verdicts | `equal_criteria_forces_equal_verdict` |
| 5 | Equal criteria with different verdicts: the standard is not fair | `differing_verdicts_defeat_fairness` |
| 6 | Equally weighted evidence leaves the odds unchanged | `equal_likelihood_leaves_odds_unchanged` |
| 7 | For a sound certifier, absence settles nothing in either direction | `absence_settles_nothing` |

Two helpers complete the count: `monotonicity` (§0) and `mul_assoc_axiomFree` (§6).

## 2. Receipt of this run

- Toolchain: Lean (version 4.35.0, x86_64-unknown-linux-gnu, commit eb6cafb7290e8bd5f2937522d8d804f58f02bafc, Release). This is the same version and commit recorded in the Axiom as Pharmakon R3 receipt.
- Toolchain archive: `lean-4.35.0-linux.tar.zst` from the leanprover/lean4 v4.35.0 release on GitHub, SHA-256 `7289597a44543246c9227b8cae501767e095ce17f6d448b95fc4a8dc97268f6d`.
- Run by: Claude, in its own workspace, 14 November 2026 (America/Los_Angeles).
- `CertificateAbsence.lean`: 254 lines, 12,006 bytes, SHA-256 `6b2f09b58418a5daa01727d3b2895597b1fb62f348b58aa043147c9c19c2c3fe`.
- `CertificateAbsenceAudit.lean`: 44 lines, 1,534 bytes, SHA-256 `90187f910e36d14f51333d687be56a8b976c9cb8bde02b06d529ab7ca56771e1`.
- `kernel_report.txt`: 19 lines, SHA-256 `288faf7e3f2aab26796e0dbfa074a03820d13fea030adb856b5e0ba79d823d2d`.
- Commands:
  - `lean -o CertificateAbsence.olean CertificateAbsence.lean` → exit 0, no output (0 errors, 0 warnings).
  - `LEAN_PATH=. lean CertificateAbsenceAudit.lean` → exit 0; output is the kernel report in §3.
  - `leanchecker CertificateAbsence` and `leanchecker --fresh CertificateAbsence` (bundled with the toolchain) → exit 0, no output, both.
  - Second kernel: `leanexport CertificateAbsence -- <the 18 theorem names>` (lean4export 3.1.0) wrote `export_core.ndjson`, 6,419 lines, SHA-256 `635e665e6dbea9f5e47ca67be6e11b16cd51746b05edd8a9ce4b189dc1bc9035`: the 18 theorems and everything they depend on. `nanoda_bin` 0.4.19, an independent checker written in Rust and bundled with the toolchain, was run on it with `"permitted_axioms": []`, `"unpermitted_axiom_hard_error": true`, `"nat_extension": true`, `"string_extension": false` → exit 0, output: "Checked 210 declarations with no typechecker errors, 1 pretty printer errors: [ "Unable to print axioms" ]". The pretty-printer message is recorded as printed; no declarations were requested for printing.
  - Second-kernel negative control: the classical theorem, exported and checked under the same settings → exit 1, "Error: export file declares unpermitted axiom "Classical.choice"".
- Core file scan: no `import`, no `axiom` declaration, no `sorry`, `admit`, `native_decide`, `unsafe`, `opaque`, `extern` or `implemented_by`. The words "axiom" and "sorry" occur only in comments and in the helper name `mul_assoc_axiomFree`.
- Axiom profile: none: 18 of 18 core theorems. The negative control reports `[propext, Classical.choice, Quot.sound]`, as intended.

### Not done in this run (open)

- The bundled `lean4lean` returned "failed to read file ... incompatible header" and checked nothing. It is recorded as not run. The second-kernel check was done with `nanoda` instead (see above).
- An independent re-run by a second party or workflow. Status: open.
- Statement fidelity: whether each Lean statement says what its plain-language row in §1 says is a reading judgment, not something the kernel reports.

## 3. Kernel report (verbatim)

```
'CertificateAbsence.monotonicity' does not depend on any axioms
'CertificateAbsence.underivable_not_refuted' does not depend on any axioms
'CertificateAbsence.diagonal_is_unprovable' does not depend on any axioms
'CertificateAbsence.diagonal_is_true' does not depend on any axioms
'CertificateAbsence.unprovability_does_not_imply_falsity' does not depend on any axioms
'CertificateAbsence.no_refutation_is_not_a_general_proof' does not depend on any axioms
'CertificateAbsence.no_certificate_is_not_a_general_refutation' does not depend on any axioms
'CertificateAbsence.refutation_requires_new_premise' does not depend on any axioms
'CertificateAbsence.refuting_extension_inconsistent' does not depend on any axioms
'CertificateAbsence.nonacceptance_not_refutation' does not depend on any axioms
'CertificateAbsence.no_processing_recovers_erased_distinction' does not depend on any axioms
'CertificateAbsence.no_decoder_recovers_erased_distinction' does not depend on any axioms
'CertificateAbsence.finite_window_has_opposite_extensions' does not depend on any axioms
'CertificateAbsence.equal_criteria_forces_equal_verdict' does not depend on any axioms
'CertificateAbsence.differing_verdicts_defeat_fairness' does not depend on any axioms
'CertificateAbsence.mul_assoc_axiomFree' does not depend on any axioms
'CertificateAbsence.equal_likelihood_leaves_odds_unchanged' does not depend on any axioms
'CertificateAbsence.absence_settles_nothing' does not depend on any axioms
'negativeControl_usesClassical' depends on axioms: [propext, Classical.choice, Quot.sound]
```

## 4. Source map

Cited work: Axiom as Pharmakon, Lean supplement edition R3.
- Repository: github.com/EmergenceByDesign/The-Lambda-Principle-of-Irreducibility, commit `25ccb013330ffe64a65a496ebd81353d5551a01d`.
- Archive: `WIP_docs/IRRProofEngine/DERIVATIVE/Axiom_as_Pharmakon_Lean_Supplement_V4.zip`, SHA-256 `cee780de59e5b5625aaa1b49b795e6fd4e9bcc544776898a43928486a8891a01`.
- `AxiomAsPharmakon.lean` SHA-256 `6fd77d9613d6666928a424ad261614fdd4d05f22eb9cbe56b4c39d1e06d66f13` and `kernel_report.txt` SHA-256 `7bd4318ee1d5f29451171103a64e0eb162c20a88a89750d045b4f0495f84128a`; both match the values printed in that packet's own RECEIPT.txt.

| Theorem here | Source in the R3 packet | Status in the R3 kernel report |
|---|---|---|
| `monotonicity` | `Consequence.monotonicity` | no axioms |
| `refutation_requires_new_premise` | `Consequence.refutation_requires_new_premise` | no axioms |
| `refuting_extension_inconsistent` | `Consequence.refuting_extension_inconsistent` | no axioms |
| `nonacceptance_not_refutation` | `Consequence.nonacceptance_not_refutation` | no axioms |
| `underivable_not_refuted` | `Countermodels.underivable_not_refuted` | no axioms |
| `diagonal_is_unprovable` | `DiagonalSeamBridge.semantic_diagonal_is_unprovable` | no axioms |
| `diagonal_is_true` | `DiagonalSeamBridge.semantic_diagonal_is_true` | source present; no line in that report |
| `unprovability_does_not_imply_falsity` | `DiagonalSeamBridge.unprovability_does_not_imply_falsity` | no axioms |
| `no_refutation_is_not_a_general_proof` | `LambdaInstrument.no_refutation_is_not_a_general_proof` | no axioms |
| `no_processing_recovers_erased_distinction` | `UniversalRecoveryClosure.no_processing_recovers_erased_distinction` | no axioms |
| `no_decoder_recovers_erased_distinction` | `UniversalRecoveryClosure.no_decoder_recovers_erased_distinction` | no axioms |
| `finite_window_has_opposite_extensions` | `LambdaInstrument.finite_window_has_opposite_extensions` | no axioms |
| `equal_criteria_forces_equal_verdict` | `LambdaIII.equal_criteria_forces_equal_verdict` | no axioms |
| `differing_verdicts_defeat_fairness` | `LambdaIII.differing_verdicts_defeat_fairness` | source present; no line in that report |
| `no_certificate_is_not_a_general_refutation` | new to this file | — |
| `mul_assoc_axiomFree` | new to this file | — |
| `equal_likelihood_leaves_odds_unchanged` | new to this file | — |
| `absence_settles_nothing` | new to this file | — |

Differences from the sources, declared:
- Premise sets are predicates (`Sentence → Prop`) in place of Mathlib's `Set`; union is the definition `Extend`.
- `FairStandard` leaves the criteria type open in place of the fixed `DeclaredCriteria` record.
- Proofs are written as terms. No `simp`, `omega` or `rw` is used.
- No result of the sources is altered or withdrawn by this file.

## 5. Record of making

1. The work began as a plan for five new theorems. A read of the repository showed that nearly all of them were already certified in the Axiom as Pharmakon R3 supplement, so the task became selection and restatement. The plan's assumption that the material was missing was wrong and is recorded here as such.
2. The Lean was first looked for in the two hosted Astra pages. A full-text search of both (all embedded documents and release files) found none; those pages carry exact-arithmetic Python verifiers and written proofs. The Lean was then found in the repository, including `DimensionalLadder.lean` inside the R3 supplement.
3. Fourteen statements were restated without Mathlib. Four are new: the mirror of the symmetry statement, the headline conjunction, the weight lemma and its arithmetic helper.
4. First audit: 16 of 17 reported no axioms. `equal_likelihood_leaves_odds_unchanged` reported `[propext]`. Cause: Lean core's own `Nat.mul_assoc` reports `propext` in this toolchain (`Nat.mul_comm`, `Nat.mul_succ` and `Nat.left_distrib` do not). Repair: associativity is proved in the file by recursion (`mul_assoc_axiomFree`). Second audit: 18 of 18 report no axioms.
5. A negative control was added to the audit so the report is shown to distinguish a classical theorem from an axiom-free one.
6. `leanchecker` passed in both modes. `lean4lean` did not read the compiled file and is recorded as not run.
7. The second-kernel check was first listed as open. It was then completed with `nanoda`: the first attempt stopped on a number literal because the Nat extension was off; with it on, and with no axioms permitted, all 210 exported declarations checked. The same settings rejected the classical control.

## 6. `CertificateAbsence.lean` (verbatim)

```lean
/-!
# Absence of a certificate: the zero-axiom core

Lean 4 core only. No Mathlib, no imports, no `axiom` declarations, no `sorry`.

Subject: the inference

    "no certificate for P has been exhibited"  ⟹  "P is false / refuted / less supported".

Each section states one fact about that inference. The statements restate, without
Mathlib, theorems already certified in the Axiom as Pharmakon Lean supplement (R3);
the source of each is named in its docstring. Sections 6 and 7 are new to this file.

Premise sets are predicates (`Sentence → Prop`), so no set library is needed.
-/

universe u v w r

namespace CertificateAbsence

/-! ## 0. Frames -/

/-- A premise set over a sentence type. -/
abbrev Premises (Sentence : Type u) : Type u := Sentence → Prop

/-- An abstract consequence relation. Only the assumption rule and cut are assumed;
monotonicity is derived. Source: `Consequence` (Pharmakon R3), with predicates for sets. -/
class Frame (Sentence : Type u) where
  Prov : Premises Sentence → Sentence → Prop
  assumption : ∀ {Γ : Premises Sentence} {φ : Sentence}, Γ φ → Prov Γ φ
  cut : ∀ {Γ Δ : Premises Sentence} {φ : Sentence},
    (∀ ψ, Δ ψ → Prov Γ ψ) → Prov Δ φ → Prov Γ φ
  neg : Sentence → Sentence

open Frame

section FrameFacts

variable {Sentence : Type u} [Frame Sentence]

/-- The premise set `Γ` together with the premise set `Δ`. -/
def Extend (Γ Δ : Premises Sentence) : Premises Sentence := fun φ => Γ φ ∨ Δ φ

/-- Consistency: no sentence is derived together with its negation. -/
def Consistent (Γ : Premises Sentence) : Prop := ∀ φ, ¬ (Prov Γ φ ∧ Prov Γ (neg φ))

/-- Monotonicity, from assumption and cut. Source: `Consequence.monotonicity`. -/
theorem monotonicity {Γ Δ : Premises Sentence} {φ : Sentence}
    (hsub : ∀ ψ, Γ ψ → Δ ψ) (h : Prov Γ φ) : Prov Δ φ :=
  cut (fun ψ hψ => assumption (hsub ψ hψ)) h

/-! ## 3. A refutation needs content -/

/-- If a consistent frame derives `φ`, any extension deriving `¬φ` contains a premise
the frame does not derive. Source: `Consequence.refutation_requires_new_premise`. -/
theorem refutation_requires_new_premise {Γ Δ : Premises Sentence} {φ : Sentence}
    (hpos : Prov Γ φ) (hcons : Consistent Γ) (hneg : Prov (Extend Γ Δ) (neg φ)) :
    ¬ ∀ δ, Δ δ → Prov Γ δ :=
  fun hall =>
    hcons φ ⟨hpos,
      cut (fun θ hθ => Or.elim hθ (fun h => assumption h) (fun h => hall θ h)) hneg⟩

/-- A premise set that keeps `Γ` and derives `¬φ` is inconsistent whenever `Γ` derives `φ`.
Source: `Consequence.refuting_extension_inconsistent`. -/
theorem refuting_extension_inconsistent {Γ Δ : Premises Sentence} {φ : Sentence}
    (hpos : Prov Γ φ) (hneg : Prov (Extend Γ Δ) (neg φ)) : ¬ Consistent (Extend Γ Δ) :=
  fun hc => hc φ ⟨monotonicity (fun _ h => Or.inl h) hpos, hneg⟩

/-- Non-acceptance is not refutation: with `Γ` consistent and deriving `φ`, no rule
"if `φ` is not accepted then `Γ` derives `¬φ`" holds for every acceptance predicate.
Source: `Consequence.nonacceptance_not_refutation`. -/
theorem nonacceptance_not_refutation {Γ : Premises Sentence} {φ : Sentence}
    (hpos : Prov Γ φ) (hcons : Consistent Γ) :
    ¬ ∀ Accept : Sentence → Prop, ¬ Accept φ → Prov Γ (neg φ) :=
  fun h => hcons φ ⟨hpos, h (fun _ => False) id⟩

end FrameFacts

/-! ## 1. Invalidity -/

/-- Two sentences, `p` and its negation `np`. Source: `Countermodels.Two`. -/
inductive Two where
  | p
  | np

/-- On `Two`, `Γ` derives `φ` exactly when `φ` is a premise. -/
instance twoFrame : Frame Two where
  Prov Γ φ := Γ φ
  assumption h := h
  cut hΔ hφ := hΔ _ hφ
  neg
    | .p => .np
    | .np => .p

/-- Not deriving `φ` is not deriving `¬φ`: the rule "underivable, therefore refuted"
fails already in a two-sentence frame. Source: `Countermodels.underivable_not_refuted`. -/
theorem underivable_not_refuted :
    ¬ ∀ (Γ : Premises Two) (φ : Two), ¬ Prov Γ φ → Prov Γ (neg φ) :=
  fun h => h (fun _ => False) Two.p id

/-- Truth form, part 1: a sentence that holds exactly when it is unprovable, in a
system sound at that sentence, is unprovable.
Source: `DiagonalSeamBridge.semantic_diagonal_is_unprovable`. -/
theorem diagonal_is_unprovable {Sentence : Type u} (provable holds : Sentence → Prop)
    (s : Sentence) (diagonalMeaning : holds s ↔ ¬ provable s)
    (soundAt : provable s → holds s) : ¬ provable s :=
  fun proof => (diagonalMeaning.1 (soundAt proof)) proof

/-- Truth form, part 2: that sentence holds.
Source: `DiagonalSeamBridge.semantic_diagonal_is_true`. -/
theorem diagonal_is_true {Sentence : Type u} (provable holds : Sentence → Prop)
    (s : Sentence) (diagonalMeaning : holds s ↔ ¬ provable s)
    (soundAt : provable s → holds s) : holds s :=
  diagonalMeaning.2 (diagonal_is_unprovable provable holds s diagonalMeaning soundAt)

/-- Truth form: "unprovable, therefore not true" fails wherever such a sentence exists.
Source: `DiagonalSeamBridge.unprovability_does_not_imply_falsity`. -/
theorem unprovability_does_not_imply_falsity {Sentence : Type u}
    (provable holds : Sentence → Prop) (s : Sentence)
    (diagonalMeaning : holds s ↔ ¬ provable s) (soundAt : provable s → holds s) :
    ¬ ∀ t, ¬ provable t → ¬ holds t :=
  fun negativeCompleteness =>
    negativeCompleteness s
      (diagonal_is_unprovable provable holds s diagonalMeaning soundAt)
      (diagonal_is_true provable holds s diagonalMeaning soundAt)

/-! ## 2. Symmetry -/

/-- Absence of a certified refutation is not a proof: no rule takes "a sound certifier
has not certified `¬P`" to `P`.
Source: `LambdaInstrument.no_refutation_is_not_a_general_proof`. -/
theorem no_refutation_is_not_a_general_proof :
    ¬ ∀ (certified : Prop → Prop) (P : Prop),
      (∀ Q, certified Q → Q) → ¬ certified (¬ P) → P :=
  fun h => h (fun _ => False) False (fun _ hf => hf.elim) (fun hf => hf)

/-- The mirror statement, in the same setting: no rule takes "a sound certifier has
not certified `P`" to `¬P`. New to this file; the witness is the empty certifier. -/
theorem no_certificate_is_not_a_general_refutation :
    ¬ ∀ (certified : Prop → Prop) (P : Prop),
      (∀ Q, certified Q → Q) → ¬ certified P → ¬ P :=
  fun h => h (fun _ => False) True (fun _ hf => hf.elim) (fun hf => hf) True.intro

/-! ## 4. A checker cannot originate -/

/-- If two states give the same observation and differ on the target, no processing
of the observation recovers the target.
Source: `UniversalRecoveryClosure.no_processing_recovers_erased_distinction`. -/
theorem no_processing_recovers_erased_distinction
    {X : Type u} {Y : Type v} {Z : Type w}
    (observe : X → Y) (target : X → Z) (a b : X)
    (sameReading : observe a = observe b) (differentTargets : target a ≠ target b) :
    ∀ {R : Type r} (process : Y → R) (decode : R → Z),
      ¬ (∀ x, decode (process (observe x)) = target x) :=
  fun process decode correct =>
    differentTargets
      ((correct a).symm.trans
        ((congrArg (fun y => decode (process y)) sameReading).trans (correct b)))

/-- Decoder form. Source: `UniversalRecoveryClosure.no_decoder_recovers_erased_distinction`. -/
theorem no_decoder_recovers_erased_distinction
    {X : Type u} {Y : Type v} {Z : Type w}
    (observe : X → Y) (target : X → Z) (a b : X)
    (sameReading : observe a = observe b) (differentTargets : target a ≠ target b) :
    ¬ ∃ decode : Y → Z, ∀ x, decode (observe x) = target x :=
  fun ⟨decode, correct⟩ =>
    no_processing_recovers_erased_distinction observe target a b
      sameReading differentTargets (fun y => y) decode correct

/-- An all-stage target. -/
def AllStages (P : Nat → Prop) : Prop := ∀ n, P n

/-- What a finite window of length `N` shows. -/
def Window (N : Nat) (P : Nat → Prop) : Prop := ∀ n, n < N → P n

/-- Every finite window has one extension that passes at every stage and one that does
not. Source: `LambdaInstrument.finite_window_has_opposite_extensions`. -/
theorem finite_window_has_opposite_extensions (N : Nat) :
    ∃ good bad : Nat → Prop,
      Window N good ∧ Window N bad ∧ AllStages good ∧ ¬ AllStages bad :=
  ⟨fun _ => True, fun n => n < N,
    fun _ _ => True.intro, fun _ hn => hn, fun _ => True.intro,
    fun h => Nat.lt_irrefl N (h N)⟩

/-! ## 5. Equal standard -/

/-- `Q` is recoverable from the readout `P`. Source: `FactorsThrough` (Lambda Part III). -/
def FactorsThrough {X : Type u} {Y : Type v} {Z : Type w} (P : X → Y) (Q : X → Z) : Prop :=
  ∃ g : Y → Z, ∀ x, g (P x) = Q x

/-- A standard is fair when its verdict is a function of the declared criteria and of
nothing else. Source: `FairStandard` (Lambda Part III), with the criteria type left open. -/
def FairStandard {C : Type u} {K : Type v} (criteria : C → K) (verdict : C → Bool) : Prop :=
  FactorsThrough criteria verdict

/-- Under a fair standard, claims agreeing on every declared criterion receive the same
verdict. Source: `LambdaIII.equal_criteria_forces_equal_verdict`. -/
theorem equal_criteria_forces_equal_verdict {C : Type u} {K : Type v}
    (criteria : C → K) (verdict : C → Bool) (hfair : FairStandard criteria verdict)
    {c₁ c₂ : C} (hsame : criteria c₁ = criteria c₂) : verdict c₁ = verdict c₂ :=
  match hfair with
  | ⟨g, hg⟩ => (hg c₁).symm.trans ((congrArg g hsame).trans (hg c₂))

/-- If the declared criteria agree and the verdicts differ, the standard is not fair:
an undeclared input is deciding. Source: `LambdaIII.differing_verdicts_defeat_fairness`. -/
theorem differing_verdicts_defeat_fairness {C : Type u} {K : Type v}
    (criteria : C → K) (verdict : C → Bool) {c₁ c₂ : C}
    (hsame : criteria c₁ = criteria c₂) (hdiff : verdict c₁ ≠ verdict c₂) :
    ¬ FairStandard criteria verdict :=
  fun hfair => hdiff (equal_criteria_forces_equal_verdict criteria verdict hfair hsame)

/-! ## 6. Weight (new to this file) -/

/-- Odds for and against a claim, as weights. -/
structure Odds where
  pro : Nat
  con : Nat

/-- Two odds are the same ratio (cross-multiplied, so no division is needed). -/
def SameOdds (o₁ o₂ : Odds) : Prop := o₁.pro * o₂.con = o₂.pro * o₁.con

/-- Update odds by an observation with weight `lPro` if the claim holds and `lCon` if it
does not. -/
def update (o : Odds) (lPro lCon : Nat) : Odds := ⟨o.pro * lPro, o.con * lCon⟩

/-- Associativity of multiplication on `Nat`, proved here by recursion. Lean core's own
`Nat.mul_assoc` reports `propext` (toolchain 4.35.0), so it is not used. -/
theorem mul_assoc_axiomFree (a b : Nat) : ∀ c : Nat, a * b * c = a * (b * c)
  | 0 => rfl
  | c + 1 =>
    (Nat.mul_succ (a * b) c).trans
      ((congrArg (· + a * b) (mul_assoc_axiomFree a b c)).trans
        ((Nat.left_distrib a (b * c) b).symm.trans
          (congrArg (a * ·) (Nat.mul_succ b c).symm)))

/-- An observation that is equally weighted whether or not the claim holds leaves the
odds unchanged. The premise "equally weighted" is supplied by argument, not by this file. -/
theorem equal_likelihood_leaves_odds_unchanged (o : Odds) (l : Nat) :
    SameOdds (update o l l) o :=
  show o.pro * l * o.con = o.pro * (o.con * l) from
    (mul_assoc_axiomFree o.pro l o.con).trans (congrArg (o.pro * ·) (Nat.mul_comm l o.con))

/-! ## 7. Headline (new to this file) -/

/-- For a sound certifier, the absence of a certificate settles nothing in either
direction: it does not yield `¬P`, and the absence of a certified `¬P` does not yield `P`. -/
theorem absence_settles_nothing :
    (¬ ∀ (certified : Prop → Prop) (P : Prop),
        (∀ Q, certified Q → Q) → ¬ certified P → ¬ P) ∧
    (¬ ∀ (certified : Prop → Prop) (P : Prop),
        (∀ Q, certified Q → Q) → ¬ certified (¬ P) → P) :=
  ⟨no_certificate_is_not_a_general_refutation, no_refutation_is_not_a_general_proof⟩

end CertificateAbsence
```

## 7. `CertificateAbsenceAudit.lean` (verbatim)

```lean
import CertificateAbsence

/-!
# Audit for `CertificateAbsence`

Prints the kernel's axiom report for every theorem of the core file, then a negative
control: one deliberately classical theorem, to show the report distinguishes a
theorem that uses axioms from one that does not.
-/

open CertificateAbsence

-- 0. Frames
#print axioms monotonicity
-- 1. Invalidity
#print axioms underivable_not_refuted
#print axioms diagonal_is_unprovable
#print axioms diagonal_is_true
#print axioms unprovability_does_not_imply_falsity
-- 2. Symmetry
#print axioms no_refutation_is_not_a_general_proof
#print axioms no_certificate_is_not_a_general_refutation
-- 3. A refutation needs content
#print axioms refutation_requires_new_premise
#print axioms refuting_extension_inconsistent
#print axioms nonacceptance_not_refutation
-- 4. A checker cannot originate
#print axioms no_processing_recovers_erased_distinction
#print axioms no_decoder_recovers_erased_distinction
#print axioms finite_window_has_opposite_extensions
-- 5. Equal standard
#print axioms equal_criteria_forces_equal_verdict
#print axioms differing_verdicts_defeat_fairness
-- 6. Weight
#print axioms mul_assoc_axiomFree
#print axioms equal_likelihood_leaves_odds_unchanged
-- 7. Headline
#print axioms absence_settles_nothing

/-- Negative control. This theorem uses excluded middle on purpose; its report must
list axioms. It is not part of the core. -/
theorem negativeControl_usesClassical (P : Prop) : P ∨ ¬ P := Classical.em P

#print axioms negativeControl_usesClassical
```
