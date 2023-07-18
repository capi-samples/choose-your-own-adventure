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
                                                         │    Workload    │        
                                                ┌───────▶│   Cluster 1    │        
                                                │        │                │        
                      ┌────────────────┐        │        │                │        
     ┌─────┐          │                │        │        └────────────────┘        
     │     │          │      CAPI      │   Provision                     AWS       
     │yaml │───Apply──▶   Management   │───────&┤     ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─  
     │     │          │    Cluster     │    Manages                      Baremetal 
     └─────┘          │                │        │        ┌────────────────┐        
                      └────────────────┘        │        │                │        
                                                │        │    Workload    │        
                                                └───────▶│   Cluster N    │        
                                                         │                │        
                                                         │                │        
                                                         └────────────────┘        
```
