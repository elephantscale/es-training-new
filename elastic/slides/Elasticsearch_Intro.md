# Elasticsearch
---

## Section Objectives

* Understand search and Elasticsearch concepts
* Being able to install and run Elasticsearch, index data, run queries
* Understand and use Elasticsearch responses


Notes:


---

# Elasticsearch introduction

---


## Elastic Stack – Evolution 

<img src="../../assets/images/logos/elastic-search-logo.png" alt="elastic-search-logo.png" style="width:30%;float:right;"/>

* 2010 - Released as Open Source project
* 2012 - Elasticsearch company founded 
* 2015 - Rebranded as Elastic
* Highly scalable
  - Open Source
* Enterprise support available 
* Built for searching and analyzing large datasets 

Notes:

Elasticsearch was released as an open source project in 2010, and gained a lot of popularity because it was easy to use and offered great indexing and powerful searching. 
In 2012 Elasticsearch the company was founded.  In 2015 they changed the name to Elastic, because the company developed and supported many additional products. 

GitHub uses it to let users search the repositories, StackOverflow indexes all of its questions and answers in Elasticsearch, and SoundCloud offers search in the metadata of the songs.


---

## Elastic Stack

* 2009 - Released as Open Source project
* 2015 - Added to Elastic family
* 2015 - Log forwarder released
* Open Source data collection engine
* Real-time pipelining capabilities 
* Collect logs from multiple input sources and send to Elasticsearch


<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width:35%;"/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width:23%;"/>


Notes:

Logstash is an open source data collection engine with real-time pipelining capabilities. 
2009 - open source release 
2013 - added to Elastic family. 

Logstash is a tool that can be used to collect, process and forward events and log messages. Collection is accomplished via number of configurable input plugins including raw socket/packet communication, file tailing and several message bus clients.

---

## Elastic Stack

* 2011 - Released as Open Source project
* 2013 - Added to Elastic family
* Browser based analytics & search dashboard for Elasticsearch
* Visualize Elasticsearch data 
* Highly customizable

<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width:35%;"/> &nbsp; &nbsp; &nbsp; <img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width:23%;"/>  &nbsp; &nbsp; &nbsp; <img 
src="../../assets/images/logos/kibana-logo.png" alt="kibana-logo.png" style="width:20%;"/>

---

## Elastic Stack

<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width:40%;"/>

<br/>

<img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width:30%;"/>

<br/>

<img src="../../assets/images/logos/kibana-logo.png" alt="kibana-logo.png" style="width:27%;"/>

Notes:

Elasticsearch is a search and analytics engine. Logstash is a server‑side data processing pipeline that ingests data from multiple sources simultaneously, transforms it, and then sends it to a "stash" like Elasticsearch. Kibana lets users visualize data with cha
rts and graphs in Elasticsearch, essentially creating dashboards.


---

## Elastic Stack

* 2015 - Beats tools released
* Open platform for single-purpose data shippers


<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width:26%;"/> &nbsp; &nbsp; &nbsp;<img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width:20%;"/> &nbsp; &nbsp; &nbsp; <img sr
c="../../assets/images/logos/kibana-logo.png" alt="kibana-logo.png" style="width:19%"/> &nbsp; &nbsp; &nbsp;<img src="../../assets/images/logos/beats-logo.png" alt="beats-logo.png" style="width:15%;"/>

Notes:

Beats is the platform for single-purpose data shippers. They install as lightweight agents and send data from hundreds or thousands of machines to Logstash or Elasticsearch.
Log files
Metrics
Network data
Uptime monitoring 
etc...

---

## Elastic Stack

* 2016 - X-Pack released
* Renamed in 2018 to Elastic Stack Features
* Tools to enable monitoring, alerting, reporting, machine learning and much more

<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width: 23%;"/>&nbsp; &nbsp; <img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width: 17%;"/> &nbsp; &nbsp;<img src="../../asse
ts/images/logos/kibana-logo.png" alt="kibana-logo.png" style="width: 16%;"/>&nbsp; &nbsp; <img src="../../assets/images/logos/beats-logo.png" alt="beats-logo.png" style="width: 12%;"/> &nbsp; &nbsp; <img src="../../assets/images/logos/x-pack-logo.png" alt="x-pac
k-logo.png" style="width:17%;"/>



Notes:

X-Pack is a pay for service that provides many features 
Monitoring (Marvel)
Alerting (Watcher) trigger notifications on changes or schedule and ship recurring reports
Graph (explore the relationships between data) 
Machine learning  (automatically detect unusual changes in your data)
Reporting 
Security (Shield) i.e. Add a login screen to Kibana

https://www.elastic.co/guide/en/elasticsearch/reference/current/configuring-security.html
https://www.elastic.co/products/x-pack


---

## Elastic Stack


<img src="../../assets/images/logos/elasticseach-02-logo.png" alt="elasticseach-02-logo.png" style="width:25%;"/> &nbsp; &nbsp; &nbsp; &nbsp;<img src="../../assets/images/elastic/3rd-party/elk-stack-01.png" alt="elk-stack-01.png" style="width:20%;"/>


<img src="../../assets/images/logos/logstash-logo.png" alt="logstash-logo.png" style="width:20%;"/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="../../assets/images/elastic/3rd-party/features-01.png" alt="features-01.png" style="width:23%;"/>


<img src="../../assets/images/logos/kibana-logo.png" alt="kibana-logo.png" style="width:20%;"/> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="../../assets/images/logos/beats-logo.png" alt="beats-logo.png" style="width:18%;"/>

Notes:

https://www.elastic.co/elasticon/2015/sf/evolution-of-elasticsearch-at-yelp

https://www.elastic.co/elk-stack


---

## Elasticsearch - Hadoop

<img src="../../assets/images/elastic/hadoop-elasticsearch.png" alt="hadoop-elasticsearch.png" style="width:70%;"/>

Notes:

https://www.elastic.co/elasticon/2015/sf/evolution-of-elasticsearch-at-yelp

https://www.elastic.co/elk-stack

---

## ES-Hadoop

<img src="../../assets/images/logos/es-hadoop.png" alt="es-hadoop.png" style="width:20%;float:right;"/>

* ES-Hadoop is a single distributable binary that allows the use of HDFS as a archive repo for Elastic Stack
* Works with open source and distributed versions of Hadoop, e.g. Cloudera & Databricks
* Index data from Hadoop into Elasticsearch for high performance querying and aggregation of Big Data

Notes:

X-Pack is a pay for service that provides many features 
Monitoring (Marvel)
Alerting (Watcher) trigger notifications on changes or schedule and ship recurring reports
Graph (explore the relationships between data) 
Machine learning  (automatically detect unusual changes in your data)
Reporting 
Security (Shield) i.e. Add a login screen to Kibana

https://www.elastic.co/guide/en/elasticsearch/reference/current/configuring-security.html
https://www.elastic.co/products/x-pack


---

## Elastic Stack Application Performance Monitoring


<img src="../../assets/images/elastic/elastic-slack.png" alt="elastic-slack.png" style="width:70%;"/>



---

## Elastic Stack use cases

* **Ecommerce**
  - Utilize Elasticsearch as your storefront search mechanism storing product or service information and enabling features like typeahead 

* **DevOps**
  - Collect log and transactional data to identify patterns or anomalies in the day to day operations of your applications, processes, services and APIs

* **Alerting**
  - Pattern reverse search against queries to identify conditions that meet a certain criteria, e.g. tell me when a flight drops below X$ during a set timeframe

---

## Elastic Stack use cases

* **Internet of Things**
  - Store streams of device data in Elastic Stack and visualize that information for customers, e.g. show all the active snowplows in the city on an interactive map

* **Data Visualization**
  - Store data in Elasticsearch and build custom dashboards in Kibana to show the effects of changes, both expected and unexpected

* **Advanced Analytics**
  - Run analytics against existing data to enable the use of ad-hoc queries for decision support and business intelligence

Notes:

You run an online web store where you allow your customers to search for products that you sell. In this case, you can use Elasticsearch to store your entire product catalog and inventory and provide search and autocomplete suggestions for them.
You want to collect log or transaction data and you want to analyze and mine this data to look for trends, statistics, summarizations, or anomalies. In this case, you can use Logstash (part of the Elasticsearch/Logstash/Kibana stack) to collect, aggregate, and p
arse your data, and then have Logstash feed this data into Elasticsearch. Once the data is in Elasticsearch, you can run searches and aggregations to mine any information that is of interest to you.
You run a price alerting platform which allows price-savvy customers to specify a rule like "I am interested in buying a specific electronic gadget and I want to be notified if the price of gadget falls below $X from any vendor within the next month". In this ca
se you can scrape vendor prices, push them into Elasticsearch and use its reverse-search (Percolator) capability to match price movements against customer queries and eventually push the alerts out to the customer once matches are found.
You have analytics/business-intelligence needs and want to quickly investigate, analyze, visualize, and ask ad-hoc questions on a lot of data (think millions or billions of records). In this case, you can use Elasticsearch to store your data and then use Kibana 
(part of the Elasticsearch/Logstash/Kibana stack) to build custom dashboards that can visualize aspects of your data that are important to you. Additionally, you can use the Elasticsearch aggregations functionality to perform complex business intelligence querie
s against your data.


---

## Elastic for Internet of Things (IoT)

<img src="../../assets/images/elastic/elastic-for-internet.png" alt="elastic-for-internet.png" style="width:80%;"/>


Notes:

You run an online web store where you allow your customers to search for products that you sell. In this case, you can use Elasticsearch to store your entire product catalog and inventory and provide search and autocomplete suggestions for them.
You want to collect log or transaction data and you want to analyze and mine this data to look for trends, statistics, summarizations, or anomalies. In this case, you can use Logstash (part of the Elasticsearch/Logstash/Kibana stack) to collect, aggregate, and p
arse your data, and then have Logstash feed this data into Elasticsearch. Once the data is in Elasticsearch, you can run searches and aggregations to mine any information that is of interest to you.
You run a price alerting platform which allows price-savvy customers to specify a rule like "I am interested in buying a specific electronic gadget and I want to be notified if the price of gadget falls below $X from any vendor within the next month". In this ca
se you can scrape vendor prices, push them into Elasticsearch and use its reverse-search (Percolator) capability to match price movements against customer queries and eventually push the alerts out to the customer once matches are found.
You have analytics/business-intelligence needs and want to quickly investigate, analyze, visualize, and ask ad-hoc questions on a lot of data (think millions or billions of records). In this case, you can use Elasticsearch to store your data and then use Kibana 
(part of the Elasticsearch/Logstash/Kibana stack) to build custom dashboards that can visualize aspects of your data that are important to you. Additionally, you can use the Elasticsearch aggregations functionality to perform complex business intelligence querie
s against your data.


---

## Elastic DevSecOps

<img src="../../assets/images/elastic/elastic-devsecOps.png" alt="elastic-devsecOps.png" style="width:80%;"/>


---

## Elastic Stack Machine Learning

<img src="../../assets/images/elastic/3rd-party/elastic-slack-ML.png" alt="elastic-slack-ML.png" style="width:80%;"/>

Notes:

Complex, fast-moving datasets make it nearly impossible to spot infrastructure problems, intruders, or business issues as they happen using rules or humans looking at dashboards. Elastic machine learning features automatically model the behavior of your Elastics
earch data — trends, periodicity, and more — in real time to identify issues faster, streamline root cause analysis, and reduce false positives.



---

# elasticsearch  basics

---

## logical concepts of elasticsearch


<img src="../../assets/images/elastic/3rd-party/logical-concepts.png" alt="logical-concepts.png" style="width:70%;"/>


* Elasticsearch is moving away from ‘types’. In Elasticsearch 6 only one type is allowed per index.


Notes:

3 main logical concepts behind Elasticsearch: 
Document
Structured data similar to a row in a database, something that you’re searching for
Not just about text, any data can work. 
JSON format (way to encode text, objects etc..) 
Every document has a unique ID (auto assigned, or manually) 
Type: what this document is. 
Encyclopedia articles, log entries from web server etc.. 
Type
Many documents that belong to a certain type. 
schema or mapping between documents
Apache access log log type (timestamp, request URL, return status) 
Encyclopedia article (author, subject, title, text) 
Like a table, that defines the data in the document 
Indices 
Collection of types you can search across
contains a collection of types, which contain collection of documents

Database analogy
index = DB, type = table, document = row 

---

## what is an inverted index

<img src="../../assets/images/elastic/3rd-party/inverted-index.png" alt="inverted-index.png" style="width:70%;"/>

Notes:

Inverted means we are mapping things searching for, to documents searching in. 
Inverted index is the mechanism by which all search engines work. 
Say we have 2 documents, inverted index doesn’t store them directly, it flips on head
each document split up into individual search terms, split up by each word, lowercased to normalize 
maps each search term to documents they occur within. Here we can see “Space” shows up in document1 and document2.

---

## It’s not  quite that simple.

* **TF-IDF** means Term Frequency **Inverse Document Frequency**
* **Term Frequency** is how often a term appears in a **given document**  Document Frequency is how often a term appears in **all documents**  Term Frequency / **Document Frequency** measures the **relevance**
of a term in a document


Notes:

How do I deal with concept of relevance?  
If I search for the word ”the” how do I make sure it returns documents where “the” is relevant?
TF-IDF 
Term Frequency is how often a word appears in a document, “the” “of” “space” etc.. 
Document Frequency: How often a term appears in all documents in index.
 ”Space” doesn’t appear often in index, but “the” does.  
Divide Term Frequency by Document Frequency gives us measure of relevance.
How special is this term to this document? How often does it occur in this doc? How often does it occur in all documents?

---

## Using Indices


<img src="../../assets/images/elastic/3rd-party/using-indices.png" alt="using-indices.png" style="width:80%;"/>


Notes:

How do we use an index in Elasticsearch? 
RESTful API 
Explain what REST is (same thing as when you request a page in browser etc) 
REST uses verbs to define what it’s doing.. GET, POST, PUT.
Elasticsearch uses the same HTTP protocol, which makes it easy to communicate with. 
If you are requesting something from Elasticsearch you do so by just sending a GET request (same as any other web system)

client API’s
Instead of worrying about constructing JSON data correctly, there’s client APIs that make it much easier 
Python, Ruby, Java, etc.. 
analytic tools
Kibana 
Graphical Web-UI
Interact without needing to write any code 
Sometimes a better approach than sifting through JSON output.



---

## Near Real Time (NRT)

* Elasticsearch is a **near real time search** platform
* There is a slight **latency** latency (normally one second) from the time you index a document until the time it becomes searchable


---




## Elasticsearch features

 * Scalable
 * ready to deploy
 * Optimized for search
 * Large volumes of documents (millions of documents)
 * Text-centric (natural-language text, like emails, web pages, resumes, PDF documents, and social messages such as tweets or blogs)
 * Results sorted by relevance


Notes:

---

## Elasticsearch features cont’d

* Read-dominant.
  - Although, there is near real-time search (NRT)
* Document-oriented (not DB, not large file storage)
* Flexible schema (similar to NoSQL)

Notes:

---

## Elasticsearch Cluster Indices

<img src="../../assets/images/elastic/Elasticsearch-01.png" alt="Elasticsearch-01.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.6, "height" : 6.44, "width" : 8.21} -->



Notes:
https://qbox.io/blog/optimizing-elasticsearch-how-many-shards-per-index

---

## Elasticsearch features – user experience

* Pagination
* Sorting
* Auto-suggest
* Spell-checking
* Hit highlighting
* Geospatial search

Notes:



---

## Elasticsearch Features for Developers

* Result grouping/field collapsing
* Flexible query support
* Joins
* Document clustering
* Importing rich document formats such as PDF and Word
* Importing data from relational databases
* Multilingual support


Notes:



---

## Elasticsearch Performance Features

* Near real-time search
* Atomic updates with optimistic concurrency
* Real-time get (before commit)
* Write durability using a transaction log
* Automatic sharding and replication using “ZooKeeper”



Notes:



---

## Who Uses Elasticsearch?

* Netflix 
  - millions of messages to customers across multiple channels
* Salesforce 
  - custom plugin for collection of Salesforce log data
  - insights into organizational usage trends and user behavior
* The New York Times
  - 15 million of its articles published over the last 160 years
* Microsoft
  - search and analytics across MSN, Social Listening, Azure 
  - Lucene for Outlook search
* EBay 	
  - flexible search 
  - data analytics

Notes:



---

## Lab: Getting Familiar with Elasticsearch


* Please do this lab: 

  - `elasticsearch/install.md`




Notes:



---

## Elasticsearch so far

* Open-source, distributed search engine built on top ofApache Lucene
* Typical use case:
  - index large amounts of data for full-text searches and real-time statistics on it
* Provides features that go well beyond full-text search
  - Tune the relevance of your searches
  - Offer search suggestions
* For indexing and searching data
  - JSON over HTTP API with JSON reply
* Doubles up as a NoSQL data store 
  - with real-time search and analytics capabilities
* Automatically divides data into shards for balancing
  - Shards are also replicated, making your cluster fault-tolerant.



Notes:



---

## Breaking Changes in Elasticsearch 6

* REST requests that include a body must also provide the correct content-type for that body
* Before
  - If content-type was missing or not recognized
  - The server would 
    - sniff the content
    - make an educated guess regarding the content-type
* To imitate this in Elasticsearch 5.3
  - `http.content_type.required` configuration setting

* This is important for the labs


Notes:



---

## Why Breaking Changes


* This used to work

 <img src="../../assets/images/elastic/3rd-party/Breaking-01.png" alt="Breaking-01.png" style="width:60%;"/><!-- {"left" : 0, "top" : 1.73, "height" : 2.29, "width" : 6.57} -->


* Not anymore
  - Clarity
  - Security

 <img src="../../assets/images/elastic/3rd-party/Breaking-02.png" alt="Breaking-02.png" style="width:60%;"/><!-- {"left" : 0, "top" : 6.39, "height" : 0.75, "width" : 7.63} -->






Notes:



---

# Elasticsearch functionality

---

## Functionality at a Glance

* Defining documents, types, and indices
* Understanding Elasticsearch
* Indexing documents with cURL and a data set
* Searching and retrieving data
* Configuration options
* Working with multiple nodes

Notes:



---

## Data Layout

* Logical
  - Index
  - Documents
* Physical
  - Shards
  - Replicas


Notes:



---

## Logical Layout

* Logical layout

| Search   | SQL      |
|----------|----------|
| Field    | Column   |
| Document | Row      |
| Type     | Table    |
| Index    | Database |


* Better yet

| Search   | SQL                           |
|----------|---------------                |
| Field    | Column name, column value.    |
| Document | Row (with any fields)         |
| Type     | Table (with schema or without)|
| Index    | Database                      |


Notes:



---

## Physical Layout

* Location of data
* Index has shards
* Shards are distributed to servers on the cluster
* Shards can change location
* Important to administrators
  - Performance
  - Scalability
  - Availability

Notes:



---

## Logical and Physical Layout


<img src="../../assets/images/elastic/Logical-Physical-Layout.png" alt="Logical-Physical-Layout.png" style="width:70%;"/><!-- {"left" : 0.66, "top" : 2.34, "height" : 4.39, "width" : 8.92} -->




Notes:



---

## Elasticsearch Basic Units

* Documents
* Types
* Indices


Notes:



---

## Document

* Self-contained
  - Fields name
  - Field values
* Can be hierarchical
  - Documents within documents
  - Simple field: “Location” -> “Washington”
  - Compound field: “Location” -> (“Washington”, “123 Main”)
* Has a flexible structure
  - no predefined schema


| Field = DOC_ID | Field = Description | Fields = LatLong       |
|----------------|---------------------|------------------------|
| 0001           | Picnic              | (59.934280, 30.335099) |
| 0002           |                     | (55.755826, 37.6173)   |
| 0003           | Big Apple           |                        |



Notes:



---

## Think of Document as JSON

<img src="../../assets/images/elastic/3rd-party/JSON-01.png" alt="JSON-01.png" style="width:60%;float:left;"/><!-- {"left" : 0.21, "top" : 1.36, "height" : 2.33, "width" : 7.23} -->



Notes:



---

## Hierarchical Document

<img src="../../assets/images/elastic/3rd-party/Hierarchical-Document.png" alt="Hierarchical-Document.png" style="width:60%;float:left;"/><!-- {"left" : 0.21, "top" : 1.36, "height" : 3.05, "width" : 7.58} -->


Notes:



---

## Document Field can have an Array of Values


<img src="../../assets/images/elastic/3rd-party/Document-Values.png" alt="Document-Values.png" style="width:60%;float:left;"/><!-- {"left" : 0.21, "top" : 1.36, "height" : 2.25, "width" : 8.86} -->



Notes:



---

## Document Types

* Field type = mapping

| Field name  | Field type |
|-------------|------------|
| Name        | string     |
| Geolocation | geo_point  |

<!-- {"left" : 0.25, "top" : 1.84, "height" : 1, "width" : 9.75} -->

* But Documents are schema-free!?
  - Documents do not have to have all fields
  - A new field? – Add it to the mapping!
  - What type? - Guess
* Best practice: define all mappings


Notes:



---

## Indices

* Indices contain mapping types
* Index ~= database
* Each index has its own settings
  - Important to break indices and optimize them separately

<img src="../../assets/images/elastic/3rd-party/Indices.png" alt="Indices.png" style="width:30%;float:right;"/><!-- {"left" : 6.9, "top" : 2.31, "height" : 2.14, "width" : 3.2} -->

* Example: `refresh_interval`
  - Determines refresh for near-real time
  - Expensive is done often
  - Typical value: 1 second
  - Some indices may have more or less real-time

* Remember: you can search across indices


Notes:



---

## Sharding

* Number of shards is index-specific
* Shards live on servers
* Shards = Physical + Logical


Notes:



---

## Sharding Architecture

* Three nodes
* File shards
* One replica per shard

<img src="../../assets/images/elastic/sharing-architecture.png" alt="sharing-architecture.png" style="width:70%;"/><!-- {"left" : 0.67, "top" : 3.12, "height" : 3.49, "width" : 8.91} -->


Notes:



---

# Indexing

---

## Indexing a Document

* When you index a document
  - It is sent to one of the primary shards
  - chosen based on a hash of the document’s ID
* The primary shard may be located on a different node
  - transparent to the application
* Then the document is indexed in all of that primary shard’s replicas
  - Replicas are in sync with data from the primary shards
  - Replicas can serve searches
* Replicas can be automatically promoted to primary shards
  - If the original primary becomes unavailable.



---

## What Happens in Indexing

<img src="../../assets/images/elastic/Happens-ndexing.png" alt="Happens-ndexing.png" style="width:70%;"/><!-- {"left" : 0.59, "top" : 1.93, "height" : 5.21, "width" : 9.07} -->


Notes:



---

## What Happens in Search

* When you search an index
  - Elasticsearch looks in a complete set of shards for that index
  - Shards can be either primary or replicas 
  - Primary and replica shards contain the same documents S
* Search load 
  - Is distributed between the primary and replica shards
  - Help search performance
  - Helps fault tolerance


Notes:



---

## An Index is Split into Shards


<img src="../../assets/images/elastic/intex-shared.png" alt="intex-shared.png" style="width:60%;"/>


Notes:

Every shard is a self-contained index of Lucene
Once it figured out the document it can map it to a shard and redirect to appropriate node. 

---

## What is a Shard?

* A shard is a Lucene index
  - Directory with inverted index
  - We did this already
* Do not confuse Elasticsearch index and Lucene index
  - **Elasticsearch index** is logical
  - It consists of all shards and replicas
  - **Lucene index** is a directory with the inverted index
* Convention
  - Index = Elasticsearch index
  - Lucene index = Lucene index ;)



Notes:



---

## Shard = Lucene Index


<img src="../../assets/images/elastic/Lucene-Index.png" alt="Lucene-Index.png" style="width:70%;"/><!-- {"left" : 0.75, "top" : 2.6, "height" : 3.87, "width" : 8.76} -->





Notes:



---

## Replicas and Shards

* You have to decide on the number of shards before creating the index
  - The default is 5
* Too few shards limit scalability
* Too many shards impact performance

* You can change the number of replicas per shard
* Replicas can be created or removed

Notes:



---



## Primary and Replica Shards

* This **index** has two **primary shards** and a **replication factor of 2.**
* Your application should round-robin requests amongst nodes.

<img src="../../assets/images/elastic/primary-replica-shards-00.png" alt="primary-replica-shards-00.png" style="width:70%;"/>

* **Write** requests are routed to the primary shard, then replicated  
* **Read** requests are routed to the primary or any replica


Notes:

Here we have 2 Primary and 4Replica shards. 
Writes will go to Primary shards (masters) and reads will hit any shard (primary or replica) 
This is how many different clustering solutions are setup. 
Elasticsearch figures all this out for you based on the configuration in the /etc/elasticsearch/elasticsearch.yml 



---

## Primary and Replica Shards

<img src="../../assets/images/elastic/primary-replica-shards.png" alt="primary-replica-shards.png" style="width:70%;"/>


Notes:

Here we have 2 Primary and 3 Relica shards. 
Writes will go to Primary shards (masters) and reads will hit any shard (primary or replica) 
This is how many different clustering solutions are setup. 
Elasticsearch figures all this out for you. 



---

## Primary and Replica Shards

<img src="../../assets/images/elastic/primary-replica-shards-01.png" alt="primary-replica-shards-01.png" style="width:70%;"/>


Notes:

Fault tolerant system. Highly redundant 
Have an odd node number of nodes so that you avoid split brain. 

Split-brain is a computer term, based on an analogy with the medical Split-brain syndrome. It indicates data or availability inconsistencies originating from the maintenance of two separate data sets with overlap in scope, either because of servers in a network 
design, or a failure condition based on servers not communicating and synchronizing their data to each other. This last case is also commonly referred to as a network partition.

Although the term split-brain typically refers to an error state, Split-brain DNS (or Split-horizon DNS) is sometimes used to describe a deliberate situation where internal and external DNS services for a corporate network are not communicating, so that separate
 DNS name spaces are to be administrated for external computers and for internal ones. This requires a double administration, and if there is domain overlap in the computer names, there is a risk that the same fully qualified domain name (FQDN), may ambiguously 
occur in both name spaces referring to different computer IP addresses.[1]



---

## The number of primary shards cannot be changed later.

<img src="../../assets/images/elastic/3rd-party/primary-shards-03.png" alt="primary-shards-03.png" style="width:40%;"/>

* Not as bad as it sounds – you can add  **more replica shards** for more read  throughput.
* Worst case you can **re-index** your data.
* The number of shards can be set up front  via a PUT command via **REST** / HTTP



Notes:

Cannot change primary shards later on. Must define it when setting up cluster. 
Most applications require additional read capacity, not write. 
You can also re-index your data and copy it over but it’s not a fun process 
Plan ahead so you have the correct number of primary shards.

By default, each index in Elasticsearch is allocated 5 primary shards and 1 replica which means that if you have at least two nodes in your cluster, your index will have 5 primary shards and another 5 replica shards (1 complete replica) for a total of 10 shards 
per index. Each Elasticsearch shard is a Lucene index.

This request says we want 3 in one replica,  we end up with 6 though.


---

## One-Node Cluster

* Five shards
* One replica
* You can start more cluster nodes on the same server

Notes:



---

## Cluster Scaling

* When adding nodes to the cluster
  - shards get balanced between all nodes
* Indexing and search use all nodes
* Scaling = horizontal scaling
  - Adding nodes to the cluster
* Vertical scaling
  - Adding RAM
  - Adding hard drive
  - Helps performance 
  - Not always possible
  - Not cost-effective

Notes:



---

## Distributed Indexing

* Elasticsearch node receives your indexing request
  - Node selects the shard to index the document to
  - Default: even distribution
    - Accomplished with hashing by doc ID
    - All shards have an equal hash range
* Target node = node that contains the target shard
* Node sends request to target node
* Indexing operation is replayed by all the replicas of that shard
* Indexing command successfully returns
  - After all the available replicas finish indexing the document



Notes:



---

## Indexing with Sharding and Replicas

<img src="../../assets/images/elastic/Indexing-Replicas.png" alt="Indexing-Replicas.png" style="width:50%;"/><!-- {"left" : 1.61, "top" : 1.44, "height" : 6.77, "width" : 7.02} -->



Notes:



---

## What Happens in Search

* Node that receives the request forwards it to a set of shards
  - Shards contain your data
* Select an available shard (primary or replica)
* Forwards the request to that
* Collect results from all shards
  - Aggregates results into a single reply
  - Return the reply back to the client application



Notes:



---

## Search with Shards and Replicas


<img src="../../assets/images/elastic/Search-Replicas.png" alt="Search-Replicas.png" style="width:70%;"/><!-- {"left" : 0.39, "top" : 2.16, "height" : 5.33, "width" : 9.46} -->


Notes:



---

## Let Us Start Indexing

* Use cURL
* With REST API
* Send a JSON document
* Verify the reply

Notes:



---

## Index A Document

<img src="../../assets/images/elastic/3rd-party/Index-Document.png" alt="Index-Document.png" style="width:65%;float:left;"/><!-- {"left" : 0.04, "top" : 1.53, "height" : 1.69, "width" : 10.21} -->


Notes:



---

## Index A Document - Reply

<img src="../../assets/images/elastic/3rd-party/Index-Document-reply.png" alt="Index-Document-reply.png" style="width:50%;float:left;"/><!-- {"left" : 0.19, "top" : 1.53, "height" : 5.98, "width" : 6.88} -->



Notes:



---

## How Did Indexing Work?

* Elasticsearch automatically added an index
  - `get-together` 
* Create a new mapping for the type
  - `Group`
* The mapping contains definitions
  - default: all fields are strings


Notes:



---

## Index Operations

<img src="../../assets/images/elastic/3rd-party/Index-Operations.png" alt="Index-Operations.png" style="width:50%;"/><!-- {"left" : 1.02, "top" : 1.53, "height" : 2.49, "width" : 8.21} -->

* Why create an index manually?
* Creating the index takes time 
  - You might want to have the index ready beforehand
* Specify different settings than the ones
  - Specific number of shards.

Notes:



---

## Viewing Mapping

* Mapping is automatically created with the new document
* Elasticsearch automatically detects your fields
* Add a new document with yet another new field?
  - Elasticsearch guesses its type
  - Appends the new field to the mapping
* To view the current mapping, do an HTTP GET
  - This would show you mappings for all types within that index
  - For a specific mapping, specify the type name

<img src="../../assets/images/elastic/3rd-party/mapping-01.png" alt="mapping-01.png" style="width:60%;float:left;"/><!-- {"left" : 0.22, "top" : 5.18, "height" : 0.87, "width" : 9.81} -->



Notes:



---

## Mapping Reply

<img src="../../assets/images/elastic/3rd-party/mapping-02.png" alt="mapping-02.png" style="width:35%;float:left;"/><!-- {"left" : 0.21, "top" : 1.17, "height" : 7.3, "width" : 5.21} -->


Notes:



---

## Essential Field Mapping

* Index name—get-together
* Type name—group
* Property list—name and organizer
* Property options—The type option is string for both properties


Notes:



---

## Lab: Indexing

* Please do this lab: 

- `elasticsearch/indexing.md`



Notes:



---

# Searching

---

## Search Example

<img src="../../assets/images/elastic/3rd-party/Search-Example.png" alt="Search-Example.png" style="width:60%;"/><!-- {"left" : 0.37, "top" : 1.14, "height" : 2.01, "width" : 7.46} -->


* URL indicates where to search
  - in the group type of the get-together index
* URI parameters give the details of the search
  - find documents containing “elasticsearch”
  - But return only the name and location fields for the top result.
* Pretty
  - flag to print the JSON reply in a more readable format


Notes:



---

## Structure Your Query

* Where to search
* Contents of the reply
* What and how to search


Notes:



---

## Where to Search

* In a specific type of a specific index
* In multiple types in the same index
* In multiple indices
* In all indices

Notes:



---

## Search in Multiple Types

* Use a comma-separated list
* Example
* Both group and event types

<img src="../../assets/images/elastic/3rd-party/multiple-type.png" alt="multiple-type.png" style="width:70%;"/><!-- {"left" : 0.19, "top" : 3, "height" : 1.18, "width" : 9.86} -->



Notes:



---

## Multi-type Search Result


<img src="../../assets/images/elastic/3rd-party/Multi-typeSearch-Result.png" alt="Multi-typeSearch-Result.png" style="width:50%;float:left;"/><!-- {"left" : 0.27, "top" : 1.11, "height" : 7.51, "width" : 8.21} -->




Notes:



---

## Search in All Types

* Search in all types of an index
* Send your request to the `_search` endpoint of the index’s URL

<img src="../../assets/images/elastic/3rd-party/search-type01.png" alt="search-type01.png" style="width:60%;float:left;"/><!-- {"left" : 0.27, "top" : 2.5, "height" : 1.59, "width" : 9.41} -->


Notes:



---

## Search in Multiple Indices

* To search in multiple indices
* Separate them with a comma:
* (Question: why will the line below likely fail?)

<img src="../../assets/images/elastic/3rd-party/Multiple-indices.png" alt="Multiple-indices.png" style="width:60%;float:left;"/><!-- {"left" : 0.27, "top" : 2.94, "height" : 1.12, "width" : 9.87} -->



Notes:



---

## Reading the Search Reply


<img src="../../assets/images/elastic/3rd-party/Reading-Search-Reply.png" alt="Reading-Search-Reply.png" style="width:65%;float:left;"/><!-- {"left" : 0.29, "top" : 1.12, "height" : 6.08, "width" : 9.07} -->


Notes:
Elasticsearch in Practice



---

## Deleting Data

* Delete individual documents or groups of documents
  - Documents are marked as deleted
* Delete complete indices
  - Works almost instantly
  - Deletes a directory
* Close indices
  - Not removing
  - A closed index doesn’t allow read or write operations
  - Similar to removing but data remains on disk
  - Easy to restore: you open the closed index


Notes:



---

## Lab: Searching

* Please do this lab: 

  - `elasticsearch/searching.md`


Notes:



---

## Summary

* Mappings let you define fields in your documents and how those fields are indexed
* Elasticsearch is schema-free
  - Mappings are extended automatically
* In production you need to take control
  - What is indexed?
  - What is stored?
  - How it is stored?


Notes:



---

## Summary continued

* Most fields in your documents are core types
  - Strings 
  - Numbers
* Indexing impacts 
  - Performance 
  - Relevancy




Notes:



---

## Summary Continued

* A single field can also be a container
  - Multiple fields or values
* Examples
  - Arrays
  - Multi-fields
    - Multiple occurrences of the same core type in the same field


Notes:



---

## Summary Continued

* There are fields that are specific to your documents
* Predefined fields
  - `_source` 
  - `_all`
* These fields 
  - change data that you don’t explicitly provide in your documents Impacts on performance and functionality
* Example
  - Decide which fields need to be indexed in `_all`

Notes:



---

## Summary Continued

* Elasticsearch stores data in Lucene segments
* Lucene indices are immutable
* Updating a document
  - Retrieving the existing one
  - Putting the changes in a new document 
  - Indexing the new document
  - Marking the old one as deleted




Notes:



---

## Summary Continued

* The removal of documents (cleanup)
  - happens when the Lucene segments are merged
  - This merge is asynchronous

* That is why 
  - deleting an entire index is fast
  - Removing one or more individual documents is slow
  - Deleting an index is removing files on disk, no merge.




Notes:



---

## Concurrency and Versions

* Lucene and Elasticsearch maintain document version
* For indexing, updating, and deleting
* Conflict?
  - you can use document versions to manage concurrency issues
* Updating?
  - you can tell Elasticsearch to retry automatically
  - if an update fails because of a concurrency issue

Notes:







