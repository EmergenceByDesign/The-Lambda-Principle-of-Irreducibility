# QED — Channels, Profiles, and Parameter Classification

**Protocol version 0.2 · Status: draft (pre-publication) · Supersedes: v0.1 draft**

This document specifies how QED offers boilerplate without mandating its
adoption. It defines no safety policy and grants no approval.

---

## 1. Two channels

A statement lives in exactly one channel. The `channel` field is sealed into
the statement hash and is therefore unforgeable and unchangeable after
publication.

| | **PROFILED** | **INLINE** |
|---|---|---|
| Parameters | Inherited from a referenced profile hash | Declared in the statement itself |
| Restatement | Not permitted — inheritance only | N/A |
| Conformance claim | Whatever the profile declares, against a named suite | None unless the author publishes one |
| Who publishes assessments | Profile publisher; any reviewer | Statement author; any reviewer |
| Referenced assessment artifacts | Attestations, reviews, objections indexed against the profile | Same, indexed against the statement |
| Bounty aggregation | Within the statement only | Within the statement only |
| Presentation | Consequential parameters shown before action | Consequential parameters shown before action |

Neither channel is privileged. **PROFILED does not mean approved, audited,
or recommended** — it means the parameters came from a published artifact
someone else can inspect and argue with. **INLINE does not mean unsafe** —
it means the parameters are declared locally and the reader evaluates them
directly.

**Bounties never aggregate across statements**, and a statement never
changes channel. A funder therefore sees the exact parameter set before any
value moves. This is the mechanical property that makes an open parameter
space offerable rather than a trap: the choice is made with the terms
visible, not discovered afterwards.

---

## 2. What holds in both channels

The universal set is deliberately tiny. It contains no safety parameter, no
minimum quorum, and nothing that narrows what a user may choose. It contains
only what keeps an artifact *legible* and its names *honest*.

**L1 · Completeness.** Every parameter affecting settlement is present in
the artifact and inside its hash. No implicit defaults; no value that lives
only in an implementation.

**L2 · Channel declaration.** `channel` is sealed. PROFILED carries a
`profile` hash that resolves and whose parameters match; INLINE carries the
full set.

**L3 · Naming accuracy.** Constrained vocabulary per whitepaper §7. Any
configuration remains permitted; what is constrained is which words the
artifact may use to describe itself. A zero-quorum release is legal and
emits `Release`, not `Settlement`.

L3 restricts vocabulary, never choice. Build an escrow that pays on a timer
with no verification — that is permitted. It simply cannot borrow a word
that tells downstream readers a verifier ran.

**Scope.** L1–L3 are conformance properties. They are enforced by the
reference implementation, tested by conformance vectors, and attributable
through signatures. They are not enforceable against a hostile node, and QED
does not claim otherwise.

---

## 3. Parameter classification

Three classes, distinguished by *who is exposed to a wrong value*.

- **Legibility (L)** — universal, per §2.
- **Profile-borne (P)** — sealed by the profile in PROFILED; author-set in INLINE.
- **Free (F)** — author's choice in both channels.

| Parameter | Class | PROFILED | INLINE | Note |
|---|---|---|---|---|
| `channel` | L | sealed | sealed | Unforgeable lane marker |
| `verifier_class` | P | profile | author | INLINE may declare classes no profile covers |
| `toolchain` digests | P | profile | author | Presence and exactness is L; values are P/F |
| `axiom_whitelist` | P | profile | author | Contents free; completeness is L |
| `import_manifest` | P | profile | author | Must be present and complete (L) |
| `resource_limits` | P | profile | author | Presence L; values P/F |
| `challenge_window` | P | profile | author | Zero permitted; see L3 |
| `quorum_m` / `attestors` | P | profile | author | Zero permitted; a zero-quorum release is `Release` |
| `deadline` | F | profile bounds | author | Chooser's exposure |
| `refund_semantics` | P | profile | author | Interacts with active reveals; surfaced at fund |
| `disclosure` | F | profile-limited | author | Per-bounty; social not cryptographic in v0.2 |
| `currency` / adapter | F | profile-limited | author | |
| `max_bounty_count`, `max_value` | P | profile | author | Bounds keep settlement executable |
| canonicalization + signature suite | L | fixed | fixed | RFC 8785 JCS + ed25519 |

Two rows are not preferences and it is worth saying why plainly.

**Canonicalization is not a flavour.** Disagreement produces no benefit and
unbounded cost: two nodes assign different ids to the same object and the
federation splits without anyone noticing. Fixed in both channels.

**Collection bounds are not safety theatre.** Unbounded bounty and commit
arrays make settlement exceed block gas limits — the statement becomes
unsolvable and the escrow unspendable. A cap protects the author's own
statement, not a counterparty's feelings.

---

## 4. Profile anatomy

A profile is content-addressed: `qed:profile:<64-hex>`. It seals the
P-class parameters, its conformance suite reference, and its publisher
identity. A profile makes a **completeness** claim, which is checkable. It
makes no safety claim, which would not be.

The seed instance publishes one profile as its own contribution — not as the
protocol's recommended choice:

`qed:profile:lean-public-testnet-v1` — `lean4_kernel` only, public
disclosure, one chain, one pinned toolchain, nonzero fixed quorum, bounded
collections, defined refund-versus-reveal precedence.

Additional profiles are published by whoever wishes to publish them. Each
carries its own evidence graph, and readers compare. Cost of assurance, not
scarcity of permission, is why the seed ships one.

---

## 5. Evidence graph

Every profile and implementation accumulates signed, indexed artifacts:

```
Profile
├── publisher signature
├── conformance claims (suite id → declared results)
├── test-suite results
├── reviews and audits
├── objections and counterexamples
├── successor profiles
└── adoption records
```

QED preserves identity and relationships. It does not score, average, or
resolve them into a verdict. Ranking and filtering are **view policies**:
each client or instance chooses its own, declares it, and makes it
user-overridable. This is where volume is managed — the way mail clients
filter spam that SMTP has no opinion about.

---

## 6. Declared presentation

There is no neutral presentation. Ordering is editorial. Default filters are
editorial. What sits adjacent to a fund control, what is one click away, what
appears above the fold — all editorial. An index that claims neutrality is
making a claim it cannot support, in the same way an index that claims
endorsement is.

QED instances therefore **declare** rather than claim neutrality:

**D1 · Stated rules.** Inclusion criteria, default ordering, and default
filters are published and inspectable.

**D2 · Overridable.** Users may change ordering and filtering; the active
rule is visible.

**D3 · Operator freedom, stated.** An instance operator may include,
exclude, order, or remove at their discretion, exactly as any self-hosted
instance may. The attempt is unbiased; the right is reserved. Material
changes are logged.

**D4 · Placement rule.** Consequential and irreversible facts appear
adjacent to the action that triggers them. This is itself an editorial rule
and is stated as one so it can be argued with.

Under D4 the interface presents **facts, not warnings**: "challenge window:
0 seconds — a claim can settle with no time to contest" is a fact rendered
in plain language. "Warning: dangerous configuration" is a judgment and does
not belong to the index.

---

## 7. Disclosure surfaces

The risk picture differs by role, and the solver's is the under-served one.

| Surface | Audience | States |
|---|---|---|
| Statement view | both | channel, profile or inline parameters, verifier policy, evidence graph |
| Fund control | funder | refund conditions, deadline, disclosure flag, parameter facts |
| Commit control | solver | revelation is irreversible; compute is unrecoverable; conditions under which a verified claim may still fail to settle |

A funder's downside is bounded by escrow and has a refund path. A solver
spends real compute and then **discloses work that cannot be un-disclosed**.
Under a transparency ethos that asymmetry deserves the louder billing, which
is a placement decision made under D4 and stated here so it can be
contested.

---

## 8. Open questions

1. **Removal policy.** §9 of the whitepaper states removal is possible for
   illegal, malware-bearing, or person-targeting material, logged as
   artifacts. The threshold and the logging format are unspecified.
2. **Disclosure-channel split for vulnerabilities.** Public-immediate for
   anything that cannot move value; private-first with a defined window and
   a larger payout for anything that can. Needs stating before launch, not
   after the first report.
3. **Profile succession.** When a profile is superseded, what happens to
   live statements referencing the predecessor? Proposed: nothing — sealed
   is sealed — with succession recorded as an edge only.
4. **Identity gate.** The second implementation required for
   cross-language id agreement cannot be produced by one author. This is
   ASK-001.

---

□ → ∎
