# Data in the Cloud

<img src="../../assets/images/logos/google-cloud-logo-2.png" style="white;width:40%;"/>  

---

## Objectives

- Data storage options in Cloud
- Ingesting Data
- Scheduling data ingestion

---

## Why Cloud Storage?

- There are several ways to use the Google Cloud Platform's various tools with your data

- Scaling up and scaling out are compatible with GCP but either require large amounts of storage space, large amounts of compute power or access to multiple machines

- Additionally, we can store data in situ on Cloud Storage and take advantage of their fast networking and cluster-wide filesystem

---

## Cloud Storage Options

- The main storage container on Cloud Storage is called a bucket

- Stores Binary Large Objects (blobs) on the cloud

- There are different location types for storage of your bucket based on accessibility and performance needs: Region (single region), Multi-Region, and Dual-Region

- Permissions can be changed to allow for public access and access by other GCP tools


Notes:



---

## Data in the Cloud

- We need to store our data in Cloud Storage in situ just as you would store data locally to use it in analysis and modeling

- Then we can run our operations and Compute instances using the data stored in the cloud

- Before we can work with our data using GCP tools, we will ingest it into the Cloud Storage



Notes:


---

## Ingesting Data into the Cloud

-  We will need to create a bucket in Cloud Storage tied to a GCP project

- There are multiple ways to upload data into Cloud storage:

- Direct upload using the GCP console

- Using the Cloud Shell to upload data into the bucket using the command outline

- The creation of a Cloud Function that is called periodically by the Cloud Scheduler that makes a request or does a operation to move more data into the bucket

- These different options allow for various ways to pull data into the GCP for a wide range of computations and operations


Notes:

---
## Labs

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**

 - We will step through 3 different ways of uploading data into Cloud Storage

 1. Manual upload of data into bucket.  
 2. Use of Cloud Shell to transfer data into the bucket using the command line.  
 3. Creation of a Cloud Function and Cloud Scheduler to make requests and upload the data periodically

* **Approximate time:**
    - 45 mins

* **Instructions:**
    - Please complete the following 3 labs in order:
    1. Data in the Cloud Lab
    2. Setting up Cloud Shell Lab Data
    3. Ingestion Using the Cloud Shell Lab


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


- Let's go over what we have covered so far

- Any questions?


<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
