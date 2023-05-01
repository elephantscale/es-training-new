# Google Cloud Spanner

<img src="../../assets/images/logos/google-cloud-spanner-logo.png" style="white;width:30%;"/><!-- {"left" : 5.1, "top" : 6.2, "height" : 2.18, "width" : 2.18} -->



---

## About This Class

* Introduction to Cloud Spanner

* Cloud Spanner Vs. Cloud SQL

* Using Cloud Spanner

---

## Cloud Spanner?

* A fully managed relational database that is designed to scale horizontally across multiple regions and continents while maintaining high availability and strong consistency.

* It is a distributed system that allows you to store and manage structured data, with ACID transactions and SQL-like queries.

---

## Scaling

* Unique in its ability to scale horizontally across multiple regions,

* allows you to distribute your data across the globe while maintaining strong consistency.

### Cloud SQL?

* IT is s a traditional relational database that scales vertically by increasing the size of the machine it runs on.

---

## Strong Consistency

* Is designed to provide strong consistency, which means that data is always up-to-date and consistent across all nodes in the system.

* This makes it a good choice for applications that require highly consistent data, such as financial systems or e-commerce platforms.

### Cloud SQL?

* Provides eventual consistency, which means that data may not be immediately consistent across all nodes in the system.

---

## Availability

Cloud Spanner is available globally, with multiple regions and zones that allow you to store and access your data from anywhere in the world.

### Meaning?

This is ideal for applications that need to serve a global user base.

### Cloud SQL?

Is only available in certain regions, which may limit its use in some scenarios.

---

## Automatic Sharding

Cloud Spanner automatically shards your data across multiple nodes in the system,

Makes it **easy** to scale your database as your application grows.

### Cloud SQL?

Does not offer automatic sharding, You may need to manually shard your data as your application scales.

---

## Pricing

Cloud Spanner is priced based on the amount of storage, network bandwidth, and compute resources you use.

**You only pay for what you use**

and you can scale up or down as needed.

### Cloud SQL?

Cloud SQL is also priced based on usage, but it may be less flexible than Cloud Spanner in terms of pricing since it uses CE.

---

## Backup and Recovery

Offers built-in backup and recovery features,

Makes it **easy** to recover your data in case of a disaster or data loss.

### Cloud SQL?

Also offers backup and recovery, but it may not be as flexible or robust as Cloud Spanner.

---

## Security

Both Cloud Spanner and Cloud SQL offer strong security features, such as encryption at rest and in transit, and IAM access controls.

### However

Cloud Spanner also offers built-in compliance with regulatory requirements, such as PCI DSS and HIPAA.


---

## Use Cases

Ideal for applications that require highly consistent, globally available data, such as financial systems, e-commerce platforms, and gaming applications.

### Cloud SQL?

A good choice for applications that require a traditional relational database, such as content management systems, blogs, and simple web applications.


---

## Conclusion

Cloud Spanner and Cloud SQL are both powerful relational databases that offer different features and benefits. 

**Cloud Spanner** is a good choice for applications that require highly consistent, globally available data, 

while Cloud SQL is a good choice for applications that require a traditional relational database. 

### Ultimately
The choice between Cloud Spanner and Cloud SQL will depend on your specific use case and requirements.

---

## Lab: Working With Cloud Spanner

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Work and setup Cloud Spanner

* **Approximate run time:**
  - 60 mins

* **Instructions:**
  - Follow instructions for **QW** lab

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
