# INSTALL — Hosting QED and Running an Instance

**Protocol version 0.2 · Status: draft (pre-publication)**

This bundle is minimum-footprint by design. Every document and the
demonstrator are static files: any host that serves HTML serves QED. No
database, no server runtime, no build step. **MySQL is not required** — see
the growth path before touching any database credentials.

## A. Hosting a static mirror (five minutes)

Works on cPanel shared hosting via File Manager or FTP, and identically on
any other static host.

1. Create a folder in your web root, e.g. `public_html/cryptocache/qed/`.
2. Upload:
   - `demo/index.html`         -> `qed/index.html`
   - `whitepaper.html`         -> `qed/whitepaper.html`
   - `qed-protocol-v0.2.zip`   -> `qed/qed-protocol-v0.2.zip`
   - optionally the whole `qed-protocol/` tree for browsable source.
3. Visit `https://yourdomain/cryptocache/qed/`.

Notes:
- Serve over HTTPS. The demonstrator uses SubtleCrypto for real SHA-256,
  which requires a secure context; without it there is a labeled fallback.
- The demonstrator holds all state in memory and resets on refresh. No
  cookies, no storage, no tracking, no wallet access.
- Each visitor gets an ephemeral guest identity generated on load. Nothing
  is shared between visitors and nothing persists.

## B. What the demonstrator is

A sandboxed mirror of the lifecycle: sealed statements in both channels,
aggregated bounties, commit-reveal, verification, optimistic settlement
with a challenge window, Asks, and a trainable demo agent. Wallets are
slugs. No real value moves.

Verification labeling is exact: `test_harness` runs execute for real in the
browser; `lean4_kernel` runs are simulated and marked as such on their face.
The demonstrator is an explainer, not evidence that the protocol works.

## C. Declaring your instance

Publish a `BranchLineage` artifact naming your parent branch and your
relays. You are then federated: artifacts and attestations are portable.

Also publish, per `CHANNELS_AND_PROFILES.md` §6:
- your inclusion criteria,
- your default ordering and filters,
- a statement that you reserve operator freedom, as any self-hosted
  instance does, and that material changes are logged.

There is no neutral index. Declaring the rules is the honest alternative to
claiming a neutrality no index can have.

## D. Running a node

Three roles, all optional, all federable:

1. **Relay** — store and forward signed events. Any nostr-pattern relay
   works for transport; clients validate against `/schemas`, relays do not.
2. **Verifier** — re-run sealed checks and sign receipts. `verify_lean.py`
   is the reference and has documented gaps (see `CLAIM_TABLE.md`
   `QED-VERIFY-*`). Run it on a machine you are prepared to lose: it exists
   to execute strangers' code in a sealed box.
3. **Escrow adapter** — `QEDEscrow.sol` is unaudited and contains known
   exploitable settlement paths. **Testnet only.** The four verbs
   (fund / refund / commit+reveal / settle) are the normative interface.

## E. Growth path

- **Phase 1 (now):** static mirror, in-memory sandbox. Zero backend.
- **Phase 2:** small PHP relay persisting signed events to flat JSON files.
  Single file, CORS controls, daily caps. Still no database.
- **Phase 3 (optional):** MySQL event store for query scale. Create a NEW
  database and a NEW user scoped to it (cPanel > MySQL Databases > Create
  New Database, Add New User, attach user to database). Never rotate or
  reuse the main account password for this — isolated credentials mean zero
  blast radius to anything else hosted.
- **Phase 4:** value-bearing deployment only after the v1.0 gates pass,
  including independent Lean and contract review.

## F. Verifying anything yourself

```
python3 reference/verify_lean.py \
  --statement path/to/sealed_statement.json \
  --submission path/to/proof.lean \
  --key <verifier-pubkey-hex> \
  --out receipt.json
```

Identical inputs in the pinned container must produce identical results. If
your receipt disagrees with a published one, publish yours: that is the
challenge mechanism working as designed.

For identity, run `conformance/identity_vectors.json` against your
implementation. Byte-for-byte agreement is ASK-001 and is the gate a single
author cannot pass alone.

## G. v1.0 gates

v1.0 is defined by gates passed, not features shipped:

1. Two independent implementations produce identical artifact ids from the
   identity vectors.
2. Every adversarial corpus case returns its required verdict.
3. The Lean verifier binds explicit theorem targets and requires complete
   axiom output.
4. Receipts are signed and independently verifiable.
5. The contract satisfies written state-machine invariants under fuzzing.
6. No unbounded settlement loops.
7. Statement registration is authenticated.
8. A reveal locks applicable funds until settlement or formal rejection.
9. One complete testnet lifecycle reproducible from a clean machine.
10. Every normative claim resolves through `CLAIM_TABLE.md`.
11. Independent Lean and contract review report no unresolved critical or
    high findings.

Gate 1 requires a second implementer. Gate 11 requires money and calendar
time. Both are reasons v1.0 is narrow: audit cost scales with surface, so
every deferral is a discount on the gates that cannot be self-served.

□ -> ∎
