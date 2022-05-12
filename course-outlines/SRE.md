# SRE - Site Reliability Engineering
* (C) Elephant Scale
* 02-22-2022

## Overview

The overwhelming majority of a software system's lifespan is spent in use, 
not in design or implementation. 
So, why does conventional wisdom insist that software engineers focus primarily on the design and development of large-scale computing systems?

In this course, you will learn how and why the DevOps commitment to the entire lifecycle can enable the company to successfully build, deploy, monitor, and maintain some of the largest software systems in the world. You'll learn the principles and practices that enable Google engineers to make systems more scalable, reliable, and efficient—lessons directly applicable to your organization.

## What you will learn:

* Introduction
     - Learn what site reliability engineering is
* Principles
     - Examine the patterns, behaviors, and areas of concern for SRE
* Practices
     - Understand the theory and practice of an SRE's day-to-day work: building and operating large distributed computing systems
* Management
     - Explore Google's best practices for training, communication, and meetings that your organization can use

## Duration:
Three to Four Days

## Audience:
DevOps, Admins, Developers, Managers

## Skill level
Introductory to Intermediate


## Prerequisites
- IT background


## Lab environment
- Cloud based lab environment will be provided to students, 
no need to install anything on the laptop

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. 
Laptops with overly restrictive VPNs or firewalls may not work properly.

* Chrome browser


## Detailed Course Outline

* Introduction
    - The Sysadmin Approach to Service Management
    - Google's Approach to Service Management: Site Reliability Engineering
    - Tenets of SRE
    - Demand Forecasting and Capacity Planning
    - Efficiency and Performance
* The Production Environment at Google, from the Viewpoint of an SRE
    - Hardware
    - System Software That "Organizes" the Hardware
    - Storage
    - Networking
    - Monitoring and Alerting
* Principles
    - Embracing Risk
    - Managing Risk
    - Motivation for Error Budgets
    - Benefits
* Service Level Objectives
    - Service Level Terminology
    - Indicators in Practice
    - What Do You and Your Users Care About?
    - Agreements in Practice
* Eliminating Toil
    - Toil Defined
    - Why Less Toil Is Better
* Monitoring Distributed Systems     
    - Why Monitor?
    - Setting Reasonable Expectations for Monitoring
    - Symptoms Versus Causes
    - Black-Box Versus White-Box
    - As Simple as Possible, No Simpler
    - Bigtable SRE: A Tale of Over-Alerting
    - Gmail: Predictable, Scriptable Responses from Humans
* The Evolution of Automation at Google
    - The Value of Automation
    - A Platform
    - Faster Repairs
    - Faster Action
    - Automate Yourself Out of a Job: Automate ALL the Things!
    - Resolving Inconsistencies Idempotently
    - Borg: Birth of the Warehouse-Scale Computer
* Release Engineering
    - The Role of a Release Engineer
    - Philosophy
    - Self-Service Model
    - Testing
    - Packaging
    - Configuration Management
* Simplicity
    - System Stability Versus Agility
    - The Virtue of Boring
    - Minimal APIs
    - Modularity
    - Release Simplicity
* Practical Alerting from Time-Series Data
    - Instrumentation of Applications
    - Collection of Exported Data
    - Storage in the Time-Series Arena
    - Labels and Vectors
    - Alerting
* Being On-Call
    - Life of an On-Call Engineer
    - Balanced On-Call
    - Balance in Quantity
    - Balance in Quality
* Effective Troubleshooting
    - Theory
    - In Practice
    - Problem Report
    - Triage
* Emergency Response
    - What to Do When Systems Break
    - Test-Induced Emergency    
    - Response
    - Keep a History of Outages
* Managing Incidents
    - Unmanaged Incidents
    - Poor Communication
    - Freelancing
    - Live Incident State Document
    - Clear, Live Handoff
    - A Managed Incident
* Postmortem Culture: Learning from Failure
    - Google's Postmortem Philosophy
    - Collaborate and Share Knowledge
* Tracking Outages
    - Escalator
    - Outalator
    - Aggregation
    - Tagging
    - Analysis
* Testing for Reliability
    - Types of Software Testing
    - Traditional Tests
    - Production Tests
    - Testing at Scale
* Software Engineering in SRE
    - Why Is Software Engineering Within SRE Important?
    - Traditional Capacity Planning
    - Intent-Based Capacity Planning
    - Fostering Software Engineering in SRE
* Load Balancing at the Frontend
    - Power Isn't the Answer
    - Load Balancing Using DNS
    - Load Balancing at the Virtual IP Address
* Load Balancing in the Datacenter
    - The Ideal Case
    - Identifying Bad Tasks: Flow Control and Lame Ducks
    - A Simple Approach to Unhealthy Tasks: Flow Control
    - A Robust Approach to Unhealthy Tasks: Lame Duck State
* Handling Overload
    - The Pitfalls of "Queries per Second"
    - Per-Customer Limits
    - Client-Side Throttling
    - Criticality
    - Handling Overload Errors
    - Deciding to Retry
    - Load from Connections
* Addressing Cascading Failures
    - Causes of Cascading Failures and Designing to Avoid Them
    - Server Overload
    - Resource Exhaustion
    - Service Unavailability
    - Preventing Server Overload
    - Queue Management
    - Planned Changes, Drains, or Turndowns
    - Testing for Cascading Failures
* Managing Critical State: Distributed Consensus for Reliability
    - Motivating the Use of Consensus: Distributed Systems Coordination Failure
    - Case Study 1: The Split-Brain Problem
    - Case Study 2: Failover Requires Human Intervention
    - Case Study 3: Faulty Group-Membership Algorithms
    - How Distributed Consensus Works
    - Paxos Overview: An Example Protocol
    - System Architecture Patterns for Distributed Consensus
    - Reliable Replicated State Machines
    - Reliable Replicated Datastores and Configuration Stores
* Distributed Periodic Scheduling with Cron
    - Cron
    - Reliability Perspective
    - Cron Jobs and Idempotency
* Data Processing Pipelines
    - Origin of the Pipeline Design Pattern
    - Initial Effect of Big Data on the Simple Pipeline Pattern
    - Challenges with the Periodic Pipeline Pattern
* Data Integrity: What You Read Is What You Wrote
    - Data Integrity's Strict Requirements
    - Choosing a Strategy for Superior Data Integrity
    - Data Integrity Is the Means; Data Availability Is the Goal
    - The 24 Combinations of Data Integrity Failure Modes
    - First Layer: Soft Deletion
    - Second Layer: Backups and Their Related Recovery Methods
    - Overarching Layer: Replication
    - Third Layer: Early Detection
    - Trust but Verify
    - Hope Is Not a Strategy
* Reliable Product Launches at Scale
    - Launch Coordination Engineering
    - The Role of the Launch Coordination Engineer
    - Setting Up a Launch Process
    - Capacity Planning
    - Failure Modes
* Accelerating SREs to On-Call and Beyond
    - You've Hired Your Next SRE(s), Now What?
    - Initial Learning Experiences: The Case for Structure Over Chaos
    - Learning Paths That Are Cumulative and Orderly
* Dealing with Interrupts
    - Managing Operational Load
    - Factors in Determining How Interrupts Are Handled
    - Imperfect Machines
    - Cognitive Flow State
* Embedding an SRE to Recover from Operational Overload
    - Phase 1: Learn the Service and Get Context
    - Identify the Largest Sources of Stress
    - Identify Kindling
    - Phase 2: Sharing Context
    - Write a Good Postmortem for the Team
    - Sort Fires According to Type
    - Phase 3: Driving Change
    - Start with the Basics
*. Communication and Collaboration in SRE
    - Communications: Production Meetings
    - Collaboration within SRE
    - Team Composition
* The Evolving SRE Engagement Model
    - SRE Engagement: What, How, and Why
    - The PRR Model
    - The SRE Engagement Model
    - Alternative Support
    - Production Readiness Reviews: Simple PRR Model
    - Engagement
    - Analysis
* Lessons Learned from Other Industries
    - Meet Our Industry Veterans
    - Preparedness and Disaster Testing
    - Relentless Organizational Focus on Safety
* Conclusion
