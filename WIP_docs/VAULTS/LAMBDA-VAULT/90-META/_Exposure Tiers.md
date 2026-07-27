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

# Exposure Tiers

The problem: one corpus, several audiences, and some connections between silos that
must remain unmentioned rather than merely unpublished. Obsidian solves this with
**properties plus tags**, belt and braces.

Every note carries both:

| Property | Tag | Who may see this note |
|---|---|---|
| `exposure: public` | `#x/public` | Anyone. Site visitors, cold readers. |
| `exposure: agent` | `#x/agent` | Recruited field agents. Story-facing, in-world. |
| `exposure: internal` | `#x/internal` | You. Author-side scaffolding and real cross-silo structure. |
| `exposure: sealed` | `#x/sealed` | Nobody, including you, until a QED-style unseal condition is met. |

Why both? The **property** is what queries and dashboards filter on. The **tag** is
what Graph View's filter box reliably understands. Keep them in sync — the templates
do it for you.

## Saved graph filters

Graph View has a search box. Type a query there and the graph redraws to only those
notes. Open a graph, set the filter, then use the preset save control so you can
switch views in one click.

- **Agent-facing ARGO** — `path:30-ARGO tag:#x/agent OR path:30-ARGO tag:#x/public`
  This is what the story looks like from outside. Nothing internal, no bridges.
- **Theory only** — `path:10-CORPUS OR path:20-INSTRUMENTS`
- **Author's whole picture** — no filter. Bridges visible. Everything connected.
- **Orphan check** — `-tag:#x/internal` then look for isolated dots. Those are notes
  nobody can reach from outside; either they need a door or they are internal after all.

## The rule that keeps it honest

A note may only link to a note of **equal or wider** exposure than itself.
- An `agent` note may link to `agent` and `public`. Never to `internal`.
- An `internal` note may link anywhere.

Reason: links are two-way. If an `agent` note links inward, the `internal` note grows a
backlink pointing out, and the moment you export or publish that subtree the edge
travels with it. Downward links leak; upward links do not.

When you need the connection recorded but not created, use [[_Latent Links]].
