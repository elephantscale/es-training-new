# Vault Configuration

# How does Vault encrypt data?

## How does Vault encrypt data?

* Vault encrypts data by leveraging a few key sources. 
    * The libraries that Vault uses, or the cryptography modules
    * Golang's crypto and 
    * x/crypto libraries that are part of the golang language.
  
![](../artwork/go-logo.png)

---

## Vault cryptography libraries

* Kerckhoffs's principle
  * A cryptosystem should be secure even if everything about the system, except the key, is public knowledge
  * No security-by-obscurity
  
* Shannon's maxim
  * The enemy knows the system
  
* HashiCorp principle
  * the source code for how you encrypt and decrypt data should be open source

Notes:

This is very important and it's part of our open-source story because we at HashiCorp abide by something called Kerckhoffs's principle. Kerckhoffs's principle is a principle that comes from a 19th-century military cryptologist who stated that basically there is no security in obscurity. If you have a very secure system that everything that talks about how that system protects itself should be visible.

We translate that into modern times to mean that the source code for how you encrypt and decrypt data should be open source, and that's why HashiCorp's Vault source code for how it—Vault—handles encryption is all composed in its open-source binary. You can go into GitHub and take a look at it now, for example.

---

## Cryptography at HashiCorp

* Leverage those Golang crypto and x/crypto libraries 
  * for heavy lifting associated with encrypting and decrypting data
    
* Those libraries contain the methods and functions 
  * implementations of various algorithms like AES256
  * for internally encrypting data and decrypting data
  * allowing you to leverage cryptography without     
  

Notes:

So we leverage those Golang crypto and x/crypto libraries to handle the heavy lifting associated with encrypting and decrypting data. Those libraries contain the methods and functions that are the implementations of various algorithms like AES256 that are used within Vault, for either internally encrypting data and decrypting data or fo—as part of our transit backend—allowing you to leverage cryptography without having to deploy your own cryptographic infrastructure.

---

## Vault key management

* How does Vault manage keys that are associated with these cryptographic functions? 
* Vault handles this all through its own internal keyring
  * open source
  * not require a user to integrate into something like an HSM (Hardware security module) unless they want to.

Notes:

There's also this element of key management, how does Vault manage keys that are associated with these cryptographic functions? Vault handles this all through its own internal keyring, which is again also in open source, and allows Vault to not have to require a user to integrate into something like an HSM (Hardware security module) unless they want to.

---

## Entropy and Cybersecurity

* Entropy is the foundation upon which all cryptographic functions operate. 
  * It is a measure of the randomness or diversity of a data-generating function.   
  * Data with full entropy is completely random and no meaningful patterns can be found. 
  *  Low entropy data provides the ability or possibility to predict forthcoming generated values
  
Notes: 

Entropy is the foundation upon which all cryptographic functions operate. Entropy, in cyber security, is a measure of the randomness or diversity of a data-generating function. Data with full entropy is completely random and no meaningful patterns can be found. Low entropy data provides the ability or possibility to predict forthcoming generated values. One measure of the quality of cryptographic functions is to measure the entropy of their output. Highly entropic algorithms are needed for encryption and hash functions.

---

## Vault cryptography integrations

* Two key things that we need to focus on
  * entropy
  * links to other cryptographic standards or follows cryptographic standards

Notes:

When we talk about encryption, there are two key things that we need to focus on. The first is entropy and the second is how that encryption algorithm links to other cryptographic standards or follows cryptographic standards.

---

## Entropy in Vault

* The entropy of Vault's encryption varies depending upon what system Vault is being run on
  * Golang's crypto and x/crypto libraries use a randomized function that calls different entropy pools
    *  Entropy pool for Windows  
    *  Entropy pool for Linux

Notes:

We talk about entropy with Vault. The entropy of Vault's encryption varies depending upon what system Vault is being run on. So with Golang's crypto and x/crypto libraries, they use a randomized function that calls different entropy pools depending on which operating system you're deploying that on. For example, Windows uses a different type of entropy pool than the entropy pool used by Linux.

---
## Is your entropy sufficient

* What is sufficient entropy for Vault?
  * In many ways, those random number generators are sufficiently random
  * For some  Vault Enterprise customers 
    * Seal Wrap 

Notes:

One question that you need to really ask yourselves is, "What is sufficient entropy for Vault?" In many ways, those random number generators are sufficiently random. However, especially with Vault Enterprise customers, there are times where we run into questions about, "Is that entropy sufficiently random? Is the method that's used to randomly derive the numbers—used for either salts or otherwise numbers used only once or nonces to protect certain cryptographic components that are protected by Vault—sufficiently random for my threat model?" And if it's not, this is where a Vault Enterprise feature called Seal Wrap comes into play.

---

## Seal Wrap 

* Seal Wrap allows to leverage external cryptographic modules
  * Similar to HSM (Hardware Security Module)
  * protect and wrap the cryptographic infrastructure of Vault 
  * operate within very rigorous cryptographic environments in a way that doesn't violate 
    * their story around entropy, 
    * their story around key rotation, 
    * key management, etc.

Notes:

Seal Wrap allows us to leverage external cryptographic modules, such as those that are contained within your HSM, to protect and wrap the cryptographic infrastructure of Vault in such a way that we can allow Vault to operate within very rigorous cryptographic environments in a way that doesn't violate their story around entropy, their story around key rotation, key management, etc.

---

## US standard of FIPS 140-2

* FIPS 140-2 level one, two, and three environments
* with Seal Wrap, Vault can
  * Be wrapped with another layer of cryptography 
  * from a separate, very secure source such as an HSM
  
Notes:

For example, the US standard of FIPS 140-2 has different levels that refer to how secure an implementation of cryptography is. Well, with Seal Wrap, Vault can allow its data that's being used and stored within cryptographic reservoirs within Vault—so its keyring, the methods that it uses to encrypt data, etc.—all that can be wrapped with another layer of cryptography that comes from a separate, very secure source such as an HSM. And in that kind of model, those HSMs can be configured to run at a very high level of a FIPS level. Thus allowing Vault to non-disruptively operate in FIPS 140-2 level one, two, and three environments.

---

# Static secrets

## Key/Value Secrets Engine

* Vault can be used to store any secret in a secure manner.
* The secrets may be
  * SSL certificates and keys for your organization's domain
  * credentials to connect to a corporate database server, etc.
* Storing such sensitive information in plaintext is not desirable.

## Static secret scenario

* Personas
  * **devops** with privileged permissions to write secrets
  * **apps** reads the secrets from Vault

* Challenge

  * Developers use a single admin account to access a third-party app (e.g. Splunk)
  * and anyone who knows the user ID and password can log in as an admin
  * SSH keys to connect to remote machines are shared and stored as a plaintext
  * An app integrates with LDAP, and its configuration information is in a plaintext

Notes:

* Organizations often seek an uniform workflow to securely store this sensitive information.

---


## Solution

* Use Vault 
  * centralized secret storage 
  * Secure any sensitive information
* Vault encrypts these secrets using 256-bit AES in GCM mode 
  * with a randomly generated nonce prior to writing them to its persistent storage.
  * The storage backend never sees the unencrypted value
  * even if an attacker gained access to the raw storage, they wouldn't be able to read your secrets.
  
Notes:

* The Advanced Encryption Standard (AES), also known by its original name Rijndael (Dutch pronunciation: [ˈrɛindaːl]),[3] is a specification for the encryption of electronic data established by the U.S. National Institute of Standards and Technology (NIST) in 2001.[4]
* AES is a subset of the Rijndael block cipher[3] developed by two Belgian cryptographers, Vincent Rijmen and Joan Daemen
* In cryptography, Galois/Counter Mode (GCM) is a mode of operation for symmetric-key cryptographic block ciphers which is widely adopted for its performance. GCM throughput rates for state-of-the-art, high-speed communication channels can be achieved with inexpensive hardware resources
* Considered secure but costly in hardware

---

## Lab: Static Secret

* Continue with lab21
* **NOTE:** For the purpose of this lab, we will use the root token to work with Vault. 
* Best practice
  * root tokens are only used for just enough initial setup or in emergencies. 
  * As a best practice, use tokens with appropriate set of policies based on your role in the organization.

* https://github.com/elephantscale/vault-consul-labs-answers/tree/main/lab21

---

# Dynamic secrets 

## Database Secrets Engine

---

# Secret management

## Secrets engines

* Static Secrets: Key/Value Secrets Engine
* Versioned Key/Value Secrets Engine
* Cubbyhole Response Wrapping
* Dynamic Secrets: Database Secrets Engine
* Couchbase Secrets Engine
* Database Secrets Engine with MongoDB

---

## Secrets engines cont'd

* Database Root Credential Rotation
* Database Static Roles and Credential Rotation
* Active Directory Service Account Check-out
* OpenLDAP Secrets Engine
* Azure Secrets Engine
* A dozen more secret engines

---

## Versioned Key/Value Secrets Engine

---

## Cubbyhole Secret Engine

* The term
  * cubbyhole comes from an Americanism where you get a "locker" or "safe place" to store your belongings or valuables.
  * It is not possible to reach into another token's cubbyhole even as the root user
  * By contrast, the secrets in the key/value secrets engine are accessible to any token

Notes:

* The term cubbyhole comes from an Americanism where you get a "locker" or "safe place" to store your belongings or valuables. In Vault, the cubbyhole is your "locker". All secrets are namespaced under your token. If that token expires or is revoked, all the secrets in its cubbyhole are revoked as well.

It is not possible to reach into another token's cubbyhole even as the root user. This is an important difference between the cubbyhole and the key/value secrets engine. The secrets in the key/value secrets engine are accessible to any token for as long as its policy allows it.

---

## Scenario

* Personas
  * The end-to-end scenario described in this tutorial involves two personas:
    * admin with privileged permissions to create tokens
    * apps trusted entity retrieving secrets from Vault
* Challenge
  * In order to tightly manage the secrets, you set the scope of who can do what using the Vault policy and attach that to tokens, roles, entities, etc.
  * How can you securely distribute the initial token to the trusted entity?

Notes:

* Personas
* The end-to-end scenario described in this tutorial involves two personas:

* admin with privileged permissions to create tokens
* apps trusted entity retrieving secrets from Vault


* Challenge
* In order to tightly manage the secrets, you set the scope of who can do what using the Vault policy and attach that to tokens, roles, entities, etc.

* Think of a case where you have a trusted entity (Chef, Jenkins, etc.) which reads secrets from Vault. This trusted entity must obtain a token. If the trusted entity or its host machine was rebooted, it must re-authenticate with Vault using a valid token.

* How can you securely distribute the initial token to the trusted entity?

---

## Dynamic Secrets: Database Secrets Engine



---

## Couchbase Secrets Engine


---

## Database Secrets Engine with MongoDB



---

## Database Root Credential Rotation



---

## Database Static Roles and Credential Rotation



---

## Active Directory Service Account Check-out



---

## OpenLDAP Secrets Engine


---

## Azure Secrets Engine


