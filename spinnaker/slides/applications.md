# Applications

---

## Application
 * An application is a service that you are going to deploy 
   - Typically a Microservice
 * In Spinnaker, we will define the application

---

## Application
 * Applications include the following:
 * Pipelines that process the service in deployment
 * Infrastructure
   - clusters
   - server groups
   - firewalls
   - load balacners
   - canary config

---

## System Applications
 * You might see "system" applications

![](../../assets/images/spinnaker/system-applications.png)

---


## Create the Application

 * In Spinnaker, an "Application" is basically a grouping of pipelines and the resources deployed by those pipelines.  An Application can group any set of related resouces, and can group objects across multiple cloud targets (and cloud target types).  Common ways to organize services are:
* One application for each microservice
* One application for a set of microservices that make up a single cohesive business function
* One application for each team


---

## Log Into UI

. Log into the Spinnaker UI.

![](../../assets/images/spinnaker/minnaker-login2.png)


## Create Applicaiton


 * Click on "Applications"
 * Click on "Actions" and then "Create Application"
 * Call the application "hello-today" and put in your email address in the "Owner Email" field.

![](../../assets/images/spinnaker/new-application.png)






