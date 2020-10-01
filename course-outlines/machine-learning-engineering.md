# Machine Learning Engineering

(c) Elephant Scale  
2020 Sept 27

## Overview

Machine Learning is all the rage today.  Most ML courses focus on building models.  However, taking the ML models to production 
involves quite a bit of extra work, as illustrated in the diagram below.

This course will teach **Machine Learning Engineering** - the process of productionizing, monitoring and managing ML models.

We will use a cloud environment (Google Cloud or Amazon Cloud or Microsoft Cloud) for our deployment.


![ml-eng-1](images/ml-eng-1.png)\ 

## Learning Path

![ml-eng-1](images/ml-eng-learning-path.png)\ 

## What you will learn:

* ML Engineering overview
* Overview of the AI capabilities of the Cloud Platform of choice
* Storing large data in the cloud
* Processing large data in the cloud using distributed tools
* Training models at scale, using GPUs on the cloud
* Deploying models as webservices
* Logging and tracing of model runtime
* Model metrics
* Setting up alerts
* A/B testing different models
* Updating newer model versions

## Audience:

Data Scientists, DevOps, Data Engineers

## Duration:

Three to four days depending on the coverage

## Format:

Lectures and hands*on labs. (50%, 50%)

## Prerequisites

* Some knowledge in Machine Learning or Deep Learning is highly recommended
  - You may take one of these courses: **'Machine Learning  in Python'**, **'Deep Learning'**
* Some basic knowledge of Python is helpful  
  Our labs utilize Python language. Python is a very easy language to learn. So even you don't have previous exposure to Python, you will be able to complete the labs.

## Lab environment

Students need to have access to the preferred cloud environment, with appropriate permissions and quotas

### Students will need the following

* A cloud account is required
* A reasonably modern laptop
* Unrestricted connection to the Internet.  Laptops with overly restrictive VPNs or firewalls may not work properly

## Detailed outline

### ML Eng Overview

* Machine Learning workflow
* Going from notebooks to production
* Understanding what is involved in ML Eng
* Lab: Getting up and running in the cloud environment

### Cloud Storage

* Bringing data into the cloud
* Data storage options in the cloud
* Ingesting Data
* Lab: Ingesting Data into the cloud

### Cloud Compute

* Understanding different types of compute resources
* Using GPU instances
* Customizing a cloud VM
* Lab: Using cloud VMs

### Training in the cloud with GPUs

* GPU options in the cloud
* Training with a GPU
* Monitoring training using Tensorboard
* Early stopping training when desired accuracy is reached
* Lab: various labs on training

### Creating a Model Service

* Creating a simple web service for serving predictions
* Loading the saved model
* Serving incoming requests
* Error handling
* Running and testing on local environment

### Containerizing the app

* Create a docker file with app artifacts and dependencies
* Building a docker container
* Test the container locally

### Deploying the Container in the Cloud

* Publishing the container to registry
* Deploy the container using Kubernetees
* Testing the deployed application

### Monitoring

* Inspecting application logs
* Monitoring application metrics
* Setting up alerts

### Load Testing the application

* Setting up load testing clients
* Observing application behavior under load
* Verifying load balancer
* Scaling with the load

### A/B Testing of Models

* Splitting traffic between different models
* Observe metrics
* Picking the best model

### Updating model

* Packaging newer model into a container
* Performing a rolling update on running containers
* Exercise rolling back in case of failures

### Final Workshop (Time Permitting)

* Attendees will work in groups to implement a solution end to end.
* They will 'ship' an ML model to the cloud