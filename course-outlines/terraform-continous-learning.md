# Terraform for Continuous Learning

April 28, 2020

## Overview

* IaS (Infrastructure as Code) is one of the most important developments in application
deployment in many years, and paves the way for many other exciting
possibilities in DevOps.

* Terraform is a HashiCorp open source tool for deploying infrastructure
in multiple cloud environments.

## What you will learn
 * DevOps and IaC
 * How to use Terraform

## Audience
DevOps, Developers, Architects

## Duration
2 months, one session a week, about 2 hours long

## Format
Lectures and hands-on labs. (50%, 50%)

## Prerequisites

 * Some background with Unix or Linux including the command line
 * Some knowledge of a programming language such as Java, C#, Python, Node.js, etc.

## Lab environment

* A reasonably modern laptop
* Unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser
  - SSH client for your platform

## Detailed Outline

* Why Terraform

    - The Rise of DevOps
    - What Is Infrastructure as Code?
    - Ad Hoc Scripts
    - Configuration Management Tools
    - Server Templating Tools
    - Orchestration Tools
    - Provisioning Tools
    - The Benefits of Infrastructure as Code
    - How Terraform Works
    - How Terraform Compares to Other IaC Tools
    - Configuration Management Versus Provisioning
    - Mutable Infrastructure Versus Immutable Infrastructure
    - Procedural Language Versus Declarative Language
    - Master Versus Masterless
    - Agent Versus Agentless
    - Large Community Versus Small Community
    - Mature Versus Cutting Edge
    - Using Multiple Tools Together
    - Conclusion

* Getting Started with Terraform
    - Setting Up Your AWS Account
    - Install Terraform
    - Deploy a Single Server
    - Deploy a Single Web Server
    - Deploy a Configurable Web Server
    - Deploying a Cluster of Web Servers
    - Deploying a Load Balancer
    - Cleanup
    - Conclusion
    
* How to Manage Terraform State
    - What Is Terraform State?
    - Shared Storage for State Files
    - Limitations with Terraform’s Backends
    - Isolating State Files
    - Isolation via Workspaces
    - Isolation via File Layout
    - The terraform_remote_state Data Source
    - Conclusion
    
* How to Create Reusable Infrastructure with Terraform Modules
    - Module Basics
    - Module Inputs
    - Module Locals
    - Module Outputs
    - Module Gotchas
    - File Paths
    - Inline Blocks
    - Module Versioning
    - Conclusion    
    
* Terraform Tips and Tricks: Loops, If-Statements, Deployment, and Gotchas
    - Loops
    - Loops with the count Parameter
    - Loops with for_each Expressions
    - Loops with for Expressions
    - Loops with the for String Directive
    - Conditionals
    - Conditionals with the count Parameter
    - Conditionals with for_each and for Expressions
    - Conditionals with the if String Directive
    - Zero-Downtime Deployment
    - Terraform Gotchas
    - count and for_each Have Limitations
    - Zero-Downtime Deployment Has Limitations
    - Valid Plans Can Fail
    - Refactoring Can Be Tricky
    - Eventual Consistency Is Consistent…Eventually
    - Conclusion
    
* Production-Grade Terraform Code
    - Why It Takes So Long to Build Production-Grade Infrastructure
    - The Production-Grade Infrastructure Checklist
    - Production-Grade Infrastructure Modules
    - Small Modules
    - Composable Modules
    - Testable Modules
    - Releasable modules
    - Beyond Terraform Modules
    - Conclusion
    
* How to Test Terraform Code
    - Manual Tests
    - Manual Testing Basics
    - Cleaning Up After Tests
    - Automated Tests
    - Unit Tests
    - Integration Tests
    - End-to-End Tests
    - Other Testing Approaches
    - Conclusion
* How to Use Terraform as a Team
    - Adopting IaC in Your Team
    - Convince Your Boss
    - Work Incrementally
    - Give Your Team the Time to Learn
    - A Workflow for Deploying Application Code
    - Use Version Control
    - Run the Code Locally
    - Make Code Changes
    - Submit Changes for Review
    - Run Automated Tests
    - Merge and Release
    - Deploy
    - A Workflow for Deploying Infrastructure Code
    - Use Version Control
    - Run the Code Locally
    - Make Code Changes
    - Submit Changes for Review
    - Run Automated Tests
    - Merge and Release
    - Deploy
    - Putting It All Together
    - Conclusion        