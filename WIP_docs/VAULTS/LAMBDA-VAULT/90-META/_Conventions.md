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

# Conventions

## Frontmatter schema

```yaml
silo: lambda | argo | lab | meta      # which body of work
subcat: <free text>                   # the segregation axis you asked for
exposure: public | agent | internal | sealed
tier: I | II | III                    # epistemic tier, corpus notes only
status: seed | draft | canon
tags: []
links-latent: []
aliases: []                           # optional
```

`tier` keeps your existing discipline machine-readable:
- **Tier I** — certified mathematics. Machine-verified or proved.
- **Tier II** — structural reading. Defensible interpretation, not proved.
- **Tier III** — declared direction. Intent, not claim.

Once these are properties rather than prose, "show me every Tier III statement that a
Tier I result now covers" becomes a query instead of a memory exercise.

## Folders

Folders are for *coarse* separation only — the thing you would put behind a different
door. Fine subcategory work is done by `subcat` and nested tags, because a note can
carry many tags and only one folder.

```
00-MAP/           front doors and indexes
10-CORPUS/        the theory canon, document-per-note
20-INSTRUMENTS/   things that operate: DST rules, QED, bridges
30-ARGO/          the platform, the story, the agents
40-LAB/           physical experiments
90-META/          this folder. how the vault works.
```

## Nested tags

Type `#argo/agents/recruitment` and the tag pane shows a collapsible tree —
`argo` → `agents` → `recruitment`. Click any level to see everything beneath it.
This is your easy subcategory segregation. Established prefixes:

- `#lambda/soir` `#lambda/tuft` `#lambda/dst` `#lambda/nsaf` `#lambda/hexalogy`
- `#argo/story` `#argo/agents` `#argo/vignette` `#argo/platform` `#argo/persona`
- `#lab/plasma` `#lab/avatar`
- `#x/public` `#x/agent` `#x/internal` `#x/sealed`  (exposure, mirrors the property)
- `#residue/open` `#residue/closed`  (the thing you actually care about tracking)

## Naming

Note titles are the link text, so title them as you would say them. `SOIR v1.2`,
not `soir-1-2-final`. Version in the title only where the version is load-bearing.
