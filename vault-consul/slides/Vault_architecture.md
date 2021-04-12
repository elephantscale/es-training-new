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




---
