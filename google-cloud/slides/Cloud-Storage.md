# Google Cloud Storage

<img src="../../assets/images/logos/google-cloud-storage-logo-1.png" style="width:30%;"/><!-- {"left" : 5.32, "top" : 6.8, "height" : 1.75, "width" : 1.75} -->  

---

## Objectives

- Data storage options in Cloud
- Ingesting Data

---

## Google Cloud Storage

* Pretty much 'unlimited' storage (kilobytes to exabytes)

* Built it data protection (backups, data guarantee ..etc)

* Pay as you use

* Multiple storage classes for any workload


---

## Cloud Storage and Scale Out Processing

* Google storage enables 'scale-out' data processing and computing on Google cloud

* The data can be transferred from 'storage' to 'compute' nodes very fast; over high speed network


<img src="../../assets/images/google-cloud/cloud-storage-and-compute-1.png" style="width:45%;"/>  <!-- {"left" : 1.02, "top" : 3.44, "height" : 4.98, "width" : 8.21} -->  

---

## Data Locality vs. Network Data

<!-- TODO shiva -->

<img src="../../assets/images/hadoop/hadoop-highlevel.png" style="width:35%;float:right;"/>  <!-- {"left" : 1.02, "top" : 3.44, "height" : 4.98, "width" : 8.21} -->  
<img src="../../assets/images/google-cloud/cloud-storage-and-compute-1.png" style="width:35%;float:right;clear:both;"/>  <!-- {"left" : 1.02, "top" : 3.44, "height" : 4.98, "width" : 8.21} -->  

* Hadoop/Spark systems emphasized 'data local' processing

* Works well on high speed networks (1 GB)

* Google built the next gen network for their data centers  using custom hardware, software, network switches ([source](https://cloudplatform.googleblog.com/2015/06/A-Look-Inside-Googles-Data-Center-Networks.html))

* It can deliver more than **1 Petabit/sec** of total bisection bandwidth.

* To put this in perspective,
    - enough for 100,000 servers to exchange information at 10Gb/s each
    - enough to read the entire scanned contents of the Library of Congress in less than 1/10th of a second

---
## Data Locality vs. Network Data

<!-- TODO shiva -->

<img src="../../assets/images/hadoop/hadoop-highlevel.png" style="width:35%;float:right;"/>  <!-- {"left" : 1.02, "top" : 3.44, "height" : 4.98, "width" : 8.21} -->  
<img src="../../assets/images/google-cloud/cloud-storage-and-compute-1.png" style="width:35%;float:right;clear:both;"/>  <!-- {"left" : 1.02, "top" : 3.44, "height" : 4.98, "width" : 8.21} -->  

* **'Data Locality'** (Storage and Compute on same node) works well

* How ever, cluster size is typically fixed.

* It is hard to scale cluster dynamically (scaling from 10 nodes --> to 20 nodes)

* when separating storage & compute, clusters can be scaled dynamicaly

* How ever, this does require a lot of bandwidth (like Petabit/sec!)

---

## Storage Classes

<img src="../../assets/images/google-cloud/3rd-party/google-cloud-storage-classes-1.png" style="width:80%;"/>  <!-- {"left" : 1.04, "top" : 1.25, "height" : 4.03, "width" : 8.17} -->  


- Source: https://cloud.google.com/storage/

---

## Storage Classes

* __Standard Storage:__
    - Frequently accessed data (hot data)
    - 99.99%  availability
* __Nearline Storage:__
    - Infrequently accessed data ( )
    - Suited for archival, backup, long tail media storage
* __Coldline Storage:__
    - Suited for archival
    - Very low cost storage
* __Archival Storage:__
    - Cheapest storage
    - Data stored for legal / regulatory reasons, but not accessed frequently
* Reference : https://cloud.google.com/storage/

---

## Pricing

* Prices vary according amount of data / discounts ..etc.  The following will give you some idea

* Storage fees

|          | Standard Storage | Nearline | Coldline | Archival |
|----------|------------------|----------|----------|----------|
| TB/Month | $26              | $10      | $7       | $4       |

<!-- {"left" : 0.25, "top" : 3.13, "height" : 1.19, "width" : 9.75} -->  

<br />

* Egress / Ingress fees
    - Within same region: FREE
    - Across region: ~ 1c / GB

---

## Encryption

* Data is __always encrypted on server side__ before written to disk

* This is known as __encrypt data at rest__

* Uses AES-256 bit encryption

* Google manages encryption keys (proven and hardened)

<img src="../../assets/images/google-cloud/cloud-storage-encryption-1.png" style="width:80%;"/>  <!-- {"left" : 1.02, "top" : 4.72, "height" : 2.71, "width" : 8.21} -->  


---

## Client Side Encryption

* A client can encrypt data before sending to Google Cloud Storage

* When Cloud receives the data, it encrypts it the second time  (server side encryption)

* Clients must manage its own encryption keys

<img src="../../assets/images/google-cloud/cloud-storage-encryption-2.png" style="width:80%;"/>  <!-- {"left" : 0.63, "top" : 4.24, "height" : 3.22, "width" : 8.99} -->  


---

## Storage Buckets

* The main storage container on Cloud Storage is called a bucket

* Stores Binary Large Objects (blobs) on the cloud

* Bucket naming conventions
    - Every bucket name must be unique globally
    - Bucket names are publicly visible.  So don't use sensitive names like 'acme-company-deal-with-company-X'
    - 3-63 characters, DNS friendly
    - Reference : https://cloud.google.com/storage/docs/naming#requirements


Notes:


---


## Ingesting Data into the Cloud


* There are multiple ways to upload data into Cloud storage (depending on the use case)

* Direct upload using the GCP console
    - Works well for small / medium data

* Using the Cloud Shell to upload data into the bucket using the command outline
    - To ingest large datasets

* Transfer data from another cloud storage
    - Bulk transfer

Notes:

---

## Ingesting Large Amount of Data

<img src="../../assets/images/google-cloud/cloud-storage-transfer-1.png" style="width:50%;"/>  <!-- {"left" : 2.45, "top" : 1.32, "height" : 3.49, "width" : 5.35} -->  


* For large data ingests we recommend a 'direct transfer  ( C )'
* Because you will have much greater bandwidth point-to-point
* Downloading large amount of data to laptop and uploading back to Google Storage might be very slow

---

## Cloud Storage Utility Reference

* The Cloud Storage utility is: __`gsutil`__

* Reference: https://cloud.google.com/storage/docs/gsutil

* The following commands can work on Cloud Shell (recommended) or your laptop (if setup correctly)

```bash

# To get help
$   gsutil

# To see buckets
$   gsutil ls
$   gsutil ls  gs://bucket_name/dir_name

# To create a bucket
$   gsutil  mb  gs://bucket_name

# To copy files into a bucket
$   gsutil  cp  <files to copy>  gs://bucket_name/dir_name  
$   gsutil  cp  flights-*.csv  gs://bucket_name/flights/

# To download files from bucket
$   gsutil  cp  'gs://bucket_name/flights/*' .


```

<!-- {"left" : 0, "top" : 3.26, "height" : 4.64, "width" : 10.12} -->  


---

## Lab: Ingesting Data into Google Cloud

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Upload data into Google Cloud Storage


* **Approximate time:**
    - 30 mins

* **Instructions:**
    - Please follow instructions for
    - **Storage-1: Uploading data using Console**
    - **Storage-2: Uploading data using Cloud Shell**


Notes:

---
## Lab: Scheduling Data Ingest

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Schedule data ingest into Google Cloud Storage


* **Approximate time:**
    - 20 mins

* **Instructions:**
    - Please follow instructions for
    - **Storage-3: Schedule Ingest**


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


- Let's go over what we have covered so far

- Any questions?


<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
