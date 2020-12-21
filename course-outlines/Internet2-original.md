# Machine Learning Engineering

(c) Elephant Scale  
November 22, 2020

## Overview

Machine Learning and AI are all the rage today.  Most ML courses focus on building models.  However, 
taking the ML models to production 
involves quite a bit of extra work, as illustrated in the diagram below.

This course will teach **Machine Learning Engineering** - the process of productizing, monitoring and managing ML model pipelines.

We will use a cloud environment (Google Cloud or Amazon Cloud or Microsoft Cloud, the choice is up to the client)
for our deployment.

[Outline - working document](https://docs.google.com/document/d/1KnAvZqVz0KgaOyleseg8X__cyaYPdvsrpEp6apbiUFE/edit)

[Shared folder](https://drive.google.com/drive/folders/1RFXuxdSfpQr85x5oR35QyQatwYx1AqQc)

![ml-eng-1](images/ml-eng-1.png)\ 

## Learning Path

![ml-eng-1](images/ml-eng-learning-path.png)\ 

## What you will learn:

* ML Engineering overview
* Overview of the AI capabilities for the cloud platform of your choice
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
    * (however, an introduction will be provided if needed)  
* Some basic knowledge of Python is helpful  
    * Most ML labs today utilize Python language. Python is an easy language to read. So even you don't have previous exposure to Python, you will be able to complete the labs.

## Lab environment

* Students need to have access to the preferred cloud environment, with appropriate permissions and quotas

### Students will need the following

* A cloud account is recommended, but alternative arrangements can be provided
* A reasonably modern laptop
* Unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly

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
* Monitoring training using TensorBoard
* Early stopping training when desired accuracy is reached
* Lab: various labs on training

### Creating a Model Service

* Creating a simple web service for serving predictions
* Loading the saved model
* Serving incoming requests
* Error handling
* Running and testing on local environment
* Lab: training and deploying a model

### Containerizing the app

* Create a docker file with app artifacts and dependencies
* Building a docker container
* Test the container locally
* Lab: Docker basics

### Deploying the Container in the Cloud

* Publishing the container to registry
* Deploy the container using Kubernetes
* Testing the deployed application
* Lab: Kubernetes deployment

### Monitoring

* Inspecting application logs
* Monitoring application metrics
* Setting up alerts
* Lab: monitoring in the cloud

### Load-testing the application

* Setting up load testing clients
* Observing application behavior under load
* Verifying load balancer
* Scaling with the load
Lab: stress-testing an application

### A/B Testing of Models

* Splitting traffic between different models
* Observe metrics
* Picking the best model
* Lab: Google Anthos deployment

### Updating your model

* Packaging newer model into a container
* Performing a rolling update on running containers
* Exercise rolling back in case of failures

### Final Workshop (Time Permitting)

* Attendees will work in groups to implement a solution end to end.
* They will 'ship' an ML model to the cloud