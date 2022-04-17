# Machine Learning Primer

---


## Lesson Objectives

<img src="../../assets/images/generic/3rd-party/terminator-2.png" style="width:40%;float:right;"><!-- {"left" : 9.35, "top" : 2.29, "height" : 5.79, "width" : 7.71} -->


 * Learn Machine Learning use cases

 * Understand ML vocabulary

 * Overview of major machine learning algorithms

Notes:




---

# Machine Learning Evolution

---

## Question for Audience

 * Think of something you did today / this week that is AI powered?

Notes:

---
## Demo - Gmail AI Helper

<img src="../../assets/images/deep-learning/3rd-party/Demo-1.png" alt="Demo-1.png" style="width:50%;"/><!-- {"left" : 1.34, "top" : 2.58, "height" : 4.15, "width" : 14.82} -->

<img src="../../assets/images/deep-learning/3rd-party/Demo-2.png" alt="Demo-2.png" style="width:50%;"/><!-- {"left" : 3.18, "top" : 6.35, "height" : 4.77, "width" : 11.14} -->





Notes:


---

# What is Machine Learning?

[ML-What-is-ML.md](ML-What-is-ML.md)

---


## Machine Learning Use Cases

|       Finance       |         Healthcare        |        Retail       |        Manufacturing       |    Network & Security    |
|:-------------------:|:-------------------------:|:-------------------:|:--------------------------:|:------------------------:|
| Fraud Detection     | Diagnosis                 | Recommendations     | Identify defects           | Identify security breach |
| Algorithmic trading | Patient care              | Customer retentions | Fully automated assemblies | Facial recognition       |
| Credit Approvals    | Treatment recommendations |                     |                            |                          &nbsp;|

<!-- {"left" : 0.31, "top" : 3.01, "height" : 1, "width" : 16.93, "columnwidth" : [3.17, 3.61, 3.19, 3.33, 3.64]} -->

---

# A Brief History of AI

[AI-brief-history-compact.md](AI-brief-history-compact.md)

---

## AI Vocabulary

[AI-vocabulary.md](AI-vocabulary.md)

---

# Machine Learning vs. Deep Learning

[ML-vs-DL.md](ML-vs-DL.md)

---

# Machine Learning Algorithms

[ML-Algorithms.md](ML-Algorithms.md)

---

# AI Software Eco System

---

## AI Software Eco System

|             | Machine Learning                        | Deep Learning                            |
|-------------|-----------------------------------------|------------------------------------------|
| Java        | - Weka <br/>- Mahout                    | - DeepLearning4J                         |
| Python      | - SciKit <br/>- (Numpy, Pandas)         | - Tensorflow <br/>- Theano <br/>- Caffe  |
| R           | - Many libraries                        | - Deepnet <br/>- Darch                   |
| Distributed | - H20 <br/>- Spark                      | - H20 <br/>- Spark                       |
| Cloud       | - AWS <br/>- Azure  <br/>- Google Cloud | - AWS  <br/>- Azure  <br/>- Google Cloud |

<!-- {"left" : 0.39, "top" : 2.54, "height" : 1, "width" : 16.72, "columnwidth" : [5.57, 5.57, 5.57]} -->


Notes:




---


## Machine Learning and Big Data

 * Until recently most of the machine learning is done on "single computer" (with lots of memory-100s of GBs)

 * Most R/Python/Java libraries are "single node based"

 * Now Big Data tools make it possible to run machine learning algorithms at massive scale-distributed across a cluster


<img src="../../assets/images/deep-learning/DL-cluster.png" style="width:70%;"><!-- {"left" : 2.67, "top" : 5.81, "height" : 5.16, "width" : 12.15} -->

Notes:


---

## Machine Learning vs. Big Data

| Traditional ML                                 | ML on Big Data                               |
|------------------------------------------------|----------------------------------------------|
| All (or most) data fits into single machine    | Data is distributed across multiple machines |
| Data almost / always in memory                 | Memory is scarce                             |
| Optimized for heavy iterative computes         | Optimized for single pass computes           |
| Maintains state between stages                 | stateless                                    |
| CPU bound                                      | IO bound (disk / network).                   |
| GPU (Graphical Processing Unit) seldom engaged | GPUs are utilized increasingly               |            |

<!-- {"left" : 1.69, "top" : 2.85, "height" : 1, "width" : 14.11} -->



Notes:




---

## Tools for Scalable Machine Learning

<img src="../../assets/images/logos/spark-logo-1.png" style="width:20%;float:right;"><!-- {"left" : 12.75, "top" : 1.89, "height" : 2.3, "width" : 4.31} -->

 *  **Spark ML**
     - Runs on top of popular Spark framework
     - Massively scalable
     - Can use memory (caching) effectively for iterative algorithms
     - Language support: Scala, Java, Python, R

 *  **Cloud Vendors**
     - Ready to go algorithms
     - Visualization tools
     - Wizards to guide
     - Virtually 'unlimited' scale
     - [Amazon Machine Learning](https://aws.amazon.com/machine-learning/), Azure Machine Learning,  Google ML


 <img src="../../assets/images/logos/aws-logo-2.png"  style="width:25%;"/> &nbsp; <!-- {"left" : 1.68, "top" : 9.6, "height" : 1.23, "width" : 5.35} --> <img src="../../assets/images/logos/azure-logo-1.png"  style="width:25%;"/> &nbsp; <!-- {"left" : 7.18, "top" : 9.64, "height" : 1.14, "width" : 3.96} --> <img src="../../assets/images/logos/google-cloud-logo-2.png"  style="width:25%;"/> &nbsp; <!-- {"left" : 11.32, "top" : 9.71, "height" : 1.01, "width" : 4.5} -->




Notes:

* http://www.kdnuggets.com/2016/04/top-15-frameworks-machine-learning-experts.html
* http://www.infoworld.com/article/2853707/machine-learning/11-open-source-tools-machine-learning.html
* https://aws.amazon.com/machine-learning/


---


## Tools for Scalable Deep Learning

<img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:20%;float:right;"/><!-- {"left" : 13.87, "top" : 1.89, "height" : 2.9, "width" : 3.4} -->

 *  **`TensorFlow`**
     - Based on "data flow graphs"
     - "Tensor" = batches of data
     - Language support: Python, C++
     - Run time: CPU, GPU

<br  clear="all"/>

<img src="../../assets/images/logos/bigdl-logo-1.png" style="width:25%;float:right;"/><!-- {"left" : 13.79, "top" : 6.37, "height" : 1.63, "width" : 3.55} -->

 *  **`Intel BigDL`**  

     - Deep learning library
     - Built on Apache Spark
     - Language support: Python, Scala


Notes:

* https://www.tensorflow.org/



---
## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 12.68, "top" : 1.89, "height" : 2.88, "width" : 3.89} -->



* Let's go over what we have covered so far:

* What is Machine Learning and how is it different from regular programming?

* Name a few of Machine Learning use cases

* How does Big Data help Machine Learning?

* What is supervised learning? Unsupervised learning?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.45, "top" : 6, "height" : 5.46, "width" : 8.18} -->


Notes:

---

## Further Reading

- See __ML-Resources__ handout
