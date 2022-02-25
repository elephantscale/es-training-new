# Spark Streaming

<img src="../../assets/images/logos/spark-logo-1.png" style="width:35%;"/>  <!-- {"left" : 6.75, "top" : 7.69, "height" : 2.13, "width" : 4} -->    

---

## Objectives

* Understand Spark streaming

---

## Streaming Use Cases

<img src="../../assets/images/logos/netflix-logo-1.png" alt="netflix.png" style="width:25%;float:right;"/><!-- {"left" : 4.31, "top" : 7.77, "height" : 2, "width" : 4.33} -->    

* Netflix Streaming
    - Streaming generates astounding amount of data!
    - 450 billion events/day  (5 million events / sec)

<br clear="all"/>
<img src="../../assets/images/streaming/3rd-party/the-weather-company.png" style="width:20%;float:right;"/><!-- {"left" : 10.17, "top" : 7.59, "height" : 2.35, "width" : 3.02} -->

* Weather Company
    - Analyze weather sensor data
    - Billions of events/day
    - Multi-Petabyte (PB) traffic daily

* More use cases at [BigDataUseCases.info](www.BigDataUseCases.info)


---

## Spark Components

<img src="../../assets/images/spark/spark-components-1.png" style="width:80%;" /><!-- {"left" : 2.16, "top" : 2.9, "height" : 7.92, "width" : 13.17} -->  


Notes:

---

## Batch vs. Streaming

* Batch Processing
    - The dataset is finite / fixed.
    - If we run the same query again, we will get the same result

* Stream processing
    - Data keeps coming in real time
    - Needs to be processed in real time too
    - Spark can process events in **mini-batches** - every few seconds

<img src="../../assets/images/kafka/stream-01.png" style="width:50%;" /><!-- {"left" : 4.03, "top" : 6.11, "height" : 5.63, "width" : 9.44} -->    

---

## Evolution of Spark Streaming

* **Receiver based** - no longer recommended
    - This was the original design
    - It introduced 'mini batch' based processing in Spark
    - Older, and low level API
    - Prone to data loss in some crash scenarios
* **Direct streams approach**
    - Easier to use API
    - Fixes the loop holes from `receiver based` API
* **Structured Streaming** - Recommended!
    - High level API - treat streams like a growing table
    - Easy to use and takes care of crash scenarios
    - **Latency as small as 100 milliseconds**
* **Continuos streaming** - Available in Databricks runtime
    - Built on `Structured streaming`
    - Can do very small latencies of **milli-seconds**
    - Experimental feature

---

## Streaming Programming Model

* Imagine we are running a query on a table that is **continuously appended**

* Specify the query, similar to batch query

* Spark will execute the query **periodically**

<img src="../../assets/images/spark/3rd-party/structured-streaming-stream-as-a-table.png" style="width:70%;" /><!-- {"left" : 2.01, "top" : 4.09, "height" : 7.52, "width" : 12.62} -->    

---

## Streaming Architecture

* Data is read from **sources.** Sources can be
    - Kafka
    - Network streams

* Data is send to **sinks.** Sinks can be
    - HDFS
    - Databases

<img src="../../assets/images/spark/3rd-party/spark-streaming-01.png" style="width:80%;" /><!-- {"left" : 3.8, "top" : 5.32, "height" : 5.9, "width" : 9.9} -->    


---


## Streaming Example - Word Count

* Here we see the word count query running periodically and updating the results

<img src="../../assets/images/spark/3rd-party/structured-streaming-example-model.png" style="width:80%;" /><!-- {"left" : 2.07, "top" : 2.88, "height" : 7.96, "width" : 13.35} -->    

---

## Programming Model

<img src="../../assets/images/spark/3rd-party/structured-streaming-model.png" style="width:60%;float:right;" /><!-- {"left" : 8.62, "top" : 1.89, "height" : 6.35, "width" : 10.65} -->    

* **Input table / Source** - continuously appended with new data

* **Trigger** - How often to run a query (1 sec, 10 secs, 30 secs ..etc)

* **Result table** - Every time query executes (at trigger interval) the result table will be updated

* **Sink** - When result table is updated, we would want to write the data to an output medium (console, database, dashboard ..etc)

---

## Sources and Sinks

```python
# reading from network socket
lines = spark.readStream \
           .format("socket") \
           .option("host", "localhost") \
           .option("port", 9999) \
           .load()

# reading from Kafka
data = spark.readStream \
           .format("kafka") \
           .option("kafka.bootstrap.servers", "localhost:9092") \
           .option("subscribe", "topic1") \
           .option("startingOffsets", "latest")
           .load()

# ~~~~~~~~~~~~~

# writing to console
stream.writeStream
      .format("console")
      .start() 

# write to HDFS
stream.writeStream
      .format("parquet")  # can be "orc", "json", "csv", etc.
      .option("path", "path/to/destination/dir")
      .start() 

# Write to kafka 
stream.writeStream
      .format("kafka")
      .option("kafka.bootstrap.servers", "host1:port1,host2:port2")
      .option("topic", "topic1")
      .start() 
```
<!-- {"left" : 1.13, "top" : 2.23, "height" : 9.25, "width" : 10.84} -->    


---

## Output Modes

* The **`Output`** is defined as what gets written out to the external storage.  3 modes are supported

* **Append Mode** - Only the new rows appended in the Result Table since the last trigger will be written to the external storage. 
    - Good for inserts

* **Complete Mode** - The entire updated Result Table will be written to the external storage. 
    - Good for aggregates (e.g. total number of clicks)

* **Update Mode** - Only the rows that were updated in the Result Table since the last trigger will be written to the external storage (available since Spark 2.1.1). Note that this is different from the Complete Mode in that this mode only outputs the rows that have changed since the last trigger. 

* [See here for more discussion on output modes](https://spark.apache.org/docs/latest/structured-streaming-programming-guide.html#output-modes)

---

## Understanding Output Modes

* Consider this clickstream data

```text
# first batch
.... , facebook.com,  clicked
.... , youtube.com,   clicked
.... , linkedin.com,  viewed


# second batch
.... , facebook.com,  viewed
.... , linkedin.com,  viewed

```
<!-- {"left" : 0.8, "top" : 2.43, "height" : 3.09, "width" : 5.97} -->    

<img src="../../assets/images/spark/streaming-modes-1.png" style="width:40%;float:right;" /><!-- {"left" : 11.96, "top" : 1.93, "height" : 4.1, "width" : 5.32} -->  

* If we are saving the datastream to a file system or HDFS, we will use **append** mode
    - it will write individual records

* If we are counting views and clicks:
    - After batch-2, **complete** mode will write `views=3,  clicks=3`
    - After batch-2, **update** mode will only update `views=3`  (clicks did not change)


---

## Sinks and Output Modes

* Not all sinks support all output formats


| Sink        | Append | Update | Complete |
|-------------|--------|--------|----------|
| File / HDFS | yes    | no     | no       |
| Kafka       | yes    | yes    | yes      |
| Console     | yes    | yes    | yes      |
| Memory      | yes    | no     | yes      |

<!-- {"left" : 0.99, "top" : 3.27, "height" : 2.5, "width" : 15.51} -->    

* [See here for sinks and supported output formats](https://spark.apache.org/docs/latest/structured-streaming-programming-guide.html#output-sinks)

---



## Structured Streaming

* Structured Streaming is a **scalable and fault-tolerant stream processing engine built on the Spark SQL engine**

* Write the streaming application using **Dataframes/Dataset** API

* SQL Engine will run the code **incrementally and continuously** as new data arrives

* Structured streaming can provide **end-to-end exactly-once fault-tolerance guarantees** through **checkpointing and Write-Ahead Logs**

* The streaming data is processed as **micro-batches**

* Typical batch interval is in seconds (1, 5, 10, 30 seconds).  Can achieve **latencies as low as 100 milliseconds**

<img src="../../assets/images/spark/3rd-party/streaming-flow.png" style="width:60%;" /><!-- {"left" : 4.77, "top" : 7.15, "height" : 4.74, "width" : 7.95} -->    


---

# Streaming Example

---

## Streaming Wordcount

* Let's do a simple **wordcount** example

* We will use **netcat** utility to send some data over TCP socket stream

* And Spark streaming will process them in real time

* We will see both **Scala and Python** APIs

<img src="../../assets/images/spark/streaming-wordcount-1.png" style="width:50%;" /><!-- {"left" : 3.71, "top" : 5.56, "height" : 4.21, "width" : 10.07} --> 


---

## Streaming Wordcount - Scala

```scala
import org.apache.spark.sql.functions._
import org.apache.spark.sql.SparkSession

val spark = SparkSession
  .builder
  .appName("StructuredNetworkWordCount")
  .getOrCreate()
  
import spark.implicits._

// Create DataFrame representing the stream of input lines from connection to localhost:9999
val lines = spark.readStream
  .format("socket")
  .option("host", "localhost")
  .option("port", 9999)
  .load()

// Split the lines into words
val words = lines.as[String].flatMap(_.split(" "))

// Generate running word count
val wordCounts = words.groupBy("value").count()

val query = wordCounts.writeStream
  .outputMode("complete")
  .format("console")
  .start()

query.awaitTermination()
spark.stop()
```
<!-- {"left" : 0.8, "top" : 2.27, "height" : 9.03, "width" : 16.11} --> 
   

---

## Streaming Wordcount - Scala

* On Terminal-1 launch `netcat` to send some data

```bash
 $  ncat -l -k -p 10000
```
<!-- {"left" : 0.8, "top" : 2.66, "height" : 0.57, "width" : 4.44} -->    

* On Terminal-2 launch Spark streaming wordcount program

```bash
$    $SPARK_HOME/bin/spark-shell -i word_count.scala 
```
<!-- {"left" : 0.8, "top" : 3.81, "height" : 0.57, "width" : 9.44} -->    

* Type some data into netcat terminal-1

* Watch the output on Spark streaming terminal-2

<img src="../../assets/images/spark/streaming-wordcount-2.png" style="width:50%;" /><!-- {"left" : 4.55, "top" : 6.59, "height" : 4.25, "width" : 8.4} -->    


---

## Streaming Wordcount - Python

```python
from pyspark.sql import SparkSession
from pyspark.sql.functions import explode
from pyspark.sql.functions import split

spark = SparkSession \
    .builder \
    .appName("StructuredNetworkWordCount") \
    .getOrCreate()

# Create DataFrame representing the stream of input lines from connection to localhost:9999
lines = spark \
    .readStream \
    .format("socket") \
    .option("host", "localhost") \
    .option("port", 9999) \
    .load()

# Split the lines into words
words = lines.select(
   explode(
       split(lines.value, " ")
   ).alias("word")
)

# Generate running word count
wordCounts = words.groupBy("word").count()

 # Start running the query that prints the running counts to the console
query = wordCounts \
    .writeStream \
    .outputMode("complete") \
    .format("console") \
    .start()

query.awaitTermination()
```
<!-- {"left" : 0.8, "top" : 2.33, "height" : 8.77, "width" : 13.34} -->    


---

## Streaming Wordcount - Python

* On Terminal-1 launch `netcat` to send some data

```bash
 $  ncat -l -k -p 10000
```
<!-- {"left" : 0.8, "top" : 2.69, "height" : 0.57, "width" : 4.44} -->    

* On Terminal-2 launch Spark streaming wordcount program

```bash
$    $SPARK_HOME/bin/spark-submit  word_count.python
```
<!-- {"left" : 0.8, "top" : 3.86, "height" : 0.57, "width" : 9.44} -->    

* Type some data into netcat terminal-1

* Watch the output on Spark streaming terminal-2

<img src="../../assets/images/spark/streaming-wordcount-2.png" style="width:50%;" /><!-- {"left" : 4.17, "top" : 6.39, "height" : 4.63, "width" : 9.16} -->    

---

## Writing to Sinks

```scala
// write to console
stream.writeStream
      .format("console")
      .start() 

// update in-memory table - great for debugging
stream.writeStream
      .format("memory")
      .queryName("tableName")
      .start()

// write to HDFS
stream.writeStream
      .format("parquet")  // can be "orc", "json", "csv", etc.
      .option("path", "path/to/destination/dir")
      .start() 

// Write to kafka 
stream.writeStream
      .format("kafka")
      .option("kafka.bootstrap.servers", "host1:port1,host2:port2")
      .option("topic", "topic1")
      .start() 
```
<!-- {"left" : 0.8, "top" : 1.7, "height" : 5.57, "width" : 9.52} -->    

<br/>
<br/>

* [See here for sinks and supported output modes](https://spark.apache.org/docs/latest/structured-streaming-programming-guide.html#output-sinks)

---

## Lab: Structured Streaming Intro

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.92, "top" : 1.89, "height" : 5.42, "width" : 4.06} -->    

* **Overview:**
  - Get started with Spark streaming

* **Approximate run time:**
  - 15-20 mins

* **Instructions:**
  - Complete **structured-1** lab

Notes:

---

## Lab: Structured Streaming Word Count

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.92, "top" : 1.89, "height" : 5.42, "width" : 4.06} -->    

* **Overview:**
  - Streaming word count

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - Complete **structured-2** lab

Notes:

---

## Lab: Structured Streaming + SQL

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.92, "top" : 1.89, "height" : 5.42, "width" : 4.06} -->    

* **Overview:**
  - Streaming  + SQL

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - Complete **structured-3** lab

Notes:

---

## Optional Lab: Structured Streaming - Window Operations

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.92, "top" : 1.89, "height" : 5.42, "width" : 4.06} -->    


* **Overview:**
  - Apply window operations to streaming data

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - This is an optional lab, do it if time permits
  - Complete **structured-4** lab

Notes:

---

# Continuous Streaming

---

## Continuous Streaming

* Continuous Streaming is an experimental feature introduced in Spark 2.3
    - Supported in Databricks runtime

* Can achieve very low latency ( ~ 1ms) end-to-end latency
    - Micro batch processing averages in the order of ~100ms latency

* Supports at-least-once guarantee

* Supported sources:
    - Kafka

* Supported sinks:
    - Kafka
    - Memory: good for debugging
    - Console: good for debugging

---

## Continuous Streaming

```scala
import org.apache.spark.sql.streaming.Trigger

input = spark.readStream \
                .format("kafka") \
                .option("kafka.bootstrap.servers", "host1:port1,host2:port2") \
                .option("subscribe", "topic1") \
                .load() \
                .selectExpr("CAST(key AS STRING)", "CAST(value AS STRING)")

// do some processing 
// output = input....

output.writeStream \
      .format("kafka") \
      .option("kafka.bootstrap.servers", "host1:port1,host2:port2") \
      .option("topic", "topic2") \
      .trigger(Trigger.Continuous("1 second")) \
      .start()

// A checkpoint interval of 1 second means that the continuous processing 
// engine will records the progress of the query every second.
```
<!-- {"left" : 0.8, "top" : 2.53, "height" : 7.32, "width" : 15.95} -->    


---

# Spark and Kafka

---

## Apache Kafka

<img src="../../assets/images/logos/kafka-logo-1.png" style="width:30%;float:right;" /><!-- {"left" : 14.05, "top" : 1.46, "height" : 3.63, "width" : 3.34} -->    

* Apache Kafka is a distributed messaging system

* Came out of LinkedIn…Open-Sourced in 2011

* Distributed, built to tolerate hardware/software/network failures

* Built for high throughput and scale
    - LinkedIn: 220 billion messages per day
    - At peak: 3+ million messages per sec

---

## Kafka Architecture

* Kafka is designed as a  **Pub-Sub messaging system**

* **Producers** publish messages

* **Consumers** consume messages

<img src="../../assets/images/kafka/Kafka-Architecture-01.png"  style="width:50%;"/><!-- {"left" : 4.58, "top" : 4.59, "height" : 6.27, "width" : 8.33} -->    

---

## Kafka Producers and Consumers

* Here we see producers writing data

* And consumers are reading data

<img src="../../assets/images/kafka/Producers-Consumers-Topics-Partitions.png" alt="Producers-Consumers-Topics-Partitions.png" style="max-width:60%;"/><!-- {"left" : 4.24, "top" : 4.15, "height" : 6.67, "width" : 9.03} -->    

---

## Lambda Architecture

* This is a popular architecture  called **lambda architecture**

* Kafka is our ingest layer

* Spark is processing engine

* And we are persisting data both in HDFS and in NOSQL

<img src="../../assets/images/streaming/Lambda-Architecture-2.png"  style="width:90%;"/><!-- {"left" : 1.96, "top" : 5.94, "height" : 3.1, "width" : 13.58} -->    


---

## Spark and kafka

* Spark works really well with Kafka

* There are three ways of receiving data from Kafka

* Approach 1: **Receiver-based Approach** - obsolete
    - Data loss possible in some crash scenarios

* Approach 2: **Direct Approach** (no receivers)
    - This is a better, stronger end-to-end implementation
    - This is simplified over approach #1 
    - Achieves zero data loss

* Approach 3: **Structured Streaming**
    - 'new' high level approach
    - Easy API
    - Good performance!

---

## Structured Streaming with Kafka

```python

spark = SparkSession \
    .builder \
    .appName("KafkaStructuredStreaming") \
    .getOrCreate()

# option 1
df = spark.readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", "localhost:9092") \
    .option("subscribe", topic) \
    .option("startingOffsets", "latest").load()


# option 2: specify schema
df = spark.readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", "localhost:9092") \
    .option("subscribe", "topic1") \
    .option("startingOffsets", "latest") \
    .load() \
    .selectExpr("CAST(key AS STRING)", "CAST(value AS STRING)", "CAST(topic AS STRING)",
    "CAST(partition AS INTEGER)", "CAST(offset AS LONG)", "CAST(timestamp AS TIMESTAMP)")

query = df.writeStream \
    .outputMode("append") \
    .format("console") \
    .queryName("Read from Kafka") \
    .start()

# simple, wait for ever
query.awaitTermination()
```
<!-- {"left" : 0.8, "top" : 2.05, "height" : 9.32, "width" : 15.61} -->  

  
---

## Lab: Structured Streaming with Kafka

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.36, "top" : 1.89, "height" : 6.18, "width" : 4.63} -->    

* **Overview:**
  - Read data from Kafka

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - Complete **kafka-structured** lab

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 12.88, "top" : 2.06, "height" : 2.68, "width" : 3.63} -->    

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.58, "top" : 5.2, "height" : 5.56, "width" : 8.33} -->  