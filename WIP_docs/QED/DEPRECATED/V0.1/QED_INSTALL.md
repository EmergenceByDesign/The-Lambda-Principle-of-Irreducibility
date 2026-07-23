# INSTALL — Hosting QED and Running Your Own Instance

This bundle is deliberately minimum-footprint. The demonstrator and all
documents are static files: any web host that serves HTML serves QED.
No database, no server runtime, no build step is required for the seed
mirror. (MySQL is explicitly NOT required — see "Growth path" below
before touching any database credentials.)

## A. Hosting the seed mirror (static, 5 minutes)

Works on HostGator shared hosting via cPanel File Manager or FTP, and on
any other static host identically.

1. Create a folder in your web root, e.g. `public_html/cryptocache/qed/`.
2. Upload:
   - `demo/index.html`            → `qed/index.html`   (the demonstrator IS the landing page)
   - `whitepaper.html`            → `qed/whitepaper.html`  (styled edition, ships beside this bundle)
   - `qed-protocol-v0.1.zip`      → `qed/qed-protocol-v0.1.zip`  (the downloadable bundle — this folder, zipped)
   - optionally the whole `qed-protocol/` tree for browsable source.
3. Visit `https://yourdomain/cryptocache/qed/`. Done.

Notes:
- Serve over HTTPS (HostGator provides free AutoSSL). The demonstrator
  uses the browser's SubtleCrypto for real SHA-256 commits, which
  requires a secure context; it falls back to a labeled demo hash
  otherwise, but HTTPS gives you the real thing.
- The demonstrator holds all state in memory and resets on refresh —
  intentional for a sandbox. No cookies, no storage, no tracking.

## B. What the demonstrator is (and is not)

It is a sandboxed mirror of the full federated lifecycle: sealed
statements, aggregated bounties with disclosure flags, commit–reveal,
verification (REAL deterministic `test_harness` runs in your browser;
`lean4_kernel` runs are simulated and labeled as such), optimistic
settlement with a challenge window, Asks, endorsement-weighted Badges,
and a scripted demo agent you can train on Asks and graduate to a
budget. Wallets are slugs. No real value moves; no wallet software is
touched. Where a real instance would plug in a chain adapter, the demo
shows the slug and names the interface.

## C. Running a real node

A "node" is any subset of three roles, all optional, all federable:

1. **Relay** — store-and-forward signed events (nostr-pattern). Any
   existing nostr relay works for transport; QED events are JSON
   payloads validated against `/schemas` by clients, not by relays.
2. **Verifier** — re-run sealed checks and sign receipts.
   - `lean4_kernel`: `reference/verify_lean.py` (requires Docker; pull
     the statement's container BY DIGEST; keep the machine airgapped
     from anything you love — it exists to run strangers' code in a
     sealed box).
   - `test_harness`: containerize the sealed runner image the same way.
3. **Escrow adapter** — deploy `reference/QEDEscrow.sol` to a TESTNET
   (Sepolia etc.) while it remains unaudited. The four verbs (fund /
   refund / commit+reveal / settle) are the normative interface; adapt
   them to your chain of choice.

Declare your instance with a `BranchLineage` artifact naming your
parent branch, and you are federated: standing (badges) is portable to
and from your branch by construction.

## D. Growth path for the CRYPTOCACHE seed (when you outgrow static)

- **Phase 1 (now):** static mirror, in-memory sandbox. Zero backend.
- **Phase 2:** a small PHP relay (same pattern as the existing
  CRYPTOCACHE PHP mind-relay: single file, CORS controls, daily caps)
  that persists events to flat JSON files. Still no database, no
  credential changes.
- **Phase 3 (optional):** MySQL-backed event store for query scale.
  Do this deliberately: create a NEW database and a NEW database user
  scoped to it in cPanel (never reuse or rotate the root/main password
  casually — cPanel > MySQL Databases > "Create New Database" + "Add
  New User" + attach user to database gives you isolated credentials
  with zero blast radius to anything else you host).
- **Phase 4:** real chain adapter on mainnet — only after the escrow
  contract has been independently audited. This is a SELF Ask.

## E. Verifying a claim yourself (the whole point)

Anyone can re-check anything:

```
python3 reference/verify_lean.py \
  --statement path/to/sealed_statement.json \
  --submission path/to/proof.lean \
  --key <your-verifier-pubkey-hex> \
  --out receipt.json
```

Identical inputs in the pinned container MUST produce identical results.
If your receipt disagrees with a claimed one, publish it: that is the
challenge mechanism working as designed.

□ → ∎
