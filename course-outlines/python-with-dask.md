# Python with Dask
© Elephant Scale
Oct. 21, 2024


## Overview

* Python has recently become the most popular language.  It excels at data science,
artificial intelligence, and other tasks but is also an outstanding language for
web and service programming and general application development.  

* With Dask, you can do more: Big Pandas Parallel For Loops, Big Arrays, and Machine Learning.

## What you will learn
 * Intermediate Python Language
 * Web Programming
 * Database Programming
 * Data Analysis
 * Visualization
 * Deployment


## Audience
Developers, Architects

## Duration
3 days

## Format
Lectures and hands-on labs. (50%, 50%)

## Prerequisites

 * Some background with Unix or Linux including the command line
 * Python Intro Class

## Lab environment

* A reasonably modern laptop or desktop
* Unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly
* Chrome browser
  - SSH client for your platform


## Detailed Outline


 * Python Basics Review
      - Installing Python
      - Python Versions
      - IDEs
      - Jupyter Notebook
 * NumPy 
      - Introducing NumPy
      - Numpy Arrays and Matrices
 * SciPy
      - Introducing SciPy
      - Using SciPy
 * Stats in Python
      - Statsmodels
      - Doing Stats in Python
 * Visualization 
      - Matplotlib
      - Seaborn
 * Advanced Pandas
      - DataFrames
      - Schema inferences
      - Data exploration
 * Python – DB Programming
      - Database Connectivity
      - Pandas and DB
      - ORM
 * Python – Web Programming
      - Python Web Frameworks
      - Flask
      - Restful API with Flask
 * Python Packages
      - Making Your Own Packages
      - Deployment
      - Environments
 * Python and Containers
      - How to use Containers with Python
      - Dockerizing Python
 * Python - Interop
      - Writing C Modules
      - Using Python with Other Languages
 * Python - Testing
      - TDD and Python
      - Unit test Frameworks
* Dask intro
  - Big Pandas
    - Dask DataFrames use pandas under the hood, so your current code likely just works. It’s faster than Spark and easier too.
  - Parallel For Loops
    - Parallelize your Python code, no matter how complex. Dask is flexible and supports arbitrary dependencies and fine-grained task scheduling.
  - Big Arrays
    - Use Dask and NumPy/Xarray to churn through terabytes of multi-dimensional array data in formats like HDF, NetCDF, TIFF, or Zarr.
  - Machine Learning
    - Use Dask with common machine learning libraries to train or predict on large datasets, increasing model accuracy by using all of your data.

* Optional Dask Deeper Dive
* Dask Scheduler Overview
  - Single-Machine vs Distributed: Introduction to how Dask can scale from a single machine to a distributed cluster. Understanding the difference between the in-memory scheduler and the distributed scheduler. 
* Task Graphs
  * Explanation of Dask’s internal mechanics, using task graphs to handle complex parallel workflows. This could be a key part of explaining Dask’s power beyond simply parallelizing loops. Dask DataFrames (Expanded)
  * Lazy Evaluation: How Dask performs operations lazily until the computation is explicitly requested.
  * Handling Larger-than-Memory Data: Exploring strategies for managing datasets that are too large to fit in memory, including partitioning and out-of-core computation.
  * Integration with Pandas: Deep dive into migrating Pandas code to Dask DataFrames, focusing on how familiar Pandas code translates into Dask.
* Dask Arrays
  * Chunking Mechanism: How Dask divides larger-than-memory arrays into chunks for parallel processing.
  * Comparison with NumPy: Where Dask arrays excel over NumPy, including out-of-core computation, scalability, and ease of use with larger datasets.
  * Dask Delayed
  * Lazy Execution of Custom Workflows: Introduction to dask.delayed, allowing users to parallelize custom Python functions and workflows with minimal code changes.
  * Combining Delayed with Dask DataFrames/Arrays: Showing how dask.delayed can work alongside DataFrames and Arrays to build more complex workflows.
* Dask Futures
  * Real-Time Distributed Computing: Using the futures API for real-time distributed computing across clusters.
  * Fine-Grained Parallelism: Exploring how to use futures for finer-grained control over distributed tasks and computations, including load balancing and adaptive scaling.
* Dask with XGBoost/Scikit-Learn
  * Dask-ML: Integration of Dask with machine learning libraries like XGBoost and Scikit-Learn. Using Dask to scale hyperparameter tuning and cross-validation.
  * Training on Large Datasets: Demonstrating how to train models on data that exceeds memory limits by chunking datasets and distributing training across clusters. 
* Dask-Distributed
  * Deploying Dask Clusters: How to set up and manage distributed Dask clusters locally or on cloud platforms like AWS or GCP.
  * Remote Execution: Using Dask’s distributed scheduler for executing workflows remotely on multiple machines or in the cloud.
* Dask Bag
  * Parallel Processing for Unstructured Data: Introduction to Dask Bag for handling and processing large amounts of unstructured or semi-structured data (like logs, JSON files, or text data).
  * Comparison with Python Iterators: How Dask Bag improves over using standard Python iterators for handling large data volumes. 
* Dask Performance Optimization
   *  Optimizing Task Graphs: Tools and techniques for improving the performance of Dask computations through task graph optimization and resource management.
   * Profiling Dask Workflows: Using the Dask dashboard and profiling tools to monitor and optimize the performance of workflows.
* Dask Integration with Cloud Providers
  *  Dask on AWS/GCP/Azure: Best practices for deploying Dask clusters on popular cloud platforms, handling scaling and cost optimization for distributed workloads.
  *  Using Dask with Cloud Storage: How to leverage cloud object stores like AWS S3 or Google Cloud Storage for handling large datasets.
* Conclusion
 * Scaling from Development to Production: Best practices for scaling Dask from local development environments to production use cases, including distributed cluster setup.
 * Future Trends in Dask: A brief section on emerging features and improvements in the Dask ecosystem, including better machine learning and cloud integrations.
 