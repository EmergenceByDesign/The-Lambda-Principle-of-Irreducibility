---
silo: meta
subcat: policy
exposure: internal
status: canon
tags:
  - meta/policy
  - x/internal
links-latent: []
---

# Latent Links

For connections you want to *know about* without *declaring*.

A wikilink is a public fact about your vault: it draws a graph edge, creates a
backlink on the far side, and survives export. Sometimes that is exactly wrong — the
relation between an ARGO vignette and the piece of the corpus it dramatises is real,
two-way, and should not be visible to a field agent standing in the room.

## Mechanism 1 — the `links-latent` property

```yaml
links-latent:
  - Winding Migration Cascade
  - MR-Q6
```

Plain strings. No brackets. Therefore: **no graph edge, no backlink, no export trail.**
But fully searchable, and [[_Author Dashboard]] collects every one of them into a single
table so the hidden layer is never lost — only unexposed.

Promoting one is a deliberate act: delete the string, retype the same name in brackets.
That is the whole ceremony of making a connection real.

## Mechanism 2 — unlinked mentions

Obsidian's backlinks panel has a second section: **Unlinked mentions**. Any note whose
body contains the target's name as bare text shows up there, unlinked. So writing
"the residue survives re-description" in a vignette's flavour text makes that vignette
appear under Unlinked Mentions on the corpus note — visible to you in the authoring
interface, invisible in the artifact.

Add `aliases` to a note and mentions of the alias count too. Useful when the in-world
name and the technical name differ:

```yaml
aliases: [the Rope-and-Sand, positive residue]
```

This is the sharpest tool here. The story can be saturated with the theory at the level
of language while the link graph stays clean.

## Mechanism 3 — separate vault, shared folder

Nuclear option, if a silo must be *provably* unable to see another: keep it as its own
vault. Obsidian can hold several vaults open in separate windows and switch between
them. Cost: no cross-silo search, no cross-silo graph, and you maintain the bridges by
hand. Recommend against for now. Mechanisms 1 and 2 give you opacity without amnesia.
