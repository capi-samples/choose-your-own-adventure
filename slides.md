---
author: richardcase
date: 2023-07-16
paging: Page %d of %d
---

# Cluster API

Need to add points here

```
                                                    ┌────────────────┐
                                                    │                │
                 ┌────────────────┐                 │    Workload    │
                 │      CAPI      │        ┌───────▶│   Cluster 1    │
                 │   Management   │        │        │                │
                 │    Cluster     │        │        │                │
┌─────┐          │                │        │        └────────────────┘
│     │          │  ┌───┐  ┌───┐  │   Provision                     AWS
│yaml │───Apply──▶  │ P │  │ P │  │───────&┤     ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─
│     │          │  └───┘  └───┘  │    Manages                      Baremetal
└─────┘          │  ┌───┐  ┌───┐  │        │        ┌────────────────┐
                 │  │ P │  │ C │  │        │        │                │
                 │  └───┘  └───┘  │        │        │    Workload    │
                 │                │        └───────▶│   Cluster N    │
                 └────────────────┘                 │                │
                  c = core controllers              │                │
                  p = provider                      └────────────────┘
```
