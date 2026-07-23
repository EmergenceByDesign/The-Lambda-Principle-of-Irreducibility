# CRYPTOCACHE // QED

**A federated proof-bounty protocol. □ → ∎**
**Protocol version 0.2 · Status: draft (pre-publication)**

QED is a protocol for funding the solution of machine-verifiable problems.
Seal a statement whose correctness is decidable by a specified verifier.
Escrow value against its hash. Anyone who produces a solution that verifier
accepts sweeps every bounty attached to that hash. Settlement is a
deterministic check anyone can re-run — no jury, no oracle of opinion, no
administrator with discretionary control.

**QED certifies nothing.** It verifies representation — that artifacts are
what they claim to be, that references resolve, that parameters are
declared, that signatures attribute. It does not verify that any choice is
wise. Users assess; communities debate in signed, indexed artifacts;
publishers stand behind only their own work.

> QED verifies that a profile is the profile it claims to be.
> QED does not verify that adopting it is wise.

---

## Read this first

**`RISK.md`.** Protocol version 0.2 is pre-alpha specification. The
reference escrow has known exploitable settlement paths; the reference
verifier does not enforce several policies it documents; zero normative
claims are marked conforming. Do not place value at risk against this
release.

---

## Versioning

One scheme, held consistently across every document in this project:

| Version | Meaning |
|---|---|
| **v0.1** | Genesis release. Superseded. Contained claims the software did not implement |
| **v0.2** | This release. Documents, schemas, conformance suites, and corpus. No value, no chain, no conformance yet |
| **v1.0** | Gated release. Defined by gates passed, not features shipped |

Document version tracks protocol version, so there is never ambiguity about
which paper describes which protocol. Every file carries a version header
and a status line: `draft`, `published`, or `superseded`.

## What's in the box

```
qed-protocol/
├── README.md                      ← you are here
├── RISK.md                        ← read before any value moves
├── CLAIM_TABLE.md                 ← every normative claim and its real status
├── CHANNELS_AND_PROFILES.md       ← PROFILED / INLINE, parameters, presentation
├── INSTALL.md                     ← hosting and running an instance
├── LICENSE                        ← MIT
├── whitepaper/QED_WHITEPAPER.md   ← the architecture (normative claims tagged)
├── schemas/                       ← ten artifact schemas
│   ├── sealed_statement · bounty · claim · verification_receipt
│   ├── profile · attestation · corpus_case
│   └── ask · badge · branch_lineage        (non-normative)
├── conformance/
│   ├── identity_vectors.json      ← the cross-implementation identity gate
│   ├── adversarial_corpus.json    ← 24 cases, all from review of v0.1
│   └── genesis_asks.json          ← ASK-000 … ASK-004
├── reference/
│   ├── verify_lean.py             ← known gaps, catalogued in CLAIM_TABLE
│   └── QEDEscrow.sol              ← unaudited, defective, testnet-only
└── demo/index.html                ← sandboxed demonstrator
```

## The model in five minutes

1. **SealedStatement** — immutable, content-addressed problem. Its id
   commits to every settlement-affecting field.
2. **Channels** — `PROFILED` inherits parameters from a published profile;
   `INLINE` declares them itself. Neither is privileged; PROFILED does not
   mean approved. Bounties never aggregate across statements, so a funder
   always sees the terms before value moves.
3. **Bounty** — escrow bound to a statement id. Bounties aggregate per
   statement. Funders may also race their own bounty.
4. **Claim** — commit, then reveal. Priority is ordered by the settlement
   chain, not globally across the federation.
5. **Evidence graph** — profiles carry signed attestations, reviews,
   objections, counterexamples, successors, and adoption records. QED
   preserves them without collapsing them into a verdict.

**"Conforming" means exactly one thing:** this implementation produced the
declared results for this identified test suite. Not secure, not audited,
not suitable, not endorsed.

## The adversarial corpus

Append-only, federation-wide, and opened with every failure independent
review found in v0.1 — 24 cases, each an input paired with a required
verdict. An implementation is conforming against it only by reproducing
every verdict exactly. A class closed once stays closed for every
implementation and every fork.

This is the mechanism that turns criticism into capital, and it is where the
standing red-team invitation lives.

## Where to start

- **Object to something** — ASK-000 is open and permanent.
- **Close the identity gate** — ASK-001 needs a second implementation in a
  language that isn't Python. It is the one gate a single author
  structurally cannot pass alone.
- **Write hostile inputs** — ASK-002. The corpus names its cases and
  specifies verdicts; the inputs are unwritten.

## Agents

The protocol never distinguishes humans from agents. Asks cost nothing to
attempt and settle deterministically, making them a zero-spend proving
ground: train on Asks, accumulate a public record, be graduated to a budget
by whoever chooses to trust it. Graduation is an act of trust between
parties, never a protocol permission.

## Copying this

MIT. Self-hosting is the point — run an instance, publish profiles, fork the
protocol, host a modified copy. Including a hostile one. **Verify what you
run:** a page that looks like this is not this. Check hashes, check
signatures, re-run the checks. That instruction is not a caveat on a
trustless system; it is the system.

□ → ∎
