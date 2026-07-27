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

# Author Dashboard

Requires Dataview. The internal view of the whole vault — every hidden layer surfaced
in one place. This note is `exposure: internal` and must never be exported.

## Every latent link in the vault

```dataview
TABLE silo, subcat, links-latent AS "latent"
FROM ""
WHERE links-latent AND length(links-latent) > 0
SORT silo ASC
```

## Open residue

```dataview
TABLE tier, silo, status
FROM #residue/open
SORT tier ASC
```

## Tier III directions with no Tier I or II descendant

Where you have declared an intention and not yet moved on it.

```dataview
TABLE status, subcat
FROM ""
WHERE tier = "III"
SORT status ASC
```

## Exposure audit — downward links

Notes that may be leaking. Read the outgoing links of each `agent` note and confirm
none point at `internal`. Dataview cannot check the far side's exposure directly, so
this is the manual pass; run it before any export.

```dataview
TABLE exposure, file.outlinks AS "points at"
FROM #x/agent
WHERE file.outlinks
```

## Seeds never watered

```dataview
TABLE silo, subcat, file.mtime AS "touched"
FROM ""
WHERE status = "seed"
SORT file.mtime ASC
LIMIT 30
```
