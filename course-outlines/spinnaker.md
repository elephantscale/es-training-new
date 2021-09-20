# Spinnaker

(C) Copyright Elephant Scale

September 20, 2021

## Overview

* Spinnaker is an open source, multi-cloud continuous delivery platform for releasing software changes with high velocity and confidence.
* Created at Netflix, it has been battle-tested in production by hundreds of teams over millions of deployments. It combines a powerful and flexible pipeline management system with integrations to the major cloud providers.
* This course teaches the basic ideas of CI/CD, Spinnaker design, administration, and best practices. 

## Audience

* DevOps, developers, architects

## Skill Level

* Introductory - Intermediate

## Duration
* Two days

## Format
* Lectures and hands-on labs (50% - 50%)

## Prerequisites

* Comfortable with a programming language such as Java
* Or, coding experience in any other language


## Lab environment

* If virtual machines are used
  * Zero Install: There is no need to install software on students' machines!
  * A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
  * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Concepts / naming conventions
* General Concepts
  * CI/CD
    * Why
    * What
    * Benefits
  * Immutable infrastructure   
* Spinnaker
  * What value does Spinnaker provide / what problem does it solve
  * How is spinnaker designed
  * Spinnaker basics
  * Spinnaker security model
  * Feature list and deep dive
  * Basic administration
### Application Management
* Cluster
* Server Group
* Load Balancer
* Target Infrastructure (providers / controlling cloud resources)

  * AWS Iaas
    * Baking & Tagging AMIs
    * Deploying in EC2
    * Autoscaling
    * Health Checks
    * Availability Zones
    * Cross region deployments
  * EKS
  * Vanilla kubernetes
  * VMware??
* Deployment Types
  * Cluster deployments
  * Canary deployments & analysis
  * Blue-green deployments
  * Rolling updates
  * Roll forward vs Roll back
  * Immutable Infrastructure and Data Persistence
  * Automated Validation Stages
  * Auditing and traceability
### Pipelines
* Benefits of flexible user-defined pipelines
* Tasks
* Triggers
* Creation / building
* Notifications
* Expressions
* Version Control and Auditing
* Stages
  * Bake
  * Deploy
  * Judgement
  * Check Preconditions
  * Parallel stages
  * Kayenta (ACA)
  * Chaos Monkey
  * Hidden stages
  * Custom stages
* Enabling / Disabling a pipeline
* Executions
* Manually triggering a pipeline
* Building templates / pipeline-as-code
* Template management
### SpinCLI
### Integration
* Integration and expectations from source code systems (branching model impacts for example)
* Integration and expectations from with build systems