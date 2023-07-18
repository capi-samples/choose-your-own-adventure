---
author: ''
date: ''
paging: Page %d of %d
---

# What is Cluster API?

* It's a **kubernetes-sigs** project
* Built on the premise that **"Cluster lifecycle management is difficult"**
* **Consistent operational model** across different target infra
* Uses **Kubernetes-style APIs & patterns** to **automate cluster lifecycle management**

---

# What is Cluster API?

1. Provisions infrastructure
2. Bootstraps Kubernetes on infra
3. Manages lifecycle
 
### **All declaratively!**

---

# What is Cluster API?

### Extensibility is core to Cluster API.....

### ..... interchangeable components called **providers**

#### 5 Different provider types (infra, bootstrap, controlplane, ipam, addon)

---

# 1000ft View

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
---

# To help make decision

* You need a management cluster (unless clusters are self managed)
* Opinionated infrastructure setup
    * If you don't like the opinions...BYOI
* A large number of providers. Strong in:
    * Hyperscalers (i.e. AWS, Azure, GCP)
    * Smaller cloud / iaas providers (i.e. Hertzner)
    * Baremetal (i.e. Metal3, Tinkerbell)
    * Baremetal-as-a-service (i.e. Equinix)

---
 # One last thought

 ## The choice isn't binary.......
 ## ....you could use Crossplane with Cluster API ;)
