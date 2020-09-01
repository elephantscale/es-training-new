# Monitoring


---

## Objectives
* Learn monitoring tool
* And best practices

---

# Why Monitoring

---

## Monitoring

<!-- TODO shiva -->

* [Monitoring at SpaceX](https://pixabay.com/photos/space-center-spacex-control-center-693251/)

<img src="../../assets/images/monitoring/3rd-party/space-center-693251_1280.jpg" style="width:75%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Monitoring

* [California ISO (Independent System Operator)](http://www.caiso.com/TodaysOutlook/Pages/index.html) - that monitors California electrical grid

<img src="../../assets/images/monitoring/3rd-party/monitoring-CA-ISO-1.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

<img src="../../assets/images/monitoring/3rd-party/monitoring-CA-ISO-2.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Why Monitoring?

* Monitoring helps to keep an eye on sytems and applications

* Helps us identify problem spots before they actually become problems

* Helps us spot trends and patterns

<!-- TODO shiva -->
<img src="../../assets/images/monitoring/monitoring-1.png" style="width:50%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Monitoring Best Practices

* Some monitoring is better than no monitoring

* Implement **actionable monitoring**  
Without any action, monitoring is just 'pretty graphs'.  For example, when a problem is detected, an alert should be generated

* **Automate** as much as possible  
Monitoring can generate a lot of data.  Going through all the data manually can be tedious.  We want to implement tools to cut through the data and spot patterns.

* Use **good monitoring tools**   
These tools provide lot of automation and implement best practices

---

## What to Monitor?

<!-- TODO shiva -->
<img src="../../assets/images/monitoring/monitoring-2.png" style="width:45%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* We want to monitor the following:
  - Cluster, individual nodes and applications

* **Cluster**: Monitor overall cluster status
  - Overall utilization (e.g. 60%)

* **Individual Nodes** : Monitor each machine to identify issues
  - CPU, memory, disk, bandwidth

* **Applications** : Monitor user applications
  - latencies, requests per second ..etc.

---

## Monitoring Architecture


<img src="../../assets/images/monitoring/monitoring-architecture-1.png" alt="Metrics-Mechanics.png" style="width:70%;"/><!-- {"left" : 0.7, "top" : 1.53, "height" : 6.01, "width" : 8.86} -->


Notes: 

---

## Monitoring Architecture


* 3 main components: collector, database, visualizer

* **Collector/agent**

  - Collects metrics from the host and pushes to database

* **Database**

  - Collects and stores metrics from various sources

  - Performs aggregations (current rate / last_1m rate / min / max)

  - A time-series database

* **Visualizer**

  - Create nice looking visualizations of metrics

  - Various graphs

Notes: 

---

## Monitoring Database Choices

|             | Prometheus               | Graphite                   | InfluxDB                                 | OpenTSDB                     |
|-------------|--------------------------|----------------------------|------------------------------------------|------------------------------|
| Ease of use | Easy                     | Easy                       | Easy                                     | Considerable effort required |
| Scale       | Small / medium           | Small/medium               | large                                    | Massively scalable           |
| License     | Open source              | Open source                | Open source + premium                    | Open source                  |
| Website     | <https://prometheus.io/> | <https://graphiteapp.org/> | <https://github.com/influxdata/influxdb> | <http://opentsdb.net/>       |

<!-- {"left" : 0.25, "top" : 1.39, "height" : 3.07, "width" : 9.75} -->



<img src="../../assets/images/logos/prometheus-logo-1.png" alt="graphlte-logo.png" style="width:10%;"/><!-- {"left" : 0.37, "top" : 5.6, "height" : 0.91, "width" : 2.84} -->
<img src="../../assets/images/logos/graphite-logo.png" alt="graphlte-logo.png" style="width:30%;"/><!-- {"left" : 0.37, "top" : 5.6, "height" : 0.91, "width" : 2.84} -->

<img src="../../assets/images/logos/InfluxDB-logo.png" alt="InfluxDB-logo.png" style="width:25%; "/><!-- {"left" : 3.67, "top" : 5.51, "height" : 1.08, "width" : 2.5} --> &nbsp;&nbsp; &nbsp;<img src="../../assets/images/logos/opentsdb-logo.png" alt="opentsdb-logo.png" style="width:30%;" /><!-- {"left" : 7.13, "top" : 5.77, "height" : 0.56, "width" : 2.74} -->

---

## Visualization - Grafana

<img src="../../assets/images/monitoring/3rd-party/grafana-2.png"  style="width:60%;float:right;"/><!-- {"left" : 2.01, "top" : 1.33, "height" : 4.01, "width" : 6.23} -->

* Modern, Open source

* Very attractive graphs

* Easy to setup and use

* Supports multiple databases: Graphite / Influx / OpenTSDB

* [Grafana.com](https://grafana.com/)


Notes: 

Image used under fair use , source: grafana.org


---

# Cluster Monitoring Tools


---

## Cluster Monitoring Tools

* There are tons of tools availble;  most are open source and very capable.
  - Choose one that works with your environment
* [Prometheus](https://prometheus.io/)
* [Riemann](http://riemann.io/)
* [Sensu](https://sensu.io/)
* [Zabbix](https://www.zabbix.com/)
* [Icninga](https://icinga.com/)
* [Nagios](https://www.nagios.org/projects/nagios-core/)
* [Cacti](https://www.cacti.net/)
* [M/Monit](https://mmonit.com/)
* [LibreNMS](https://www.librenms.org/)
* References
  - [1](https://geekflare.com/best-open-source-monitoring-software/),  [2](https://devopscube.com/best-opensource-monitoring-tools/),  [3](https://geekflare.com/best-open-source-monitoring-software/)

---

## Cluster Monitoring Tools

* **Instructor**: The following slides describe the tools in details.  They are provided as reference.  Cover as necessary.

---

##  Nagios

<!-- TODO shiva -->
<img src="../../assets/images/monitoring/3rd-party/nagios-1.png"  style="width:55%;float:right; "/><!-- {"left" : 2.17, "top" : 1, "height" : 4.14, "width" : 5.92} -->

* Scalable

* Very well field tested (since 1999!)

* Host level and application level monitoring

* Large plugin library

* <https://www.nagios.org>

---

## Prometheus

<!-- TODO shiva -->

<img src="../../assets/images/monitoring/3rd-party/prometheus-1-architecture.png" style="width:55%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Open source and very popular

* **Prometheus** database is an excellent time series db
  * PromQL provides easy querying

* Works really well Kubenetes and container environments

* Built in [Alertmanager](https://prometheus.io/docs/alerting/latest/alertmanager/) helps you manage alerts

* [Prometheus website](https://prometheus.io/)

* References
  - [Prometheus Monitoring : The Definitive Guide](https://devconnected.com/the-definitive-guide-to-prometheus-in-2019/)

---

# System Monitoring Tools

---

## Host/System Monitoring Tools

* All the tools mentioned above will monitor overall cluster

* We can also drill down into individual hosts as well

* Example metrics:
  - CPU / Memory / Disk usage
  - Network traffic

* Sometimes we need more detailed information than provided by the tools

* Here are some tools to help with that

---

## Linux System Monitoring Tools

* System load
  - [Top](https://linux.die.net/man/1/top) and vaiants
  - [Atop](https://www.atoptool.nl/)
  - [htop](https://htop.dev/)
  - [glances](https://nicolargo.github.io/glances/)
* System IO stats
  - [vmstat](https://linux.die.net/man/8/vmstat)
  - [iostat](https://linux.die.net/man/1/iostat)
  - [lsof](https://linux.die.net/man/8/lsof)
* Network
  - [Tcp dump](https://www.tcpdump.org/)
  - [Netstat](https://tldp.org/LDP/nag2/x-087-2-iface.netstat.html)
* References:
  - [4 open source tools for Linux system monitoring](https://opensource.com/life/16/2/open-source-tools-system-monitoring)
  - [20 Command Line Tools to Monitor Linux Performance](https://www.tecmint.com/command-line-tools-to-monitor-linux-performance/)

---

## TOP / ATOP / HTOP / GLANCES

* These will give you a snapshot of what is running on your machine

<!-- TODO shiva -->

<img src="../../assets/images/monitoring/top-1a.png" style="width:45%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
&nbsp; &nbsp; <img src="../../assets/images/monitoring/atop-1a.png" style="width:45%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

<img src="../../assets/images/monitoring/htop-1a.png" style="width:45%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
&nbsp; &nbsp; <img src="../../assets/images/monitoring/glances-1a.png" style="width:45%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


---

## IO Stats 

<!-- TODO shiva -->

<img src="../../assets/images/monitoring/vmstats-2.png" style="width:35%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **vmstats** will display memory/disk/thread stats

<img src="../../assets/images/monitoring/iostats-1.png" style="width:75%;float:right;clear:both;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **iostats** will display IO stats

* Install using:  
`sudo apt install sysstats`

* References:
  - [Linux Performance Monitoring with Vmstat and Iostat Commands](https://www.tecmint.com/linux-performance-monitoring-with-vmstat-and-iostat-commands/)

---

## LSOF

* **lsof** displays files opened by processes

* It can be handy when diagnosing file IO errors

* For example, IO intensive apps like Kafka and Spark may run out of file handles;  We can use this to see which files are being opened

* References:
  - [10 lsof Command Examples in Linux](https://www.tecmint.com/10-lsof-command-examples-in-linux/)


<!-- TODO shiva -->
<img src="../../assets/images/monitoring/lsof-1.png" style="width:75%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Lab: Using System Monitoring Tools

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Learn Linux system monitoring tools

* **Approximate run time:**
  - ~15 mins

* **Instructions:**
  - Try the Linux tools we just learned.
  - Try various options for each tool


Notes:

---


# Java Monitoring Tools

---

## Java Monitoring Tools 

* Java is the language of choice for lot of big data systems (Kafa, Spark, Cassandra)

* So being able to monintor Java apps is important part of diagnosing issues

* Following are some tools of trade:
  - [JMX](https://www.oracle.com/java/technologies/javase/javamanagement.html)
  - [jolokia](https://jolokia.org/)
  - [Jconsole](https://docs.oracle.com/javase/7/docs/technotes/guides/management/jconsole.html)
  - [visualVM](https://visualvm.github.io/)
  - [Java Mission Control](https://docs.oracle.com/javacomponents/jmc-5-5/jmc-user-guide/intro.htm#JMCCI109) - Commercial
  - [Java flight recorder](https://docs.oracle.com/javacomponents/jmc-5-4/jfr-runtime-guide/about.htm#JFRUH170) - Commercial


---

## JMX

<img src="../../assets/images/monitoring/kafka-jmx-metrics-1.png" style="width:45%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **JMX** is tools and interfaces for monitoring Java applications

* Lot of apps can export metrics using JMX interface

* These metrics can be collected by apps and displayed

* References:
  - [10 mins Quick Start JMX Tutorial](https://www.journaldev.com/1352/what-is-jmx-mbean-jconsole-tutorial)


---

## JConsole

* **JConsole** is a GUI monitoring tool
* Uses JMX to collect metrics
* References:
  - [JConsole](https://docs.oracle.com/javase/7/docs/technotes/guides/management/jconsole.html)
  - [Jconsole example](https://www.ibm.com/support/knowledgecenter/SSYKE2_8.0.0/com.ibm.java.vm.80.doc/docs/jconsole.html)

<!-- TODO shiva -->

<img src="../../assets/images/monitoring/jconsole-1-spark.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
&nbsp; &nbsp; <img src="../../assets/images/monitoring/jconsole-2.png" style="width:40%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## VisualVM

<!-- TODO shiva -->
<img src="../../assets/images/monitoring/visualvm-1.png" style="width:40%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/monitoring/visualvm-2.png" style="width:45%;float:right;clear:both;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **VisualVM** is a GUI Java profiler
* Can monitor: Heap memory, threads
* References:
  - [VisualVM](https://visualvm.github.io/)
  - [Visual VM guide](https://docs.oracle.com/javase/8/docs/technotes/guides/visualvm/)
  - [Visual VM tutorial](https://dzone.com/articles/all-about-visualvm)

---

## Java Flight Recorder

* **Java Flight Recorder (JFR)** is a tool for collecting diagnostic and profiling data of JVM
  - It is integrated into the Java Virtual Machine (JVM) and causes almost no performance overhead, so it can be used even in heavily loaded production environments

* Start as follows  
__`java -XX:+UnlockCommercialFeatures -XX:+FlightRecorder MyApp`__

* JFR will start instrumenting the app and collecting data

* References:
  - [Java Flight Recorder](https://docs.oracle.com/javacomponents/jmc-5-4/jfr-runtime-guide/about.htm#JFRUH170)
  - [Using Java Flight Recorder tutorial](https://www.baeldung.com/java-flight-recorder-monitoring)

---

## Java Mission Control 

<!-- TODO shiva -->
<img src="../../assets/images/monitoring/java-mission-control-2.png" style="width:60%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Java Mission Control** enables monitoring and managing Java applications without introducing the performance overhead

* For example, can collect data from `java flight recorder`

* Start as  __`jmc`__

* References:
  - [Java Mission Control](https://docs.oracle.com/javacomponents/jmc-5-5/jmc-user-guide/intro.htm#JMCCI109)

---

## Lab: Using Java Monitoring Tools

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Experiment with Java monitoring tools

* **Approximate run time:**
  - ~15 mins

* **Instructions:**
  - Try the JVM tools we just learned.


Notes:

---

# Application Monitoring Tools

---

## Application Monitoring

* In previous sections we have learned the following:
  - System level monitoring (CPU, Memory, IO)
  - JVM monitoring (threads, heap size)

* Often times, we need to measure **application specific** metrics that we can not gather from the above

* We need to instrument/profile our application code

* For example, let's say we are saving data to a db, and want to measure the time taken.

```java

long t1 = mark_time();
result = saveToDB(data);
long t2 = mark_time();
// time taken is : t2 - t1
```


---

## Application Monitoring Best Practices

* Start early!  Start as you are developing the application.
  - This encourages good monitoring practices; and spot bottlenecks early on

* Prioritize what to monitor;  Profile critical application paths first

* Put in alerts in monitoring system; make sure they work!

* Have a process to monitor alerts.  Figure out who is on 'pager duty'

* References:
  - []

---

# Metrics Library

---

## Metrics Library

* **Metrics**  is a Java library, that is used to report metrics.Formerly known as  **codahale metrics** (authored by Coda Hale)

* Light weight and fast

* Widely used by many projects (Hadoop / Spark / Cassandra)

* Supported various backends: Graphite, Ganglia

* Supported UIs: built-in UI,   JMX

* [Metrics page](http://metrics.dropwizard.io/)

Notes: 


---

## Using Metrics Library


* Metrics is a Java library

* Import the package into project;  Here is a fragment in `pom.xml`

```xml
<dependencies>
  <dependency>
    <groupId>io.dropwizard.metrics</groupId>
    <artifactId>metrics-core</artifactId>
    <version>4.1.2</version>
  </dependency>
</dependencies> 
```
<!-- {"left" : 0, "top" : 1.78, "height" : 2.47, "width" : 8.65} -->


Notes: 

---

## Using Metrics Library

```java
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
<!-- {"left" : 0, "top" : 1.46, "height" : 6.81, "width" : 10.25} -->

Notes: 




---

## Metrics Library: Meters


* A meter measures the rate of events over time.(e.g., "requests per second"). 

* In addition to the mean rate, meters also track 1-, 5-, and 15-minute moving averages.

```java
private final Meter requests = metrics.meter("requests");

public void handleRequest(Request request, Response response) {
    requests.mark();
} 
```
<!-- {"left" : 0, "top" : 3.36, "height" : 1.58, "width" : 10.25} -->

<img src="../../assets/images/monitoring/3rd-party/metrics-meter-1.png" style="width:65%;"/><!-- {"left" : 1.63, "top" : 5.88, "height" : 2.43, "width" : 6.99} -->



Notes: 




---

## Metrics Library: Counters


* A counter is used to 'count' things.Number of messages in queue, ...etc

* Counter is an AtomicLongCan be incremented or decremented

```java
private final Counter msgCounter = metrics.counter("messages-in
q");

msgCounter.inc();
msgCounter.inc(10);

msgCounter.dec();
msgCounter.dec(5); 

```
<!-- {"left" : 0, "top" : 3.06, "height" : 2.37, "width" : 10.25} -->

<img src="../../assets/images/monitoring/3rd-party/metrics-counter-1.png" style="width:65%;"/><!-- {"left" : 1.45, "top" : 5.68, "height" : 2.89, "width" : 7.36} -->


Notes: 




---

## Metrics Library: Histograms


* A  **histogram**  measures the statistical distribution of values in a stream of data. 

* In addition to minimum, maximum, mean, etc., it also measures median, 75th, 90th, 95th, 98th, 99th, and 99.9th percentiles.

```java
private final Histogram msgSizes = metrics.histogram( "message_sizes");

msgSizes.update(100);
msgSizes.update(50); 
 
```
<!-- {"left" : 0, "top" : 3.73, "height" : 1.17, "width" : 10.25} -->

<img src="../../assets/images/monitoring/3rd-party/metrics-histogram-1.png"  style="width:65%;"/><!-- {"left" : 0.45, "top" : 5.72, "height" : 2.29, "width" : 9.36} -->



Notes: 




---

## Metrics Library: Timers


 * A  **timer**  measures the duration of piece of code

 * Also measures the rate the code is called

```java
private final Timer timerExec = metrics.timer("execTime"));

Timer.Context context = timerExec.time();
// do some work here
f();  // calling a function
context.stop(); 
```
<!-- {"left" : 0, "top" : 2.38, "height" : 1.98, "width" : 10.25} -->

<img src="../../assets/images/monitoring/3rd-party/metrics-timer-1.png" style="width:65%;"/><!-- {"left" : 1.51, "top" : 5.02, "height" : 2.67, "width" : 7.22} -->



Notes: 




---

## Lab: Metrics Labs

* **Overview:**
 - Learn to use Metrics library

* **Approximate Time:**
  - ~30 mins

* **Instructions:**
  - Grab the lab from <https://github.com/elephantscale/learning-metrics>
  - Follow the instructions to get metrics demo running

* **To Instructor:** 
  - Demo this if time permits


Notes: 




---

## References

* ["Site Reliability Engineering" book](https://www.oreilly.com/library/view/site-reliability-engineering/9781491929117/)

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
