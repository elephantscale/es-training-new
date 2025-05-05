### Advanced Ansible – Course Outline  
*(4-day instructor-led workshop, 60 % hands-on)*  

---

#### Prerequisites  
- Comfortable writing playbooks, roles, and using `ansible-lint`  
- Familiarity with Linux CLI, Git, and at least one cloud provider  
- Laptop with Docker/Podman (for Execution Environments)  

---

## Day&nbsp;1 – Going Beyond the Basics  

| Session | Topics | Lab Highlights |
|---------|--------|---------------|
| **0. Welcome & Quick Refresher** | Inventory types, variables precedence, `ansible-config view` | Lightning quiz & “pitfalls bingo” |
| **1. Ansible Architecture Deep-Dive** | `ansible-core` vs Collections, the Python execution path, Strategy plugins, Fact cache back-ends | Trace a task’s life with `ANSIBLE_STRATEGY=debug` |
| **2. Execution Environments & `ansible-navigator`** | Why EE replace virtualenvs, building EE images, collections-in-image, Content Signatures | Build a custom EE; run playbooks inside Navigator |
| **3. Collections & Galaxy/Automation Hub** | Semantic versioning, dependency chaining, private Galaxy, signed content | Publish a collection to a local Galaxy server |

---

## Day&nbsp;2 – Power-User Playbooks & Plugins  

| Session | Topics | Lab Highlights |
|---------|--------|---------------|
| **4. Playbook Patterns** | Blocks & rescue, loops with set-fact, async/poll, check/diff, run-once + delegate_to, import vs include | Refactor an untidy playbook into composable blocks |
| **5. Dynamic Inventory Mastery** | Inventory plugins (AWS, Azure, NetBox), Inventory scripts, hostvars search paths | Generate multi-cloud inventory and tag targets |
| **6. Developing Custom Content** | Module API v2, `action`, `lookup`, `filter` plugins, `ansible-doc`, collection tests | Write and unit-test a `filter` that normalises tag names |

---

## Day&nbsp;3 – Reliability, Performance & Security  

| Session | Topics | Lab Highlights |
|---------|--------|---------------|
| **7. Testing & CI/CD** | `ansible-test`, Molecule v6, GitHub Actions matrix, ephemeral runners | Gate a PR with Molecule + Docker driver |
| **8. Performance at Scale** | Forks vs strategy, pipelining, Mitogen, fact caching (Redis), `linear` vs `free` | Benchmark a 200-host synthetic run, tune for 30 % speed-up |
| **9. Security & Compliance** | Vault v2, Ansible-Vault alternatives (HashiCorp Vault, AWS KMS), signing playbooks, FIPS mode, automating CIS benchmarks | Rotate vaulted secrets with `ansible-vault rekey` via EE |

---

## Day&nbsp;4 – Enterprise Automation & New Frontiers  

| Session | Topics | Lab Highlights |
|---------|--------|---------------|
| **10. Automation Controller / AWX Advanced** | RBAC, surveys, workflow job templates, Schedule & notifications, Callback tokens | Create an approval workflow with Slack callbacks |
| **11. Event-Driven Ansible (EDA)** | Rulebooks, event sources (Kafka, webhooks, SNMP traps), `ansible-rulebook` CLI | React to a Git push event to auto-deploy |
| **12. Network & Cloud Automation** | `ansible.netcommon` basics, idempotent network modules, cloud control planes (AWS GuardDuty, Azure Policy) | Push QoS config to Cisco IOS-XE and audit drift |
| **13. Kubernetes & OpenShift** | `kubernetes.core` collection, Helm orchestrations, GitOps hand-off | Deploy a multi-tier app to OpenShift with Ansible |
| **14. Building Self-Service Catalogs** | Service Catalogs in Controller, Ansible Service Broker, integrating with ServiceNow | Expose “Request a Sandbox” catalog item |
| **15. Disaster Recovery & Maintenance** | Backing up Automation Controller, EE registry, log aggregation, upgrading core/collections safely | Simulate & recover from a failed controller node |
| **16. Capstone Project** | Teams design, peer-review & present an end-to-end automation (EDA trigger → Controller workflow → multi-cloud deploy) | Live demo & retro |

---

### Post-Course Resources  
- **Cheat-sheet** of one-liner diagnostics (`ansible-config dump`, `ansible-inventory --graph`, etc.)  
- **Template Git repo**: Molecule scaffold, GitHub Actions, EE Dockerfile  
- **Reading list**: Ansible 2.16 Porting Guide, EDA Best Practices whitepaper (2025-02), FIPS Implementation Guide  

---

> **Need customization?**  
> • Shorten to a 2-day “Performance & Scale” focus, or  
> • Add a half-day on Foreman/Satellite integration.  
