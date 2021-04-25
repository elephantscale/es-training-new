# Vault Configuration

# Vault Secret Engines

## Static Secrets: Key/Value Secrets Engine

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

Personas
The end-to-end scenario described in this tutorial involves two personas:

devops with privileged permissions to write secrets
apps reads the secrets from Vault
»Challenge
Consider the following situations:

Developers use a single admin account to access a third-party app (e.g. Splunk) and anyone who knows the user ID and password can log in as an admin
SSH keys to connect to remote machines are shared and stored as a plaintext
API keys to invoke external system APIs are stored as a plaintext
An app integrates with LDAP, and its configuration information is in a plaintext
Organizations often seek an uniform workflow to securely store this sensitive information.

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
