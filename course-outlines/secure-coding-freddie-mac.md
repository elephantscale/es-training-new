# Secure Coding Freddie Mac

(C) Copyright Elephant Scale

November 28, 2022

## Overview

* Cybersecurity has risen to the top priority discussion items, and it is the subject of the international discussions and has military implication. 
The number of ransomware attacks doubled in the past year, and other attacks are on the rise.
* This course teaches a comprehensive approach to cybersecurity. It starts with common attacks, 
continues with the principles of designing secure multi-layer systems, and goes into the details
of secure coding for Java.
* Also included are securing runtime environments and modern security frameworks.  

## Audience
Developers, team leads, project managers

## You will learn to
* Do threat modeling and create a lay of the land for what you need to defend
* Learn about common attacks, with real-world labs, and find ways to defend against them
* Learn good Java practices and Java coding standards to make your software more secure and less vulnerable to attacks
* How to write secure Java, Servlets, JavaScript, and RESTful applications
* Use new and upcoming frameworks for designing your software to be secure be default

## Skill Level
Introductory - Intermediate

## Duration
Three days

## Format
Lectures and hands on labs. (50% - 50%)

## Prerequisites
* Recommended: Cybersecurity awareness
* Comfortable developing code in Java


## Lab environment
* Zero Install: There is no need to install software on students' machines!
* A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
    * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Threat modeling and exercises
* Attack classification with STRIDE 
* How bad is it - CVSS score
* Team labs on threat modeling

### How hackers do it - hack your application

* Cross-site scripting
* Malicious file execution
* Session hijacking
* SQL injection
* GOAT labs

### Java security

* Security within Java 

  * Mutability of objects
  * Variable, method, class, and package scopes
  * Thread safety
  * TODO: Mark put MIT recommendations here
  * Developing secure Java applications
  * Safe coding and design patterns
  * How to find vulnerable code while doing a code review
  * The most common pitfalls
  * Labs for SEI CERT coding standards
  * https://wiki.sei.cmu.edu/confluence/display/java/SEI+CERT+Oracle+Coding+Standard+for+Java

* Security with C++ (optional)

* Security with Python (optional)

* Basic Security at the server level
  * Tomcat, Docker, Ansible
  * Role-based authentication and authorization

* Defensive Programming
  * Error handling in the Java EE space
  * Input validation
  * Secure connection using SSL
  * Exception handling
  *   * How to manage secure PII data on the end client apps (mobile app, browser, tablet)
  * Cross-site scripting (XSS)
  * Cross-site request forgery (CSRF)
  * Common JavaScript vulnerabilities
  * JavaScript security analyzers

* REST endpoint security
  * oauth2 token-based authentication and authorization
  * oauth2 server setup
  * embedded token server, token lifecycle, and management
  * REST security best practices:
  * Authorization
  * Input validation
  * Output encoding
  * Cryptography

  
### Summary of Countermeasures

* Validation
* Validation controls
* Strong typing
* Regular expressions
* Permit list
* Scrubbing
* Deny list
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

  
### Security future
* Zero-trust networks
* Artificial intelligence and machine learning