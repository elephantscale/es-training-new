# Hive 3

© Elephant Scale

June 25, 2020

Hive is de-facto standard the SQL interface into Big Data. Today, it offers ACID tables,
storage requirements reduction by the factor of 2 with erasure coding, HBase integration with Phoenix,
and much more. 

However, in order to achieve efficiency, one must be familiar with the best practices of the HQL
language, compare different tools for looking at your data, whether it be Hive, Phoenix HBase, or plan Excel.

This course will explain the capabilities of Hive, HQL dialects, and best practices.

## Duration: 2 days
## Audience: Business analysts, Software developers, Managers
## Prerequisites:
 * Exposure SQl
 * Be able to navigate Linux command line

## Lab environment:
* Working environment provided in the browser
* (Hortonworks environment implemented on [Google Dataproc](https://cloud.google.com/dataproc))  

* **Zero Install:** There is no need to install software on students' machines.

## Course Outline

* Why Hadoop?
    * The motivation for Hadoop
    * Use cases and case studies about Hadoop 
* The Hadoop platform
    * MapReduce, HDFS, YARN
    * New in Hadoop 3
        * Erasure Coding vs 3x replication
* Hive Basics 
    * Defining Hive Tables
    * SQL Queries over Structured Data
    * Filtering / Search
    * Aggregations / Ordering
    * Partitions
    * Joins
    * Text Analytics (Semi Structured Data)

* Hive Advanced
    * Transformation, Aggregation
    * Working with Dates, Timestamps, and Arrays
    * Converting Strings to Date, Time, and Numbers
    * Create new Attributes, Mathematical Calculations, Windowing Functions
    * Use Character and String Functions
    * Binning and Smoothing
    * Processing JSON Data
    * Different Engines:
        * Tez Engine
        * MapReduce
* New in Hive 3 
    * ACID tables
    * Hive Query Language (HQL) 
        * How to run a good query? 
        * How to trouble shoot queries?  
* HBase
    * Basics
    * HBase tables - design and use
    * Phoenix driver for HBase tables
* Sqoop
    * Tool
    * Architecture
    * Use
* Spark
    * Overview
    * Spark SQL
* The big picture
    * How Hadoop fits into your architecture
    * Hive vs HBase with Phoenix vs Excel

