# Google Data Studio

<img src="../../assets/images/logos/google-data-studio-logo-1.png" style="width:25%;"/><!-- {"left" : 5.29, "top" : 7.22, "height" : 1.61, "width" : 1.82} -->
  

---

## Objectives

- Learn about Data Studio
- Create visualizations 

---

# Data is Beautiful

---

## Data is Beautiful

* Good visualizations help audience understand data
    - Not just looking at numbers

* A good data scientist must learn good visualization techniques.

* Good resources:
  - [Data is Beautiful @ Reddit](https://www.reddit.com/r/dataisbeautiful/)
  - [Five Thirty Eight](https://fivethirtyeight.com/) - Interesting charts mostly about US politics and government
  - [datausa.io/](https://datausa.io/) - US government data visualization

Notes:

---

## Viz: US Population

<img src="../../assets/images/google-cloud/3rd-party/viz-US-population-1.png" style="width:80%;"/><!-- {"left" : 1.57, "top" : 1.15, "height" : 4.02, "width" : 7.11} -->
   

* [Source](https://www.someka.net/excel-template/usa-heat-map-generator/)

---

## Viz: US Debt

<img src="../../assets/images/google-cloud/3rd-party/viz-US-debt-1.png" style="width:60%;"/>  <!-- {"left" : 1.98, "top" : 1.18, "height" : 4.69, "width" : 6.29} -->


* [Source](https://ricochet.com/archives/problem-no-one-dc-wants-talk/)

Notes:

---
## Viz: Australian Bush Fires of 2019

<img src="../../assets/images/google-cloud/3rd-party/viz-Australian-bush-fires-2019.jpg" style="width:50%;"/> <!-- {"left" : 2.2, "top" : 1.21, "height" : 5.17, "width" : 5.85} -->

- [Source](https://www.reddit.com/r/dataisbeautiful/comments/ejhw7w/area_of_land_burnt_in_australia_and_area_of_smoke/)


---
## Viz: Camera vs. Smartphone Sales

<img src="../../assets/images/google-cloud/3rd-party/viz-camera-vs-smartphone-sales-1.jpg" style="width:40%;"/>  <!-- {"left" : 2.97, "top" : 1.24, "height" : 4.32, "width" : 4.32} -->


- __"Correlation vs Causation"__
- [Source](https://www.reddit.com/r/dataisbeautiful/comments/d4mh5k/the_impact_of_smartphones_on_the_camera_industry/)

---
## Viz: Cardiac Deaths vs. Waffle House

<img src="../../assets/images/google-cloud/3rd-party/viz-cardiac-deaths-vs-waffle-houses.jpg" style="width:65%;"/> <!-- {"left" : 1.54, "top" : 1.09, "height" : 4.55, "width" : 7.16} -->
 

- __"Correlation vs Causation"__
* [Source](https://www.reddit.com/r/dataisbeautiful/comments/7dnnng/cardiac_related_deaths_during_2013_in_the/)


---

# Google Data Studio

---

## Google Data Studio 

<img src="../../assets/images/google-cloud/3rd-party/data-studio-1.png" style="width:50%; float:right;"/>   <!-- {"left" : 5.44, "top" : 1.03, "height" : 2.88, "width" : 4.72} -->

* An online tool to visualize data 
    - Think Tablaue, but  online
    
* Beautiful templates out of the box 

* Very little coding - drag and drop 

* Create interactive graphs
    - e.g. change date range ..etc

* Share results with anyone

---

## Basic Workflow in Studio

* Data Source --> Report --> Chart

* Data Sources provide data 
    - Cloud storage, Google Drive, database ..etc

* Reporting shapes data
    - We can add filters (e.g.   zip_code !- NULL)
    
* Charts help us visualize data
    - Usual charts : Bar, Pie, Time series, Stacked ...

---

## Data Sources

* Several built in Google connectors for Google eco system 
  - Google drive, Cloud Storage, Cloud SQL, Big Query 
* Reference: https://datastudio.google.com/data

<img src="../../assets/images/google-cloud/3rd-party/data-studio-2.png" style="width:75%; "/>  <!-- {"left" : 1.02, "top" : 3.3, "height" : 4.29, "width" : 8.21} -->

---
## Data Sources

* Several 3rd party connectors available too
  - Adroll, Facebook Ads, Quickbooks
* Reference: https://datastudio.google.com/data

<img src="../../assets/images/google-cloud/3rd-party/data-studio-3.png" style="width:65%; "/>  <!-- {"left" : 1.02, "top" : 3.06, "height" : 4.83, "width" : 8.21} -->



---

## Data Studio Show Case: "What Happened to M Night Shyamalan?"

<img src="../../assets/images/icons/group-labs.png"  style="width:30%;float:right;"/><!-- {"left" : 6.36, "top" : 1.15, "height" : 2.72, "width" : 3.75} -->


- Please analyze the [visualization](https://datastudio.google.com/reporting/0B6vuEpR8jgX2R29GVzJxWDlOak0/page/vbQ) and discuss your thoughts

<img src="../../assets/images/google-cloud/3rd-party/viz-night-shyamalan.png" style="width:60%;"/>  <!-- {"left" : 2.01, "top" : 4.6, "height" : 3.75, "width" : 6.22} -->



---
## Data Studio Show Case: "Are We Alone?"

<img src="../../assets/images/icons/group-labs.png"  style="width:30%;float:right;"/><!-- {"left" : 6.36, "top" : 1.15, "height" : 2.72, "width" : 3.75} -->


- Please analyze the [visualization](https://datastudio.google.com/reporting/1HWH0xFoTRvMi8JonyeeqnOct9wua26j-/page/YwMf) and discuss your thoughts

<img src="../../assets/images/google-cloud/3rd-party/viz-are-we-alone-1.png" style="width:60%;"/>  <!-- {"left" : 1.34, "top" : 4.99, "height" : 3.58, "width" : 7.58} -->

---

## Mini Lab: Customize an Existing Report

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 7.21, "top" : 0.88, "height" : 3.77, "width" : 2.83} -->

* Start with the report [Web traffic report](https://datastudio.google.com/reporting/0B_U5RNpwhcE6dDFzTHNtMC1UZnc/page/ly5G)
* Select a graph and choose __'Explore'__.  This will open that particular graph on your own workspace.  
  - Change the graph type (e.g. from line --> bar)
  - Try other customizations 

<img src="../../assets/images/google-cloud/3rd-party/data-studio-5.png" style="width:50%;"/><!-- {"left" : 1.67, "top" : 5.62, "height" : 3.05, "width" : 6.47} -->
  

Notes:

---

## Lab: Intro to Data Studio

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Get started with data studio

* **Approximate time:**
    - 20 mins

* **Instructions:**
    - Please follow lab instances for 
    - **STUDIO-1** lab


Notes:

---
## Lab: Data Studio Lab 2

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Analyze raw flights data

* **Approximate time:**
    - 20 mins

* **Instructions:**
    - Please follow lab instances for 
    - **STUDIO-2** lab


Notes:

---

## Lab: Data Studio Lab Using BigQuery

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Analyze public dataset (IRS filings) using BigQuery

* **Approximate time:**
    - 20 mins

* **Instructions:**
    - Please follow lab instances for 
    - **STUDIO-3** lab


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


- Let's go over what we have covered so far

- Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
