---
silo: meta
subcat: dashboard
exposure: internal
status: canon
tags:
  - meta/dashboard
  - x/internal
links-latent: []
---

# Tier Assignment Queue

Every ingested note has `tier:` empty. Nothing was auto-assigned, because tier is a claim
about epistemic standing and inferring it from a filename would be exactly the kind of
quiet class-widening [[MR-Q6]] exists to catch.

Set `tier: I` / `II` / `III` in the properties panel as you work through these. Live count:

```dataview
TABLE WITHOUT ID length(rows) AS "unassigned"
FROM #tier/unassigned
GROUP BY true
```

## Suggested order — CURRENT documents, longest first
These are the ones marked CURRENT in their source paths, so they carry the most weight.

- [[02 The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2]] — 26,142w **CURRENT**
- [[The Rope-and-Sand Gambit Geometric Intuition and Structural Instability V1.2 CURRENT]] — 25,292w **CURRENT** `pdf`
- [[DST Traversal Record (2)]] — 16,814w **CURRENT**
- [[03 The Rope-and-Sand Gambit Analytical Reconciliation and Structural Identity V1.7]] — 4,848w **CURRENT**
- [[TUFT Registry Studies Structural Analysis for ZFC IRRPROOF Final]] — 4,112w **CURRENT** `pdf`
- [[04 Rope and Sand Gambit Supplemental Synthesis V1.0]] — 2,441w **CURRENT**
- [[Supplement A]] — 1,991w **CURRENT**
- [[G FET Based - Graphene-Enhanced Hybrid Stochastic Logic Gates V1.0 CURRENT]] — 1,908w **CURRENT**
- [[REFET PPD V1.1]] — 1,299w **CURRENT**
- [[R S Protocol R11.23+ CURRENT (2)]] — 1,158w **CURRENT** `pdf`
- [[R S Protocol R11.23+ CURRENT]] — 1,125w **CURRENT**
- [[A TRUE UNIVERSAL QUANTUM COMPUTER FROM OFF THE SHELF COMPONENTS V1.0 CURRENT]] — 1,067w **CURRENT**
- [[PUBLIC Copy of ARGO GATEWAY POD 1.41]] — 875w **CURRENT** `pdf`
- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT (2)]] — 820w **CURRENT** `pdf`
- [[STORMING THE GATES REFET Combined with Stable Stochastic Signal Generation V1.2 CURRENT]] — 810w **CURRENT**
- [[The Rope-and-Sand Gambit Introduction CURRENT]] — 792w **CURRENT**
- [[PUT UP OR SHUT UP A Minimalist PoC for Graphene-Enhanced Hybrid Stochastic Logic Gates V1.0 CURRENT]] — 389w **CURRENT**

## Everything unassigned, by silo
```dataview
TABLE subcat, status, words
FROM #tier/unassigned
SORT words DESC
LIMIT 100
```
