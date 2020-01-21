# Google App Engine

<<<<<<< HEAD
 <img src="../../assets/images/logos/google-cloud-logo-2.png" style="white;width:40%;"/>   
=======
 <img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:15%;"/>  <!-- {"left" : 5.25, "top" : 6.52, "height" : 1.61, "width" : 1.89} -->    &nbsp; &nbsp;
>>>>>>> b3e5b5029a06ef7eadd5114d567d69ee1855c014

---

## Objectives
- Introduction to Google App Engine
- Scaling up and out
- Writing apps

---

## Introduction

- App Engine is Google's application platform



- Fully managed and hosted on the Google Cloud platform



- Easy to build and deploy application



- No need to manage infrastructure of application


- Application infrastructure hosted in a specific region


Notes:

---

## Key Features

- Many popular languages supported

- Allows for custom runtimes with Docker containers

- Allows for different libraries

- Fully managed infrastructure

- Multiple app versions existing at once

- Splitting requests between different app versions

Notes:

---

## App Engine Environments

- Two different options for applications

- Standard Environment
    - Application run in sandbox

    - Can handle rapid scaling

    - Must use runtime environment of a supported language

    - Can run at low cost or no cost. Application can scale to 0 when traffic is not expected






Notes:


---
## App Engine Environments

- Flexible Environment
    - Application run within a Docker container on virtual machine on Compute Engine

    - Can handle consistent traffic, deal with traffic fluctuations, or scale up and down gradually

    - Can use a custom runtime or code written in a non-supported language but must be in a Docker container

    - Uses resources of project in Compute Engine.





Notes:


---

## Standard Supported Languages

- In the Standard Environment, the following languages are supported as runtime environment languages

- Go

- PHP

- Java

- Python (Most important to this course)

- Node.js

- Ruby

Notes:


---
## Python Web Frameworks

- Many of the popular Python web frameworks are supported
    - Django
    - CherryPy
    - Pyramid
    - Flask,
    - web2py
    - webapp2
- Python third-party libraries can also be used but must be uploaded with application source code



Notes:


---
## Components of an application

- An application resource is tied to a specific Google Cloud Project

- The application is a container that has the service, version, and instance resource

- Application resources are created in a specified Region

- App uploaded with code, settings, credentials and metadata

- Every application has at least the default service but different services can be deployed to split a large app into parts


<img src="../../assets/images/data-science-gcp/3rd-party/app-engine-1.png" style="white;width:40%;"/>   

Notes:
Source: https://cloud.google.com/appengine/docs/standard/python3/an-overview-of-app-engine
---
## Components of an application

- Versions:
  - Multiple versions of apps are supported.
  - Traffic can be routed to certain versions or split between them
  - Allows for easy testing and rollback

- Instances  
  - Versions run on Instances
  - App Engine will scale app to match traffic Loading
  - Scale up: increases number of instances to mantain performance
  - Scale down: reduce amount of inactive instances and minimize costs


Notes:

---

## Components of an application

- Versions:
  - Multiple versions of apps are supported.
  - Traffic can be routed to certain versions or split between them
  - Allows for easy testing and rollback

- Instances  
  - Versions run on Instances
  - App Engine will scale app to match traffic Loading
  - Scale up: increases number of instances to mantain performance
  - Scale down: reduce amount of inactive instances and minimize costs


Notes:

---
## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


- Let's go over what we have covered so far

- Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
