# Introduction to Apache Kafka

(C) Copyright Elephant Scale

Feb 01, 2020


## Overview
This course will teach Apache Kafka - a popular distributed messaging system. 
The course covers the needs of developers and administrators.  

## What You Will Learn
* Streaming technologies and architecture
* Kafka concepts and architecture
* Programming using Kafka API
* Kafka Streams API
* Kafka Connect
* KSQL
* Monitoring Kafka
* Tuning / Troubleshooting Kafka
* Best practices 
* Use cases 
* Solve and end-to-end use case with streaming technologies

## Audience:
Developers, Architects

## Skill Level:
Introductory - Intermediate

## Duration:
Four days

## Format:
Lectures and hands on labs. (50%   50%)

## Prerequisites
* Recommended: Comfortable with Java programming language and Java development tools (Eclipse, Maven)  -  programming exercises are in Java
* Nice to have: Comfortable in Linux environment (be able to navigate Linux command line, run commands)


## Lab environment
* Zero Install: There is no need to install Kafka software on students' machines! 
* A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser 
* SSH client for your platform
 
## Detailed outline

### Introduction to Streaming Systems
*  Understanding Fast data
*  Streaming terminologies
*  Understanding at-least-once / at-most-once / exactly-once processing patterns
*  Popular streaming architectures
*  Lambda architecture
*  Streaming platforms overview

###  Introducing Kafka
*  Comparing Kafka with other queue systems (JMS / MQ)
*  Kafka Architecture
*  Kaka concepts: Messages, Topics, Partitions, Brokers, Producers, commit logs
*  Kafka & Zookeeper
*  Producing messages
*  Consuming messages 
* Consumers, Consumer Groups
*  Message retention
*  Scaling Kafka
*  Labs:
   - Getting Kafka up and running
   - Using Kafka utilities
 
### Using Kafka APIs
*  Configuration parameters
*  Producer API - sending messages to Kafka
*  Consumer API - consuming messages from Kafka
*  Producer send modes
*  Message compression
*  Commits, Offsets, Seeking
*  Managing offsets - auto commit / manual commit
*  Labs:
    - Writing Producer / Consumer
    - Benchmarking Producer send modes 
    - Comparing compression schemes
    - Managing offsets
    - Clickstream processing 

### Kafka Streams API
*  Introduction to Kafka Streams library
*  Features and design 
*  Streams concepts: KStream / KTable / KStore
*  Streaming operations (transformations, filters, joins, aggregations)
*  Using Streams API: foreach / filter / map / groupby
*  Labs:
    - Kafka Streaming APIs

### Monitoring and Instrumenting Kafka
*  Monitoring Kafka metrics
*  Introduction to Metrics library
*  Instrumenting Kafka applications with the Metrics library
*  Using Grafana to visualize metrics
*  Labs
    - Monitor Kafka cluster
    - Instrument Kafka applications with the metrics library

### Confluent Kafka Platform
* Introduction to Confluent  platform 
* KSQL
* KSQLdb 
* Avro Schema Registry
* Labs:
   - Installing Confluent platform
   - KSQL 


### Kafka Connect
*  Connect ecosystem 
*  Popular connectors
*  Sample configurations

### Administering Kafka (Quick overview)
*  Hardware / Software requirements
*  Deploying Kafka
*  Configuration of brokers / topics / partitions / producers / consumers
*  Security: How to secure Kafka cluster, and secure client communications (SASL, Kerberos)
*  Capacity Planning: estimating usage and demand
*  Trouble shooting: failure scenarios and recovery

### Kafka Best Practices 
*  Avoiding common mistakes
*  Hardware selection
*  Cluster sizing 
*  Partition sizing 
*  Zookeeper settings 
*  Compression and batching 
*  Message sizing 
*  Monitoring and instrumenting
*  Troubleshooting

### Kafka Case Studies 
*  This section will feature case studies from various companies using Kafka solve real world problems

### Workshop (Time permitting)
*  Students will work as teams 
*  Each team will identify a real world problem and design and build an end-to-end solution featuring Kafka

---
[![Metrics With Kafka From Elephant Scale](https://res.cloudinary.com/marcomontalbano/image/upload/v1579880452/video_to_markdown/images/vimeo--218108535-c05b58ac6eb4c4700831b2b3070cd403.jpg)](https://vimeo.com/218108535 "Metrics With Kafka From Elephant Scale")
 
