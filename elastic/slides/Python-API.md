# Python API

---

## Importing Data

<img src="../../assets/images/elastic/3rd-party/importing-data.png" alt="importing-data.png" style="width:20%;float:right;"/>

* Stand-alone **scripts** can submit bulk documents via REST API

* **Logstash** and **beats** can stream data from logs, S3, databases, and more
AWS systems can stream in data via **lambda** or **kinesis firehose** **kafka, spark,** and more have Elasticsearch integration add-ons


---

# Importing **via script / json**
---

## Python Import

* Read in data from some distributed filesystem
* Transform it into JSON bulk inserts
* Submit via HTTP / REST to your elasticsearch cluster


<img src="../../assets/images/elastic/3rd-party/Python-Import.png" alt="Python-Import.png" style="width:70%;float:left;"/>

---

## Python Example:

<img src="../../assets/images/elastic/3rd-party/python-example.png" alt="python-example.png" style="width:70%;"/>

---


---

## Client Libraries

* Free elasticsearch client libraries are available for pretty much any language.

  - Java has a client maintained by elastic.co
  - Python has an elasticsearch package
  - Ruby: `elasticsearch-ruby`
  - Several choices for scala
  - Elasticsearch.pm module for perl

* You don't have to wrangle JSON.


```python
es = elasticsearch.Elasticsearch()
es.indices.delete(index="ratings",ignore=404)  
deque(helpers.parallel_bulk(es,readRatings(),index="ratings",doc_t  
es.indices.refresh()
```



---

## Python Full Script

<img src="../../assets/images/elastic/3rd-party/Python-Full-Script.png" alt="Python-Full-Script.png" style="width:40%;float:right;"/>

* Function to read Movies
  - Open csv
  - Build dictionary
  - Match movieid with title
* Function to read Ratings
  - Open csv
  - Build dictionary
  - Match movieid with title
* Create ES instance, 
* Delete ratings table 
* Load ratings into "ratings" index. 


---

## Lab: Python Scripts


* Lab 12: Python scripts to import data

* We will also do the exercise on the next slide. 


---

## Python - Tags

* Exercise
  - write a script to import the tags.csv  data from ml-latest-small into a new  “tags” index.

---

## One Solution

<img src="../../assets/images/elastic/3rd-party/one-solution.png" alt="one-solution.png" style="width:52%;float:right;"/>

```python
tag = line ['tag'] instead of float line (no longer a number) 
````

---


