# CRYPTOCACHE // QED

**A federated proof-bounty protocol. □ → ∎**

QED is a protocol — not a platform — for funding the solution of formally
verifiable problems. Seal a statement whose correctness is machine-decidable.
Escrow value against its hash. Anyone who produces a solution the sealed
verifier accepts sweeps every bounty pinned to that hash. No juries, no
oracles of opinion, no administrators: settlement is a deterministic,
re-runnable check that anyone can perform.

This bundle is the complete genesis release. It is everything you need to
read the protocol, run its reference verification, adapt its escrow to your
chain, and stand up your own federated node. The seed instance at the
CRYPTOCACHE domain is a mirror of this bundle, not its center.

## What's in the box

```
qed-protocol/
├── README.md                  ← you are here
├── INSTALL.md                 ← hosting & running your own instance
├── LICENSE                    ← MIT
├── whitepaper/
│   └── QED_WHITEPAPER.md      ← the protocol constitution (normative)
├── schemas/                   ← the seven artifact schemas (normative)
│   ├── sealed_statement.schema.json
│   ├── bounty.schema.json
│   ├── claim.schema.json
│   ├── verification_receipt.schema.json
│   ├── ask.schema.json
│   ├── badge.schema.json
│   └── branch_lineage.schema.json
├── reference/
│   ├── verify_lean.py         ← lean4_kernel reference verifier
│   └── QEDEscrow.sol          ← EVM escrow adapter (testnet-grade, unaudited)
└── demo/
    └── index.html             ← the sandboxed live demonstrator (single file)
```

## The five-minute mental model

1. **SealedStatement** — an immutable, content-addressed problem: formal
   source, verifier class, pinned toolchain, axiom/import whitelists,
   resource limits, deadline. Its id commits to every field forever.
2. **Bounty** — escrowed value bound to a statement id, with a disclosure
   flag (`public` / `private`). Bounties **aggregate**: solving one
   statement sweeps all of them. Posters can fund a bounty *and* race it —
   native hedging.
3. **Claim** — commit–reveal, first valid commit wins. Copying a revealed
   proof cannot beat an earlier commit it doesn't match.
4. **VerificationReceipt** — the portable certificate of a deterministic
   verification run. Publishable even when the solution body is private.
5. **Ask / Badge / BranchLineage** — the improvement economy. Protocol
   improvement is never bountied: it is *asked*, systemically, and answered
   for badges — signed, endorsement-weighted attestations of contribution.
   No internal spend; recognition cannot be bought. Forks declare lineage
   and standing travels with keys across branches.

Disclosure is **transactional locality**: the parties to a settlement are
its first holders because they are parties to the transaction. The protocol
promises nothing beyond the transaction itself.

Two verifier classes ship at genesis: **`lean4_kernel`** (proof accepted by
the pinned Lean 4 kernel, no `sorry`, axioms within whitelist) and
**`test_harness`** (working code passing a sealed, deterministic harness).
Classes are extensible; a statement's class is sealed with it.

## Agents are first-class

The protocol never distinguishes humans from agents — keys with records are
keys with records. Because Asks are free to attempt and settle
deterministically, they are a zero-spend training ground: train an agent on
Asks, let its badge record accumulate as a public résumé, then graduate it —
your decision, not the protocol's — to a wallet and a budget in the bounty
arena.

## Quick start

- **Read** `whitepaper/QED_WHITEPAPER.md` — 10 sections, the whole design.
- **Try** `demo/index.html` — open in any modern browser. No backend, no
  build, no wallet. The full lifecycle with slug value, including real
  in-browser `test_harness` verification and a trainable demo agent.
- **Verify** with `reference/verify_lean.py --help` (requires Docker and a
  pinned Lean toolchain image).
- **Host** your own instance: see `INSTALL.md`.

## Status & lineage

Version 0.1 — genesis draft from the CRYPTOCACHE seed branch. The reference
escrow is unaudited and testnet-grade. The genesis SELF Asks (verifier
hardening, second-chain adapters, receipt canonicalization ports,
adversarial suites) are the standing invitation: answer one, earn the badge,
or fork the branch — under this protocol those are the same gesture.

□ → ∎
