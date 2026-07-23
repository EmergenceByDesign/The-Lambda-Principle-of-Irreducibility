# QED — Normative Claim Table

**Protocol version 0.2 · Status: draft (pre-publication)**

Every normative claim in the whitepaper carries an id and resolves here. A
release fails its own standard if any normative claim has neither executable
evidence nor an explicit `declared-direction` tag.

This table is deliberately unflattering. It is the mechanism that prevents
the paper from describing software that does not exist — the failure mode
that produced most of the v0.1 review findings.

## Status vocabulary

| Status | Meaning |
|---|---|
| `conforming` | Executable evidence exists and reproduces |
| `specified` | Spec written and complete; evidence pending |
| `not-implemented` | Spec written; the code does not do this yet |
| `scoped` | Claim narrowed from its v0.1 form to what is supportable |
| `declared-direction` | Architectural horizon; no spec, no implementation, no claim |
| `non-normative` | Practice, not a protocol claim; nothing depends on it |

`not-implemented` is the honest red flag. It means v0.1 said or implied
something the software does not do.

---

## Identity and encoding

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-ID-001` | Artifact ids are SHA-256 over RFC 8785 JCS canonical form | `specified` | v0.1 said "sorted keys, no whitespace", which is not a complete canonicalization; Python and JS diverge on number formatting. JCS adopted; vectors in `/conformance` |
| `QED-ID-002` | Two independent implementations agree on every artifact id | `not-implemented` | Requires a second implementation. ASK-001 |
| `QED-ID-003` | Signatures are ed25519 over the canonical body, excluding the signature envelope | `specified` | v0.1 schemas and reference verifier disagreed on whether the signature is inside the hashed body. Resolved: excluded |

## Statements and channels

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-SEAL-001` | Every settlement-affecting parameter is inside the statement hash | `specified` | L1. Conformance vector pending |
| `QED-CHAN-001` | A statement's channel is sealed and cannot change | `specified` | L2 |
| `QED-CHAN-002` | Bounties never aggregate across differing parameter sets | `specified` | Follows structurally from per-statement aggregation |
| `QED-PROF-001` | A PROFILED statement's parameters match its referenced profile | `specified` | Checkable; conformance vector pending |
| `QED-AGG-001` | One accepted solution sweeps every live bounty on that statement | `not-implemented` | True in the reference contract only for a single chain and only once `QED-SETTLE-*` are fixed |

## Verification

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-VERIFY-001` | `sorryAx` is always rejected | `specified` | Reference verifier checks the axiom record, but see 002/003 — the check can be bypassed by absence |
| `QED-VERIFY-002` | Imports are restricted to `import_manifest` | `not-implemented` | Documented in v0.1, never checked in code |
| `QED-VERIFY-003` | The axiom record is complete and bound to explicit target theorems | `not-implemented` | Missing `#print axioms` output currently yields an empty set, which passes the subset test. Corpus cases opened |
| `QED-VERIFY-004` | Receipts are signed and independently verifiable | `not-implemented` | v0.1 emitted `UNSIGNED-REFERENCE-RUN` |
| `QED-VERIFY-005` | `cpu_seconds` is enforced | `not-implemented` | Only wall-clock was enforced |
| `QED-VERIFY-006` | `commit_ref` references the ClaimCommit artifact | `not-implemented` | v0.1 used a raw submission hash |
| `QED-VERIFY-007` | Submissions execute under layered isolation | `specified` | Docker with no network and read-only rootfs is a start; seccomp, least-privilege, and operational separation specified, not yet applied |
| `QED-HARNESS-001` | `test_harness` is available as a public verifier class | `declared-direction` | Withdrawn from v1.0. Retained as internal tooling for conformance and corpus execution only |

## Settlement

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-SETTLE-001` | A valid proof releases escrow to the claimant | `not-implemented` | Reference contract has known defects below |
| `QED-SETTLE-002` | An invalid claim cannot settle | `not-implemented` | `quorumM = 0` permits dispute-then-settle with zero confirming attestations |
| `QED-SETTLE-003` | Settlement always executes within block limits | `not-implemented` | Unbounded commit and bounty arrays |
| `QED-SETTLE-004` | Statement registration is authenticated | `not-implemented` | Anyone may register any hash with arbitrary parameters |
| `QED-SETTLE-005` | Attestation state is keyed per reveal, not per statement | `not-implemented` | Stale votes persist across a deleted reveal |
| `QED-SETTLE-006` | A live reveal locks funds against refund until settlement or rejection | `not-implemented` | Refund currently possible during an active challenge |
| `QED-ORDER-001` | The first valid commit wins | `scoped` | Narrowed to per-escrow ordering by the settlement chain. Global federation ordering is not claimed |
| `QED-XCHAIN-001` | One solution sweeps bounties across multiple chains atomically | `declared-direction` | A shared interface cannot make cross-chain settlement atomic |

## Disclosure

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-PRIV-001` | Private settlement delivers solutions to parties only | `declared-direction` | No specified encryption, key exchange, fair delivery, or payment binding. On EVM the solution is public calldata regardless |
| `QED-DISC-001` | The disclosure flag records funder expectation | `specified` | Social, not cryptographic. Stated as such |
| `QED-DISC-002` | Consequential facts appear adjacent to the triggering action | `specified` | D4. An editorial rule, declared |

## Index and evidence

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-CONF-001` | "Conforming" means declared results reproduced for an identified suite | `specified` | Nothing more. Not secure, audited, suitable, or endorsed |
| `QED-NAME-001` | Constrained vocabulary is honoured | `specified` | A conformance property with attribution and cheap falsification, not a guarantee against hostile nodes |
| `QED-IDX-001` | Inclusion, ordering, and filtering rules are declared and inspectable | `specified` | D1–D3. Neutrality is not claimed |
| `QED-EVID-001` | Attestations, objections, and counterexamples are preserved with attribution and not collapsed into a verdict | `specified` | |
| `QED-CORP-001` | A conforming verifier reproduces every required corpus verdict | `specified` | Corpus opened; execution harness pending |

## Standing

| Claim | Statement | Status | Evidence / note |
|---|---|---|---|
| `QED-STAND-001` | Badge weight resists sybil attack and confers portable standing | `non-normative` | Withdrawn as a protocol claim. Ranking is a declared view policy per client |

---

## Summary

| Status | Count |
|---|---|
| `conforming` | 0 |
| `specified` | 15 |
| `not-implemented` | 14 |
| `scoped` | 1 |
| `declared-direction` | 4 |
| `non-normative` | 1 |

**Zero conforming claims is the correct reading of v0.2.** Conformance
requires executable evidence against an identified suite, and the suites are
being written. A release that reported conforming claims today would be
reporting the author's confidence, which is exactly what this table exists
to exclude.

□ → ∎
