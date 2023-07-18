---
author: richardcase
date: 2023-07-16
paging: Page %d of %d
---
# What is Cluster API?

* Its a **kubernetes-sigs** project
* Built on the premise that **"Cluster lifecycle management is difficult"**
* Especialy cross cloud/target infra with a **consistent operational model**

---
# What is Cluster API?

* Uses **Kubernetes-style APIs & patterns** to **automate cluster lifecycle management**
* Supporting infrastructure is created (i.e. VMs, network, load balancers)
    * Opinionated out of the box
* Bootstrapping and configuration of a Kubernetes cluster on the infrastructure
* **All declaratively!**

---

# What is Cluster API?

### Extensibility is core to Cluster API.....

### ..... designed around interchangeable components called **providers**

---

# What is Cluster API?

* Project has really matured on provisioning
* Starting to build higher order functions
    * Classes of clusters - cookie cutter / super templates
    * Hooks to plugin into wider provisioing landscape
    * Day 2 operations 

---

# Adoption

* Companies managing a large number of clusters:
    * Twilio
    * Giant Swarm
    * New Relic
    * DT
* Software & service vendors:
    * VMWare - Tanzu
    * SUSE - Rancher
    * Redhat - Openshift
    * AWS - EKS Anywhere
    * Spectrocloud

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
    * Baremetal (i.e. Metak3, Tinkerbell)
    * Baremetal-as-a-service (i.e. Equinix)

---
 # One last thought

 ## The choice isn't binary.......
 ## ....you could use Crossplane with Cluster API ;)