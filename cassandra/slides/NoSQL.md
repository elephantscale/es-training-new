# NoSQL Intro


---


## Lesson Objectives


 * Learn about scaling limitations in traditional RDBMS

 * Learn NoSQL concepts 

 * Understand consistencies and CAP theorem

 * Gain an understanding of columnar storage

 * Learn how NoSQL can handle Big Data

Notes: 




---

# RDBMS and NoSQL

---


## Story of Scaling a Startup...

<img src="../../assets/images/cassandra/Story-of-Scaling.png"  style="width:70%;" /> <!-- {"left" : 2.75, "top" : 2.61, "height" : 8.49, "width" : 12.01} -->


Notes: 




---

## Scaling Startup: 1 Month In

<img src="../../assets/images/cassandra/Scaling-Startup.png"  style="width:70%;" /> <!-- {"left" : 2.75, "top" : 2.61, "height" : 8.49, "width" : 12.01} -->


Notes: 




---

## Scaling a Startup: X Months In...


<img src="../../assets/images/cassandra/Scaling-Startup-02.png"  style="width:70%;" /> <!-- {"left" : 2.96, "top" : 2.12, "height" : 9.43, "width" : 11.59} -->

Notes: 




---

## Moral of the Story


 * Scaling traditional databases (RDBMS) 

    - is HARD!

    - and EXPENSIVE!!

Notes: 




---

## What's Wrong with Relational Databases?


 * Nothing!

 * Very mature ecosystem, widely used

 * SQL is awesome! (We all know it)

 * Rich set of tools and libraries

 * Provides ACID transactions

 * Nice, relational schemas

 * ...BUT...

Notes: 




---

## What's Wrong with Relational Databases?


 * Most RDBMS are written for "single machine architecture"

 * Most DBs only scale vertically

     - Buy more powerful machines

     - There is only so much money can buy :)

 * Scaling has to be done "outside the db"

     - Complicates application code!

 * Sharding & replication has to be managed by app developers

     - Not easy to do it at scale

     - Lots of "baby sitting"

     - (War stories!)

Notes: 




---

## New Breed of Applications...


 * Big Users

     - Having millions of users /=per day is not uncommon

     - Applications can go viral and get a huge amount of usage in a short time (literally days or hours!)

     - Peak usage of applications can be many times higher than normal usage (e.g., Twitter during a FIFA world cup game)

 * Big Data

     - Volume: Terabytes to petabytes

     - Velocity: Data is generated pretty fast

     - Variety: Unstructured data (Twitter streams, sensor data, etc.)

 * RDBMS is not good at handling the above

Notes: 




---

## Growth of Unstructured Data


<img src="../../assets/images/Cassandra/Growth-Unstructured-Data.png"  style="width:70%;" /><!-- {"left" : 2.72, "top" : 3.03, "height" : 7.65, "width" : 12.06} -->

Notes: 




---

## Example Application: Google Maps Navigation


 * Millions of users/day

 * Say each user generates about 1000 data points 

     - GPS location, speed, traffic reports

 * This results in 100s of millions (even billions) of record points every day!!

<img src="../../assets/images/cassandra/Google-Maps-Navigation.png"  style="width:70%;" /> <!-- {"left" : 2.23, "top" : 5.44, "height" : 5.03, "width" : 13.04} -->


Notes: 




---

## The Perfect Data Store!

<img src="../../assets/images/cassandra/Data-Store.png"  style="width:80%;" /> <!-- {"left" : 2.91, "top" : 2.83, "height" : 7.77, "width" : 11.68} -->



Notes: 




---

## Rise of NoSQL Data Stores


 * NoSQL data stores are primarily designed for Scalability, Scalability, Scalability

 * Designed to run on a cluster of machines

     - Commodity, not special, hardware -> cost effective

 * Horizontal Scalability from the get-go

     - Want more capacity? Add more nodes (with no downtime!)

 * Failure tolerant

     - Nodes may (and will) go down... but the DB stays up

 * Flexible Data Model/Schema

     - Relational model isn't the best fit for all data models

     - Flexible schema (or no schema)

     - No need to define schema before capturing data

Notes: 




---

## Rise of NoSQL Stores...


 * Ability to handle Big Data

 * Fast writes & reads without locking

     - Ingest high-velocity data streams 

 * Dispense with some niceties

     - NO Secondary indexes!

     - NO JOINS!!

     - No (or very little) ACID!!! 

 * Some NoSQL DBs do provide transactions

Notes: 




---

## NoSQL vs. RDBMS

| Feature      | NoSQL                                  | RDBMS                                   |
|--------------|----------------------------------------|-----------------------------------------|
| For          | Unstructured/semi- <br/> structured data      | Structured data                         |
| Schema       | Optional/flexible                      | Required/Enforced                       |
| Data models  | - Flat tables <br/>  - de-normalized   | Heavily normalized                      |
| Scale        | Scales horizontally (huge scalability) | Scales vertically (limited scalability) |
| Foreign Keys | No                                     | Supported                               |
| Joins        | No                                     | Yes                                     |

 <!-- {"left" : 1.35, "top" : 3.35, "height" : 1, "width" : 14.79} -->

Notes: 




---

# ACID and NoSQL

---


## ACID


 * **A**tomicity

     - All or nothing

 * **C**onsistency

     - Transaction brings DB from one valid state to another

 * **I**solation

     - Multiple transactions can execute in parallel, but they won't interfere with each other

 * **D**urability

     - Once a transaction is committed, data is persisted and available

 * ACID is great for mission-critical systems

Notes: 




---

## Transactions in Distributed Systems


 * Very hard scale

 * Involves

     - Blocking

     - Locking

     - -> increased latency 

     - -> reduced throughput

 * Network effect

     - What if nodes crash in the middle of a transaction?

     - Or network gets partitioned?

 * Most NoSQLs don't offer transactions

Notes: 




---

## ACID: Consistency


 * Replicas agree on latest value

     -  Readers get the latest value

 * Consistency Levels

     - Strong Consistency

     - Eventual Consistency

Notes: 




---

## Quiz

<img src="../../assets/images/cassandra/Quize.png"  style="width:50%;float:right;"/> <!-- {"left" : 9.92, "top" : 1.89, "height" : 5.06, "width" : 7.18} -->


 * Imagine visiting a bank

 * Withdraw money using the lobby ATM

 * Go through the drive-thru to use the ATM

     - Bank balance will reflect the latest transaction

 * What consistency level is this?



Notes: 




---

## Quiz


 * You walk into a busy coffee shop.

 * One person takes the order, another fulfills it.

 * You get immediate acknowledgment of the order but it is fulfilled at a later time.

 *  **Eventually**, when you walk out of the coffee shop, your transaction is full-filled.

 * Who corrects mistakes?

 * What consistency level is this?

Notes: 




---

## Eventual Consistency Example


<img src="../../assets/images/cassandra/NoSQL-Intro-Eventual-Consistency-Example-3.png"  style="width:80%;" /> <!-- {"left" : 1.94, "top" : 4, "height" : 5.71, "width" : 13.61} -->


Notes: 




---

## Eventual Consistency


 * Writers get immediate acknowledgment

 * Readers may get older values

 * The system will eventually catch up

 * It also provides for remedial action(s)

 * Eventual Consistency is suitable for:

     - Non-critical writes

     - High write throughput

     - Asynchronous bulk writes

Notes: 




---

## Eventual Consistency Example: Video + Comments


<img src="../../assets/images/cassandra/Eventual-Consistency.png"  style="width:50%;" /> <!-- {"left" : 4.4, "top" : 3.12, "height" : 8.11, "width" : 8.7} -->

Notes: 




---

## When is ACID not needed?


 * Data that is not "critical" or "transactional"

 * Tweets, mobile phone geolocations, sensor data

 * Need very fast writes (without locking)

 * Need very fast reads (without blocking)

 * Give up (some) ACID

 * -> Gain massive scalability

Notes: 




---

## High Availability


 * Nodes may go down...but the system is available

 * Clients can read/write data

 * Achieved via replication

 * No single point of failure

 * ... but there is a catch

Notes: 




---

# CAP Theorem

---


## CAP Theorem (Eric Brewer)


 * **C**onsistency: All replicas agree on the same value

 * **A**vailability: Can always read and write to system

 * **P**artition Tolerance: System keeps working even if replicas can't talk to each other **'split brain**' scenario

 * CAP Theorem says we can have **2 of 3**

<img src="../../assets/images/cassandra/cap-partition.png"  style="width:70%;" /> <!-- {"left" : 1.92, "top" : 5.71, "height" : 4.81, "width" : 13.66} -->


Notes: 




---

## CAP Theorem


<img src="../../assets/images/cassandra/CAP-Theorem.png"  style="width:50%;" /> <!-- {"left" : 4.24, "top" : 2.62, "height" : 8.46, "width" : 9.03} -->

Notes: 




---

## CAP Classification

<img src="../../assets/images/cassandra/NoSQL-Intro-CAP-Classification-5.png"  style="width:80%;" /> <!-- {"left" : 2.66, "top" : 2.57, "height" : 8.57, "width" : 12.18} -->



Notes: 




---

## CAP Theorem Implications


 * Choose a data store that fits the application

 * Gmail

     - Based on Google Big Table

     - High Availability of Gmail service is facilitated by replicating email across multiple data centers

     - If primary cluster is down, application automatically switches to backup cluster

 * Netflix

     - Uses Cassandra for its streaming service

     - High Availability is more important than highly consistent view

Notes: 




---

# NoSQL Stores

---


## NoSQL DB Types

| Key Value | Document  | Graph | Wide Column |
|-----------|-----------|-------|-------------|
| Memcache  | MongoDB   | Neo   | HBase       |
| Redis     | CouchDB   |       | Cassandra   |
|           | CouchBase |       | Accumulo    |

 <!-- {"left" : 1.48, "top" : 3.37, "height" :1, "width" : 14.54} -->

Notes: 




---

## Key Value Stores


 * Essentially a hash table, indexed by key

 * Either entirely in-memory

     - E.g., Memcache or Scalaris

 * Or Memory + Disk Persistence option

     - E.g., Redis

 * These systems do not offer secondary indices or keys

Notes: 




---

## Document Stores

<img src="../../assets/images/cassandra/3rd-party/NoSQL-Intro-Document-Stores-6.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.51, "top" : 1.89, "height" : 4.1, "width" : 3.41} -->


 * Principal storage abstraction is a document

 * Arbitrary collection of key/value pairs

 * Usually JSON data

 * Internally stored as BLOBs or BSON

 * E.g., MongoDB or CouchDB

 * Provides secondary indices and map/reduce operations

 * Small to medium scalability


Notes: 




---

## Graph Databases

<img src="../../assets/images/cassandra/3rd-party/NoSQL-Intro-Graph-Databases-7.jpg"  style="width:40%;float:right;"/> <!-- {"left" : 10.51, "top" : 1.89, "height" : 4.9, "width" : 6.53} -->


 * Equivalent of RDBMS-es for graphs

 * Used for storing connected data sets

 * Provide index free adjacency

 * Also, provide a graph query language

 * E.g., Neo4j

 * These are for online graph operations, not for batch analytics



Notes: 




---

## Wide Column Stores


 * Can support  **billions of rows and millions of columns**!

 * Data is sharded across nodes

 * Cassandra, HBase, Accumulo, SkyllaDB, etc.


<img src="../../assets/images/logos/cassandra-logo-1.png" style="width:20%;" /> <!-- {"left" : 1.25, "top" : 6.78, "height" : 1.82, "width" : 2.71} -->
 &nbsp; &nbsp;<img src="../../assets/images/logos/hbase-logo-01.png" style="width:30%;" /> <!-- {"left" : 5.78, "top" : 7.12, "height" : 1.13, "width" : 4.41} -->
 &nbsp; &nbsp; <img src="../../assets/images/logos/accumulo.png" style="width:30%;" /> <!-- {"left" : 11.25, "top" : 7.05, "height" : 1.28, "width" : 5} -->




Notes: 




---

# Columnar Storage

---


## Columnar Store


 * Columnar format stores columns **physically together** (instead of rows)

 * Optimized for fast column based aggregations

 * select MAX(temp) from sensors;

 * Doesn't work well for 'select *' queries

     - Row stores work best for that

Notes: 




---

## Row-Based Store

<img src="../../assets/images/cassandra/Row-Based-Store.png"   style="width:80%;" /> <!-- {"left" : 2.33, "top" : 3.67, "height" : 6.37, "width" : 12.84} -->



Notes: 




---

## Columnar Store


<img src="../../assets/images/cassandra/Columnar-Store.png" style="width:70%;" /> <!-- {"left" : 2.79, "top" : 2.38, "height" : 8.94, "width" : 11.93} -->


Notes: 




---

## NoSQL & CAP—Recap


<img src="../../assets/images/cassandra/NoSQL-CAP-Recap.png" style="width:80%;" /> <!-- {"left" : 1.92, "top" : 3.24, "height" : 7.23, "width" : 13.67} -->



Notes: 




---

## NoSQL and Big Data


 * Hadoop is the platform of choice for Big Data

 * Hadoop analytics is **batch** (MapReduce)

     - Queries take minutes, hours 

 * Hadoop is not suitable for low latency reads/writes

 * NoSQL data stores are suitable for low latency reads/writes but not for high volume batch analytics

Notes: 




---

## Data Spectrum

<img src="../../assets/images/cassandra/Data-Spectrum.png" style="width:80%;" /> <!-- {"left" : 2.76, "top" : 3.44, "height" : 6.84, "width" : 11.99} -->



Notes: 




---

## Cassandra and Data Analytics


 * NoSQL is for point access

 * Analytics is better handled in Hadoop and Spark

 * But if all your data is in a HBase or Cassandra


<img src="../../assets/images/cassandra/NoSQL-Intro-Cassandra-and-Data-Analytics-13.png" style="width:80%;" /> <!-- {"left" : 1.84, "top" : 4.86, "height" : 5.2, "width" : 13.82} -->

Notes: 



---

## Numbers Every One Should Know by Jeff Dean, Fellow @ Google

<img src="../../assets/images/cassandra/3rd-party/Numbers-Every.png" style="width:65%;" /> <!-- {"left" : 2.31, "top" : 2.97, "height" : 8.48, "width" : 12.88} -->



Notes: 




---

## Review Questions


  * True or False? Most NoSQL data stores are designed to run on single node.

  * Which one of the features do most NoSQL data stores support?

     - Transactions
     - Durability
     - High speed read/writes
     - Sharding
     - Secondary indexes/joins

   * What are the implications of CAP Theorem?

   * What kind of NoSQL systems are HBase and Cassandra?
     - Document store
     - Key-value store
     - Graph store

Notes: 




---

# Backup Slides

---


## HBase and Phoenix for Data Analytics

<img src="../../assets/images/cassandra/HBase-Phoenix-Data-Analytics.png" style="width:40%;" /> <!-- {"left" : 4.51, "top" : 2.32, "height" : 8.78, "width" : 8.48} -->


Notes: 



---

## Growth of Unstructured Data

<img src="../../assets/images/cassandra/Growth-Unstructured-Data.png" style="width:70%;" /> <!-- {"left" : 2.33, "top" : 3.09, "height" : 8.14, "width" : 12.84} -->




Notes: 




---

## CAP Theorem

<img src="../../assets/images/cassandra/CAP-Theorem.png"  style="width:50%;" /> <!-- {"left" : 4.37, "top" : 2.75, "height" : 8.2, "width" : 8.75} -->


Notes: 





