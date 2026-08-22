import Lean

/-!
Before the Proof - Certified Appendix exemplar
Target: Proposition 3.2 / C_BU (bridge-underdetermination)

This file formalizes only the dependency-level claim that a verifier whose
result depends solely on its declared verifier-visible input cannot distinguish
an upstream bridge property that is not part of that input.
-/

universe u v w

namespace BeforeTheProof

structure VerifierInput (Problem Premises Grammar : Type u) where
  problem : Problem
  premises : Premises
  grammar : Grammar

structure RegistrationChain
    (Input : Type u) (Bridge : Type v) (Result : Type w) where
  verifierInput : Input
  upstreamBridge : Bridge
  result : Result

/-- A verifier-visible acceptance relation depends only on the declared input. -/
def Verifier (Input : Type u) (Result : Type w) := Input → Result

/--
Formal surrogate for C_BU.
If two chains expose the same verifier input to a verifier, their verifier-side
results are equal, even when a separately declared bridge predicate differs.
Thus equality of the verifier-visible traversal/result does not determine that
upstream bridge predicate.
-/
theorem bridge_underdetermination
    {Input : Type u} {Bridge : Type v} {Result : Type w}
    (verify : Verifier Input Result)
    (b1 b2 : Bridge)
    (Adequate : Bridge → Prop)
    (hAdeq1 : Adequate b1)
    (hAdeq2 : ¬ Adequate b2)
    (i : Input) :
    verify i = verify i ∧ Adequate b1 ∧ ¬ Adequate b2 := by
  exact ⟨rfl, hAdeq1, hAdeq2⟩

/--
A two-chain presentation closer to Proposition 3.2: once the two chains have
identical verifier-visible input and their stored results are produced by the
same verifier, the results coincide; the bridge-adequacy disagreement remains
an independent premise rather than something certified by that result.
-/
theorem two_chain_bridge_underdetermination
    {Input : Type u} {Bridge : Type v} {Result : Type w}
    (verify : Verifier Input Result)
    (c1 c2 : RegistrationChain Input Bridge Result)
    (hInput : c1.verifierInput = c2.verifierInput)
    (hResult1 : c1.result = verify c1.verifierInput)
    (hResult2 : c2.result = verify c2.verifierInput)
    (Adequate : Bridge → Prop)
    (hAdeq1 : Adequate c1.upstreamBridge)
    (hAdeq2 : ¬ Adequate c2.upstreamBridge) :
    c1.result = c2.result ∧
      Adequate c1.upstreamBridge ∧
      ¬ Adequate c2.upstreamBridge := by
  constructor
  · calc
      c1.result = verify c1.verifierInput := hResult1
      _ = verify c2.verifierInput := congrArg verify hInput
      _ = c2.result := hResult2.symm
  · exact ⟨hAdeq1, hAdeq2⟩

end BeforeTheProof

-- Verification-environment receipt when executed by Lean.
#eval Lean.versionString
