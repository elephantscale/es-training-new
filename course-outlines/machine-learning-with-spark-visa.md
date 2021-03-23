# Machine Learning With Spark

2021 March 20

## Overview

Machine Learning (ML) is changing the world.  And increasingly we are running ML algorithms on large-scale datasets.

Apache Spark is a popular big data platform that also excels in Machine Learning at large scale.

This course will cover Spark and how to do ML using Spark.  We will learn how Spark fits into real world ML at scale.

To use ML effectively, one needs to understand the algorithms and how to utilize them. This course provides an introduction into the most popular machine learning algorithms.

This course teaches Machine Learning from a practical perspective.

## What you will learn

* Spark
  * Spark ecosystem
  * Spark core
  * Caching and performance
  * Spark SQL and schema
  * Spark and Hadoop
  * Spark ML Library
  * Graph processing
  * Submitting Spark jobs
  * Spark performance tuning
* Machine Learning
  * Introduction to ML algorithms
  * Feature Engineering and data cleanup
  * Regressions
  * Classifications
  * Clustering algorithms (K-Means)
  * Model serving
  * Best practices for Spark ML
  * Integrating Spark + GPUs + SciKit + Tensorflow

## Audience

Data analysts,  Software Engineers, Data scientists

## Duration

Four Days

## Skill Level

Beginner to Intermediate

## Industry Use Cases Covered

We will study and solve some of most common industry use cases; listed below

* Finance
  - Predicting house prices
  - Predicting loan defaults at Prosper
* Health care
  - Predicting diabetes outcome
* Customer service
  - Predicting customer turnover
* Text analytics
  - Spam classification
* Travel
  - Predicting Uber demand
* Other
  - Predicting wine quality
  - Predicting college admissions

## Prerequisites

* Good programming background
* familiarity with Python would be a plus, but not required

## Lab environment

Cloud based lab environment will be provided to students, no need to install anything on the laptop

### Students will need the following

* A reasonably modern laptop with unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser

## Detailed Course Outline

* **Day 1, 2**
  - Spark
* **Day 3, 4**
  - Machine Learning with Spark

### Spark

#### Spark Introduction

* Big Data , Hadoop, Spark
* Spark concepts and architecture
* Spark components overview
* Labs : Installing and running Spark

#### First Look at Spark

* Spark shell
* Spark web UIs
* Analyzing dataset – part 1
* Labs: Spark shell exploration

#### Spark Core

* Partitions
* Distributed execution
* Operations : transformations and actions
* Labs : Unstructured data analytics

#### Caching

* Caching overview
* Various caching mechanisms available in Spark
* In memory file systems
* Caching use cases and best practices
* Labs: Benchmark of caching performance

#### Dataframes / Datasets

* Dataframes Intro
* Loading structured data (json, CSV) using Dataframes
* Using schema
* Specifying schema for Dataframes
* Labs : Dataframes, Datasets, Schema

#### Spark SQL

* Spark SQL concepts and overview
* Defining tables and importing datasets
* Querying data using SQL
* Handling various storage formats : JSON / Parquet / ORC
* Labs : querying structured data using SQL; evaluating data formats

#### Spark and Hadoop

* Hadoop Primer : HDFS / YARN
* Hadoop + Spark architecture
* Running Spark on Hadoop YARN
* Processing HDFS files using Spark
* Spark & Hive

#### Spark API

* Overview of Spark APIs in Scala / Python
* Life cycle of an Spark application
* Spark APIs
* Deploying Spark applications on YARN
* Labs : Developing and deploying an Spark application

#### GraphX

* GraphX library overview
* GraphX APIs
* Create a Graph and navigating it
* Shortest distance
* Pregel API
* Labs: Processing graph data using Spark

### Machine Learning

#### Machine Learning (ML) Overview

* ML introduction
* ML algorithms overview (Supervised / Unsupervised / Reinforcement)

#### Spark ML Overview

* Spark ML overview
* Algorithms overview: Clustering, Classifications, Recommendations
* Labs: Writing ML applications in Spark

#### Feature Engineering and Exploratory Data Analysis (EDA)

* Preparing data for ML
* Data cleanup
* Extracting features, enhancing data
* Visualizing Data
* Labs:
  - Data cleanup
  - Exploring data
  - Visualizing data

#### Regression

* Regression algorithms
* Errors, Residuals
* Evaluating model performance
* Labs:
  - Use case: House price estimates

#### Classification

* Overview of various classification algorithms
* Logistic Regression
* SVM
* Naive Bayes
* Labs:
  - Credit card application
  - Customer churn data
  - Spam classification

#### Decision Trees & Random Forests

* Decision Tree
* Random Forest
* Labs:
  - Predicting Prosper loan defaults

#### Clustering

* Clustering
* K-Means
* Labs:
  - Predicting Uber demand

#### Best practices for Spark ML

* Writing performant code
* Identifying performance bottlenecks and fixing them
* Writing defensive code
* Common pitfalls to avoid

#### workshops (time permitting)

* Time permitting, the attendees will work as groups to solve a real world ML problem using Spark
* We will discuss the results and learn from them

