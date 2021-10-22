# Secure Coding General

(C) Copyright Elephant Scale

October 20, 2021

## Overview

* Cybersecurity has risen to the top priority discussion items, and it is the subject of the US-Russia presidential communications.
  The number of ransomware attacks doubled in the past year, and other attacks are on the rise.
* This course teaches a comprehensive approach to cybersecurity. It starts with threat modeling, creating the lay of the land.
  It then continues with common attacks, with the principles of designing secure multi-layer systems, and goes into the details
  of secure coding for the target languages.
* Also included are securing runtime environments and modern security frameworks.

## Audience
* Developers, team leads, project managers

## Skill Level
* Introductory - Intermediate

## Duration
* Two days

## Format
* Lectures and hands on labs. (50% - 50%)

## Prerequisites
* Recommended: Cybersecurity awareness
* Comfortable developing code in the target environment


## Lab environment
* Local environment in the target language (IntelliJ, .NET, etc.) is recommended
* An alternative lab environment in the cloud will be provided for students

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
    * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Threat modeling
* STRIDE attack classification
* Security terminology

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

### Authorization and Authentication

* SSO (high-level)
* Basic & Digest
* Authorization
* Password security
* Brute force attacks
* Password resets
* SSL/TLS
* Code signing

### Framework architecture

* Privileges
* Audits/Logs
* Secure coding
* Encryption services
* Static code analysis
* Securing the API (both publishing and consuming API)
* Dynamic code analysis (e.g. with Spotbugs)

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