# Cassandra

© Elephant Scale

February 07, 2022

## Overview

* This course will introduce Cassandra –  a popular NoSQL database.  It will cover Cassandra principles, architecture and data model.

## Learning goals

* After taking the course, participants will be able to

    - Do data models in Cassandra (C*)
    - Use APIs to interact with C*

## What you will learn

* Cassandra's architecture
* (Optional) Cassandra's internals
* CQL (Cassandra Query Language)
* Data modeling in CQL
* Using APIs to interact with Cassandra

## Duration: 

* 2-3 days

## Audience: 
* Software developers
* Software architects

## Prerequisites

* comfortable with Java programming language
* comfortable in Linux environment (navigating command line, running commands)

## Lab environment

* A working Cassandra environment will be provided for students.  Students would need a SSH client and a browser to access the cluster.

* Zero Install: There is no need to install Cassandra on students’ machines!

## Detailed Outline

### Introduction to Big Data / NoSQL

* NoSQL overview
* CAP theorem
* When is NoSQL appropriate
* Columnar storage
* NoSQL ecosystem

### Cassandra Basics

* Design and architecture
* Cassandra nodes, clusters, datacenters
* Keyspaces, tables, rows and columns
* Partitioning, replication, tokens
* Quorum and consistency levels
* Labs: installing Cassandra, interacting with Cassandra using CQLSH

### Data Modeling – part 1
* introduction to CQL
* CQL Datatypes
* Creating keyspaces and tables
* Choosing columns and types
* Choosing primary keys
* Data layout for rows and columns
* Time to live (TTL)
* Querying with CQL
* CQL updates
* Collections (list, map, and set)
* Labs: various data modeling exercises using CQL; experimenting with queries and supported data types

### Data Modeling – part 2

* Creating and using secondary indexes
* Composite keys (partition keys and clustering keys)
* Time series data
* Best practices for time series data
* Counters
* Lightweight transactions (LWT)
* Labs: creating and using indexes; modeling time series data
* Data Modeling Labs: Group design session
  * Multiple use cases from various domains are presented
  * Students work in groups to come up designs and models,  discuss various designs, analyze decisions
* Lab: implement one of the scenario

### Cassandra drivers
  
* Introduction to Java driver
* CRUD (Create / Read / Update, Delete) operations using Java client
* Asynchronous queries
* Labs: using Java API for Cassandra

### Cassandra Internals
* Understand Cassandra design under the hood
* sstables, memtables, commit log
* Read path, write path
* Caching
* vnodes
* Administration
* Hardware selection
* Cassandra distributions
* Cassandra best practices (compaction, garbage collection)
* troubleshooting tools and tips
* Lab: students install Cassandra, run benchmarks
* Bonus Lab (time permitting)
* Implement a music service like Pandora and Spotify on Cassandra