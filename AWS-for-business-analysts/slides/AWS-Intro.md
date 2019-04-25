# Session: AWS Introduction

---

## Introduction

  * Global Cloud-based products including compute, storage, databases, analytics etc .. with pay-as-you-go pricing

  * Services can be provisioned quickly

  * Provides a highly reliable, scalable, low-cost infrastructure platform in the cloud

<img src="../../assets/images/sagemaker-analyst/aws-overview.jpg" style="width:76%;"/>

---

## AWS Access

  * Management console

  * Command line interface (CLI)

  * Software Developments Kits (SDK)


<img src="../../assets/images/sagemaker-analyst/aws-console-overview.jpg" style="width:76%;"/>

---

## Popular AWS Services
  * Compute
    - **EC2**, EKS, Lambda, Elastic Beanstalk

  * Storage
    - **S3**, EBS, S3 Glacier

  * Database
    - RDS (Mysql, Postgres), Redshift, DynamoDB, DocumentDB

  * Analytics
    - **Athena**, **Glue**, EMR, CloudSerach, Kinesis, QuickSight

  * Machine Learning
    - **SageMaker**, Deeplens, Lex, Textract, Forecast, Rekognition

  * Security
    - **IAM**, Resource Access Manager, Key Management Service

  * Internet Of Things
    - IoT Core, IoT Analytics, IoT Events, Device Management

---

# EC2

  * Provides secure, resizable compute capacity

  * Boot new server instances instantly when required

  * Quickly scale capacity - both up and down

  * Integrated with most AWS services such as S3

  * Provides security and robust network with VPC

---

# S3

  * Object storage service

  * Provides scalability, availability, security and high performance.

  * Easy data organization with access control

  * Affordable price for storage

  * Top level container is a *bucket* and its name should be unique
	- Example URI: s3://first-bucket/

---

## S3 Pricing

|Region                        	|            S3 standard storage           |            Pricing		|
----------------------------------------------------------------------------------------------------
|US East(N.Virginia)           	|            First 50 TB / Month           |            $0.023 per GB|
|                      	      	|            Next 450 TB / Month           |            $0.022 per GB|
|								|            Over 500 TB / Month           |            $0.021 per GB|
|
|US East(Ohio)           		|            First 50 TB / Month           |            $0.023 per GB|
|								|            Next 450 TB / Month           |            $0.022 per GB|
|								|            Over 500 TB / Month           |            $0.021 per GB|
|
|US West(Oregon)          	 	|            First 50 TB / Month           |            $0.023 per GB|
|								|            Next 450 TB / Month           |            $0.022 per GB|
|								|            Over 500 TB / Month           |            $0.021 per GB|
|
|US West(California)           	|            First 50 TB / Month           |            $0.026 per GB|
|								|            Next 450 TB / Month           |            $0.025 per GB|
|								|            Over 500 TB / Month           |            $0.024 per GB|
|
|Asia Pacific(Mumbai)          	|            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Asia Pacific(Osaka-Local)      |            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Asia Pacific(Seoul)           	|            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Asia Pacific(Singapore)        |            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Asia Pacific(Sydney)           |            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Asia Pacific(Tokyo)           	|            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|Canada(Central)           		|            First 50 TB / Month           |            $0.025 per GB|
|								|            Next 450 TB / Month           |            $0.024 per GB|
|								|            Over 500 TB / Month           |            $0.023 per GB|
|
|EU(Frankfurt)           		|            First 50 TB / Month           |            $0.0245 per GB|
|								|            Next 450 TB / Month           |            $0.0235 per GB|
|								|            Over 500 TB / Month           |            $0.0225 per GB|
|
|EU(Ireland)           			|            First 50 TB / Month           |            $0.023 per GB|
|								|            Next 450 TB / Month           |            $0.022 per GB|
|								|            Over 500 TB / Month           |            $0.021 per GB|
|
|EU(London)           			|            First 50 TB / Month           |            $0.024 per GB|
|								|            Next 450 TB / Month           |            $0.023 per GB|
|								|            Over 500 TB / Month           |            $0.022 per GB|
|
|EU(Paris)           			|            First 50 TB / Month           |            $0.024 per GB|
|								|            Next 450 TB / Month           |            $0.023 per GB|
|								|            Over 500 TB / Month           |            $0.022 per GB|
|
|EU(Stockholm)           		|            First 50 TB / Month           |            $0.023 per GB|
|								|            Next 450 TB / Month           |            $0.022 per GB|
|								|            Over 500 TB / Month           |            $0.021 per GB|
|
|South America(Sao Paulo)       |            First 50 TB / Month           |            $0.0405 per GB|
|								|            Next 450 TB / Month           |            $0.039 per GB|
|								|            Over 500 TB / Month           |            $0.037 per GB|							
|							
|AWS GovCloud(US-East)          |            First 50 TB / Month           |            $0.039 per GB|
|								|            Next 450 TB / Month           |            $0.037 per GB|
|								|            Over 500 TB / Month           |            $0.0355 per GB|
|
|AWS GovCloud(US-West)          |            First 50 TB / Month           |            $0.039 per GB|
|								|            Next 450 TB / Month           |            $0.037 per GB|
|								|            Over 500 TB / Month           |            $0.0355 per GB|
|

---

# AWS Identity and Access Management (IAM)

  * Manage secure access to AWS services and resources

  * No extra charges for using IAM

  * Create individual users and credentials instead of providing root access to everyone

  * Create groups that relate to job functions and provide role based access

  * Easy and secure management of credentials

<img src="../../assets/images/sagemaker-analyst/aws-iam-policy.png" style="width:76%;"/>

---
