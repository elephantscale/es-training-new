# Kubernetes with Docker

© Elephant Scale  
September 09, 2021

![](../assets/images/logos/docker-logo-3-small.png)
![](../assets/images/logos/kubernetes-logo-2-small.png)

## Overview

Containerization has taken the IT world by storm, in the last few years. Large software houses, starting from Google and Amazon, are running significant portions of their production load in containers.

Kubernetes is an open-source system for automating deployment, scaling, and management of containerized applications. It groups containers that make up an application into logical units for easy management and discovery. Kubernetes builds upon 15 years of experience of running production workloads at Google, combined with best-of-breed ideas and practices from the community.

This course introduces the students to containers in general, then continues with Kubernetes, its architecture, its use in production, and its best practices.

## What You Will Learn

* Docker
    * Benefits of containerization
    * Docker concepts and architecture
    * Using docker commands
    * Dockerfiles and building dockers
    * Deploying docker containers
* Kubernetes
    * Kubernetes concepts and architecture
    * Orchestrating Docker containers with Kubernetes
    * Labels and selectors
    * Deploying resilient, scalable services
    * Kubernetes volumes
    * Kubernetes networking
    * security

## Duration

5 days  (Docker - 2 days, Kubernetes - 3 days)

## Audience

Developers, architects, admins

## Format

50% lectures, 50% hands-on labs.

## Prerequisites

* Must-have: comfortable with Linux environment.
* Familiar with software development

## Lab environment

A cloud based lab environment will be provided.

## Students will need the following

* A reasonably modern laptop with unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser
* SSH client for your platform

## Detailed Outline

## Part 1 - Docker

### Container Fundamentals

* Benefits of deploying software in containers
* Evolution of containers
* Virtual machines vs containers
* Containerization options
* Microservices
* Devops

### Docker Intro

* Docker overview
* Docker concepts and architecture
* Docker use cases

### Docker Images and Containers

* Running docker containers
* CLI tools
* Inspecting docker containers
* Labs

### Docker networking

* Docker networking concepts
* Running containers with network access
* Labs

### Docker volumes

* Persistent storage in docker
* Using volumes in docker containers
* Labs

### Dockerfiles

* Dockerfiles intro
* Dockerfile syntax
* Building custom docker images
* Labs

### Containers Registries

* Container registries intro
* Registry choices
* Using images from registries
* Pushing custom images into registries
* Labs

### Dockercompose

* Dockercompose intro
* Dockercompose file syntax
* Orchestrating containers with docker-compose
* Labs

## Part 2 - Kubernetes

### Kubernetes Intro

* Evolution of orchestration systems
* Kubernetes introduction and features
* Benefits
* Design principles
* Case studies

### Kubernetes Architecture

* Kubernetes architecture
* Controllers and workers
* Namespaces
* Controller, Scheduler, etcd, kubelet
* Pods and containers
* Deployments and Replica Sets
* Services and networking
* Managing state in etcd
* Labs

### Deploying Scalable Services

* Replicasets
* Demonsets
* Jobs
* Deployments
* Services
* Rolling out deployments
* Labs

## Labels and Selectors

* Labels and annotations
* Node selectors
* Labs

### Storage

* Kubernetes volumes
* Provisioning and using persistent volumes
* Dynamic volume allocation
* Labs

### Networking

* Docker networking
* Kubernetes networking
* Networking of pods and containers
* DNS service
* Exposing services
* Labs

### Security

* Docker and Kubernetes security
* Role-based access control (RBAC)
* Enterprise-grade features
* Docker Trusted Registry

### Kubernetes Addons

* Logging with Elasticsearch and Fluentd
* Container Level Monitoring
* cAdvisor
* InfluxDB
* Prometheus

### Practical Kubernetes Examples

* A 3 tier web application: wordpress
* Load balancing traffic
* Blue/green deployment
* A/B testing
* Canary deployment

### Kubernetes on the cloud

* Kubernetes as service
* Cloud offerings
* Demo

### Workshops (time permitting)

* Students will work on end to end scenarios using Docker and Kubernetes
