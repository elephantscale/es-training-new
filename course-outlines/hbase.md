# Apache HBase

© Elephant Scale

June 15, 2021

## Overview

This course introduces HBase – a NoSQL store on top of Hadoop.  The course is intended for developers who will be using HBase to develop applications and administrators who will manage HBase clusters.

## What you will learn:
* HBase architecture and design
* HBase internals
* Using APIs to interact with HBase
* Data modeling on HBase

## Duration:
* Three Days

## Audience
* Developers  & Administrators

## Prerequisites
* comfortable in Java programming language (navigate Linux command line , edit files with vi / nano)
* A Java IDE like Eclipse or IntelliJ

## Lab environment
* A working HBase cluster will be provided for students.  Students would need a SSH client and a browser to access the cluster.
* Zero Install: There is no need to install HBase software on students' machines!

## Course Outline

### Introduction to Big Data & NoSQL
* Big Data ecosystem
* NoSQL overview
* CAP theorem
* When is NoSQL appropriate
* Columnar storage
* HBase and NoSQL

### HBase Intro

* Concepts and Design
* Architecture (HMaster and Region Server)
* Data integrity
* HBase ecosystem
* Lab: Exploring HBase

### HBase Data model

* Namespaces, Tables and Regions
* Rows, columns, column families, versions
* HBase Shell and Admin commands
* Lab: HBase Shell

### Accessing HBase using Java API
* Introduction to Java API
* Read/Write path
* Time Series data
* Scans
* Map Reduce
* Filters
* Counters
* Co-processors
* Labs: 
    * Using HBase Java API to implement  time series
    * MapReduce
    * Filters
    * Counters

### HBase schema Design: Group session
* students are presented with real world use cases
* students work in groups to come up with design solutions
* discuss / critique and learn from multiple designs
* Labs: implement a scenario in HBase


### HBase Internals
* Understanding HBase under the hood
* Memfile / HFile / WAL
* HDFS storage
* Compactions
* Splits
* Bloom Filters
* Caches
* Diagnostics
* HBase installation and configuration
* Hardware selection
* Install methods
* Common configurations
* Lab: installing HBase

### HBase eco-system
* Developing applications using HBase
* Interacting with other Hadoop stack (MapReduce, Pig, Hive)
* Frameworks around HBase
* Advanced concepts (co-processors)
* Labs: writing HBase applications

### Monitoring And Best Practices
* Monitoring tools and practices
* Optimizing HBase
* HBase in the cloud
* Real-world use cases of HBase
* Labs: checking HBase vitals

