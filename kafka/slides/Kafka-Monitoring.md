# Monitoring Kafka


---


## Lesson Objectives


* Learn how to monitor Kafka

---

# Monitoring

[../../monitoring/slides/Monitoring-1.md](../../monitoring/slides/Monitoring-1.md)

---

# Monitoring Kafka

---

## Kafka Monitoring Vital Stats

* The following are vital stats to monitor:
  - Log flush latency (95th percentile)
  - Under Replicated Partitions
  - Messages in / sec per broker and per topic
  - Bytes in / sec per broker
  - Bytes in / sec per topicBytes / message
  - End-to-End time for a message

Notes:


---

## Monitoring Kafka

* **Log flush latency**

  - How long does it take to flush to disk

  - Longer it takes, longer the write pipeline backs up!

* **Under Replicated Partitions**

  - Replication is lagging behind

  - Messages are being written at very high speed

  - Consumers won't get data that isn't replicated

    - Consumers lag behind as well

  - Chance of data loss is high, when the lead broker fails

---

## Kafka Monitoring: End to End Lag

* **End-to-End time**
  - How long does it take for a message to arrive from Producer to Consumer
  - Indicates overall speed / latency of kafka pipeline
* Below, is an example (see next slide for graph)
  - (t2 - t1):  how long message was waiting in Kafka queue
  - (t3 - t2): consumer side processing time
  - (t3 - t1): overall processing

<img src="../../assets/images/kafka/end-to-end-time-1.png" style="width:70%;"/><!-- {"left" : 1.02, "top" : 5.55, "height" : 1.97, "width" : 8.21} -->



Notes:

https://www.confluent.io/blog/how-we-monitor-and-run-kafka-at-scale-signalfx/


---

## Best Practices: End to End Latency

<img src="../../assets/images/kafka/end-to-end-time-1.png" style="width:65%;"/><!-- {"left" : 1.39, "top" : 1.55, "height" : 1.8, "width" : 7.48} -->


<img src="../../assets/images/kafka/end-to-end-2.png" style="width:65%;"/><!-- {"left" : 1.29, "top" : 4.3, "height" : 3.57, "width" : 7.67} -->


---

## Kafka Monitoring Consumer Lag

<img src="../../assets/images/kafka/kafka-consumer-lag-1.png"  style="width:75%;" /><!-- {"left" : 0.68, "top" : 1.14, "height" : 1.56, "width" : 8.89} -->

<br/>

 * Consumer Lag = Size of Partition (last offset) - Consumer offset (last committed)
 * Large offsets means consumers can't  keep up with data
 * **Question for class‫:‬** What can cause consumer lag?
 * Tools to monitor consumer lag:
    - JMX stats
    - [Burrow](https://github.com/linkedin/Burrow)
    - Confluent dashboard
    - Datadog

Notes:




---

## Kafka Streams + Metrics


```java
import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.Meter;
import com.codahale.metrics.Timer;

private final MetricRegistry metrics = new MetricRegistry();
// register listener (Console & Graphite)

final Meter meterEvents = metrics.meter("events");
final Timer timerExec = metrics.Timer("time_to_process"); 
// ...snip...
final KStream<String, String> clickstream = // create stream

// process each record and report traffic
clickstream.foreach(new ForeachAction<String, String>() {
   public void apply(String key, String value) { 
     meterEvents.mark(); // got the event!
     
     Timer.Context context = timerExec.time();
     // process the event
     context.stop();
  }
});
// start the stream 
```
<!-- {"left" : 0, "top" : 1.5, "height" : 6.64, "width" : 10.25} -->


Notes: 




---

## Lab 9: Kafka Metrics Labs

* **Overview:**
  - Use Metrics with Kafka

* **Approximate Time:**
  - ~30 - 40 mins

* **Instructions:**
  - Please follow: lab 9


Notes: 

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
