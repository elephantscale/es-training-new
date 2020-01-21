# Intro to Apache Kafka

© Elephant Scale

Jan. 18, 2020

## Overview

Kafka is definitely one of the leading distributed messaging queues, 
found in use everywhere. More correctly called “a distributed messaging platform,” 
it provides three key capabilities: publish-and-subscribe, store streams, and process streams. 
This course introduces the students to using Kafka and architecting systems with it.

## What you will learn
* Overview of Streaming technologies
* Kafka concepts and architecture
* Programming using Kafka API
* Kafka Streams
* Monitoring Kafka
* Tuning / Troubleshooting Kafka

## Audience
Developers, Architects

## Duration
3 days 

## Format
Lectures and hands-on labs. (50%, 50%)

## Prerequisites

* Comfortable with Java programming language (programming exercises are in Java)
* Comfortable in Linux environment (be able to navigate Linux command line, run commands)


## Lab environment

* A reasonably modern laptop
* Unrestricted connection to the Internet. 
Laptops with overly restrictive VPNs or firewalls may not work properly
* A browser (Chrome recommended)
* SSH client for your platform (Putty or Terminal)

## Detailed outline

* Introduction to Streaming Systems
    - Fast data
    - Streaming architecture
    - Lambda architecture
    - Message queues
    - Streaming processors
* Introduction to Kafka 
    - Architecture
    - Comparing Kafka with other queue systems (JMS / MQ)
    - Kaka concepts: Messages, Topics, Partitions, Brokers, Producers, commit logs
    - Kafka & Zookeeper
    - Producing messages
    - Consuming messages (Consumers, Consumer Groups)
    - Message retention
    - Scaling Kafka
    - Labs: 
      - Getting Kafka up and running
      - Using Kafka utilities
* Programming With Kafka
    - Configuration parameters
    - Producer API (Sending messages to Kafka)
    - Consumer API (consuming messages from Kafka)
    - Commits, Offsets, Seeking
    - Schema with Avro
    - Lab:
      - Writing Kafka clients in Java
      - Benchmarking Producer APIs
* Intro to Kafka Streams
    - Streams overview and architecture
    - Streams use cases and comparison with other platforms
    - Learning Kafka Streaming concepts (KStream, KTable, KStore)
    - KStreaming operations (transformations, filters, joins, aggregations)
    - Labs:
      - Kafka Streaming labs
* Administering Kafka
    - Hardware / Software requirements
    - Deploying Kafka
    - Configuration of brokers / topics / partitions / producers / consumers
    - Security: How secure Kafka cluster, and secure client communications (SASL, Kerberos)
    - Monitoring: monitoring tools
    - Capacity Planning: estimating usage and demand
    - Troubleshooting: failure scenarios and recovery
* Monitoring and Instrumenting Kafka
    - Monitoring Kafka
    - Instrumenting with Metrics library
    - Labs
      - Monitor Kafka cluster
      - Instrument Kafka applications and monitor their performance
* Final workshop (time permitting)
    - Students will build an end-to-end application simulating web traffic and send metrics to Grafana.
    - See screenshot and video below!
    TODO - Shiva to put links from here
    https://elephantscale.com/training/kafka/