# Machine Learning Primer

---


## Lesson Objectives

<img src="../../assets/images/generic/3rd-party/terminator-2.png" style="width:40%;float:right;"><!-- {"left" : 5.3, "top" : 1.23, "height" : 3.54, "width" : 4.72} -->


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

<img src="../../assets/images/deep-learning/3rd-party/Demo-1.png" alt="Demo-1.png" style="width:50%;"/><!-- {"left" : 0.1, "top" : 1.92, "height" : 2.82, "width" : 10.06} -->

<img src="../../assets/images/deep-learning/3rd-party/Demo-2.png" alt="Demo-2.png" style="width:50%;"/><!-- {"left" : 1.35, "top" : 4.48, "height" : 3.24, "width" : 7.56} -->




Notes:


---

## Why Machine Learning Matters?

<img src="../../assets/images/deep-learning/3rd-party/video-ml-basics-google.png" alt="video-ml-basics-google.png" style="width:60%;"/><!-- {"left" : 0.88, "top" : 1.34, "height" : 4.42, "width" : 8.49} -->


[Link](https://www.youtube.com/watch?v=HcqpanDadyQ)

Notes:

https://www.youtube.com/watch?v=HcqpanDadyQ

---

## Hype Cycle

 * **Question for the class:**  
   - Where do you think AI is in this cycle? :-)

<img src="../../assets/images/deep-learning/Gartner-Hype-Cycle.png" alt="Gartner-Hype-Cycle.png" style="background:white;width:55%;"/><!-- {"left" : 1.23, "top" : 2.93, "height" : 5.06, "width" : 7.8} -->


Notes:
- https://en.wikipedia.org/wiki/Hype_cycle

---

## What is  Machine Learning

* **"The field of study that gives computers the ability to learn without being explicitly programmed."**  
 -- Arthur Samuel

<img src="../../assets/images/people/Arthur-Samuel.png" alt="Arthur-Samuel.png" style="width:20%;float:right;"/><!-- {"left" : 7.41, "top" : 1.1, "height" : 3.71, "width" : 2.63} -->

* Example: Self-driving cars
    - Historical approach:  
    Write a massive program to instruct the car to handle all possible scenarios encountered while driving
        - This is immensely difficult

    - AI approach:  
        - Let AI learn by observing the scenery and your  reactions
        - Once it learnt enough, let the AI predict the next reaction for a scenary



Notes:


---

## Spam Detection - Traditional (Rule Based) Approach

* Here is an example of spam detection rule engine

* The rules are coded by developers

* There could be 100s of 1000s of rules!

```java

if (email.from_ip.one_of("ip1", "ip2", "ip3")) {
  result = "no-spam"
}
else if ( email.text.contains ("free loans", "cheap degrees"))
{
  result = "spam"
}

```
<!-- {"left" : 0, "top" : 2.81, "height" : 1.98, "width" : 10.25} -->

Notes:




---

## Spam Detection - AI Approach


 * Show the algorithm with spam and non-spam emails

 * Algorithm 'learns' which attributes are indicative of spam

 * Then algorithm predicts spam/no-spam on new email

<img src="../../assets/images/deep-learning/AI-Approach.png" alt="AI-Approach.png" style="width:55%;"/><!-- {"left" : 0.96, "top" : 3.83, "height" : 4.16, "width" : 8.33} -->


Notes:


---

## How is AI Different from Rule Based Systems

 * Rule based systems are static
    - They are programmed in
    - They don't learn from data

 * AI can learn from data
     - It gets better every day with more data it sees

<img src="../../assets/images/machine-learning/ML-vs-Rule-Based-Systems-2.png" alt="Rule-Based-Systems.png" style="width:55%;"/><!-- {"left" : 0.78, "top" : 4.13, "height" : 3.28, "width" : 8.7} -->


Notes:

---

## Machine Learning Use Cases

|       Finance       |         Healthcare        |        Retail       |        Manufacturing       |    Network & Security    |
|:-------------------:|:-------------------------:|:-------------------:|:--------------------------:|:------------------------:|
| Fraud Detection     | Diagnosis                 | Recommendations     | Identify defects           | Identify security breach |
| Algorithmic trading | Patient care              | Customer retentions | Fully automated assemblies | Facial recognition       |
| Credit Approvals    | Treatment recommendations |                     |                            |                          &nbsp;|

<!-- {"left" : 0.1, "top" : 1.17, "height" : 3.08, "width" : 10.05, "columnwidth" : [1.88, 2.14, 2.23, 1.94, 1.86]} -->

---

# A Brief History of AI

[AI-brief-history.md](AI-brief-history.md)

---

## AI Vocabulary

[AI-vocabulary.md](AI-vocabulary.md)

---

# Machine Learning vs. Deep Learning

[ML-vs-DL.md](ML-vs-DL.md)



---

## AI Software Eco System

|             | Machine Learning                        | Deep Learning                            |
|-------------|-----------------------------------------|------------------------------------------|
| Java        | - Weka <br/>- Mahout                    | - DeepLearning4J                         |
| Python      | - SciKit <br/>- (Numpy, Pandas)         | - Tensorflow <br/>- Theano <br/>- Caffe  |
| R           | - Many libraries                        | - Deepnet <br/>- Darch                   |
| Distributed | - H20 <br/>- Spark                      | - H20 <br/>- Spark                       |
| Cloud       | - AWS <br/>- Azure  <br/>- Google Cloud | - AWS  <br/>- Azure  <br/>- Google Cloud |

<!-- {"left" : 0.25, "top" : 1.25, "height" : 4.53, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->


Notes:




---


## Machine Learning and Big Data

 * Until recently most of the machine learning is done on "single computer" (with lots of memory-100s of GBs)

 * Most R/Python/Java libraries are "single node based"

 * Now Big Data tools make it possible to run machine learning algorithms at massive scale-distributed across a cluster


<img src="../../assets/images/deep-learning/DL-cluster.png" style="width:70%;">

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

<!-- {"left" : 0.25, "top" : 1.48, "height" : 3.88, "width" : 9.75} -->



Notes:




---

## Tools for Scalable Machine Learning

<img src="../../assets/images/logos/spark-logo-1.png" style="width:20%;float:right;"><!-- {"left" : 7.64, "top" : 1.04, "height" : 1.3, "width" : 2.44} -->

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


 <img src="../../assets/images/deep-learning/3rd-party/amazon-logo.png" alt="amazon-logo.png" style="width:25%;"/> &nbsp; <!-- {"left" : 0.18, "top" : 7.52, "height" : 0.86, "width" : 3.74} --> <img src="../../assets/images/deep-learning/3rd-party/azure-logo.png" alt="azure-logo.png" style="width:25%;"/> &nbsp; <!-- {"left" : 4.03, "top" : 7.55, "height" : 0.8, "width" : 2.77} --> <img src="../../assets/images/deep-learning/3rd-party/google-cloud.png" alt="google-cloud.png" style="width:25%;"/> &nbsp; <!-- {"left" : 6.92, "top" : 7.6, "height" : 0.71, "width" : 3.15} -->




Notes:

* http://www.kdnuggets.com/2016/04/top-15-frameworks-machine-learning-experts.html
* http://www.infoworld.com/article/2853707/machine-learning/11-open-source-tools-machine-learning.html
* https://aws.amazon.com/machine-learning/


---


## Tools for Scalable Deep Learning

<img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:20%;float:right;"/><!-- {"left" : 7.58, "top" : 1.07, "height" : 2.02, "width" : 2.37} -->

 *  **`TensorFlow`**
     - Based on "data flow graphs"
     - "Tensor" = batches of data
     - Language support: Python, C++
     - Run time: CPU, GPU

<br  clear="all"/>

<img src="../../assets/images/logos/bigdl-logo-1.png" style="width:25%;float:right;"/><!-- {"left" : 7.52, "top" : 4.71, "height" : 1.14, "width" : 2.48} -->

 *  **`Intel BigDL`**  

     - Deep learning library
     - Built on Apache Spark
     - Language support: Python, Scala


Notes:

* https://www.tensorflow.org/



---

# Machine Learning Algorithms

[ML-Algorithms.md](ML-Algorithms.md)

---
# Use Cases and Demos

<img src="../../assets/images/logos/uber-logo-1.png" style="width:15%;"/>  <!-- {"left" : 2.97, "top" : 7.55, "height" : 1.23, "width" : 1.69} -->    &nbsp; &nbsp;
 <img src="../../assets/images/logos/photobucket-logo-1.png" style="width:15%;"/>  <!-- {"left" : 5.29, "top" : 8.34, "height" : 0.44, "width" : 2.31} -->    &nbsp; &nbsp;
<img src="../../assets/images/logos/staples-logo.png" style="white;width:15%;"/>  <!-- {"left" : 8.29, "top" : 8.46, "height" : 0.34, "width" : 1.71} -->



---

## Use Case 1: Uber driver verification

- To increase passenger safety, Uber drivers have to verify their identity before accepting rides

- Uber uses [Microsoft Cognitive Services](https://azure.microsoft.com/en-us/services/cognitive-services/) to recognize 7 million+ drivers in milli seconds

- [Link](https://venturebeat.com/wp-content/uploads/2016/09/uberids.gif?resize=343%2C600&strip=all)

<img src="../../assets/images/logos/uber-logo-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="20%" />&nbsp;&nbsp;<!-- {"left" : 1.59, "top" : 4.9, "height" : 1.42, "width" : 1.95} --><img src="../../assets/images/deep-learning/3rd-party/uber-rides-2.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="30%" />&nbsp;&nbsp;<!-- {"left" : 3.91, "top" : 4.78, "height" : 1.64, "width" : 2.93} --><img src="../../assets/images/deep-learning/3rd-party/uber-rides-1.gif" alt="XXX image missing" style="background:white;max-width:100%;" width="15%" /><!-- {"left" : 7.19, "top" : 4.33, "height" : 2.56, "width" : 1.46} -->



---

## Use Case 2: Photobucket

- [Photobucket](http://photobucket.com/) is a image / video hosting service

- They want to identify and tag NSFW (Not Safe For Work) images and offensive images

- Previously, their human moderation team was only able to monitor about 1% of content

- Now AI system (Using [Clarify](https://www.clarifai.com/)), screens images and tags them properly.  
Illegal images (child pornography ..etc) are flagged for law enforcement

- [Link](https://blog.clarifai.com/how-photobucket-uses-image-recognition-to-protect-its-community-from-unwanted-content)

<img src="../../assets/images/logos/photobucket-logo-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="40%;"/> &nbsp; &nbsp; <!-- {"left" : 1.21, "top" : 6.23, "height" : 0.74, "width" : 3.9} --><img src="../../assets/images/logos/clarifai-logo.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%" /><!-- {"left" : 6.11, "top" : 6.29, "height" : 0.62, "width" : 2.93} -->


Notes:  
- https://blog.clarifai.com/how-photobucket-uses-image-recognition-to-protect-its-community-from-unwanted-content

---

## Clarifai Demo

- Go to: https://clarifai.com/demo

- Upload an image (or give a image URL)

- Examine the output.  
Have fun :-)

<img src="../../assets/images/deep-learning/3rd-party/clarifai-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="50%;"/><!-- {"left" : 1.83, "top" : 3.43, "height" : 4.21, "width" : 6.58} -->


Notes:  
https://clarifai.com/demo

---

## Wrap up & Any Questions?

## Review Questions


 * What is Machine Learning and how is it different from regular programming?

 * Name a few of Machine Learning use cases

 * How does Big Data help Machine Learning?

 * What is supervised learning? Unsupervised learning?

Notes:




---

## Further Reading


 * [Great AI Awakening](https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html) - New York Times profile of on Google Brain and the people behind it

 * [Gentle Intro to Machine Learning](https://monkeylearn.com/blog/a-gentle-guide-to-machine-learning/)

 * [Machine Learning Basics](https://www.analyticsvidhya.com/blog/2015/06/machine-learning-basics/)

Notes:

* https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html
* https://monkeylearn.com/blog/a-gentle-guide-to-machine-learning/
* https://www.analyticsvidhya.com/blog/2015/06/machine-learning-basics/

---

## Resources

* [Neural networks and deep learning](https://learning.oreilly.com/library/view/neural-networks-and/9781492037354/)  
by  Aurélien Géron (ISBN: 9781492037347)

* [Hands-on Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2nd Edition](https://learning.oreilly.com/library/view/hands-on-machine-learning/9781492032632/)  
by  Aurélien Géron (ISBN: 9781492032649)

<img src="../../assets/images/books/book-9781492037347-neural-networks-and-deep-learning.jpeg" alt="keras book1" style="width:17%;"/>&nbsp;&nbsp;<!-- {"left" : 2.78, "top" : 4.55, "height" : 3.15, "width" : 2.09} -->
<img src="../../assets/images/books/book-9781492034841-practical-deep-learning-for-cloud-and-mobile.jpg" alt="keras book4" style="width:19.5%;"/><!-- {"left" : 5.18, "top" : 4.55, "height" : 3.15, "width" : 2.4} -->

---

## Resources

* [Deep Learning](https://learning.oreilly.com/library/view/deep-learning/9781491924570/)  
by by Adam Gibson, Josh Patterson(ISBN: 9781491914250)

* [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/)  
by Meher Kasam, Siddha Ganju, Anirudh Koul (ISBN: 9781492034841)


<img src="../../assets/images/books/book-9781491914250-deep-learning.jpeg" alt="keras book1" style="width:20%;"/>&nbsp;&nbsp;<!-- {"left" : 2.71, "top" : 4.53, "height" : 3.02, "width" : 2.3} -->
<img src="../../assets/images/books/book-9781492034841-practical-deep-learning-for-cloud-and-mobile.jpg" alt="keras book4" style="width:20%;"/><!-- {"left" : 5.27, "top" : 4.53, "height" : 3.02, "width" : 2.31} -->
