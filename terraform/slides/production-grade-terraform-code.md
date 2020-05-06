# Production-Grade Terraform Code

## Production Infrastructure is Hard
![](../../assets/images/terraform/design-desk-display-eyewear-313690.jpg)
---
## What's Involved?

* servers
* data stores
* load balancers
* security functionality
* monitoring and alerting tools
* building pipelines
* all the other pieces of your technology that are necessary to run a business
---
## Goals

* Your infrastructure won’t fall over if traffic goes up
* Not lose your data if there’s an outage
* Not allow that data to be compromised when hackers try to break in
* If that is not achieved
    * your company can go out of business.
---
## Estimates
* deploy a service fully managed by a third party
    * such as running MySQL using the AWS Relational Database Service (RDS)
    * __one to two weeks__ to get that service ready for production
* your own stateless distributed app
    * such as a cluster of Node.js apps 
    * they store all their data in RDS
    * on top of an AWS Auto Scaling Group (ASG)
    * about __two to four weeks__ to get ready for production      
---

## Bigger Estimates
* your own stateful distributed app
    * such as an Amazon Elasticsearch (Amazon ES) cluster
    * on top of an ASG and stores data on local disks
    * __two to four months__ to get ready for production
* build out your entire architecture including
    * all of your apps
    * data stores
    * load balancers
    * monitoring
    * alerting
    * security
    * about __6 to 36 months__ of work
        * companies typically closer to six months
        * larger companies typically taking several years
---
## Estimate Summary
![](../../assets/images/terraform/estimate-summary.png)
---

## Plan

* Why it takes so long to build production-grade infrastructure

* The production-grade infrastructure checklist

* Production-grade infrastructure modules

    * Small modules

    * Composable modules

    * Testable modules

    * Releasable modules

    * Beyond Terraform modules
---

                   