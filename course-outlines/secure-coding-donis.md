# Secure Coding

(C) Copyright Elephant Scale

July 06, 2021

## Overview

* Cybersecurity has risen to the top priority discussion items, and it is the subject of the US-Russia presidential communications. 
The number of ransomware attacks doubled in the past year, and other attacks are on the rise.
* This course teaches a comprehensive approach to cybersecurity. It starts with threat modeling, creating the lay of the land. 
It then continues with common attacks, with the principles of designing secure multi-layer systems, and goes into the details
of secure coding for the target languages.
* Also included are securing runtime environments and modern security frameworks.  

## Audience
Developers, team leads, project managers

## Skill Level
Introductory - Intermediate

## Duration
Two days

## Format
Lectures and hands on labs. (50% - 50%)

## Prerequisites
* Recommended: Cybersecurity awareness
* Comfortable developing code in the target environment


## Lab environment
* Zero Install: There is no need to install software on students' machines!
* A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
    * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Common attacks
* Cross site scripting
* Malicious file execution
* Session hijacking
* Encryption
* Unsecured direct object reference
* Failure to authorize/hidden URLs

### Secure design

* Layered design concepts
* Object layer
* Persistence layer
* Presentation layer

### Countermeasures

* Validation
* Validation controls
* Strong typing
* Regular expressions
* White list
* Scrubbing
* Black list
* Encoding
* CAPTCHA
* Honey pots
* Avoiding SQL injection
* Parametrizing queries/Prepared statements
* Stored procedures
* Entity Frameworks/Hibernate
* Avoiding cross site request forgeries

### Modern security frameworks and API
* Introduction to modern frameworks
  * Vault
  * Consul
  * Anthos
* Modern security design patterns
  * Dynamic secrets
  * Automatic credential rotation
  * Cubbyhole response wrapping
  * Encryption as a service
* Where to go from here

### Code signing
* Overview of code signing
  * Windows
  * Mac
  * Linux

### Authorization and Authentication
* .NET authentication
* Basic & Digest
* Forms
* Windows authentication
* JAAS and other Java authentication services
* Authorization
* Password security
* Brute force attacks
* Password resets
* Secret questions/answers
* SSL/TLS

### Session security
* Session IDs
* Policies
* Hijacking/Fixation Attacks

### Framework architecture
* Threading
* Privileges
* Audits/Logs
* Secure coding
* Encryption services
* Static code analysis

### Securing the runtime environment
* .NET
* Code Access
* GAC
* Strong named assemblies
* CLR
* Security Zones
* Permissions
* Security policy
  
### Security future
* Zero-trust networks
* Artificial intelligence