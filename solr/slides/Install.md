# Solr Install 
---
# Installing And Running Solr
---

## Installing Solr

 * Solr can be downloaded from its website
   - http://lucene.apache.org/solr
   - Current Version is 7.6
 * Lucene library can also be installed
   - http://lucene.apache.org/

---

## Lab: Solr install

- Overview: we will practice the installation of the Solr server.
- Pre-requisites: Java 1.8 or later  
- Approximate time: 30 minutes
- Instructions: solr-labs/solr-intro/1-install.md


Notes:


---

## Lab, contd


<img src="../../assets/images/solr/3rd-party/slor-01.png" style="width:50%;"/> <!-- {"left" : 0.97, "top" : 1.38, "height" : 6.87, "width" : 8.3} -->


Notes:


---

## Solr Example Structure


<img src="../../assets/images/solr/solr-structure.png" style="width:60%;"/> <!-- {"left" : 0.71, "top" : 2.14, "height" : 5.36, "width" : 8.83} -->

Notes:


---


## Directory Layout


<img src="../../assets/images/solr/3rd-party/solr-directory-layout.png" style="width:70%;"/> <!-- {"left" : 1.02, "top" : 2.14, "height" : 3.69, "width" : 8.21} -->


---

## Directory Layout

 * After installing Solr, you’ll see the following directories and files within them:

 * **bin/:**  This directory includes several important scripts that will make using Solr easier.
   -  `solr` and `solr.cmd`: start and stop Solr, create  collections or cores, configure autentication, work with configuration files in SolrCloud.
   - `post`: The PostTool, which provides a simple command line interface for POSTing content to Solr.
   - `solr.in.sh` and solr.in.cmd`:  System-level properties for Java, Jetty, and Solr - set properties in one place.
   - `install_solr_services.sh`: run solr as a service.

---

## Directory Layout

 * **contrib/** Solr’s contrib directory includes add-on plugins for specialized features of Solr.
 * **dist/:**  main Solr .jar files.
 * **docs/:** link to online Javadocs for Solr.
 * **example/:** examples demonstrate various Solr capabilities.
 * **licenses/:** The licenses directory includes all of the licenses for 3rd party libraries used by Solr.

---

## Directory Layout: Server

 * **server/** This directory is where the heart of the Solr application resides. 
   - Solr Admin UI (server/solr-webapp)
   - Jetty libraries (server/lib)
   - Log files (server/logs) and log configurations (server/resources)
   - Sample configsets (server/solr/configsets)


---

# Content and Query 
---

## Lab: Simple Query

- Overview: xing of documents with Solr server and searching in them.
- Pre-requisites: solr-labs/solr-intro/1-install.md  
- Approximate time: 30 minutes
- Instructions: solr-labs/solr-intro/2-query.md


Notes:


---

## Lab, contd


<img src="../../assets/images/solr/3rd-party/solr-02.png" style="width:35%;"/><!-- {"left" : 2.28, "top" : 1.67, "height" : 6.31, "width" : 5.69} -->




Notes:


---

# Reading Solr XML Response
---

## Example


<img src="../../assets/images/solr/3rd-party/solr-03.png" style="width:50%;"/> <!-- {"left" : 1.01, "top" : 1.6, "height" : 6.45, "width" : 8.22} -->


Notes:


---

# Changing Parameters In The URL
---

## Example


<img src="../../assets/images/solr/3rd-party/solr-04.png" style="width:40%;"/> <!-- {"left" : 1.83, "top" : 1.71, "height" : 6.23, "width" : 6.59} -->

Notes:


---

## Let’s Break Up The Query


<img src="../../assets/images/solr/3rd-party/query.png" style="width:60%;float:left;"/> <!-- {"left" : 0.6, "top" : 2.46, "height" : 2.58, "width" : 9.06} -->


Notes:


---

## Summary

  * What we’ve learned

    - Installing and running Solr
    - Adding content to Solr and searching
    - Changing parameters in the URL
    - Using the browser interface
    - Reading a Solr XML response


Notes:






