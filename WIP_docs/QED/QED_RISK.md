# QED — Risk

**Protocol version 0.2 · Status: draft (pre-publication)**

Read this before any value moves. It is short on purpose.

---

## What QED is

An index and a set of shared abstractions for funding machine-verifiable
problems. It makes independently authored options legible, comparable,
attributable, and difficult to misrepresent.

## What QED is not

It is not an assurance provider. It does not certify, approve, endorse,
audit, or recommend anything — not profiles, not statements, not
implementations, not counterparties. Nothing listed on any QED instance has
been vetted by QED, because vetting is not what QED does.

## The one claim worth making

**QED holds no discretionary control over settlement.** It cannot reverse a
verification, seize an escrow, favour a claimant, or settle by fiat. That is
a structural property anyone can check by reading the contract and the
verifier — unlike "neutral," which is a disposition nobody can verify.

Everything else is a judgment somebody has to make for themselves.

---

## Current status, stated plainly

Protocol version 0.2 is **pre-alpha specification**. As of this document:

- The reference escrow contract contains **known exploitable settlement
  paths**, catalogued in `CLAIM_TABLE.md` under `QED-SETTLE-*`.
- The reference verifier **does not enforce several policies it documents**,
  catalogued under `QED-VERIFY-*`.
- **Zero normative claims are marked `conforming`**, because the conformance
  suites are still being written.
- No independent security review has been completed.

**Do not place value at risk against this release.** That is not a
disclaimer, it is a description.

---

## Risk by role

The two roles are not symmetric, and the solver's exposure is the one most
systems under-state.

### If you fund a bounty

- Your escrow may be unrecoverable through contract defects, chain failure,
  or adapter bugs.
- Refund conditions are set per statement and may not behave as you expect;
  read them at the fund surface.
- A statement's parameters were chosen by its author, not by QED. In the
  INLINE channel they may be anything at all.
- The problem may never be solved. That is the normal case, not a failure.
- Your downside is bounded by what you escrowed, and some statements offer a
  refund path.

### If you solve a bounty

Your exposure is **larger and less reversible**, and this is the section to
read twice.

- **Revelation cannot be undone.** You disclose work in order to claim. If
  settlement then fails — through contract defects, a hostile funder, an
  adapter failure, chain conditions, or a parameter you did not read — the
  work is disclosed and you hold nothing.
- **Compute is unrecoverable.** Nothing refunds a failed search.
- **A verified claim can still fail to settle.** Verification and settlement
  are different systems. A correct proof accepted by a verifier does not
  guarantee an escrow releases.
- **Racing is real.** Another party may commit before you. Priority is
  ordered by the settlement chain, not by when you started work.
- **The disclosure flag is social, not cryptographic.** A bounty marked
  private carries the funder's expectation and nothing more. On an EVM
  adapter your solution is public calldata regardless of any flag.

### If you publish a profile

You are making claims in your own name. QED records your signature and
whatever assessments others publish against your profile. It does not stand
behind you, and it does not shield you.

---

## What "conforming" means

Exactly one thing: *this implementation produced the declared results for
this identified test suite.*

It does not mean secure. It does not mean audited. It does not mean
suitable for your purpose. It does not mean endorsed by anyone.

---

## Presentation

There is no neutral index. Ordering, defaults, and placement are editorial
choices. QED instances declare their rules rather than claiming a neutrality
no index can have; the rules are inspectable and user-overridable, and the
seed instance reserves the operator freedom any self-hosted instance has,
including inclusion, exclusion, and removal. The attempt is unbiased. The
right is reserved. Material changes are logged.

Material that is illegal, malware-bearing, or targeted at a person may be
removed. Removals are logged as artifacts recording what was removed and
why.

---

## Reporting a vulnerability

Two channels, decided in advance:

- **Anything that cannot move value** — verifier gaps, canonicalization
  divergence, spec defects, corpus additions: **publish immediately and
  publicly.** This is the intended engine, not an exception to it.
- **Anything that can move value** while value is at risk — escrow drains,
  settlement bypasses: **report privately first**, with a stated window
  before publication.

Paying more for responsible disclosure of fund-bearing defects is a stronger
openness signal than paying nothing and hoping. The thresholds and the
window are open questions in `CHANNELS_AND_PROFILES.md` §8 and will be
stated before any release carries value.

---

## Copying this

QED is MIT licensed and self-hosting is the point. Anyone may run an
instance, publish profiles, fork the protocol, or host a modified copy —
including a hostile one. **Verify what you run.** A page that looks like
this one is not this one; check hashes, check signatures, re-run the checks
yourself. That instruction is not a caveat on a trustless system, it is the
system.

□ → ∎
