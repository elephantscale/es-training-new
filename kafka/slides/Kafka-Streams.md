# Kafka Streams Intro


---


## Lesson Objectives


 * Learn Kafka Streams architecture

 * Learn Kafka Streams API

Notes: 

 


---

# Kafka Streams Intro

---


## Streaming Platforms


<img src="../../assets/images/kafka/Streaming-Platforms.png" alt="Streaming-Platforms.png" style="width:70%;"/>

Notes: 




---

## Case for Kafka Streams


 * Kafka's strength is  **storing** streaming dataLike a Network Router

 * The 'processing' portion was done outside Kafka

 * Processor can be

     - Java / Python application using Kafka Producer/Consumer APIs

        * Simple

        * Limited capability

     - Distributed systems like  Spark / Flink

        * Excellent capabilities

        * Complex

 * 'Kafka Streams' aims to fill the sweet spot between capabilities & complexities

Notes: 




---

## Kafka Processing Systems

<img src="../../assets/images/kafka/Kafka-Processing-Systems.png" alt="Kafka-Processing-Systems.png" style="width:70%;"/>

Notes: 




---

## Kafka Streams Features


 * Kafka Streams is a library for building distributed applications for Kafka

 * Features:

     - Event based processing (one event at a time).Not micro batch

     - Stateful processing for joins / aggregations

     - High level operations (map, filter, reduce)

 * It is not:

     - Designed for analytics like Spark / Hive

Notes: 




---

## Comparing Streams


|      	| Simple Java App                              	| Kafka Streams                                	| Distributed Streaming </br>Frameworks                                                                                 	|
|------	|----------------------------------------------	|----------------------------------------------	|-----------------------------------------------------------------------------------------------------------------------	|
|      	| Using Java/ Python                           	| Java                                         	| Spark / Flink / Samza                                                                                                 	|
|      	|                                              	|                                              	|                                                                                                                       	|
| Pros 	| -Simple to implement </br>- Simple to deploy 	| -Simple to implement,</br>- Simple to deploy 	| - Distributed out of the box,</br>- Very good scaling,</br>- Excellent capabilities like windowing / machine learning 	|
|      	|                                              	|                                              	|                                                                                                                       	|
| Cons 	| - Hard to scale                              	| - Medium difficulty                          	| - Heavy weight,</br>- Complex operations,</br>- Need to build a cluster,</br>- Monitor / maintain                     	|
 
*  **Kafka Streams moto – "Build apps, not clusters"** 

Notes: 




---

# Kafka Streams Architecture

---


## Kafka Streams Architecture


 * A  **Stream Partition** is an ordered set of records and maps to a Topic partition

 * A  **Data Record** in the stream **** maps to a Kafka message

 * A  **Task**  processes a fixed set of partitions

     - Stream tasks can be processed parallely

 * A  **Thread**  executes one or more tasks

<img src="../../assets/images/kafka/Kafka-Streams-Architecture.png" alt="Kafka-Streams-Architecture.png" style="width:35%; position:relative; top:-250px; left:450px;"/>

Notes: 

Kafka Streams allows the user to configure the number of threads to parallelize processing within an application instance. 
No state is shared across threads. So you can start as many threads as there are input Kafka topic partitions so that every thread’s tasks has at least one partition to process



---

## Scaling Kafka Streams


<img src="../../assets/images/kafka/Scaling-Kafka-Streams.png" alt="Scaling-Kafka-Streams.png" style="width:70%;"/>

Notes: 




---

## Processor Topology


 * Defines the logic for the application

 * Topology is a graph

     - Nodes: Stream processors

     - Edges: Streams

 *  **Source processor** 

     - Has no upstream 
       </br> processors. *Reads* topic

 *  **Sink processor** 

     - Has no downstream 
       </br> processor.*Writes* topic

<img src="../../assets/images/kafka/streams-architecture-topology.png" alt="streams-architecture-topology.png" style="width:30%; position:relative; top:300px; right:20px;"/>

Notes: 



---

## State Store


 * Stateful operations like (Aggregations / Joins) require intermediate state storage

 * Kafka Streams provides this storage at per node level

 * Storage mediums

     - In memory cache

     - RocksDB (a very fast embedded DB, developed by Facebook)

        * Stored on disk on each node

 * Tasks uses it to store and query data

 * Every task can have one or more state stores

 * Fault tolerant

 * Automatic recovery 

<img src="../../assets/images/kafka/State-Store.png" alt="State-Store.png" style="width:30%; position:relative; top:600px; right:10px"/>

Notes: 




---

## Modifying RocksDB Configuration


```java
public static class CustomRocksDBConfig implements RocksDBConfigSetter {
   @Override
   public void setConfig (final String storeName, final Options options,
   final Map<String, Object> configs) {

       BlockBasedTableConfig tableConfig = new
org.rocksdb.BlockBasedTableConfig();

     tableConfig.setBlockCacheSize(16 * 1024 * 1024L);
     /*
      *   set more configuration here
      */
  }
}
Properties streamsSettings = new Properties();
streamsSettings.put(
  StreamsConfig.ROCKSDB_CONFIG_SETTER_CLASS_CONFIG,
  CustomRocksDBConfig.class); 
```

Notes: 

Code Description

Default rocks db configuration can be changed be creating a class implementing the RocksDBConfigSetter interface 

And set the configurations as setConfig method(overridden) .

Add the class as a configuration to ROCKSDB_CONFIG_SETTER_CLASS_CONFIG




---

## Replication and Fault Tolerance


 * Kafka Partitions are replicated and highly available

 * If Streams task fails

     - Kafka will restart it on another running instance of the application

 * Stream data persisted to Kafka is still available in case application fails and wants to re-process it

 * Local state stores are replicated as a topic called  **changelog** 

     -  **Changelog** has log compaction enabled

Notes: 



---

## Overall Architecture


<img src="../../assets/images/kafka/Overall-Architecture.png" alt="Overall-Architecture.png" style="width:50%;"/>

Notes: 

Here we see a Streams application,
It is consuming messages from input Q
And producing messages to another output Q


---

# Kafka Streams Details

---


## Writing a Streams Application


 * Use Kafka Streams DSL

     - High level API

     - Provides most common required functions for transformation, grouping, aggregation

 * Use Processor API

     - Low-level API

     - Create, connect processors in topology and interact with State Stores directly

Notes: 



---

## Kafka Streaming (Abbreviated)


```java
// ** 1 : configure **
Properties config = new Properties();
config.put(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG,
       "localhost:9092");
config.put(StreamsConfig.APPLICATION_ID_CONFIG,
       "kafka-streaming-consumer1");
config.put(StreamsConfig.DEFAULT_KEY_SERDE_CLASS_CONFIG,
       Serdes.String().getClass().getName());
config.put(StreamsConfig.DEFAULT_VALUE_SERDE_CLASS_CONFIG,
       Serdes.String().getClass().getName());

// ** 2 : define processing **
final StreamsBuilder builder = new StreamsBuilder();
final KStream<String, String> clickstream = builder.stream("topic1");// topic

clickstream.print(Printed.toSysOut());


// ** 3 : start the stream **
final KafkaStreams streams = new KafkaStreams(builder.build(), config);
streams.cleanUp();
streams.start();

Runtime.getRuntime().addShutdownHook(new Thread(streams::close));  
```


Notes: 




---

## Streaming Operations

| Function 	| Description                                               	|
|----------	|-----------------------------------------------------------	|
| ForEach  	| Process one record at a time                              	|
| Filter   	| Filter stream event by event                              	|
| map      	| Transform the stream,</br>(key1, value1) -> (key2, value2) 	|
| groupBy  	| Group the stream by key                                   	|
| count    	| Count the stream                                          	|

Notes: 




---

## Kafka Streaming  : ForEach


```java
final StreamBuilder builder = new StreamBuilder();
final KStream<String, String> clickstream = builder.stream("topic1");

// Foreach : process events one by one
clickstream.foreach(new ForeachAction<String, String>() {

     public void apply(String key, String value) {

     logger.debug("key:" + key + ", value:" + value);
    }
}); 
```

 * Using Java8 Lambda functions

Notes: 




---

## Kafka Streaming : Filter

<img src="../../assets/images/kafka/Filter-01.png" style="width:70%;"/>


 * Applying a filter to a stream produces another stream

<img src="../../assets/images/kafka/Kafka-Streaming-Filter.png" alt="Kafka-Streaming-Filter.png" style="width:70%;"/>



Notes: 




---

## Kafka Streaming  : Filter


```java
final StreamBuilder builder = new StreamBuilder();
final KStream<String, String> clickstream = builder.stream("topic1");

// filter clicks only
final KStream<String, String> actionClickedStream =

    clickstream.
    filter((k, v) -> v.contains("action:clicked"));

actionClickstream.print(Printed.toSysOut());
```
 
<img src="../../assets/images/kafka/Filter-02.png" alt="Filter-02.png" style="width:70%;"/>

Notes: 




---

## Kafka Streaming: Map


 * Map  **transforms**  a stream into another stream

 * KStream<key1, value1>  ->   KStream <key2, value2>

 * Map action

<img src="../../assets/images/kafka/Filter-02.png" alt="Filter-02.png" style="width:70%;"/>


<img src="../../assets/images/kafka/Kafka-Streaming-Map.png" alt="Kafka-Streaming-Map.png" style="width:70%;"/>

Notes: 




---

## Kafka Streaming: Map


```java
final StreamsBuilder builder = new StreamsBuilder();
final KStream<String, String> clickstream = builder.stream("topic1");

// map transform (String, String) to  (String, Integer)
final KStream<String, Integer> actionStream = clickstream.map( {
   
     // new KeyValueMapper<String, String, KeyValue<String, Integer>>()

   public KeyValue<String, Integer> apply(String key, String value) {

      logger.debug("map() : got : " + value);
      String new_key = key.toUpperCase();
      int new_value = 1;
      KeyValue<String, Integer> newKV =new KeyValue<>(new_key, new_value);
      logger.debug("map() : returning : " + newKV);
      return newKV;
  }
}
);
actionStream.print(Printed.toSysOut()); 
```


Notes: 




---

## Kafka Streaming: GroupBy


 * GroupBy will aggregate KStream by key

 * Think of it like 'group by' operator in SQL


<img src="../../assets/images/kafka/Group.png" alt="Group.png" style="width:70%;"/>


<img src="../../assets/images/kafka/KafkaStreaming-GroupBy.png" alt="KafkaStreaming-GroupBy.png" style="width:70%;"/>



Notes: 




---

## KStreams vs. KTables


 *  **Kstream** 

   - Each record/message represents an independent entity/event irrespective of its key.

 *  **Ktable** 

   - Messages with same key are treated as updates of previous message.

Notes: 



---

## Joins on Kstream and KTables

| Kstream + KStream                                                                             	| Ktable + KTable                                                                                                                                       	| KTable + KStream                                                                      	|
|-----------------------------------------------------------------------------------------------	|-------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------------------------------------------------------------------------	|
| It is a sliding window join.,</br>Results a KStream,</br>Supports Left, Inner and Outer Joins 	| Symmetric non-window join.,</br>Results a continuously updating Ktable.,</br>Supports Left, Inner and Outer Joins,</br>(think like 2 database tables) 	| Asymmetric non-window join.,</br>Results a KStream.,</br>Supports Left and Inner join 	|

Notes: 



---

## Kafka Streams: GroupBy


```java
final StreamsBuilder builder = new StreamsBuilder();
final KStream<String, String> clickstream = builder.stream( "topic1");

// map transform (String, String)Â¬â€  (String, Integer)

final KStream<String, Integer> actionStream = clickstream.map( ... )

// Now aggregate and count actions
// we have to explicitly state the K,V serdes in groupby,
// as the types are changing

final KTable<String, Long> actionCount = actionStream
   .groupByKey(Serialized.with(Serdes.String(), Serdes.Integer()))
   .count ();
actionCount.toStream().print(Printed.toSysOut()); 
```

Notes: 




---

## Wordcount in Kafka Streams


```java
// Serializers/deserializers (serde) for String and Long types
final Serde<String> stringSerde = Serdes.String();
final Serde<Long> longSerde = Serdes.Long();
 
// Construct a `KStream` from the input topic ”topic1", where message values
// represent lines of text (for the sake of this example, we ignore whatever may be stored
// in the message keys).
KStream<String, String> textLines = builder.stream(”topic1",
    Consumed.with(stringSerde, stringSerde);
 
KTable<String, Long> wordCounts = textLines
    // Split each text line, by whitespace, into words.
    .flatMapValues(value -> Arrays.asList(value.toLowerCase().split("\\W+")))
 
    // Group the text words as message keys
    .groupBy((key, value) -> value)
 
    // Count the occurrences of each word (message key).
    .count();
 
// Store the running counts as a changelog stream to the output topic.
wordCounts.toStream().to(”topic1-out", Produced.with(Serdes.String(), Serdes.Long()));
```



Notes: 




---

## Lab 7: Streams Labs


 *  **Overview**: Create and use Kafka streams

 *  **Builds on previous labs**: 

 *  **Approximate Time**: 30 – 40 mins

 *  **Instructions**: 

     - Please follow: lab 7.1 – 7.5

 *  **To Instructor**: 


Notes: 




---

## Windowing Operations


 * Windowing is a common function in event processing

     - What is the average CPU utilization?

        * Over the last 5 minutes? 

 * Create groups of records with the  *same key* for aggregations or joins into “ **windows** ”

<img src="../../assets/images/kafka/Windowing-Operations.png" alt="Windowing-Operations.png" style="width:70%;"/>

Notes: 



---

## Windowing Parameters


 * Retention Period

     - How long to wait for late-arriving records for a given window

 * Advance Period/Interval

     - How much to move the window forward relative to the last one

 * Window Size

     - Size of the window i.e. how long is the window in time units

 * Maintain Period

     - How long to keep the window alive

Notes: 



---

## Windowing Example


 * TimeWindows.of(”cpu-window", 60*1000)

     - Returns a time window of 1 min. 

     - Advance period of 1 min.

     - Window maintained for 1 day

 * Modify various parameters using functions in TimeWindows class

 * https://kafka.apache.org/20/javadoc/org/apache/kafka/streams/kstream/TimeWindows.html

Notes: 



---

## Counts visits per hour


```java
# We have visits to our website
KStreamBuilder builder = new KStreamBuilder();
# Create visits stream 
KStream<String, Long> visitsStream = builder.stream(Serdes.String(), Serdes.Long(), "visitsTopic");

# Group and count visits per URL/page
KGroupedStream<String, Long> groupedStream = 
visitsStream.groupByKey();
KTable<String, Long> totalCount = groupedStream.count("totalVisitCount");

# Create window for visits per hour
KTable<Windowed<String>, Long> windowedCount =
groupedStream.count(TimeWindows.of(60 * 60 * 1000), "hourlyVisitCount");
```

Notes: 



---

## Lab 7: Windowing Lab


 *  **Overview**: Create time windows and aggregate data

 *  **Builds on previous labs**: 

 *  **Approximate Time**: 30 – 40 mins

 *  **Instructions**: 

     - Please follow: lab 7.6

 *  **To Instructor**: 


Notes: 




---

## Review Questions


 * What is Kafka Streams?

 * What is a task?

 * How does Streams keep track of state?

Notes: 

 


---

## Lesson Summary


Notes: 

 
