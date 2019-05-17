# Metrics


---


## Lesson Objectives


 * Learn how to instrument Kafka code

Notes: 

 


---

# Metrics Intro

---


## Metrics


 * Metrics tell us how a system / application is behaving

 * Useful for monitoring the health and performance of systems / applications

 * Two kinds of metrics

     - System (host level) metrics: CPU / Memory / Disk / Network ..etc.

     - Application metrics: function timers, database query times ..etc

Notes: 




---

## Metrics Mechanics


 * 3 main components: collector, database, visualizer

 * Collector

     - Collects metrics from the host and pushes to database

 * Database

     - Collects and stores metrics from various sources

     - Performs aggregations (current rate / last_1m rate / min / max)

     - A time-series database

 * Visualizer

     - Create nice looking visualizations of metrics

     - Various graphs

Notes: 




---

## Metrics Mechanics


<img src="../../assets/images/kafka/Metrics-Mechanics.png" alt="Metrics-Mechanics.png" style="width:70%;"/>

Notes: 




---

## Metrics Database Choices


 * Graphite / InfluxDB / OpenTSDB

 *  **Graphite** 

     - Popular choice

     - Easy to setup and maintain

     - May not scale well for large amount of metrics

     - Open source

 *  **InfluxDB** 

     - Another popular choice

     - Easy setup and maintenance

     - Good performance

     - Not open source (Single instance free)

<img src="../../assets/images/kafka/3rd-party/graphlte-logo.png" alt="graphlte-logo.png" style="width:30%; position:relative; left:1150px; top:250px;"/>

<img src="../../assets/images/kafka/3rd-party/InfluxDB-logo.png" alt="InfluxDB-logo.png" style="width:25%; position:relative; left:1200px; top:500px;"/>
---

## Metrics Database Choices

 *  **OpenTSDB** 

     - Based on HBase 

     - Massively scalable

     - Considerable effort required to setup and maintain

     - Open source


<img src="../../assets/images/kafka/3rd-party/opentsdb-logo.png" alt="opentsdb-logo.png" style="width:30%; position:relative; left:1150px; top:250px;"/>


Notes: 

Logos used under fair use policy.  Copyright belongs to respective projects.


---

## Metrics Visualization Choices


 *  **Grafana** 

 * Modern, Open source

 * Very attractive graphs

 * Easy to setup and use

 * Supports multiple databases: Graphite / Influx / OpenTSDB

<img src="../../assets/images/kafka/3rd-party/Visualization-Choices-5.png" alt="Visualization-Choices-5.png" style="width:40%;"/>

Notes: 

Image used under fair use , source : grafana.org


---

## Integrated Monitoring Choices


 *  [**Nagios**](https://www.nagios.org/)

 * Scalable 

 * Very well field tested

 * Host level and application level monitoring

 * Large plugin library

 * User friendliness: medium

 * www.nagios.org

<img src="../../assets/images/kafka/3rd-party/Monitoring-Choices-6.png" alt="Monitoring-Choices-6.png" style="width:46%; position:relative; top:-300px; left:400px;"/>

Notes: 

Image used under fair use rights,  source : nagios.org


---

## Integrated Monitoring Choices


 *  [**Ganglia**](ganglia.info/) 

 * Scalable 

 * Very well field tested

 * Host level and application level monitoring

 * http://ganglia.info 

<img src="../../assets/images/kafka/3rd-party/Monitoring-Choices-7.png" alt="Monitoring-Choices-7.png" style="width:40%;"/>

Notes: 

Image used under fair use rights.  Source : ganglia.info


---

# Metrics Library

---


## Metrics Library


 *  **Metrics**  is a Java library, that is used to report metrics.Formerly known as   *codahale*  *metrics* (authored by Coda Hale)

 * Light weight and fast

 * Widely used by many projects (Hadoop / Spark / Cassandra)

 * Supported backends : Graphite, Ganglia

 * Supported UIs : built-in UI,   JMX

 * http://metrics.dropwizard.io/ 

Notes: 

http://metrics.dropwizard.io/
https://github.com/dropwizard/metrics


---

## Metrics Library Getting Started


 * Metrics is a Java library

```text
<dependencies>
  <dependency>
    <groupId>io.dropwizard.metrics</groupId>
    <artifactId>metrics-core</artifactId>
    <version>3.2.2</version>
  </dependency>
</dependencies> 
```

Notes: 




---

## Metrics Library Getting Started


```text
import java.util.concurrent.TimeUnit;
import com.codahale.metrics.ConsoleReporter;
import com.codahale.metrics.JmxReporter;
import com.codahale.metrics.MetricFilter;
import com.codahale.metrics.MetricRegistry;
import com.codahale.metrics.graphite.Graphite;
import com.codahale.metrics.graphite.GraphiteReporter;

private final MetricRegistry metrics = new MetricRegistry();

// console reporter
ConsoleReporter consoleReporter =
ConsoleReporter.forRegistry(metrics).convertRatesTo(TimeUnit.SECONDS)
        .convertDurationsTo(TimeUnit.MILLISECONDS).build();
consoleReporter.start(30, TimeUnit.SECONDS);

// graphite
final Graphite graphite = new Graphite(new
InetSocketAddress("localhost", 2003));
final GraphiteReporter graphiteReporter
GraphiteReporter.forRegistry(metrics).prefixedWith("myapp")

  .convertRatesTo(TimeUnit.SECONDS)
  .convertDurationsTo(TimeUnit.MILLISECONDS)
  .filter(MetricFilter.ALL)
  .build(graphite);
graphiteReporter.start(30, TimeUnit.SECONDS);  
```

Notes: 




---

## Metrics Library : Meters


 * A meter measures the rate of events over time.(e.g., “requests per second”). 

 * In addition to the mean rate, meters also track 1-, 5-, and 15-minute moving averages.

```text
private final Meter requests = metrics.meter("requests");

public void handleRequest(Request request, Response response) {
    requests.mark();
} 
```

Notes: 




---

## Metrics Library: Counters


 * A counter is used to 'count' things.Number of messages in queue, …etc

 * Counter is an AtomicLongCan be incremented or decremented

```text
private final Counter msgCounter = metrics.counter("messages-in
q");

msgCounter.inc();
msgCounter.inc(10);

msgCounter.dec();
msgCounter.dec(5); 

```

Notes: 




---

## Metrics Library : Histograms


 * A  **histogram**  measures the statistical distribution of values in a stream of data. 

 * In addition to minimum, maximum, mean, etc., it also measures median, 75th, 90th, 95th, 98th, 99th, and 99.9th percentiles.

```text
private final Histogram msgSizes = metrics.histogram( "message_sizes");

msgSizes.update(100);
msgSizes.update(50); 
 
```

Notes: 




---

## Metrics Library : Timers


 * A  **timer**  measures the duration of piece of code

 * Also measures the rate the code is called

```text
private final Timer timerExec = metrics.timer("execTime"));

Timer.Context context = timerExec.time();
// do some work here
f();  // calling a function
context.stop(); 
```

Notes: 




---

## Lab 8: Metrics Labs


 *  **Overview**: Create and use Kafka streams

 *  **Builds on previous labs**: 

 *  **Approximate Time**: 30 – 40 mins

 *  **Instructions**: 

     - Please follow : lab 8

 *  **To Instructor**: 


Notes: 




---

# Kafka and Metrics

---


## Kafka Streams + Metrics


```text
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


Notes: 




---

## Lab 9: Kafka Metrics Labs


 *  **Overview**: Use Metrics with Kafka

 *  **Builds on previous labs**: 

 *  **Approximate Time**: 30 – 40 mins

 *  **Instructions**: 

     - Please follow: lab 9

 *  **To Instructor**: 


Notes: 




---

## Review Questions


Notes: 

 


---

## Lesson Summary


Notes: 

 


