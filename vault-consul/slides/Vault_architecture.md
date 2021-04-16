# Vault Architecture

## Imagine going on vacation

* The receptionist asks for your identity
* After it is verified, you get the room key
* With Vault, it is just as easy
![](../artwork/pexels-christina-morillo-1181524.jpg)

Notes:

* Imagine that someone is taking a vacation to a beautiful and exotic location. 
* Their trip would begin with their arrival at the hotel to check in to their room. 
* At the front desk, the receptionist asks for the person to prove their identity by providing credentials. 
* The receptionist would then check their credentials against the hotel record on file and determine that they are whom they say they are. 
* After verifying the guest's identity, the receptionist would issue the guest a room key. 
* The specific level of access granted to the guest would depend on the guest's relationship with the hotel. 
* Where a first-time guest might only receive access to their room and the hotel gym, 
a returning guest may also receive access to the guest lounge for their loyalty.

---

## Hotel entry

* Hotel guest
  * Many entrances
  
* Vault client
  * Variety of interfaces 
    * API
    * CLI
    * UI

---

## Hotel protection

* Hotel
  * Walls and dooar
  
* Vault
  * cryptographic barrier
    * responsible for encrypting all information stored by Vault

---

## Hotel guests

* Guest objective
  * Access their rooms
  * First, they check in
  
* Vault client objective
  * Access data from a secrets engine
  * First, they authenticate  
    * Vault validates the credentials of the user 
    * through a configured **auth method**
    * to ensure those credentials are valid
  * Vault issues a token  

---

## Vault's token
* Token is issued to the client
  * Based on the policy for that user
* Token permits access to different endpoints in Vault, called **paths**
* Token has a time-to-live (TTL)

---

## Vault basic components

* Paths
* Secrets engines
* Auth methods
* Tokens
* Policies

---

## Paths  

* the basic building blocks of Vault
* every endpoint in Vault is accessible through a path
* paths provide access to
    * secrets engines
    * policies
    * auth methods
    * static secret values
    * system health information.

Notes:

* Paths are the basic building blocks of Vault. 
* Like the hallways of a hotel, every endpoint in Vault is accessible through a path.
* These paths provide access to everything within Vault, including secrets engines, policies, auth methods, static secret values, and system health information. 
* After a component is enabled in Vault, all interactions with that component are performed using the associated path. 
* Even Vault's administrative functions are configured using a path.

---

## Secrets engines

* Secrets Engines Secrets engines provide Vault's core functionality
* Each secrets engine has its own specific function
  * static secret data
  * short-lived, dynamic credentials
  * encrypt plaintext data in transit
  
![](../artwork/secrets.jpeg)

Notes:

* Secrets Engines Secrets engines provide Vault's core functionality, and without secrets engines, there is no point in deploying Vault. 
* The specific function of each secrets engine, however, can vary. 
  Some secrets engines store static secret data, while other secrets engines can generate a set of short-lived, dynamic
  credentials. Some can even encrypt plaintext data in transit. 
* All other Vault components can be seen as supporting components to secrets engines.

---

## Auth methods

* Auth methods are responsible for 
  * assessing identity 
  * assigning a set of policies to a user or machine. 
  * validate authentication requests
  * method examples 
    * Active Directory
    * LDAP 
    * GitHub 
    * Kubernetes 
    * Okta

Notes:

* Auth Methods Auth methods are responsible for assessing identity and assigning a set of policies to a user or machine. 
* Like the front desk at a hotel, auth methods validate authentication requests 
* through the configured identity provider 
* to ensure the credentials are valid before granting access to services. 
* Examples of auth methods include Active Directory, LDAP, GitHub, Kubernetes, Okta, 
*  and identity management services on the major cloud providers.

---

## Tokens

* Tokens are the core method of authentication within Vault. 
  * configured to use tokens directly as an authentication mechanism, or
  * an auth method can be used to generate dynamic tokens based on external identities
  
Notes: 

* Tokens are the core method of authentication within Vault. 
* Vault can be configured to use tokens directly as an authentication mechanism, 
* or an auth method can be used to generate dynamic tokens based on external identities. 
* Regardless of how Vault clients authenticate to Vault, a token will be used for all subsequent requests.

--- 

## Policies 

* Policies determine the level of access an entity has to a particular path
* or the data contained therein once the entity has authenticated. 
* Permissions: "CRUD" 
  * applied to a particular path and associated with specific Vault clients 
  * or applied service-wide

Notes:

* Policies determine the level of access an entity has to a particular path or the data contained therein once the entity has authenticated. 
* Permissions defined inside of these policies follow the typical "CRUD" model of access: Create, Read, Update, Delete. 
* These permissions or "capabilities" are applied to a particular path and associated with specific Vault clients or applied service-wide. 
* Certain "parameters" can be associated with the policies to tighten security controls around specific actions further. 
* In summary, while auth methods handle authentication to Vault, policies control authorization to Vault components once a client has successfully authenticated.

---

## Terminology

* Storage Backend
* Barrier
* Secrets Engine
* Audit Device
* Auth Method
* Client Token
* Secret
* Server

Notes:

Storage Backend - A storage backend is responsible for durable storage of encrypted data. Backends are not trusted by Vault and are only expected to provide durability. The storage backend is configured when starting the Vault server.

Barrier - The barrier is cryptographic steel and concrete around the Vault. All data that flows between Vault and the storage backend passes through the barrier. The barrier ensures that only encrypted data is written out, and that data is verified and decrypted on the way in. Much like a bank vault, the barrier must be "unsealed" before anything inside can be accessed.

Secrets Engine - A secrets engine is responsible for managing secrets. Simple secrets engines like the "kv" secrets engine simply return the same secret when queried. Some secrets engines support using policies to dynamically generate a secret each time they are queried. This allows for unique secrets to be used which allows Vault to do fine-grained revocation and policy updates. As an example, a MySQL secrets engine could be configured with a "web" policy. When the "web" secret is read, a new MySQL user/password pair will be generated with a limited set of privileges for the web server.

Audit Device - An audit device is responsible for managing audit logs. Every request to Vault and response from Vault goes through the configured audit devices. This provides a simple way to integrate Vault with multiple audit logging destinations of different types.

Auth Method - An auth method is used to authenticate users or applications which are connecting to Vault. Once authenticated, the auth method returns the list of applicable policies which should be applied. Vault takes an authenticated user and returns a client token that can be used for future requests. As an example, the userpass auth method uses a username and password to authenticate the user. Alternatively, the github auth method allows users to authenticate via GitHub.

Client Token - A client token (aka "Vault Token") is conceptually similar to a session cookie on a web site. Once a user authenticates, Vault returns a client token which is used for future requests. The token is used by Vault to verify the identity of the client and to enforce the applicable ACL policies. This token is passed via HTTP headers.

Secret - A secret is the term for anything returned by Vault which contains confidential or cryptographic material. Not everything returned by Vault is a secret, for example system configuration, status information, or policies are not considered secrets. Secrets always have an associated lease. This means clients cannot assume that the secret contents can be used indefinitely. Vault will revoke a secret at the end of the lease, and an operator may intervene to revoke the secret before the lease is over. This contract between Vault and its clients is critical, as it allows for changes in keys and policies without manual intervention.

Server - Vault depends on a long-running instance which operates as a server. The Vault server provides an API which clients interact with and manages the interaction between all the secrets engines, ACL enforcement, and secret lease revocation. Having a server based architecture decouples clients from the security keys and policies, enables centralized audit logging and simplifies administration for operators.

---

## Vault architecture
![](../artwork/vault-layers.png)

Notes:

* Let's begin to break down this picture. There is a clear separation of components that are inside or outside of the security barrier. Only the storage backend and the HTTP API are outside, all other components are inside the barrier.

* The storage backend is untrusted and is used to durably store encrypted data. When the Vault server is started, it must be provided with a storage backend so that data is available across restarts. The HTTP API similarly must be started by the Vault server on start so that clients can interact with it.

---

## Vault starts sealed

![](../artwork/vault-shamir-secret-sharing.png)

Notes:

* Once started, the Vault is in a sealed state. 
* Before any operation can be performed on the Vault it must be unsealed. This is done by providing the unseal keys. 
* When the Vault is initialized it generates an encryption key which is used to protect all the data. That key is protected by a master key. 
* By default, Vault uses a technique known as Shamir's secret sharing algorithm to split the master key into 5 shares, any 3 of which are required to reconstruct the master key.

---

## RSA inventors
![](../artwork/rsa.png)


Notes:

* The number of shares and the minimum threshold required can both be specified. Shamir's technique can be disabled, and the master key used directly for unsealing. Once Vault retrieves the encryption key, it is able to decrypt the data in the storage backend, and enters the unsealed state. Once unsealed, Vault loads all of the configured audit devices, auth methods, and secrets engines.

* The configuration of those audit devices, auth methods, and secrets engines must be stored in Vault since they are security sensitive. Only users with the correct permissions should be able to modify them, meaning they cannot be specified outside of the barrier. By storing them in Vault, any changes to them are protected by the ACL system and tracked by audit logs.

---

## Now Vault is unsealed

Notes:

* After the Vault is unsealed, requests can be processed from the HTTP API to the Core. The core is used to manage the flow of requests through the system, enforce ACLs, and ensure audit logging is done.

* When a client first connects to Vault, it needs to authenticate. Vault provides configurable auth methods providing flexibility in the authentication mechanism used. Human friendly mechanisms such as username/password or GitHub might be used for operators, while applications may use public/private keys or tokens to authenticate. An authentication request flows through core and into an auth method, which determines if the request is valid and returns a list of associated policies.

---

## Policies

* Policies are just a named ACL rule
* Example:
  * the "root" policy is built-in and permits access to all resources
  

Notes:

* Policies are just a named ACL rule. For example, the "root" policy is built-in and permits access to all resources. You can create any number of named policies with fine-grained control over paths. Vault operates exclusively in a whitelist mode, meaning that unless access is explicitly granted via a policy, the action is not allowed. Since a user may have multiple policies associated, an action is allowed if any policy permits it. Policies are stored and managed by an internal policy store. This internal store is manipulated through the system backend, which is always mounted at sys/.

* Once authentication takes place and an auth method provides a set of applicable policies, a new client token is generated and managed by the token store. This client token is sent back to the client, and is used to make future requests. This is similar to a cookie sent by a website after a user logs in. The client token may have a lease associated with it depending on the auth method configuration. This means the client token may need to be periodically renewed to avoid invalidation.

* Once authenticated, requests are made providing the client token. The token is used to verify the client is authorized and to load the relevant policies. The policies are used to authorize the client request. The request is then routed to the secrets engine, which is processed depending on its type. If the secrets engine returns a secret, the core registers it with the expiration manager and attaches a lease ID. The lease ID is used by clients to renew or revoke their secret. If a client allows the lease to expire, the expiration manager automatically revokes the secret.

* The core handles logging of requests and responses to the audit broker, which fans the request out to all the configured audit devices. Outside of the request flow, the core performs certain background activity. Lease management is critical, as it allows expired client tokens or secrets to be revoked automatically. Additionally, Vault handles certain partial failure cases by using write ahead logging with a rollback manager. This is managed transparently within the core and is not user visible.

---

## The Vault Service Process

* Phase 1 - Preparation
* Phase 2 - User Interaction
* Phase 3 - Cleanup

![](../artwork/pexels-alex-andrews-1983032.jpg)

Notes:

* There are many aspects to preparing Vault to handle client requests on a day-to-day basis.
* Generally, there are three phases to prepare a production-ready Vault environment: the
configuration, the client interaction, and post-client events.
* Each phase is uniquely essential to building a working Vault environment.

---

## Phase 1 - Preparation

* The database secrets engine must be configured with an administrative credential
* An auth method must be configured to permit access
* A Vault policy that grants permission to the database secrets engine needs to be

Notes:

* The first phase involves the actions performed by an administrator to enable user
interaction. Before a Vault client can retrieve a database credential from Vault, for example,
there are configuration items that must be in place:
* The database secrets engine must be configured with an administrative credential
capable of creating dynamic user accounts with appropriate permissions on the
target database.
* An auth method must be configured to permit access to the entity requesting
access to the database.
* A Vault policy that grants permission to the database secrets engine needs to be
created and attached to the entity.

---

## Phase 2 - User Interaction







---
