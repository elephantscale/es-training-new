# MarkLogic XQuery Applications

## This section describes the following procedures to get started using XQuery in MarkLogic Server:

* Exploring the Use Cases
* The App-Services App Server
* Sample XQuery Application that Runs Directly Against an App Server

---

## Exploring the Use Cases

* As part of the XQuery standard, the W3C working group has assembled a set of use cases that demonstrate how XQuery can be used to accomplish a variety of sample tasks
* As part of its installation process, MarkLogic Server provides a workspace for Query Console containing working demonstrations of these use cases.
* The use cases provide an excellent starting point for familiarizing yourself with the XQuery language and with some important aspects of MarkLogic Server

---

## Lab-19

* To explore the use cases, go to Lab-19

  https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/19-marklogic_xquery_applicaion_use_case.md

---

## The App-Services App Server

* The App-Services App Server at port 8000 hosts Query Console and other MarkLogic applications

* The App-Services App Server also serves as an HTTP App Server, an XDBC App Server, and as a REST API instance

* XQuery, Node.js, XCC, and REST applications can be run directly on the App-Services App Server

* By default, the App-Services App Server uses the Documents database

* The Sample XQuery Application described below is run on the App-Services App Server

---

## Sample XQuery Application that Runs Directly Against an App Server

* In this section, you create a sample XQuery application

* This is a simple browser-based application that runs against an HTTP App Server, and that allows you to load and modify some data

* First you will create the App Server, and then create the application

    - Creating a New App Server
    - Creating the Sample XQuery Application

---

## Creating a New App Server

* An App Server is used to evaluate XQuery code against a MarkLogic database and return the results to a browser

* This App Server uses the Documents database, which is installed as part of the MarkLogic Serverinstallation process

* In Sample XQuery Application that Runs Directly Against an App Server, you use this App Server to run a sample XQuery application

* To create a new App server, go to Lab-20

  https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/20-create_http_app_server_for_use_case.md

---

## Creating the Sample XQuery Application

* To create a sample XQuery application, got to Lab-21

  https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/21-create_xquery_application_for_use_case.md