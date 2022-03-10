# Hadoop+Spark

© Elephant Scale

February 18, 2022

Hadoop is a mature Big Data environment, with Hive is de-facto standard for the SQL interface.
Today, the computations in Hadoop are usually done with Spark. 
Spark offers an optimized compute engine that includes batch, and real-time streaming, and machine learning.  

This course covers Hadoop 3, Hive 3, and Spark 3.

## Duration: 
* 5 days

## Audience: 

* Business analysts, Software developers, Managers

## Prerequisites:
 * Basics of SQl
 * Exposure to software design
 * Basics of Python

## Lab environment:
* Working environment provided in the browser
* **Zero Install:** There is no need to install software on students' machines.

## Course Outline

### Why Hadoop?
    * The motivation for Hadoop
    * Use cases and case studies about Hadoop 
### The Hadoop platform
    * MapReduce, HDFS, YARN
    * New in Hadoop 3
        * Erasure Coding vs 3x replication
### Hive Basics 
    * Defining Hive Tables
    * SQL Queries over Structured Data
    * Filtering / Search
    * Aggregations / Ordering
    * Partitions
    * Joins
    * Text Analytics (Semi Structured Data)

### New in Hive 3 
    * ACID tables
    * Hive Query Language (HQL) 
        * How to run a good query? 
        * How to trouble shoot queries?  
### HBase
    * Basics
    * HBase tables - design and use
    * Phoenix driver for HBase tables
### Sqoop
    * Tool
    * Architecture
    * Use
### The big picture
    * How Hadoop fits into your architecture
    * Hive vs HBase with Phoenix vs Excel

### Spark Introduction
* Big Data , Hadoop, Spark
* Spark concepts and architecture
* Spark components overview
* Labs: Installing and running Spark

### First Look at Spark
* Spark shell
* Spark web UIs
* Analyzing dataset – part 1
* Labs: Spark shell exploration

### Spark Data structures
* Partitions
* Distributed execution
* Operations: transformations and actions
* Labs: Unstructured data analytics using RDDs

### Caching
* Caching overview
* Various caching mechanisms available in Spark
* In memory file systems
* Caching use cases and best practices
* Labs: Benchmark of caching performance

### DataFrames and Datasets
* DataFrames Intro
* Loading structured data (JSON, CSV) using DataFrames
* Using schema
* Specifying schema for DataFrames
* Labs: DataFrames, Datasets, Schema

### Spark SQL
* Spark SQL concepts and overview
* Defining tables and importing datasets
* Querying data using SQL
* Handling various storage formats: JSON / Parquet / ORC
* Labs: querying structured data using SQL; evaluating data formats

### Spark and Hadoop
* Hadoop + Spark architecture
* Running Spark on Hadoop YARN
* Processing HDFS files using Spark
* Spark & Hive

### Spark API
* Overview of Spark APIs in Scala / Python
* Life cycle of an Spark application
* Spark APIs
* Deploying Spark applications on YARN
* Labs: Developing and deploying a Spark application

### Spark ML Overview
* Machine Learning primer
* Machine Learning in Spark: MLib / ML
* Spark ML overview (newer Spark2 version)
* Algorithms overview: Clustering, Classifications, Recommendations
* Labs: Writing ML applications in Spark

### GraphX
* GraphX library overview
* GraphX APIs
* Create a Graph and navigating it
* Shortest distance
* Pregel API
* Labs: Processing graph data using Spark

### Spark Streaming
* Streaming concepts
* Evaluating Streaming platforms
* Spark streaming library overview
* Streaming operations
* Sliding window operations
* Structured Streaming
* Continuous streaming
* Spark & Kafka streaming
* Labs: Writing spark streaming applications

### Workshops (Time permitting)
* These are group workshops
* Attendees will work on solving real world data analysis problems using Spark
