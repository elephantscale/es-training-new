# Google Cloud Platform: Architecting Design and Process
2020 May 28

## Overview

This two-day instructor-led class equips students to build highly reliable and efficient solutions on Google Cloud using proven design patterns. It is a continuation of the Architecting with Google Compute Engine or Architecting with Google Kubernetes Engine course and assumes hands-on experience with the technologies covered in either of those courses. Through a combination of presentations, design activities, and hands-on labs, participants learn to design Google Cloud deployments that are highly reliable and secure; and how to operate Google Cloud deployments in a highly available and cost-effective manner.

## Audience

 * Cloud Solutions Architects, DevOps Engineers 
 * Individuals using Google Cloud to create new solutions or to integrate existing systems, application environments, and infrastructure, with a focus on Compute Engine

## Duration:
Two Days

## Format:
Lectures and hands-on labs. (50%, 50%)

## Prerequisites

  * Completion of Architecting with Google Compute Engine, Architecting with Google Kubernetes Engine or equivalent experience
  * Basic proficiency with command-line tools and Linux operating system environments 
  * Systems operations experience, including deploying and managing applications, either on-premises or in a public cloud environment

## Objectives

  * Apply a tool set of questions, techniques and design considerations 
  * Define application requirements and express them objectively as KPIs, SLO's and SLI's 
  * Decompose application requirements to find the right microservice boundaries 
  * Leverage Google Cloud developer tools to set up modern, automated deployment pipelines 
  * Choose the appropriate Google Cloud Storage services based on application requirements Architect cloud and hybrid networks 
  * Implement reliable, scalable, resilient applications balancing key performance metrics with cost 
  * Choose the right Google Cloud deployment services for your applications Secure cloud applications, data and infrastructure Monitor service level objectives and costs using Stackdriver tools


## Lab environment
 * A Lab Environment will be provided.

## Detailed outline

###  Defining the Service

  * Describe users in terms of roles and personas.
  * Write qualitative requirements with user stories.
  * Write quantitative requirements using key performance indicators (KPIs).
  * Evaluate KPIs using SLOs and SLIs.
  * Determine the quality of application requirements using SMART criteria.

###  Microservice Design and Architecture

  * Decompose monolithic applications into microservices.
  * Recognize appropriate microservice boundaries.
  * Architect stateful and stateless services to optimize scalability and reliability.
  * Implement services using 12-factor best practices.
  * Build loosely coupled services by implementing a well-designed REST architecture.
  * Design consistent, standard RESTful service APIs.

###  DevOps Automation

  * Automate service deployment using CI/CD pipelines.
  * Leverage Cloud Source Repositories for source and version control.
  * Automate builds with Cloud Build and build triggers.
  * Manage container images with Google Container Registry.
  * Create infrastructure with code using Deployment Manager and Terraform.

###  Choosing Storage Solutions

  * Choose the appropriate Google Cloud data storage service based on use case, durability, availability, scalability and cost.
  * Store binary data with Cloud Storage.
  * Store relational data using Cloud SQL and Spanner.
  * Store NoSQL data using Firestore and Cloud Bigtable.
  * Cache data for fast access using Memorystore.
  * Build a data warehouse using BigQuery.

###  Google Cloud and Hybrid Network Architecture

  * Design VPC networks to optimize for cost, security, and performance.
  * Configure global and regional load balancers to provide access to services.
  * Leverage Cloud CDN to provide lower latency and decrease network egress.
  * Evaluate network architecture using the Cloud Network Intelligence Center.
  * Connect networks using peering and VPNs.
  * Create hybrid networks between Google Cloud and on-premises data centers using Cloud Interconnect.

###  Deploying Applications to Google Cloud

  * Choose the appropriate Google Cloud deployment service for your applications.
  * Configure scalable, resilient infrastructure using Instance Templates and Groups.
  * Orchestrate microservice deployments using Kubernetes and GKE.
  * Leverage App Engine for a completely automated platform as a service (PaaS).
  * Create serverless applications using Cloud Functions.

###  Designing Reliable Systems

  * Design services to meet requirements for availability, durability, and scalability.
  * Implement fault-tolerant systems by avoiding single points of failure, correlated failures, and cascading failures.
  * Avoid overload failures with the circuit breaker and truncated exponential backoff design patterns.
  * Design resilient data storage with lazy deletion.
  * Analyze disaster scenarios and plan for disaster recovery using cost/risk analysis.

###  Security

  * Design secure systems using best practices like separation of concerns, principle of least privilege, and regular audits.
  * Leverage Cloud Security Command Center to help identify vulnerabilities.
  * Simplify cloud governance using organizational policies and folders.
  * Secure people using IAM roles, Identity-Aware Proxy, and Identity Platform.
  * Manage the access and authorization of resources by machines and processes using service accounts.
  * Secure networks with private IPs, firewalls, and Private Google Access.
  * Mitigate DDoS attacks by leveraging Cloud DNS and Cloud Armor.

###  Maintenance and Monitoring

  * Manage new service versions using rolling updates, blue/green deployments, and canary releases.
  * Forecast, monitor, and optimize service cost using the Google Cloud pricing calculator and billing reports and by analyzing billing data.
  * Observe whether your services are meeting their SLOs using Cloud Monitoring and Dashboards.
  * Use Uptime Checks to determine service availability.
  * Respond to service outages using Cloud Monitoring Alerts.



