# Hadoop 3 with Hive 3

© Elephant Scale

June 15, 2021

Hadoop is a mature Big Data environment. Even as the latest technologies concentrate on Spark, 
the Hadoop ecosystem is here to stay.

Hive is de-facto standard the SQL interface into Big Data. Today, it offers ACID tables,
storage requirements reduction by the factor of 2 with erasure coding, HBase integration with Phoenix,
and much more. 

However, in order to achieve efficiency, one must be familiar with the best practices of the HQL
language, compare different tools for looking at your data, whether it be Hive, Phoenix HBase, or plan Excel.

This course will explain the capabilities of Hadoop, Hive, HQL dialects, and best practices.

## Duration: 4 days
## Audience: Business analysts, Software developers, Managers
## Prerequisites:
 * Exposure SQl
 * Be able to navigate Linux command line

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

### Data ingestion
* Flume for logs and other data ingestion into HDFS
* Sqoop for importing from SQL databases to HDFS, as well as exporting back to SQL
* Hadoop data warehousing with Hive
* Copying data between clusters (distcp)
* Using S3 as complementary to HDFS
* Data ingestion best practices and architectures
* Labs: setting up and using Flume, the same for Sqoop

### MapReduce operations and administration
* Parallel computing before MapReduce: compare HPC vs Hadoop administration
* MapReduce cluster loads
* Nodes and Daemons (JobTracker, TaskTracker)
* MapReduce UI walkthrough
* Mapreduce configuration
* Job config
* Optimizing MapReduce
* Fool-proofing MR: what to tell your programmers
* Labs: running MapReduce examples

### YARN: new architecture and new capabilities
* YARN design goals and implementation architecture
* New actors: ResourceManager, NodeManager, Application Master
* Installing YARN
* Job scheduling under YARN
* Labs: investigate job scheduling

### Advanced topics
* Hardware monitoring
* Cluster monitoring
* Adding and removing servers, upgrading Hadoop
* Backup, recovery and business continuity planning
* Oozie job workflows
* Hadoop high availability (HA)
* Hadoop Federation
* Securing your cluster with Kerberos
* Labs: set up monitoring

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
    * How to troubleshoot queries?
  
### HBase

* Basics
* HBase tables - design and use
* Phoenix driver for HBase tables

### Spark

* Overview
* Spark SQL

### The big picture

* How Hadoop fits into your architecture
* Hive vs HBase with Phoenix vs Excel

