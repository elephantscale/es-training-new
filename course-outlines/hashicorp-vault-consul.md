# Hashicorp Vault and Consul

© Elephant Scale

March 25, 2020

## Overview

* HashiCorp Vault is a secrets management platform providing a secure 
enclave for static and dynamic secrets. 
* HashiCorp Consul solves the challenges of service discovery, 
configuration management, and network segmentation in distributed applications.
  
* In this course you will learn the basics of using Vault, 
including managing secrets, configuring policies, and reviewing audit logs. 
You will also learn how to connect dynamic applications using Consul service discovery and
service mesh.

## Audience
Developers, Architects

## Duration
* 3 days 

## Format
Lectures and hands-on labs. (50%, 50%)

## Prerequisites

* Comfortable with any programming language
* Comfortable in Linux environment (be able to navigate Linux command line, run commands)


## Lab environment

* A reasonably modern laptop
* Unrestricted connection to the Internet. 
Laptops with overly restrictive VPNs or firewalls may not work properly
* A browser (Chrome recommended)
* SSH client for your platform (Putty or Terminal)

## Detailed outline

## Vault

### Vault architecture

* Vault Overview
* Secret Engines: Static Secrets
* Secret Engines: Cubbyhole Secret Engine
* Secret Engines: Dynamic Secrets
* Encryption as a Service - Transit Secrets Engine
* Authentication
* Application Integration

### Vault configuration

* Vault Installation
* Auto-Unseal
* Vault Cluster Deployment
* Vault Operations
* Vault Policies
* Secure Introduction

### Vault scalability

* Vault Identities: Entities and Groups
* Namespaces
* Granular Access Control
* Scaling for Performance
* Codify Management of Vault Clusters
* Production Topologies
* Monitoring Vault

## Consul

### Microservices and Consul

* An introduction to monolithic vs service-oriented architectures
* Service discovery in a monolith
* Service discovery challenges in a distributed system and Consul's solution
* Configuration management in a monolith
* Configuration challenges in a distributed system and Consul's solution
* Network segmentation in a monolith
* Network segmentation challenges in a distributed system and Consul's solutions
* The definition of "service mesh"

### Consul hands-on

* Learn about the problems that Consul solves.
* Explore Consul's architecture and interfaces (HTTP API, DNS interface, and web
UI).
* Implement service discovery and health checking.
* Connect services into a service mesh to encrypt and control network traffic.
* Manipulate values in Consul's key-value store and watch them for updates.
* Render a configuration file from key-value data using Consul Template.
* Install a local Consul agent that you can use to continue experimenting with
after the course.
* Explore additional online learning resources.