# Spark Introduction

<img src="../../assets/images/logos/spark-logo-1.png" style="width:35%;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;

---

## Objectives
* Learn about Spark ecosystem
* Understand Spark use cases
* Installing and running Spark
* Using Spark Shell

---

# Spark Intro

---

## Big Data V1: Hadoop

<!-- TODO shiva -->
<img src="../../assets/images/logos/hadoop-logo-1.png" style="width:30%;float:right;" />

* Hadoop was the first Big Data platform to be widely adopted

* Hadoop has three main components
    - Storage: **HDFS** - Store huge amount of data in a distributed fashion
    - Operating System: **YARN** - manage the cluster
    - Processing: **MapReduce Engine** - distributed computing

<!-- TODO shiva -->
<img src="../../assets/images/hadoop/hadoop-1.png" style="width:50%;" />


Notes:

---

## MapReduce Engine

<!-- TODO shiva -->
<img src="../../assets/images/logos/hadoop-mapreduce-logo-1.png" style="width:40%;float:right;" />

* MapReduce was state of the art around 2008

* It was written for a time when
  - Data was on disk
  - And most processing was batch

* How ever MR had its limitations
  - It had high overhead
  - It didn't support 'in-memory' processing
  - It couldn't do 'streaming / real time' work loads

Notes:


---

## Spark


<!-- TODO shiva -->
<img src="../../assets/images/logos/spark-logo-1.png" style="width:30%;float:right;" />

* [Spark](https://spark.apache.org) is an **open Source distributed computing engine**
    - Very fast: On-disk ops are **10x** faster than MR
    - In-memory ops **100x** faster than MR

* General purpose: MR, SQL, streaming, machine learning, analytics

* Hadoop compatible: Runs over Hadoop, Mesos, Yarn, or standalone

* Plays nicely with Big Data ecosystem (S3, Cassandra, HBase)

* Very easy to use API

* _"Spark is the First Big Data platform to integrate batch, streaming and interactive computations in a unified framework." - stratio.com_


---

## Spark's History

* Spark was created at [Berkeley AMP Lab](https://amplab.cs.berkeley.edu/)

* Now top-level Apache project

* **[Databricks](https://databricks.com/)** -  Supporting and developing Spark
    - Founded by Spark's creators
    - Employs the most active committers

* Spark is now included with most modern Hadoop distributions

---

## Why is Spark Popular?

* Ease of use
    - Easy to get up and running
    - Develop on laptop, deploy on cluster

* Multiple language support
    - Java, Scala, Python and R
    - Developers (Java/Scala),   Data Scientists (Python, R)

* High performant

* Plays nice with BigData eco system

* Out of the box functionality
    - Modern functional programming constructs
    - Machine Learning / Streaming / Graph processing


Notes:

---

## Spark Versions

| Version | Release Date | Description            |
|---------|--------------|------------------------|
| 1.0     | 2014-05-30   | Initial Apache release |
| 1.6     | 2016-01-04   | Stable 1.x release     |
| 2.0     | 2016-07      | Big update from V1     |
| 2.4     | 2020-01      | Stable v2 release      |
| 3.0     | 2020 Q2      | V3 release             |

Notes:

---

## Spark Components

<!-- TODO shiva -->
<img src="../../assets/images/spark/spark-components-1.png" style="width:80%;" />

Notes:

---

## Spark Components

* __Data Storage__: Pluggable data storage systems
    - Integrates with HDFS, S3, Cassandra DB, and more

* __Cluster Manager__: Manages distributed node clusters
    - Provides the distributed execution environment
    - Works with Mesos, Yarn, and its own standalone manager

* __Spark Core__: Distributed computing engine


Notes:

---

## Spark Components : Core

* **Core** has basic building blocks for distributed computing engine

* Task schedulers and memory management

* Fault recovery (recovers missing pieces on node failure)

* Storage system interfaces

* Defines Spark API

* Data Model: RDD/Dataframe/Dataset
    - Distributed collection of items
    - Can be worked on in parallel
    - Easily created from many data sources


---

## Spark Components

* __Spark SQL__: Analyze structured data
    - Supports SQL and HQL (Hive Query Language)
    - Data sources include Hive tables, JSON, CSV, Parquet

* __Spark Streaming__: Live streams of data in real-time
    - Low latency, high throughput (1000s events per second)
    - Log files, stock ticks, sensor data, IOT (Internet of Things)

* __Spark ML__: Machine Learning at scale
    - Classification/regression, collaborative filtering
    - Model evaluation and data import

* __GraphX / GraphFrames__: Graph manipulation, graph-parallel computation
    - Social network friendships, link data
    - Graph manipulation, operations, and common algorithms

---

## Spark: Unified Stack

* Spark support multiple programming models
    - MapReduce style batch processing
    - Streaming/real-time processing
    - Querying via SQL
    - Machine learning
    - Graph Processing

* All modules are tightly integrated; Facilitates rich applications

* Spark can be the only stack you need!
    - No need to run multiple clusters (Hadoop cluster, Storm cluster, etc.)


---

## Spark Use Cases

<!-- TODO shiva -->
<img src="../../assets/images/logos/teralytics-logo-1.jpg" style="width:30%;float:right;" />

* Teralytics (Telco data)
    - Processing cell phone events
    - 180 billion events per day
    - Spark + HDFS
    - Estimating usage patterns to enhance coverage (sporting events, commuting, etc.)
    - Source: [1](http://bigdatausecases.info/entry/origin-destination-matrix-using-mobile-network-data-with-spark), [2](https://databricks.com/session/origin-destination-matrix-using-mobile-network-data-with-spark)

<br clear="all" />
<img src="../../assets/images/logos/yahoo-logo-1.png" style="width:30%;float:right;" />

* Spark at Yahoo
    - News personalization
    - 120 line Scala program with ML lib replaced 15,000 lines of C++
    - Spark took 30 minutes to run on 100 million samples
    - [Source](https://www.dezyre.com/article/top-5-apache-spark-use-cases/271)


---

## Spark Use Cases

<!-- TODO shiva -->
<img src="../../assets/images/logos/netflix-logo-1.png" style="width:30%;float:right;" />

* Netflix
    - Recommendations using Spark + Cassandra
    - Analyzes streaming events (450 billion events per day)
    - Personalization through recommendations
    - Sources: [1](http://bigdatausecases.info/entry/netflix-recommendations-using-spark-and-cassandra-cassandra-summit-2016),  [2](https://www.slideshare.net/DataStax/netflix-recommendations-using-spark-cassandra)

* More case studies @ [BigDataUseCases.Info](http://bigdatausecases.info/)

---

## Spark at Large Scale

<!-- TODO shiva -->
<img src="../../assets/images/logos/tencent-logo-1.png" style="width:15%;float:right;" />

* Tencent (Social network in China)
  - 8000 nodes
  - 400 TB+ data

<br clear="all"/>  
<img src="../../assets/images/logos/alibaba-logo-1.png" style="width:20%;float:right;" />

* Alibaba (largest e-commerce site in China)
  - 1 PB scale processing
  - Large scale image processing

<br clear="all"/>  
<img src="../../assets/images/logos/janelia-logo-1.png" style="width:20%;float:right;" />
* Streaming @ Jenelia Farm
  - 1 TB per hour
  - Analyze medical images

---

# Spark vs. Hadoop

---

## Spark and Hadoop Timeline

| Hadoop    | Year | Spark                                      |
|-----------|------|--------------------------------------------|
| Created   | 2006 |                                            |
|           | 2009 | Starts at AMP lab                          |
|           | 2010 | Open sourced                               |
| Version 1 | 2011 |                                            |
| Version 2 | 2013 |                                            |
|           | 2014 | Version 1, <br /> Apache top level project |
|           | 2016 | Version 2                                  |
| Version 3 | 2019 |                                            |
|           | 2020 | Version 3                                  |


---

## Hadoop vs. Spark


<!-- TODO shiva -->
<img src="../../assets/images/spark/hadoop-vs-spark-1.png" style="width:50%;" />

[Video](https://www.youtube.com/watch?v=qfv6Ah_MVJU)

---

## Spark vs. MapReduce

<!-- TODO shiva -->
<img src="../../assets/images/spark/3rd-party/mapreduce-vs-spark-1.png" style="width:70%;" />

---

## Spark vs. MapReduce

* Spark is easier to use than MapReduce

* Friendlier development environment
  - Interactive shells allow faster development
  - Web based UI notebooks allow easier development

* Multiple language support: Java, Python, Scala, R

* Spark is high performant than MR

---

## Spark vs. MapReduce Benchmark

* Daytona Grey Benchmark: Sort 100TB of data
* References:
    - [Databricks blog](https://databricks.com/blog/2014/11/05/spark-officially-sets-a-new-record-in-large-scale-sorting.html)
    - http://sortbenchmark.org/


<!-- TODO shiva -->
<img src="../../assets/images/spark/3rd-party/spark-vs-mapreduce-benchmark-1.png" style="width:70%;" />

---

## Spark and Hadoop

* Spark is a better distributed engine the MapReduce

* Works well with Hadoop components : HDFS, YARN and Hive

<!-- TODO shiva -->
<img src="../../assets/images/spark/spark-and-hadoop-2.png" style="width:90%;" />

---

# Running Spark

---

## Spark Runtimes

* On-Premise
  - Spark is part of most modern Hadoop distributions
  - Spark can also be downloaded and installed as a standalone system

* Hosted solutions
  - Databricks cloud - hosted Spark platform
  - Cloud vendors: Amazon, Azure, Google

<br clear="all" />

<!-- TODO shiva -->
<img src="../../assets/images/logos/databricks-logo-1.png" style="width:20%;" /> &nbsp;  &nbsp;
<img src="../../assets/images/logos/google-cloud-logo-2.png" style="width:20%;" /> &nbsp;  &nbsp;
<img src="../../assets/images/logos/aws-logo-2.png" style="width:20%;" /> &nbsp;  &nbsp;
<img src="../../assets/images/logos/azure-logo-1.png" style="width:20%;" /> &nbsp;  &nbsp;

---

## Databricks

<!-- TODO shiva -->
<img src="../../assets/images/spark/3rd-party/databricks-gartner-1.png" style="width:50%;float:right;clear:both;" />

* Founded by Spark's founders

* Develops majority of Spark platform and offers commercial support

* Also provides hosted Spark platform (**Databricks Cloud**)

* Databricks is recognized as a leading provider for Data Analytics and Machine Learning platform  (Source : [Gartner report](https://databricks.com/p/whitepaper/gartner-magic-quadrant-2020-data-science-machine-learning))

<img src="../../assets/images/logos/databricks-logo-1.png" style="width:30%;float:left;" />

---

## Databricks Cloud

<!-- TODO shiva -->
<img src="../../assets/images/spark/3rd-party/databricks-cloud-1.png" style="width:60%;float:right;" />

* A hosted platform of Spark

* Zero maintenance

* Auto scale  based on work loads

* Community edition is free
  - A single node with 6GB memory
  - Notebook environment

* https://community.cloud.databricks.com/

---

## System Requirements

* Operating system
  - Development: Windows, Mac, Linux
  - Deployment: Linux
* Languages:
    - JDK 8
    - Scala 2.11
    - Python 3
* Hardware

| Resource | Development                       | Production                                                        |
|----------|-----------------------------------|-------------------------------------------------------------------|
| CPU      | 2+ core                           | 12+ core                                                          |
| Memory   | 4+ G                              | 256+ G                                                            |
| Disk     | - Single spindle <br/> - Few gigs | - Multiple spindles <br /> - Several Terabytes per node <br /> -  |

---
## Lab: Doing XYZ

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Work with xyz

* **Approximate run time:**
    - 20-30 mins

* **Instructions:**
    - Please complete A, B, C


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
