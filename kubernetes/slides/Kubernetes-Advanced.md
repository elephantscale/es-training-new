Kubernetes: Advanced
===================

## Module Objectives

After this module, participants will be able to:

  * Review what Kubernetes is

  * Identify DNS for Services and Pods

  * Service Discovery & Load balancing

  * Understand Kubernetes networking

  * Implement charts using Helm

  * Implement Ingress load balancing.

Notes:

Instructor Notes :

Please let students know that in addition to the objectives they identified for themselves in taking this module, these are the ones we expect to achieve based on the material provided.

Participant Notes :

In addition to the objectives you identified in taking this module, these are the ones we expect to achieve based on the material provided.

---


## Autoscaling During Rolling Update


  * **Discovery**

    - Services need to discover each other dynamically, to get IP addresses and port details to communicate with other services in the cluster
    - Service Registry maintains a database of services and provides an external API (HTTP/DNS) as a distributed key/value store
    - Registrator registers services dynamically to the Service registry by listening to the Service creation and deletion events


  * **Health Check**

     - Monitors Service instance health dynamically and updates the Service registry accordingly


  * **Load Balancing**

    - Dynamic load balancing of traffic to healthy instances that provide the target service

Notes:

Instructor Notes :

Participant Notes :

The registry serves as a place to publish available services – think like a 'yellow pages'.
For example a service that offers zipcode lookup can be advertised in the registry, that can be discovered by other services.

A health check is performed every few seconds on the containers.
This ensures the containers are alive and running.

Load balancing is explained in slide no. 42. 


---

## Lab 5: Orchestrating the cloud with the Kubernetes


  * **Overview**

    - Kubernetes is all about applications. In this part of the lab you will use an example application called "app" to complete the labs.

  * **In this lab you will learn how to :**

   - Provision a complete  cluster using Kubernetes
   - Deploy and manage Docker containers using kubectl.
   - Break an application into microservices using Kubernetes' Deployments and Services.



Notes:

---

## Lab 5: Orchestrating the cloud with the Kubernetes

  * Approximate time:

    - 20-30 minutes

  * Link to the lab

    - https://www.qwiklabs.com/focuses/557?parent=catalog

Notes:

---

# Helm

## Helm - Introduction

  * Helm is a tool that streamlines installing and managing Kubernetes applications.

  * Helm has two parts: a client (helm) and a server (tiller)

  * Tiller runs inside of your Kubernetes cluster, and manages releases (installations) of your charts.

  * Helm runs on your laptop, CI/CD, or wherever you want it to run.

  * Charts are Helm packages that contain at least two things:

  * A description of the package (Chart.yaml)

  * One or more templates, which contain Kubernetes manifest files

  * Charts can be stored on disk, or fetched from remote chart repositories (like Debian or RedHat packages)

Notes:

---

## Helm - Introduction

  * Helm helps you manage Kubernetes applications

  * Helm Charts helps you define, install, and upgrade even the most complex Kubernetes application.

  * Charts are easy to create, version, share, and publish

  * The latest version of Helm is maintained by the CNCF - in collaboration with Microsoft, Google, Bitnami and the Helm contributor community.



Notes:

---

## Uses of Helm

  * Helm is used to :

    - Find and use popular software packaged as Helm charts to run in Kubernetes
    - Share your own applications as Helm charts
    - Create reproducible builds of your Kubernetes applications
    - Intelligently manage your Kubernetes manifest files
    - Manage releases of Helm packages


Notes:

---

## Architecture

  * There are three main components of Helm :

    - The **chart** is a bundle of information necessary to create an instance of a Kubernetes  application.
    - The **config** contains configuration information that can be merged into a packaged chart to create a **releasable** object.
    - A release is a running instance of a chart, combined with a specific **config**.


Notes:

---

## Architecture


  * Helm has two major components: Helm Client and Tiller Server

  * **The Helm Client** is a command-line client for end users.

  * The client is responsible for the following domains:
    - Local chart development
    - Managing repositories
    - Interacting with the Tiller server
       - Sending charts to be installed
       - Asking for information about releases
       - Requesting upgrading or uninstalling of existing releases

Notes:

---

## Architecture

  * **The Tiller Server** is an in-cluster server that interacts with the Helm client, and interfaces with the Kubernetes API server.

  * The server is responsible for the following:

    - Listening for incoming requests from the Helm client
    - Combining a chart and configuration to build a release
    - Installing charts into Kubernetes, and then tracking the subsequent release
    - Upgrading and uninstalling charts by interacting with Kubernetes

Notes:

---

## Implementation

  * The Helm client is written in the Go programming language, and uses the gRPC protocol suite to interact with the Tiller server.

  * The Tiller server is also written in Go. It provides a gRPC server to connect with the client, and it uses the Kubernetes client library to communicate with Kubernetes. Currently, that library uses REST+JSON.

  * The Tiller server stores information in ConfigMaps located inside of Kubernetes. It does not need its own database.

  * Configuration files are, when possible, written in YAML


Notes:

---

## Helm Charts


  * Helm uses a packaging format called charts. A chart is a collection of files that describe a related set of Kubernetes resources.

  * A single chart might be used to deploy something simple, like a memcached pod, or something complex, like a full web app stack with HTTP servers, databases, caches, and so on.

  * Charts are created as files laid out in a particular directory tree, then are packaged into versioned archives to be deployed.

Notes:

---

## Helm Charts and versioning

  * Every chart must have a version number.

  * A version must follow the SemVer 2 standard.

  * Unlike Helm Classic, Kubernetes Helm uses version numbers as release markers. Packages in repositories are identified by name plus version.

  * For example, an nginx chart whose version field is set to version: 1.2.3 will be named:

```python
nginx-1.2.3.tgz
```


Notes:

---