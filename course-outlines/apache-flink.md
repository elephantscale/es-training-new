# Apache Flink, Introduction and Advanced

© Elephant Scale

November 23, 2022

* Flink is one of the best-of-breed stream-processing frameworks, concentrating on just stream processing and doing it extremely well.

* The course is intended for software architects and engineers. It gives them a practical level of experience, achieved through a combination of about 50% lecture, 50% demo work with student’s participation. 

## Course objectives
* Understand stream processing
* Understand Flink’s architecture and internals
* Learn the Flink’s DataStream API
* Get control of Flink’s operations

* Duration: 2 days
* Audience: Software Architects, Developers

## Prerequisites:
* Familiarity with any programming language 
* However, Java or Scala are best because of the labs
* Be able to navigate the Linux command line
* Basic knowledge of command-line Linux editors (VI / nano)

## Lab environment:
* A working environment will be provided for students.  Students would only need an SSH client and a browse.
* Zero Install: There is no need to install software on students' machines.

## Course Outline:

### Introduction
* Stateful stream processing
* Characteristics of application security
* Event-driven applications
* Data pipelines

### Stream processing fundamentals
* Dataflow programming
* Dataflow graphs
* Latency, throughput
* Datastream operations
* Time: processing time, event time
* States and consistency

### Flink architecture
* Flink components
* Application deployment, high availability
* Data transfer
* Credit-based flow
* Event-time processing, timestamps, watermarks, etc.
* Checkpoints, consistency, recovery, performance

### Developing with Apache Flink

* Setup
* IDE: running, debugging

### DataStream API (v.1.16)
* InputStream read, transform, output
* Transformations: KeyedStream, Multistream, Distribution transformation
* Implementing functions

### Operations: Time-Based and Windows
* Dealing with Time Characteristics
* Process Functions: Timer, CoProcessors
* Windows operators
* Defining
* Built-in
* Customizing
* Joins
* Dealing with late data

### Stateful Operators
* Implementing stateful functions
* Failure recovery
* Performance
* Dealing with state
* Querying state

### Reading and writing
* Idempotent writes, transactional writes
* Connectors: Kafka, Cassandra, custom

### Setup
* Setup modes: standalone, Docker, YARN, Kubernetes
* High availability
* Integrations

### Flink operations
* Savepoints
* Scheduling
* Tuning

### What the future holds

* FlinkCEP
* Graphs with Gelly
* FlinkML

### Ververica - is it for you?
* Ververica is the company founded by the original creators of Apache Flink. 
* Ververica Platform Community Edition is a complete, free of charge and free for commercial use  stream processing platform that brings Ververica’s industry expertise and stream processing best practice under an integrated data streaming architecture. 
* Ververica lab
