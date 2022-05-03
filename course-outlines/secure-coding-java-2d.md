# Secure Coding Java

(C) Copyright Elephant Scale

May 3, 2022

## Overview

* Cybersecurity has risen to the top priority discussion items, and it is the subject of the US-Russia presidential communications. 
The number of ransomware attacks doubled in the past year, and other attacks are on the rise.
* This course teaches a comprehensive approach to cybersecurity. It starts with common attacks, 
continues with the principles of designing secure multi-layer systems, and goes into the details
of secure coding for Java.
* Also included are securing runtime environments and modern security frameworks.  

## Learning objectives

* Understand the need and use of modern security
* Apply threat modeling to prepare for cyber defense
* Describe common attacks and defense against them
* Beefing up the security of Java applications
* Apply code signing
* Implement authentication and authorization



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
* Comfortable developing code in Java
* Comfortable in Linux environment (be able to navigate Linux command line, run commands)

## Lab environment
* The recommended approach to doing the labs is using your local IntelliJ install.
* As a backup solution, lab environment in the cloud can be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
    * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Short overview of threat modeling
* STRIDE attack classification
* CVSS attack assessment
* Lab on threat modeling

### Common attacks and defenses
* Cross site scripting
* Malicious file execution
* Session hijacking
* Encryption
* Unsecured direct object reference
* Defenses
  * Validation
  * Strong typing
  * Regular expressions
  * White list
  * Scrubbing
  * Encoding
  * CAPTCHA
* Labs based on OWASP Goat labs

### Java security

* Basic Security within Java SE 8+
  * Mutability of objects
  * Variable, method, class, and package scopes
  * Thread safety
  * Exception handling
  * Input validation
* Basic Security at the EE level
  * Role-based authentication
  * Specifying Security Constraints
  * Programmatic security
  * Declarative security
* Labs based on SEI CERT standard

### REST endpoint security
  * oauth2 token-based authentication and authorization
  * oauth2 server setup
  * embedded token server, token lifecycle, and management
  * REST security best practices:
  * Authorization
  * Input validation
  * Output encoding
  * Cryptography
  
### Code signing
* Overview of code signing
  * Windows
  * Mac
  * Linux

### Authorization and Authentication
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

### Security tools
* Audits/Logs
* Static code analysis
  * SonarQube
  * Labs
 
### Security future
* Introduction to modern frameworks
  * Vault
  * Consul
  * Anthos
* Modern security design patterns
  * Dynamic secrets
  * Automatic credential rotation
  * Cubbyhole response wrapping
  * Encryption as a service
* Zero-trust networks
* Artificial intelligence