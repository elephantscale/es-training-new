# Kibana
---

## Section Objectives

* Install Kibana
* Configure common Kibana tasks
* Get familiar with Kibana functionality



Notes:


---

## What is Kibana

* Kibana is an open source analytics and visualization platform
  - Works on top of Elasticsearch. 
* It can be used to 
  - Search
  - View
  - Interact 
* Data
  - Structured
  - Unstructured

Notes:


---

## Kibana UI

* Presentation types
  - Histograms
  - Charts
  - Graphs
  - Tables
  - Maps

Notes:


---

## Kibana Features

* Seamless integration with Elasticsearch 
* Understanding of data by representing it with
  - bar charts
  - line and scatter plots
  - Histograms
  - pie charts
  - maps
* Integrates with Elasticsearch analytics
* Allows to
  - Create
  - Save
  - Share
  - Export
  - Embed visualized data for


Notes:


---

## Kibana and Elastic Stack


<img src="../../assets/images/elastic/Kibana-Elastic-Stack.png" alt="Kibana-Elastic-Stack.png" style="width:60%;"/>




Notes:


---

## What is What

* Beats is a lightweight importer of data directly into Elasticsearch
* Logstash is an ETL data pipeline
* Kibana is a user interface
  - Visualize
  - Slice and dice data
  - Manage and monitor the entire stack


Notes:


---

## Example of ELK Data Pipeline

<img src="../../assets/images/elastic/ELK-Data-Pipeline.png" alt="ELK-Data-Pipeline.png" style="width:60%;"/>



Notes:


---

## X-Pack

* Commercial extension for Elasticsearch
* Subscription pricing
* More later

<img src="../../assets/images/elastic/X-Pack.png" alt="X-Pack.png" style="width:60%;"/>


Notes:


---

## Now for Kibana. Say you have logs

<img src="../../assets/images/elastic/3rd-party/Now-Kibana.png" alt="Now-Kibana.png" style="width:70%;"/>

Notes:


---

## Here is How You Would Like Them

<img src="../../assets/images/elastic/3rd-party/Here-Them.png" alt="Here-Them.png" style="width:60%;"/>


Notes:


---

## With X-Pack You Can Do Even More

<img src="../../assets/images/elastic/3rd-party/With-X-Pack.png" alt="With-X-Pack.png" style="width:60%;"/>


Notes:


---

## Lab: Install Kibana

* Please do this lab: 

  - `kibana/install.md`

Notes:


---

## For Kibana Configuration


<img src="../../assets/images/elastic/3rd-party/Kibana-Configuration.png" alt="Kibana-Configuration.png" style="width:70%;"/>


Notes:


---

## Ways to Ingest Data

* Files
* Bulk ingest
* Beats
* Logstash
* But for our lab, we will use existing data

Notes:


---

## Configure Kibana File Pattern


<img src="../../assets/images/elastic/3rd-party/Configure-Pattern.png" alt="Configure-Pattern.png" style="width:60%;"/>




Notes:


---

## Configure

<img src="../../assets/images/elastic/3rd-party/Configure-01.png" alt="Configure-01.png" style="width:20%;float:right"/>

* Click on “Configure”
* Observe the prominent fields and their value distribution
* Investigate fields, such as
  - geo.src
  - extension
  - Etc.



Notes:


---

## Time Range

* Time range control is at the top right
* Investigate the effect of time range controls

<img src="../../assets/images/elastic/3rd-party/time-range.png" alt="time-range.png" style="width:60%;"/>


Notes:


---

## Time Picker

* Relative time picker
* Or absolute
* Or auto refresh

<img src="../../assets/images/elastic/3rd-party/Time-Picker.png" alt="Time-Picker.png" style="width:60%;"/>

Notes:


---

## Search in Kibana with Lucene Syntax

<img src="../../assets/images/elastic/3rd-party/Lucene-Syntax.png" alt="Lucene-Syntax.png" style="width:60%;"/>


Notes:


---

## Expand the Document and Analyze the Data


<img src="../../assets/images/elastic/3rd-party/Expand-Document-Analyze-Data.png" alt="Expand-Document-Analyze-Data.png" style="width:60%;"/>


Notes:


---

## Filter for Specific Geography

<img src="../../assets/images/elastic/3rd-party/Filter-Geography.png" alt="Filter-Geography.png" style="width:60%;"/>

<img src="../../assets/images/elastic/3rd-party/Filter-Geography-01.png" alt="Filter-Geography-01.png" style="width:60%;"/>


Notes:


---

## Lucene Query Syntax

<img src="../../assets/images/elastic/3rd-party/Lucene-Query-Syntax.png" alt="Lucene-Query-Syntax.png" style="width:60%;"/>

Notes:


---

## Experiment with Queries

* What would this query do?

<img src="../../assets/images/elastic/3rd-party/Experiment.png" alt="Experiment.png" style="width:70%;"/>


* What other queries can you suggest?


Notes:


---

## Structured Filters


<img src="../../assets/images/elastic/3rd-party/Structured-Filters.png" alt="Structured-Filters.png" style="width:60%;"/>



Notes:


---

## Structured Filters Capabilities

* Choose the field in the UI as a dropdown
* Choose condition, e.g. IS ONE OF
* Provide the value
* Save the query
* Add another filter:	
  - Field
  - Relationship
  - Value
* View surrounding documents (in time)


Notes:


---

## Visualizations

<img src="../../assets/images/elastic/3rd-party/Visualizations.png" alt="Visualizations.png" style="width:60%;"/>


Notes:


---

## Visualization Types

* Basic charts
* Data
* Maps
* Time series


Notes:


---

## Counting the Document with a Line Chart

<img src="../../assets/images/elastic/3rd-party/Counting-Line-Chart.png" alt="Counting-Line-Chart.png" style="width:60%;"/>


Notes:


---

## Visualize Traffic vs Bytes Count

<img src="../../assets/images/elastic/3rd-party/Visualize-Count.png" alt="Visualize-Count.png" style="width:60%;"/>


Notes:


---

## Let us Change the Looks

<img src="../../assets/images/elastic/3rd-party/Let-Looks.png" alt="Let-Looks.png" style="width:60%;"/>

Notes:


---

## Pie Chart – Response Codes


<img src="../../assets/images/elastic/3rd-party/Response-Codes.png" alt="Response-Codes.png" style="width:60%;"/>


Notes:


---

## Dashboards – Just Add Visualizations

<img src="../../assets/images/elastic/3rd-party/Dashboards-Visualizations.png" alt="Dashboards-Visualizations.png" style="width:60%;"/>



Notes:


---

## Sharing Kibana Dashboards


<img src="../../assets/images/elastic/3rd-party/Kibana-Dashboards.png" alt="Kibana-Dashboards.png" style="width:60%;"/>


Notes:


---

## If You Have X-Pack

* (bin/kibana-plugin install xpack)

<img src="../../assets/images/elastic/3rd-party/Have-X-Pack.png" alt="Have-X-Pack.png" style="width:60%;"/>




Notes:


---

## What is Added in X-Pack

* Machine Learning
* Graph
* Monitoring
* Management
  - Security
* Much more...



Notes:


---

## Security

<img src="../../assets/images/elastic/3rd-party/Security.png" alt="Security.png" style="width:60%;"/>


Notes:


---

## Dashboard Sharing with Reporting


<img src="../../assets/images/elastic/3rd-party/Dashboard-Reporting.png" alt="Dashboard-Reporting.png" style="width:60%;"/>

Notes:


---

## Lab: Configure Kibana

* Please do this lab: 

  - `kibana/configure.md`












