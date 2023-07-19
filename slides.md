---
author: ''
date: ''
paging: Page %d of %d
---

# What is Cluster API?

* It's a **kubernetes-sigs** project
* Started based on the observation that **"Cluster lifecycle management is difficult"**
* **Consistent operational model** across different target infra
* Uses **Kubernetes-style APIs & patterns** to **automate cluster lifecycle management**

> slides & demo: https://github.com/capi-samples/choose-your-own-adventure

---

# What is Cluster API?

1. Provisions infrastructure
2. Bootstraps Kubernetes on the infra (Kubeadm, RKE2, K3s)
3. Manages lifecycle of infra & k8s (version upgrades, scaling)
4. Lots more functionality like cluster classes, runtime hooks, addons, ...
 
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

* You need a management cluster (unless using "self managed" pattern)
* Opinionated infrastructure setup
    * If you don't like the opinions...BYOI
* Strong community around CAPI and its providers
* Used by lots of companies & in products/services:
    * Mercedes-Benz
    * New Relic
    * DT
    * AWS - EKS Anywhere
    * SUSE - Rancher
    * VMWare - Tanzu
    * .....lots more

---
 # One last thought

 ## The choice isn't binary.......
 ## ....you could use Crossplane with Cluster API ;)
