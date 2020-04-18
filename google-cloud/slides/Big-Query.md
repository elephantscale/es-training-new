# Google Big Query

<img src="../../assets/images/logos/google-big-query-logo-1.png" style="width:50%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->


---

## Objectives

<!-- TODO shiva -->
<img src="../../assets/images/logos/google-big-query-logo-1.png" style="width:40%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

* Understand Google Big Query

* Learn to use Big Query

---

## Data warehouses

<!-- TODO shiva -->
<img src="../../assets/images/bigdata/data-warehouse-1.png" style="width:40%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

* Organizations rely on data warehouses to store and query the data they have

* Data originates from many sources, but eventually ends up the data warehouse

* Data warehouses support variety of query mechanisms -- mainly SQL

Notes:

---

## Traditional Data Warehouses

<!-- TODO shiva -->

<img src="../../assets/images/bigdata/3rd-party/gartner-data-warehouse-2013.png" style="width:40%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

* In house data warehouses are domintad by companies like IBM, Oracle, SAP ..etc

* However, as the data sizes grew, traditional data warehouses were unable to keep up or became very pricey

---

## Hadoop

<!-- TODO shiva -->
<img src="../../assets/images/logos/hadoop-logo-1.png" style="width:30%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

<img src="../../assets/images/hadoop/hadoop-highlevel.png" style="width:50%;float:right;clear:both;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

* Around 2006, Yahoo developed Hadoop

* Hadoop re-imagined data warehouse architecture
    - data is distributed data across many machines (nodes)
    - processing is also distributed across nodes
    - Most of the processing works on 'local data'

* This allowed Hadoop massive scale

* Hadoop can store and process massive amounts of data (Petabytes) on thousands of nodes

* Hadoop quickly became **the on-premise data lake** for big data

---

## Hadoop's Strengths

* Hadoop can tolerate hardware failures; and can automatically recover

* Hadoop is proven to scale to Petabytes of data on thousands of nodes (largest cluster was operated by Yahoo at 5000 nodes)

* Hadoop is proven at scale at companies like Facebook, Yahoo and Ebay

* Also Hadoop is open source with commercial support available (Cloudera)

<!-- TODO shiva -->
<img src="../../assets/images/hadoop/hadoop-highlevel.png" style="width:50%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## Hadoop's Challenges

* Building a Hadoop cluster involves significant capital expense(machines, data center, ops) up front

* Operating a medium to large cluster, requires a very skilled devops team

* Also expanding a Hadoop cluster (say going from 50 nodes to 100 nodes) takes quite a bit of planning

---

## Data Warehouse Landscape in 2018

* Trend: Cloud based data warehouses are becoming prominent

<!-- TODO shiva -->
<img src="../../assets/images/bigdata/3rd-party/gartner-data-warehouse-2018.png" style="width:45%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## Cloud Data Warehouses

* Amazon Cloud
    - Redshift

* Azure
    - SQL Data Warehouse

* Google
    - BigQuery

* Snowflake (cloud neutral)


<!-- TODO shiva -->
<img src="../../assets/images/logos/aws-redshift-logo-1.png" style="width:20%;"/> &nbsp;  &nbsp;
<img src="../../assets/images/logos/azure-logo-2.png" style="width:20%;"/> &nbsp;  &nbsp;
<img src="../../assets/images/logos/google-big-query-logo-1.png" style="width:20%;"/> &nbsp;  &nbsp;
<img src="../../assets/images/logos/snowflake-logo-1.png" style="width:20%;"/> &nbsp;  &nbsp;

---
## Cloud Data Warehouse Advantages

* No infrastructure to maintain!

* Almost 'infinite' scale (store as much data as possible)

* Backups and disaster recovery built in

* All the best practices are implemented (security, access ..etc)

---

# Introducing Google BigQuery

<!-- TODO shiva -->
<img src="../../assets/images/logos/google-big-query-logo-1.png" style="width:50%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## Google BigQuery

* **Fully managed** data warehouse

* Allows **scalable** analysis of Big Data
    - Start small, grow to Petabytes

* **Cost effective**
    - Pay for usage

* **Server-less**
    - No machines to spin up and manage

* **SQL**
    - Query structured data using ANSI SQL

* https://cloud.google.com/bigquery

---

## BigQuery Intro

<img src="../../assets/images/books/google-big-query-9781492044451.jpeg" style="width:20%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

* Product page : https://cloud.google.com/bigquery

* Documentation : https://cloud.google.com/bigquery/docs

* Book: **Google BigQuery: The Definitive Guide**  ([Oreilly](https://www.oreilly.com/library/view/google-bigquery-the/9781492044451/),  [Amazon](https://www.amazon.com/Google-BigQuery-Definitive-Warehousing-Analytics/dp/1492044466/))

* https://github.com/GoogleCloudPlatform/bigquery-utils : handy scripts

* [Intro video](https://www.youtube.com/watch?v=ufJ2W3EHIgA)

<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/3rd-party/bigquery-video-1.png" style="width:38%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## BigQuery Features

* **Server-less**
    - Google does all the provisioning behind the scenes
    - No need to worry about spinning up machine, maintaining them and shutting them down


<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/3rd-party/serverless-computing-1.jpg" style="width:45%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
<img src="../../assets/images/google-cloud/3rd-party/serverless-computing-2.png" style="width:45%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## BigQuery Features

* **Separation of Compute and Storage**
    - This architecture allows to scale up compute resources as needed
    - Also same storage can feed the compute - no need to replicate data

<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/cloud-storage-and-compute-1.png" style="width:45%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
---

## BigQuery Features

* **Petabyte Scale**
    - Start small, and scale up to Petabyte scale

* **Automatic Backup and Restore**
    - BigQuery automatically replicates data across regions
    - Seven-day change history is maintained
    - So data can be restored easily

---

## BigQuery Features

* **Real time analytics**
    - use **Streaming API** to insert real time data very quickly
    - Examples could be : location data, sensor data, IOT device data
    - Inserted data is ready for analysis immediately
    - Can also leverage **Google Pub/Sub** technology to directly stream into BigQuery

<!-- TODO shiva -->
<img src="../../assets/images/streaming/3rd-party/streaming-data.png" style="width:45%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
<img src="../../assets/images/streaming/3rd-party/Streaming-Primer-Moving-Towards-Fast-Data-Version-2-3.png" style="width:30%;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->

---

## BigQuery Features

* **High Availability**
    - Data is highly available, replicated across multiple locations
    - All this is handled automatically and transparently
    - No extra charge, and no additional setup!

<!-- TODO shiva -->
<img src="../../assets/images/logos/sql-logo-1.png" style="width:30;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
* **Standard SQL**
    - **"Every one knows SQL"**
    - ANSI-2011 SQL is supported
    - Also JDBC/ODBC interfaces are provided, so we can integrate third party apps

---

## Datasets Readily Availble

<!-- TODO shiva -->

* BigQuery comes pre-loaded with many datasets: public and premium

<img src="../../assets/images/logos/nasa-logo-1.png" style="width:15%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
<img src="../../assets/images/logos/noaa-logo-1.png" style="width:15%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
<img src="../../assets/images/logos/united-states-census-bureau-logo-1.png" style="width:15%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
* Public Datasets
    - NASA data
    - NOAA weather data
    - Census data
    - https://cloud.google.com/public-datasets

<img src="../../assets/images/logos/accuweather-logo-1.png" style="width:11%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
<img src="../../assets/images/logos/dowjones-logo-1.png" style="width:10%;float:right;"/><!-- {"left" : 3.85, "top" : 6.2, "height" : 2, "width" : 4.69} -->
* Commercial data providers
    - Accuweather
    - Dow Jones
    - https://cloud.google.com/commercial-datasets


---

## BigQuery Advanced Features

* Machine Learning (BigQuery ML)
    - Build models on structured and semi-structured data

* BI Engine
    - Blazing fast **in memory** analytics
    - Sub-second latencies
    - Integrates with **Data Studio**

* Geo-Spatial Analysis (GIS)
    - Analyze location centric data
    - e.g. where are my users located?

---

## BigQuery Architecture

* To scan **1TB of data in 1 second**, we need to run
    - 10,000 disk drives
    - 5,000 processors
    - simultaneously

* Cloud platform's **economy of scale** makes this possible

* [BigQuery white paper](https://cloud.google.com/files/BigQueryTechnicalWP.pdf)
---

## BigQuery Architecture

* BigQuery runs on compute instances called **Dremel**

* [Reference](https://www.troposphere.tech/wp-content/uploads/2019/06/BigQuery-Query-Optimization-with-Troposphere.pdf?x10155)

<img src="../../assets/images/google-cloud/bigquery-architecture-1.png" style="width:   85%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---
## Dremel Architecture

<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/dremel-architecture-1.png" style="width:   85%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* [Reference](https://www.troposphere.tech/wp-content/uploads/2019/06/BigQuery-Query-Optimization-with-Troposphere.pdf?x10155)

---
## Query Execution Examples


<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/dremel-query-execution-1.png" style="width:   85%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* [Reference](https://www.troposphere.tech/wp-content/uploads/2019/06/BigQuery-Query-Optimization-with-Troposphere.pdf?x10155)

---

## BigQuery Architecture

* BigQuery uses **columnar data structure**
* Columnar format is optimized for aggregate queries (see next slid)
* Here is an example of how we can represent the same data in row format and columnar format

<!-- TODO shiva -->
<img src="../../assets/images/bigdata/columnar-1.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/bigdata/columnar-2b.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

<img src="../../assets/images/bigdata/columnar-3b.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## BigQuery Pricing

| Pay as you Go                            | Flat Pricing                                                      |
|------------------------------------------|-------------------------------------------------------------------|
| $5 per TB                                | Starts at $10,000/month for a dedicated reservation of 500 slots. |
| First terabyte (1 TB) per month is free* | $30 per month per slot for Flex slots.                            |

* On demand pricing is billed for **Number of bytes read**

* FREE operations :  Loading data, copying data

* https://cloud.google.com/bigquery/pricing

---
## Datasets

* BigQuery works with datasets

* We can create our own dataset or query pre-existing datasets

* Pre-existing datasets
    - Some one shared datasets with you
    - Public datasets hosted by Google

---

## Public Datasets

* These are large datasets hosted by Google Cloud

* We can use them without incurring any 'storage' charges (just pay for compute)

* Examples of public datasets
    - Austin crime data (2014 - 15)
    - Bitcoin blockchain transactions
    - US Federal Election campaign finance
    - COVID-19 public dataset
    - https://cloud.google.com/public-datasets


---

## Querying a Public Dataset

<!-- TODO shiva -->

<img src="../../assets/images/google-cloud/bigquery-query-1.png" style="width:50%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Let's analyze **austin_bikeshare** data
    - You can find this under **bigquery-public-data** project

* The **bikeshare_trips** table
    - 1.2 M records
    - about 125 Meg in size

---

## Dataset Schema and Data

* Let's look at **schema** and **preview** some data

<!-- TODO shiva -->
<img src="../../assets/images/google-cloud/bigquery-query-2.png" style="width:60%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

<img src="../../assets/images/google-cloud/bigquery-query-3.png" style="width:60%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---
## Querying

* Let's find the top-10 type of subscribers who rent bikes

* The query is done in 0.5 secs!

<img src="../../assets/images/google-cloud/bigquery-query-4.png" style="width:40%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

```sql
SELECT subscriber_type , count(*) as trip_count
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
group by subscriber_type
order by trip_count desc
LIMIT 10
```

* **Job information** tells us more details

<img src="../../assets/images/google-cloud/bigquery-query-5.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


---

## Importing Our Data

```bash
# make the dataset
$   bq --location=US mk flight_data

# create a table definition
# we are asking bq to auto detect the schema
bq mkdef --source_format=CSV \
   --autodetect \
   gs://elephantscale-public/data/flight-data/raw/2015/* \
   > /tmp/mytable.json

# create an external table `flight_data.2015_data`
bq mk --external_table_definition=/tmp/mytable.json \
   flight_data.2015_data

```

* Here are some sample queries

```sql

-- simple preview of data
SELECT  *
FROM `PROJECT_ID.flight_data.2015_data`

-- carrier count
SELECT CARRIER, COUNT(*) as cnt
FROM `PROJECT_ID.flight_data.2015_data`
GROUP BY CARRIER
ORDER BY cnt DESC
```

---

## Lab: Using BigQuery

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Work with BigQuery

* **Approximate run time:**
    - 1 hr

* **Instructions:**
    - Please complete the following labs
    - **BIGQUERY-1**
    - **BIGQUERY-2**
    - **BIGQUERY-3**


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->


* Let's go over what we have covered so far

* Any questions?
