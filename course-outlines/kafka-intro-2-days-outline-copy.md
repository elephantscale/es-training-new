# Introduction to Apache Kafka

Dec 01, 2020

![](../assets/images/logos/kafka-logo-2.png)

## Overview

Apache Kafka has emerged as a popular messaging component for streaming platforms. This course will introduce Kafka to students; we will learn about Kafka features and learn how to use it for streaming data.

## What You Will Learn

* Streaming technologies and architecture
* Kafka concepts and architecture
* Programming using Kafka API
* Kafka Streams API
* Tuning / Troubleshooting Kafka
* Best practices
* Use cases

## Audience

Developers, Architects

## Skill Level

Introductory - Intermediate

## Duration

Two days

## Format

Lectures and hands on labs. (50%  50%)

## Prerequisites

* Recommended: Comfortable with Java programming language and Java development tools (Eclipse, Maven) - programming exercises are in Java
* Nice to have: Comfortable in Linux environment (be able to navigate Linux command line, run commands)

## Lab environment

A cloud based lab environment will be provided.

## Students will need the following

* A reasonably modern laptop with unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser
* SSH client for your platform

## Detailed outline

### Introduction to Streaming Systems

* Understanding Fast data
* Streaming terminologies
* Understanding at-least-once / at-most-once / exactly-once processing patterns
* Popular streaming architectures
* Lambda architecture
* Streaming platforms overview

### Introducing Kafka

* Comparing Kafka with other queue systems (JMS / MQ)
* Kafka Architecture
* Kaka concepts: Messages, Topics, Partitions, Brokers, Producers, commit logs
* Kafka & Zookeeper
* Producing messages
* Consuming messages
* Consumers, Consumer Groups
* Message retention
* Scaling Kafka
* Kafka across multiple data centers and disaster recovery
* Labs:
  - Getting Kafka up and running
  - Using Kafka utilities

### Using Kafka APIs

* Configuration parameters
* Producer API - sending messages to Kafka
* Consumer API - consuming messages from Kafka
* Producer send modes
* Message compression
* Commits , Offsets, Seeking
* Managing offsets - auto commit / manual commit
* Labs:
  - Writing Producer / Consumer
  - Benchmarking Producer send modes
  - Comparing compression schemes
  - Managing offsets
  - Clickstream processing

### Kafka Streams API

* Introduction to Kafka Streams library
* Features and design
* Streams concepts: KStream / KTable / KStore
* Using Streams API: foreach / filter 
* Labs:
  - Kafka Streaming APIs

### Kafka Best Practices

* Avoiding common mistakes
* Hardware selection
* Cluster sizing
* Partition sizing
* Zookeeper settings
* Compression and batching
* Message sizing
* Monitoring and instrumenting
* Troubleshooting

### Kafka Case Studies

* This section will feature case studies from various companies using Kafka solve real world problems
