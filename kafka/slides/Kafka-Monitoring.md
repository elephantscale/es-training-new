# Monitoring Kafka


---


## Lesson Objectives


* Learn how to monitor Kafka

---

# Monitoring

[../../monitoring/slides/Monitoring-1.md](../../monitoring/slides/Monitoring-1.md)

---

# Kafka and Metrics

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
