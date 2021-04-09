# Vault introduction

## Please meet Vault

* "Alice, please meet pudding"
* "Pudding, please meet Alice"
    * From *Alice in Wonderland*
    
![](../artwork/alice-pudding.png)

---

## HashiCorp history

* Vagrant was first
    * Jump into development environment
* Packer was next
    * Build machine images
* Serf and Consul
    * Meet the network challenges of distributed applications
* Terraform
    * Simple IaS
* Nomad
    * Containers with binaries, JARs, VMs
* Vault
    * Was not there

---
                            
## The need for Vault

* People need to store TLS certs, usernames, passwords, API keys, etc.
* In particular, HashiCorp customers entrusted these to HashiCorp
* Where do hackers go for big prizes?
    * Where the payout is great
* So HashiCorp was nervous
    * But existing approaches did not work
        * Insecure
        * Hard to automate
        * Too complex
        
---

## So, why Vault?         

* Allow access to systems and services
    * Only to authorized users and services
* And, it's not easy
* For example
    * Humans don't authenticate the same way as computers
    * Either humans suffer to computer designs are unnatural
    
---

## Vault idea

* Let's look at Kerberos
    * It's good and popular
    * But complex and hard to integrate
    * Kerberos requires systems to integrate using GSS API
    
* Let's invert it!
    * Instead of requiring every system to speak a common language
    * Create a plugin for each system
        * Allow Vault to speak to the system via plugin
        
## Vault plugins

* Most RDMBS
* NoSQL
* Message queues
* Public cloud providers
* Active Directory
* LDAP
* More...

---

## Vault manages everyone
* That has an API and credentials
* Humans
    * Username/password
    * Single sign-on (SSO): Active Directory, Okta
* Applications
    * Certificates
    * Bearer tokens
    * Cloud vendors
    * Kubernetes
    * Nomad
    * CloudFoundary
    
---
    
      
                       