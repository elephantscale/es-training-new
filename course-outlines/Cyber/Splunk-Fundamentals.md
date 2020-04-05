# Splunk Fundamentals

(C) Copyright Elephant Scale

April 2, 2020

## Overview
This course will cover the fundamentals of the Splunk search program.

## Audience
IT professionals, Data Analysts, Software Developers

## Skill Level
Introductory - Intermediate

## Duration
Five days

## Format
Lectures and hands on labs. (50%   50%)

## Prerequisites
* Recommended: Cybersecurity awareness
* Nice to have: Unix/Linux command line experience


## Lab environment
* Zero Install: There is no need to install software on students' machines!
* A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser
* SSH client for your platform

## Detailed outline

### The Splunk Interface
* Logging in to Splunk
* The Home app
* The top bar
* Search app
* Search results
* Using the time picker
* Using the field picker
* Using Manager

### Understanding Search
* Using search terms effectively
* Boolean and grouping operators
* Clicking to modify your search
* Using fields to search
* Using wildcards efficiently
* All about time
* Making searches faster
* Sharing results with others
* Saving searches for reuse
* Creating alerts from searches

### Tables, Charts, and Fields
* About the pipe symbol
* Using top to show common field values
* Using stats to aggregate values
* Using chart to turn data
* Using timechart to show values over time timechart options
* Working with field

### Simple XML Dashboards
* The purpose of dashboards
* Using wizards to build dashboards
* Scheduling the generation of dashboards
* Editing the XML directly
* UI Examples app
* Building forms

### Advanced Search Examples
* Using subsearches to find loosely related events
* Using transaction
* Determining concurrency
* Calculating events per slice of time
* Rebuilding top

### Extending Search 
* Using subsearches to find loosely related events
* Using transaction
* Determining concurrency
* Calculating concurrency with a by clause
* Calculating events per slice of time
* Using timechart
* Rebuilding top
* Using tags to simplify search
* Using event types to categorize results
* Using lookups to enrich data
* Defining a lookup table file
* Using macros to reuse logic
* Running a new search using values from an event
* Extracting values from XML 170
* Using Google to generate results

### Working with Apps
* Defining an app
* Included apps
* Installing apps
* Installing apps from Splunkbase
* Using Geo Location Lookup Script
* Using Google Maps  
* Building your first app
* Using custom CSS
* Using custom HTML 
* Object permissions
* App directory structure
* Adding your app to Splunkbase

### Building Advanced Dashboards
* Reasons for working with advanced XML
* Reasons for not working with advanced XML
* Development process
* Advanced XML structure
* Converting simple XML to advanced XML
* Module logic flow
* Understanding layout Panel
* Reusing a query
* Using intentions
* Creating a custom drilldown
* Third-party add-ons

# Summary Indexes and CSV Files
* Understanding summary indexes
* Creating a summary index
* When to use a summary index
* When to not use a summary index
* Populating summary indexes with saved searches
* Using summary index events in a query
* Using sistats, sitop, and sitimechart
* How latency affects summary queries
* How and when to backfill summary data
* Reducing summary index size
* Calculating top for a large time frame
* Storing raw events in a summary index
* Using CSV files to store transient data

### Configuring Splunk
* Merging order outside of search
* Merging order when searching
* Locating Splunk configuration files
* The structure of a Splunk configuration file
* Configuration merging logic
* Merging order

### Advanced Deployments
* Planning your installation
* Splunk instance types
* Splunk forwarders
* Splunk indexer
* Splunk search
* Common data sources
* Monitoring logs on servers
* Monitoring logs on a shared drive
* Consuming logs in batch
* Receiving syslog events
* Receiving events directly on the Splunk indexer
* Using a native syslog receiver
* Receiving syslog with a Splunk forwarder
* Consuming logs from a database
* Using scripts to gather data
* Sizing indexers
* Planning redundancy
* Indexer load balancing
* Understanding typical outages
* Working with multiple indexes
* Directory structure of an index
* When to create more indexes
* Testing data
The lifecycle of a bucket
Sizing an index
Using volumes to manage multiple indexes
Deploying the Splunk binary
Deploying from a tar file
Deploying using msiexec
Adding a base configuration
Configuring Splunk to launch at boot
Using apps to organize configuration
Separate configurations by purpose
Configuration distribution
Using your own deployment system
Using Splunk deployment server 354
355
356
358
359
359
360
360
361
361
366
366
367
Using LDAP for authentication
Using Single Sign On
Load balancers and Splunk
web
splunktcp
deployment server
Multiple search heads
Summary 374
375
376
376
376
377
377
378
Step 1 – Deciding where your deployment server will run
Step 2 – Defining your deploymentclient.conf configuration
Step 3 – Defining our machine types and locations
Step 4 – Normalizing our configurations into apps appropriately
Step 5 – Mapping these apps to deployment clients in serverclass.conf
Step 6 – Restarting the deployment server
Step 7 – Installing deploymentclient.conf
### Extending Splunk
* Writing a scripted input to gather data
* Capturing script output with no date
* Capturing script output as a single event
* Making a long-running scripted input
* Using Splunk from the command line
* Querying Splunk via REST
* Writing commands
* When not to write a command
* When to write a command
* Configuring commands
* Adding fields
* Manipulating data
* Transforming data
* Generating data
* Writing a scripted lookup to enrich data
* Writing an event renderer
* Using specific fields
* Table of fields based on field value
* Pretty print XML
* Writing a scripted alert action to process results

### Summary

* Book
* Implementing Splunk by Vincent Bumgarner