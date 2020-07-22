# AI Primer - Part 2 - Technologies
---

## Lesson Objectives 2

<img src="../../assets/images/generic/3rd-party/terminator-2.png" alt="" style="width:50%;float:right;"/><!-- {"left" : 5.51, "top" : 1.25, "height" : 3.32, "width" : 4.43} -->

 * Understand the basic AI vocabulary

 * Learn about AI software & hardware

 * Running an AI project

 * Building Data Science teams

 * Any thing else you want to cover


Notes:


---


## Demo: Machine Learning Basics


<img src="../../assets/images/deep-learning/3rd-party/video-ml-basics-google.png" alt="video-ml-basics-google.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.55, "height" : 4.27, "width" : 8.21} -->


[Link](https://www.youtube.com/watch?v=HcqpanDadyQ)

Notes:

https://www.youtube.com/watch?v=HcqpanDadyQ


---

# AI Vocabulary

[../../machine-learning/generic/AI-vocabulary.md](../../machine-learning/generic/AI-vocabulary.md)

---


# AI and Data

---

## AI Starts with Data

- Lot of AI algorithms learn from data

- Generally, more data usually makes smarter algorithms
    - There are exceptions to this


---

## Learning From Data

- Let's start with simple housing sales data

| Bedrooms (input 1) | Bathrooms (input 2) | Size (input 3) | Sale Price (in thousands) (we are trying to predict) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 3                  | 1                   | 1500           | 230                                                  |
| 3                  | 2                   | 1800           | 320                                                  |
| 5                  | 3                   | 2400           | 600                                                  |
| 4                  | 2                   | 2000           | 500                                                  |
| 4                  | 3.5                 | 2200           | 550                                                  |

<!-- {"left" : 0.25, "top" : 2.31, "height" : 3.19, "width" : 9.75, "columnwidth" : [1.61, 1.81, 1.33, 5]} -->


---

## Learning From Data


- An machine learning algorithm learns from the above data, and then tries to predict house prices on new data


| Bedrooms (input 1) | Bathrooms (input 2) | Size (input 3) | Predicted Sale Price (in thousands) |
|--------------------|---------------------|----------------|-------------------------------------|
| 3                  | 2                   | 1900           | ???                                 |
| 4                  | 3                   | 2300           | ???                                 |

<!-- {"left" : 0.25, "top" : 3.16, "height" : 1.69, "width" : 9.75, "columnwidth" : [1.61, 1.86, 1.92, 4.36]} -->

---

## Learning Process

 *  **Phase 1: Training**
     - Algorithm learns from the data to create a model
     - This step can get computationally expensive.  
     Hours / days / weeks (this is why we use GPU / TPUs  and clusters of computers)
 *  **Phase 2: Prediction / Inference**
     - Once a model is created it can answer questions
        - "what would be the sale price for this house"
        - "is this transaction fraud / not-fraud"
    - Prediction is very fast (milli seconds)



<img src="../../assets/images/deep-learning/AI-Vocabulary.png" alt="AI-Vocabulary.png" style="width:60%;"/><!-- {"left" : 1.21, "top" : 5.86, "height" : 2.6, "width" : 7.84} -->


Notes:


---
## Structured Data vs. Unstructured Data

| Structured Data                                          | Unstructured Data                             |
|----------------------------------------------------------|-----------------------------------------------|
| Data has well defined structure.                         | Structure is not well defined or non existing |
| Data in a database tables are well defined.  10 columns, first column is integer, second column is timestamp ..etc | videos, images                                             |

<!-- {"left" : 0.21, "top" : 1.26, "height" : 2.65, "width" : 9.82, "columnwidth" : [6.33, 3.49]} -->

<img src="../../assets/images/deep-learning/3rd-party/Structured-Data-Unstructured-Data.png" alt="XXX image not found" style="max-width:60%;"/><!-- {"left" : 1.46, "top" : 4.26, "height" : 3.91, "width" : 7.33} -->


---

## Structured Data Examples

- Pretty much any data stored in a schema database

| Bedrooms | Bathrooms | Size | Sale Price (in thousands) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 3                  | 1                   | 1500           | 230                                                  |
| 3                  | 2                   | 1800           | 320                                                  |
| 5                  | 3                   | 2400           | 600                                                  |
| 4                  | 2                   | 2000           | 500                                                  |
| 4                  | 3.5                 | 2200           | 550                                                  |

<!-- {"left" : 2.1, "top" : 2.31, "height" : 2.68, "width" : 6.04, "columnwidth" : [1.36, 1.44, 1.22, 2.02]} -->



---

## Structured Data Examples

 * Text data (CSV, JSON) can have structure too

JSON data

```json
{   "name" : "Joe",
    "email" : "joe@gmail.com" }
```
<!-- {"left" : 0, "top" : 2.07, "height" : 0.46, "width" : 3.35} -->

CSV data (Comma Seperated Values)

```
joe,joe@gmail.com
jane,jane@gmail.com
```
<!-- {"left" : 0, "top" : 3.11, "height" : 0.67, "width" : 3.27} -->


---

## Unstructured Data Examples


- Text
    - Documents : email, word documents
    - Survey results (customer feedback)
    - customer support ticket notes

- Binary data
    - Audio (phone call recordings)
    - Images
    - Video (YouTube videos)

<img src="../../assets/images/generic/3rd-party/word-document-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 0.99, "top" : 5.93, "height" : 1.58, "width" : 1.26} --><img src="../../assets/images/generic/3rd-party/email-at-sign-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 2.7, "top" : 6.09, "height" : 1.26, "width" : 1.26} --><img src="../../assets/images/deep-learning/3rd-party/cat-2.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 4.41, "top" : 5.7, "height" : 1.96, "width" : 1.26} --><img src="../../assets/images/generic/3rd-party/video-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 6.08, "top" : 6.05, "height" : 1.35, "width" : 1.26} --><img src="../../assets/images/generic/3rd-party/audio-headphones-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/><!-- {"left" : 7.75, "top" : 6.09, "height" : 1.26, "width" : 1.52} -->


---

## Semi-Structured Data

 * This is 'between' structured and and unstructured

 * Data has some structure, but it may not be well defined

 * Example, tweet data

```json
{   "user_id" : "user123",
    "timestamp" : "2018-09-20 12:00:05 EST",
    "device" : "iPhone X",
    "location" : "34.893, 120.979",
    "tweet" : "Enjoying my first Pumpkin Spice Latte at Starbucks in Seattle downtown  #PSL, @Starbucks",
    "image_url" : "https://imgurl.com/1234"
}
```
<!-- {"left" : 0, "top" : 3, "height" : 1.41, "width" : 10.25} -->
**Question to the class: What data points you can extract from above tweet?      Which is structured / unstructured?**


---

## Data

<img src="../../assets/images/generic/3rd-party/domo_data-never-sleeps-5-01.png" alt="Data-growth-01.png" style="width:30%;float:right;"/><!-- {"left" : 6.37, "top" : 1.34, "height" : 5.98, "width" : 3.5} -->


- Humanity is producing data at a rapid clip
    - 90% of data is generated in last 2 years!
    - 2.5 quintillion bytes of data per day


Notes:

- [source: domo.com](https://www.domo.com/learn/data-never-sleeps-5?aid=ogsm072517_1&sf100871281=1)
- [Forbes article](https://www.forbes.com/sites/bernardmarr/2018/05/21/how-much-data-do-we-create-every-day-the-mind-blowing-stats-everyone-should-read/#61df751760ba)

---

## Data Growth Trends

- As you can see, unstructured data is growing rapidly

<img src="../../assets/images/deep-learning/3rd-party/Data-growth-01.png" alt="Data-growth-01.png" style="width:76%;"/><!-- {"left" : 0.71, "top" : 2.56, "height" : 4.53, "width" : 8.83} -->




Notes:

Source : https://www.dubber.net/unlocking-unstructured-data-voice-processing-power-zoe/


---

## Question For The Class

**Q: Can you name some examples of structured/unstructured data is generated at your home/work ?**


| Structured Data | Unstructured Data |
|-----------------|-------------------|
| ???             | ???               |

<!-- {"left" : 0.25, "top" : 2.62, "height" : 1, "width" : 9.75} -->

---

## Data And AI

- Majority of the machine learning projects use 'structured data'
    - predicting house prices, identifying credit card transactions ..etc.

- This will continue to grow as we get more and more data, and enterprises adopt more AI

- We are only able to make significant headways in processing unstructured data
    - images , videos

- This is largely due to the advances of neural nets


---

## Scaling with Data


 * Deep Learning Algorithms scale better with data

<img src="../../assets/images/machine-learning/machine_learning_vs_deep_learning.png" style="width:60%;"/><!-- {"left" : 1.18, "top" : 2.24, "height" : 5.98, "width" : 7.88} -->

Notes:


---

## 1980's and 1990's

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-01.png" style="width:80%;"/><!-- {"left" : 0.71, "top" : 2.28, "height" : 5.08, "width" : 8.83} -->


Notes:

Source: Jeff Dean


---

## 1990+

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-02.png" style="width:80%;"/><!-- {"left" : 0.65, "top" : 1.96, "height" : 5.15, "width" : 8.95} -->


Notes:

Source: Jeff Dean


---

## Now

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-03.png" style="width:80%;"/><!-- {"left" : 0.31, "top" : 1.76, "height" : 5.55, "width" : 9.64} -->


Notes:


---

## Dos and Don'ts For Collecting Data for AI

AI starts with data, in this section we are going to look at some best practices

- How to acquire data

- How to curate/clean data

- How to deal with 'big data'

---

## Acquiring Data

- Best data is the one you already have or  can collect on your own
    - Data you already have in your database (e.g. customer data)
    - Website logs

- Data can be acquired from 'data brokers'
    - e.g. Stock market data

- Some data is free
    - e.g. Census data


---

## Data Responsibilities

- Usually IT team is responsible building the data infrastructure

- AI team 'uses' data  (they are IT team's clients)

- Mistake:  Spend a lot of time gathering data and then involve AI team
    - Not all data may be useful.  
    - Involve AI team early on, so they can give feedback on data


<img src="../../assets/images/AI/data-team-and-AI-team.png" alt="XXX image missing" style="max-width:100%;width:50%;" /><!-- {"left" : 1.33, "top" : 4.46, "height" : 3.56, "width" : 7.6} -->



---

## Dealing With Big Data

- Most machine learning doesn't necessarily need 'Big Data'
    - Even modest data can yield surprisingly decent results

- However, more data can significantly produce better results

* **"More data usually beats better algorithms"   
[Anand Rajaraman](https://anand.typepad.com/datawocky/2008/03/more-data-usual.html)  (Walmart Labs)**

---

## Comprehending Data Sizes

| Unit      | Acronym | Size       | Example                                                                                                                                                                                                                            |
|-----------|---------|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| byte      | b       | 1 b        | storing an integer in computer memory                                                                                                                                                                                              |
| Kilo byte | KB      | 1000 bytes | - a small text file <br/> - a typical tweet is about 200 bytes                                                                                                                                                                     |
| Mega byte | MB      | 1000 KB    | - a digital photo ~  2-5 MB <br/> - a song ~  1-5 MB                                                                                                                                                         |
| Giga byte | GB      | 1000 MB    | - a DVD ~ 4.7 GB <br/> - 1hr HD movie stream ~ 3 GB,  1hr 4K movie ~ 7 GB <br/> - typical laptops have 2-16 GB memory <br/> - typical phones have 32 - 256 GB storage <br/> - typical servers have 256 - 512 GB memory |
| Tera byte | TB      | 1000 GB    | - typical laptop hard drive ~ 1 TB <br/> - Now we are entering 'big data' territory                                                                                                                                                |
| Peta byte | PB      | 1000 TB    | - This is truly big data territory <br/> - Facebook generates 4 PB of data every day <br/> - Uber has 100+ PB data                                                                                                         |
| Exa Byte  | EB      | 1000 PB    |                                                                                                                                                                                                                                    |
| Zeta Byte | ZB      | 1000 EB    | &nbsp;                                                                                                                                                                                                                                   |

<!-- {"left" : 0.26, "top" : 1.3, "height" : 6.42, "width" : 9.75, "columnwidth" : [1.5, 1.34, 1.57, 5.34]} -->

---

## Big Data

<img src="../../assets/images/bigdata/bigdata-pyramid2.png" alt="XXX image missing" style="background:white;max-width:100%;width:50%;float:right;"/><!-- {"left" : 5.88, "top" : 2.03, "height" : 3.65, "width" : 4.1} -->

- Traditionally structured data has been stored in databases

- How ever databases have their limitations:
    - they don't scale to huge data sizes
    - or they can be incredibly expensive to store large amount of data
    - they don't handle unstructured data well



---

## Big Data Systems

- Storing big data requires large 'cluster' systems

- Choices
    - On premise:  Hadoop
    - Cloud storage: Amazon S3, Google Cloud Storage, Azure storage

---

## Hadoop

- Hadoop was developed at Yahoo and open sourced around 2006

- Became 'the' platform for Big Data -- namely on premise

- Hadoop provides **distributed storage** and **distributed computing**

- Can scale upto 1000s of nodes

<img src="../../assets/images/hadoop/hadoop-highlevel.png" alt="XXX image missing" style="background:white;max-width:100%;width:70%;"/><!-- {"left" : 1.02, "top" : 4.53, "height" : 3.74, "width" : 8.21} -->


---

## Hadoop Storage Cost

<img src="../../assets/images/hadoop/Cost-Comparison.png" alt="XXX image missing" style="background:white;width:65%;"/><!-- {"left" : 0.65, "top" : 2.02, "height" : 5.6, "width" : 8.96} -->


---

## Cloud Storage Cost

Cloud storage costs vary depending lot of factors (like volume, usage ..etc).  These are to give you an idea.  Plus the costs seem to go down each year.   
For accurate pricing, see the provided links

|                     | Amazon S3                                       | Google Cloud Storage                                  | Azure Storage                                                     |
|---------------------|-------------------------------------------------|-------------------------------------------------------|-------------------------------------------------------------------|
| Cost per TB / month | $23                                             |   $26                                                   | $20                                                               |
|                     | [More info](https://aws.amazon.com/s3/pricing/) | [More Info](https://cloud.google.com/storage/pricing) | [More info](https://azure.microsoft.com/en-us/pricing/calculator) |

<!-- {"left" : 0.25, "top" : 3.14, "height" : 1.69, "width" : 9.75, "columnwidth" : [2.44, 2.44, 2.44, 2.44]} -->

---


# Doing AI Projects

---

## What Problems Can AI Solve?

<img src="../../assets/images/generic/3rd-party/phone-screen-cracked-damage.jpg" alt="Data-Science.png" style="width:25%;float:right;"/><!-- {"left" : 7.33, "top" : 1.29, "height" : 1.16, "width" : 1.75} -->


<img src="../../assets/images/generic/3rd-party/car-3.png" alt="Data-Science.png" style="width:25%;float:right;clear:right;"/><!-- {"left" : 6.53, "top" : 3.1, "height" : 2.21, "width" : 3.35} -->

- Andrew Ng's  __"one second"__ rule  
"If you can do a task with less than ONE second of thought process, AI can do that easily"

- What AI can do now
    - Classifying email as spam / not spam
    - Translating english sentence to Japanese
    - Identifying an image (car vs boat)
    - Identify damaged products off assembly line
    - Customer support ticket routing
    - self driving car : figuring out what is in front of it
    - Identifying cancer cells from Xray image


---

## What AI Can not do

- **Complex tasks that combines multiple skills**
  - Do market research and write a report
- If you don't have enough data
    - if you train AI using 1000s of xray images it can learn to classify.  What if you only have handful of images?  
    AI may not be able to provide good results
- Understand human intension  
For example, if a construction worker is waving you to stop or continue?

<img src="../../assets/images/generic/3rd-party/crossing-guard-2.png" alt="" style="width:24%;"/> &nbsp; &nbsp; <!-- {"left" : 0.86, "top" : 5.29, "height" : 2.7, "width" : 3.48} --> <img src="../../assets/images/generic/3rd-party/hitchhiker-1.jpg"  style="width:28%;"/><!-- {"left" : 5.33, "top" : 5.29, "height" : 2.7, "width" : 4.06} -->


---

## Some Thoughts on Evaluating  AI Projects

- AI can do 'certain tasks', it may not be able to automate the whole work flow

- For example, let's say we are deploying AI to handle customer tickets.

- AI can easily 'route' tickets to appropriate queues and priorities
    - "Item arrived late, even though I paid for expedited shippping.  can I get a refund?" ==> Send it to 'refund' queue
    - "Item arrived damaged, can I return it?" ==> send it to 'return' queue

- What AI can not do  (the whole workflow):
    - Read the support ticket
    - call customer to confirm the issue
    - then issue a refund
    - update the sales register
---

## Some Thoughts on Evaluating  AI Projects

- Do you have enough data to get started?

- For example let's say you want to identify damaged products off the assembly line, do you have enough pictures of good items and damaged items?


<img src="../../assets/images/generic/3rd-party/phone-screen-cracked-damage.jpg" alt="Data-Science.png" style="width:25%;"/><!-- {"left" : 3.11, "top" : 4, "height" : 2.68, "width" : 4.04} -->


---

## Some Thoughts on Evaluating  AI Projects

- An AI system can evaluate an MRI scan pretty quickly to determine if the patient has a tumor

- How ever it is not going to be able replace an trained oncologist, because they do lot of other things
    - train interns
    - consult with patients
    - evaluate equipments and treatments

- So an oncologist may deploy an AI system to help him with reviewing MRI scans quickly.  
So he/she can focus on other 'higher order' functions

---

## Quiz For the Class: AI Projects
<img src="../../assets/images/icons/quiz-icon.png" style="width:30%;float:right;"/><!-- {"left" : 6, "top" : 1.13, "height" : 2.78, "width" : 4.16} -->

- Pick a couple of potential AI projects that is applicable to you

- What kind of data do you need for machine learning?  
It may help to think along these lines
    -  Data we already have
    - Data we can collect
    - 3rd party data - FREE or minimal cost
    - 3rd party data - Premium

- What kind of data infrastructure do you have now?  Can it scale to handle future growth?


---

# Machine Learning vs. Deep Learning

[../../machine-learning/generic/ML-vs-DL.md](../../machine-learning/generic/ML-vs-DL.md)

---

## AI Scaling with Data

<img src="../../assets/images/deep-learning/3rd-party/video-dl-scale-andrew-ng.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.44, "height" : 4.41, "width" : 8.21} -->

[Video by Andrew Ng](https://www.youtube.com/watch?v=LcfLo7YP8O4)

Notes:

https://www.youtube.com/watch?v=LcfLo7YP8O4

---

# Machine Learning Algorithms

[../../machine-learning/generic/ML-Algorithms.md](../../machine-learning/generic/ML-Algorithms.md)

---


## AI Created Art Sold for $400k @ Christie's


 * [Link](https://www.vox.com/the-goods/2018/10/29/18038946/art-algorithm)

 * [obvious-art.com](http://obvious-art.com/)

<img src="../../assets/images/deep-learning/3rd-party/Art-Sold.png" alt="Art-Sold.png" style="width:40%;"/><!-- {"left" : 2.1, "top" : 2.61, "height" : 5.31, "width" : 6.04} -->



Notes:

https://www.vox.com/the-goods/2018/10/29/18038946/art-algorithm

http://obvious-art.com/


---

# Deep Learning

---

## Machine Learning / Deep Learning


<img src="../../assets/images/machine-learning/AI-ML-DL-1.png" alt="AI-ML-DL-1.png" style="width:50%;"/><!-- {"left" : 2.56, "top" : 2.26, "height" : 5.13, "width" : 5.13} -->

Notes:




---

## Machine Learning vs. Deep Learning


 * Deep Learning Algorithms scale better with data

<img src="../../assets/images/machine-learning/machine_learning_vs_deep_learning.png" style="width:60%;"/><!-- {"left" : 1.18, "top" : 2.04, "height" : 5.98, "width" : 7.88} -->

Notes:


---

## A Brief History: Modelling After Neurons in Brain


 * The human brain is a bunch of interconnected neurons.
 * The neuron is like a "gate" - produces an output
 * Some neurons will only 'fire' if they see color red
 * Some neurons will only fire if they detect a shape of 'hexagon'
 * If both of these cells fire together the brain can intrepret that I am seeing a red stop sign

<img src="../../assets/images/deep-learning/neuron_anatomy.png" alt="neuron_anatomy.png" style="width:50%;"/><!-- {"left" : 0.51, "top" : 5.02, "height" : 2.84, "width" : 5.41} --> &nbsp; &nbsp; <img src="../../assets/images/generic/3rd-party/stop-sign-1.png" alt="neuron_anatomy.png" style="width:20%;"/><!-- {"left" : 6.5, "top" : 4.82, "height" : 3.24, "width" : 3.24} -->


Notes:


---

## History: 1943: McCulloch Pitts Neural Model


 * McCulloch and Pitts defined a simple model of a Neuron
 * It consisted of N inputs In and N Weights
 * Go to a transfer (sum) function, Apply a threshold to an output
 * Limitations:
     - Binary Output
     - No way to automatically train weights Wn

<img src="../../assets/images/deep-learning/McCulloch.png" alt="McCulloch.png" style="max-width:100%;width:60%;"/><!-- {"left" : 1.1, "top" : 4.59, "height" : 3.63, "width" : 8.06} -->


Notes:


---

## History: 1957: Frank Rosenblatt


 * Frank Rosenblatt invented the Perceptron:
 	- Simplest type of feedforward neural network

<img src="../../assets/images/deep-learning/perceptron-03.png" alt="perceptron-03.png" style="max-width:100%;"/><!-- {"left" : 1.02, "top" : 3.07, "height" : 4.43, "width" : 8.21} -->


Notes:




---

## Perceptron (Single Layer Perceptron)


 *  **The perceptron is a linear model used for binary classification with a simple input - output relationship**

 * Mark 1 Perceptron

<img src="../../assets/images/deep-learning/3rd-party/Perceptron-04.png" alt="Perceptron-04.png" style="width:30%;"/><!-- {"left" : 3.21, "top" : 3.18, "height" : 4.72, "width" : 3.83} -->



Notes:


---

## A Very Simple Perceptron


 * Here this perceptron is deciding if I should go to a concert.

 * It considers various inputs (weather , friend will join)

 * And different weights

 * If the final score is > 50, then the answer is YES

 * What is the outcome if
    * Weather is good
    * And a friend can join?

 * What is the outcome if
    * You can go by public transit
    * And a friend can

<img src="../../assets/images/deep-learning/perceptron-02.png" alt="perceptron-02.png" style="width:76%;"/><!-- {"left" : 1.67, "top" : 6.45, "height" : 2.27, "width" : 6.9} -->



Notes:


---

## Perceptron (Generalized)


 * Perceptron will have multiple inputs and an output

| Terminology | Explanation                                                                       |
|-------------|-----------------------------------------------------------------------------------|
| Xi          | input                                                                             |
| Wi          | Weight for the input                                                              |
| x.w         | Dot product of inputs and weights `ÔøΩxi.wi`                                         |
| N           | number of inputs                                                                  |
| b           | Bias term (does not depend on input values, shifts decision boundary from origin) |

<!-- {"left" : 0.96, "top" : 1.66, "height" : 3.29, "width" : 8.34, "columnwidth" : [4.17, 4.17]} -->


<img src="../../assets/images/deep-learning/3rd-party/Generalized-01.png" alt="Generalized-01.png" style="width:40%;"/><!-- {"left" : 3.04, "top" : 6.27, "height" : 2.48, "width" : 4.16} -->


Notes:


---

## Constructing Neural Networks


 * We add multiple layers

 * Each layer can have many neurons

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="hidden-layer.png" style="width:40%;"/><!-- {"left" : 2.84, "top" : 2.97, "height" : 4.41, "width" : 4.57} -->



Notes:


---


## Power of Neural Networks

- Think of Neurons like 'legos'

- Each neuron will do a little bit work   
But when you stack them and combine them together, they can model some really complex functions

- This is what makes them incredibly powerful

<img src="../../assets/images/generic/3rd-party/legos-1.jpg" alt="legos" style="width:30%; "/> &nbsp;  &nbsp; <!-- {"left" : 0.55, "top" : 4.62, "height" : 2.54, "width" : 3.38} -->
<img src="../../assets/images/generic/3rd-party/legos-2.jpg" alt="legos" style="width:50%; "/><!-- {"left" : 5.28, "top" : 4.49, "height" : 2.81, "width" : 4.48} -->


---


## 'Deep' Neural Networks

<img src="../../assets/images/deep-learning/Deep-Neural-Networks.png" alt="Deep-Neural-Networks.png" style="width:40%;float:right;"/><!-- {"left" : 5.68, "top" : 1.9, "height" : 4.02, "width" : 4.38} -->


 * If the network has more than ONE hidden layer, it is called DEEP network (or more than 3 layers total including input an output)

 * More layers gives the network the ability to adopt complex data

 * How ever more layers take more time to train



Notes:


---

## Neural Network Example

- Say we are trying to build a neural net to predict house prices

- Given a few inputs (Bedrooms, Bathrooms ..etc)  the network has to learn to predict the price

- If we provide enough data to the network, it will automatically learn the functions of each neuron !!


<img src="../../assets/images/deep-learning/neural-net-01.png" alt="Face-Recognition.png" style="max-width:100%;"/><!-- {"left" : 1.02, "top" : 4.38, "height" : 2.94, "width" : 8.21} -->

---

## Deep Neural Network - Face Recognition

<img src="../../assets/images/machine-learning/3rd-party/Face-Recognition.png" alt="Face-Recognition.png" style="width:30%;"/><!-- {"left" : 2.79, "top" : 1.73, "height" : 6.18, "width" : 4.67} -->


Notes:

Image credit : Facebook research
Source: https://deeplearning4j.org/neuralnet-overview



---

## 'Deep' Neural Networks Simulation

<img src="../../assets/images/deep-learning/Neural-Networks-Simulation.png" alt="Neural-Networks-Simulation.png" style="width:90%;"/><!-- {"left" : 0.37, "top" : 3.7, "height" : 2.24, "width" : 9.5} -->


Notes:


---

## Examples of 'Deep' Neural Networks


 * Image Recognition: ResNet (from 2015) with 152 layers

<img src="../../assets/images/deep-learning/3rd-party/ResNet.png" alt="ResNet.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 2.75, "height" : 3.56, "width" : 8.21} -->


Notes:



---

## DL Application Demo: Digit Recognition


<img src="../../assets/images/deep-learning/3rd-party/digit-recognition-1.png" alt="digit-recognition-1.png" style="width:50%;"/><!-- {"left" : 1.93, "top" : 1.6, "height" : 4.39, "width" : 6.39} -->



[Link](http://myselph.de/neuralNet.html)

Notes:


---

## DL Application Demo: Digit Recognition


<img src="../../assets/images/deep-learning/3rd-party/Digit-Recognition-01.png" alt="Digit-Recognition-01.png" style="width:30%;"/><!-- {"left" : 2.63, "top" : 1.77, "height" : 5, "width" : 5} -->


[Link](http://scs.ryerson.ca/~aharley/vis/conv/flat.html)

Notes:

http://myselph.de/neuralNet.html


---

## Types of Neural Networks (see next slides for details)


 *  **Convolutional Neural Networks (CNN)** Image recognition

 *  **Recurrent Neural Networks (RNN)** Natural language processing

 *  **Long Short Term Memory (LSTM)** Speech recognition, translation


Notes:


---

## Convolutional Neural Networks (CNN)


 * CNNs are primarily used for image recognition

 * "Celebrity Face Recognition" challenge

     - 4 million labeled images of 4000 celebs

     - 97% accuracy!

     - [Link](https://research.fb.com/publications/)

<img src="../../assets/images/deep-learning/3rd-party/cnn-happy-net-01.png" alt="cnn-happy-net-01.png" style="width:40%;"/><!-- {"left" : 1.2, "top" : 3.72, "height" : 4.03, "width" : 7.86} -->



Notes:

Source: Yaniv Taigman, Ming Yang, Marc'Aurelio Ranzato, Lior Wolf - https://research.fb.com/publications/




---

## CNN Demo: Happy Net


 * Detect facial emotions in real time

 * [Link](https://www.youtube.com/watch?v=MDHtzOdnSgA)

<img src="../../assets/images/deep-learning/3rd-party/cnn-happy-net-02.png" alt="cnn-happy-net.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 2.74, "height" : 4.16, "width" : 8.21} -->


Notes:

https://www.youtube.com/watch?v=MDHtzOdnSgA


---

## Recurrent Neural Networks (RNN)


 * Applications:

     - Natural language processing (Predict the next word in sentence)

     - Machine translation

<img src="../../assets/images/deep-learning/Recurrent-Neural-Networks.png" alt="Recurrent-Neural-Networks.png" style="width:60%;"/><!-- {"left" : 0.88, "top" : 3.07, "height" : 4.68, "width" : 8.49} -->



Notes:

Source: Rowel Atienza - https://towardsdatascience.com/lstm-by-example-using-tensorflow-feb0c1968537



---

## RNNs (translation)

<img src="../../assets/images/deep-learning/3rd-party/Rnns-01.png" alt="Rnns-01.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 2.22, "height" : 4.62, "width" : 8.21} -->


Notes:

Source: https://www.analyticsindiamag.com/overview-of-recurrent-neural-networks-and-their-applications/


---

## Combining Neural Networks


 * Here is an example of combining CNN and RNN

     - It recognizes the image (CNN)

     - And captions it (RNN)


<img src="../../assets/images/deep-learning/3rd-party/Combining-Neural-Networks-01.png" alt="Combining-Neural-Networks-01.png" style="width:30%;"/><!-- {"left" : 0.47, "top" : 3.07, "height" : 3.5, "width" : 3.47} --> &nbsp;&nbsp; <img src="../../assets/images/deep-learning/3rd-party/Combining-Neural-Networks-02.png" alt="Combining-Neural-Networks-02.png" style="width:40%;"/><!-- {"left" : 4.72, "top" : 4.09, "height" : 1.47, "width" : 5.08} -->



Notes:

Source: Source: Andrej Karpathy, Li Fei-Fei - https://cs.stanford.edu/people/karpathy/deepimagesent/



---

## Video - Advances in Hardware

<img src="../../assets/images/deep-learning/3rd-party/cloud-tpu-01.png" alt="cloud-tpu-01.png" style="width:60%;"/><!-- {"left" : 3.03, "top" : 1.85, "height" : 3.44, "width" : 4.97} -->


 * [Google TPU](https://www.youtube.com/watch?v=UsDhVx6cOrw) (up to 5 min mark)


Notes:

https://www.youtube.com/watch?v=UsDhVx6cOrw


---

## DL Application Demo: Google Draw

<img src="../../assets/images/deep-learning/3rd-party/Quick-drew-01.png" alt="Quick-drew-01.png" style="width:60%;"/><!-- {"left" : 1.59, "top" : 1.57, "height" : 4.17, "width" : 7.06} -->




 * https://quickdraw.withgoogle.com/


Notes:


---

# AI Workflow / Process

---

## AI Workflow

<img src="../../assets/images/AI/AI-Workflow-01.png" alt="AI-Workflow-01.png" style="width:60%;"/><!-- {"left" : 1.48, "top" : 1.8, "height" : 5.47, "width" : 7.29} -->




Notes:


---

## How to do Machine Learning


 *  **1 - Problem Definition:** What are we trying to solve

 *  **2 - Collect data** More data we have, the better the algorithms become.  This data can come from internal logs (clickstreams) or external sources (credit scores of customers)

 *  **3 - Prepare Data** Raw data is hardly in a form to be used.  It needs to be cleansed, tagged and curated before ready to use

 *  **4 - Train a model** Feed the training data to model so it can learn

 *  **5 - Evaluate the model** Test the model accuracy

 *  **6 - Improve the model** Either by adding more training data, choosing a different algorithm

 *  **7 - Deploy the model**

Notes:




---

## 1 - Problem Definition


 * This may not be as easy as it seems

 * Known Knowns

     - Daily web traffic

 * Known Unknowns

     - What are most popular pages?

     - Do big connectors matter in a social graph?

 * Unknown Unknowns

     - Is there a connection between X and Y

Notes:




---

## Class Discussion:

<img src="../../assets/images/icons/quiz-icon.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 5.2, "top" : 1.39, "height" : 3.33, "width" : 4.99} -->


 * What are some of the problems you are facing that Data Science / Machine Learning might be a solution?

Notes:


---

## 2 - Collecting Data

<img src="../../assets/images/AI/AI-Workflow-02.png" alt="AI-Workflow-02.png" style="width:40%;float:right;"/><!-- {"left" : 5.18, "top" : 1.23, "height" : 3.82, "width" : 4.89} -->


 * Data Sources can be

     - External: government data, public data,...

     - Internal: collected data (clickstream etc.)

 * External Data challenges

     - Compliance, security concerns,...

     - How much can we get? API throttling.

     - Is the data in useable format?

---

## 2 - Collecting Data

<img src="../../assets/images/AI/AI-Workflow-02.png" alt="AI-Workflow-02.png" style="width:40%;float:right;"/><!-- {"left" : 5.31, "top" : 1.26, "height" : 3.74, "width" : 4.79} -->


 * May need to bring data from different systems and in usually in different formats.

     - Clicklogs are text files.

     - Customer data can be from a database.


Notes:

---

## Class Discussion: Data Collection Challenges

<img src="../../assets/images/icons/quiz-icon.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 5.55, "top" : 1.22, "height" : 3.09, "width" : 4.64} -->


 * What are some of the problems you are facing / anticipating for collecting data?

Notes:


---

## 3 - Data Preparation / Cleaning

<img src="../../assets/images/AI/AI-Workflow-02.png" alt="AI-Workflow-02.png" style="width:40%;float:right;"/><!-- {"left" : 5.55, "top" : 1.19, "height" : 3.51, "width" : 4.49} -->


 * Problems with raw data sets

     - Non-usable format (say in Excel spreadsheet format)

     - Contains errors & wrong values

     - Missing values

     - Data is spread across multiple silos

 * Data scientists spend a lot of time cleaning and massaging raw data, to get them ready for analysis.

 * Crucial part of data science

 * Can consume a lot of time (50% - 80%  of the project!!!)

 * Least sexy




Notes:


---

## Class Discussion: Data Cleanup

<img src="../../assets/images/icons/quiz-icon.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 5.77, "top" : 1.06, "height" : 2.97, "width" : 4.46} -->


 *  **What do you think involves in cleaning up data?**

Notes:




---

## 3.5 - Exploratory Data Analysis (EDA)

<img src="../../assets/images/deep-learning/EDA-01.png" alt="EDA-01.png" style="width:30%;float:right;"/><!-- {"left" : 6.22, "top" : 1.22, "height" : 2.65, "width" : 3.72} -->


 * Before doing `machine learning` on data, understand the data.

 * Basic questions

     - Is there a pattern?

     - Are there lot of outliers?  (May skew analysis. Should we keep these or throw them away?)

 *  **Visualizations**  can help greatly!

     - Just do some quick & dirty graphs.

 * Identify `interesting segments`

 * Need to sample?  Or process entire data set?




Notes:


---

## 4 - Model Building

<img src="../../assets/images/AI/AI-Workflow-03.png" alt="AI-Workflow-03.png" style="width:40%;float:right;"/><!-- {"left" : 5.32, "top" : 1.07, "height" : 3.87, "width" : 4.88} -->

 * Don't do this until you have a good understanding of data.(See previous section.)

 * Pick right modeling technique

     - Clustering

     - Classifications

     - Etc.

 * Pick the right model for data

     - Don't get 'hung up' on one model.

     - Try a few to identify the best fitting model.

     - Experience counts!



Notes:




---

## 4.5 - Experiment to Production ('Mind the Gap')


 * Data Scientists develop their models on laptops with small data

 * There is a 'deployment gap' when it comes time to go to production

 * Solutions:

     - Frameworks like Spark are solving this

     - Cloud vendors are providing solution

<img src="../../assets/images/machine-learning/deployment-gap-1a.png" style="max-width:50%;"/><!-- {"left" : 1.3, "top" : 4.78, "height" : 3.86, "width" : 7.65} -->



Notes:


---
## Streamlining Prototyping --> deploy


 * Language neutral

 * Same model - no need to re-implement

 * Fast deploy!

<img src="../../assets/images/machine-learning/deployment-gap-1b.png" style="max-width:40%;"/><!-- {"left" : 1.63, "top" : 3.18, "height" : 5.12, "width" : 6.99} -->



Notes:

https://www.slideshare.net/julesdamji/apache-spark-mllib-2x-how-to-productionize-your-machine-learning-models

---

## 5 - Model Validation

 <img src="../../assets/images/AI/AI-Workflow-04.png" alt="AI-Workflow-04.png" style="width:40%;float:right;"/><!-- {"left" : 5.9, "top" : 1.22, "height" : 3.38, "width" : 4.27} -->


 * Models need to be `verified`  / `validated`

 * Split the data set into

     - Training set: build / train model

     - Test set: validate the model

 * Initially 70% training,  30% test

 * Tweak the dials to decrease training and increase validation.

 * Training set should represent data well enough.

<img src="../../assets/images/machine-learning/Model-Validation-1.png" alt="Model-Validation-1.png" style="width:30%;"/><!-- {"left" : 5.55, "top" : 6.63, "height" : 1.97, "width" : 4.48} -->




Notes:




---

## 6 - Improving the Model

<img src="../../assets/images/AI/AI-Workflow-05.png" alt="AI-Workflow-05.png" style="width:40%;float:right;"/><!-- {"left" : 5.09, "top" : 1.22, "height" : 4.15, "width" : 4.86} -->


 * Sometimes we don't get desired accuracy from the model

     - Say we need 90% accuracy, but the model is only at 70%

 * How to improve?

     - Can we find more training data?

     - Tune model parameters

     - Or even choose another model



Notes:




---

## 7 - Deploy Model

<img src="../../assets/images/AI/AI-Workflow-06.png" alt="AI-Workflow-06" style="width:40%;float:right;"/><!-- {"left" : 5.19, "top" : 1.45, "height" : 3.69, "width" : 4.66} -->


 * We are happy with the model's performance

 * So we deploy the model on production / live system where it can start predicting / inferring

 * Monitor the model in production



Notes:




---

## Class Discussion : AI Life Cycle

<img src="../../assets/images/icons/quiz-icon.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 6.55, "top" : 1.28, "height" : 2.41, "width" : 3.62} -->


 * Do you have any stories to share about AI work flow?

     - Issues

     - Best practices?

<img src="../../assets/images/AI/AI-Workflow-01.png" alt="AI-Workflow-06" style="width:40%;"/><!-- {"left" : 2.64, "top" : 4.97, "height" : 3.72, "width" : 4.96} -->


Notes:




---

## Reinforcement / Neural Net Demo: Alpha GO

<img src="../../assets/images/machine-learning/3rd-party/Neural-Net-Demo-Alpha-GO.png" alt="Neural-Net-Demo-Alpha-GO.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.32, "height" : 4.64, "width" : 8.21} -->


[Link](https://www.youtube.com/watch?v=9xlSy9F5WtE)


Notes:

- https://www.youtube.com/watch?v=9xlSy9F5WtE
- https://money.cnn.com/2017/09/29/technology/future/alphago-movie/index.html


---

## Reinforcement/ Neural Net Demo: Alpha GO Explained


<img src="../../assets/images/deep-learning/3rd-party/Alpha-GO-01.png" alt="Alpha-GO-01.png" style="width:30%;"/><!-- {"left" : 0.33, "top" : 2.81, "height" : 3.23, "width" : 4.1} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/Alpha-GO-02.png" alt="Alpha-GO-02.png" style="width:30%;"/><!-- {"left" : 4.77, "top" : 3.27, "height" : 2.32, "width" : 5.15} -->


 [Link](https://deepmind.com/blog/alphago-zero-learning-scratch/)

Notes:

https://deepmind.com/blog/alphago-zero-learning-scratch/


---

# AI Software Ecosystem

---

## AI Software Eco System

|             | Machine Learning          | Deep Learning               |
|-------------|---------------------------|-----------------------------|
| Java        | -Weka<br/>-Mahout             | DeepLearning4J              |
| Python      | -SciKit<br/>-Numpy, Pandas  | -Tensorflow<br/>-Pytorch<br/>-Caffe |
| R           | -Many libraries           | -Deepnet<br/>-Darch             |
| Distributed | Spark                     | Spark                       |
| Cloud       | -AWS<br/>-Azure<br/>-Google Cloud | -AWS<br/>-Azure<br/>-Google Cloud   |

<!-- {"left" : 0.25, "top" : 1.48, "height" : 3, "width" : 9.75} -->

Notes:


---

## AI and Big Data

 * Until recently most of the AI work is done on `single computer`

 * Most R/Python/Java libraries are `single machine based`

 * Now Big Data tools make it possible to run AI algorithms at massive scale-distributed across a cluster

<img src="../../assets/images/deep-learning/DL-cluster.png" alt="DL-cluster.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 4.43, "height" : 3.49, "width" : 8.21} -->



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
| GPU (Graphical Processing Unit) seldom engaged | GPUs are utilized increasingly               |

<!-- {"left" : 0.25, "top" : 1.43, "height" : 3.88, "width" : 9.75} -->

Notes:


---

## AI Ecosystem and Tools

<img src="../../assets/images/deep-learning/AI-Ecosystem.png" alt="AI-Ecosystem.png" style="width:60%;"/><!-- {"left" : 0.36, "top" : 1.97, "height" : 5.14, "width" : 9.54} -->




Notes:

Anaconda:
Python and R distribution for machine learning and data science. Simplifies package management and deployment supporting Windows, Linux and MacOS.

Python:
Interpreted programming language supporting multiple programming paradigms. Popular for data science due to code readability, ease of data manipulation and many libraries aimed at data science needs.

R:
Programming language and environment for statistical computing with powerful graphical and modeling features.

Scala:
Functional programing language with language interoperability with Java. Scala code runs on a Java Virtual Machine. Many data science frameworks that are built on are written in Scala.

cuDDN:
Deep Neural Network library for high-performance GPU acceleration.

NCCL:
The NVIDIA Collective Communications Library (NCCL) implements multi-GPU and multi-node collective communication primitives that are performance optimized for NVIDIA GPUs.

NumPy:
Scientific computing library for Python and is the foundation for important data science libraries including Pandas, Matplotlib and Scikit-learn.

Pandas:
Data structure and analysis library for Python. Allows you to do data cleaning and preparation for data science in addition to analysis.

Matplotlib:
Plotting library for creating plots, histograms, power spectra, bar charts, errorcharts, scatterplots, etc. Used heavily in Jupyter notebooks to visualize data.

Scikit-learn:
ML python library featuring many popular ML algorithms

WEKA:
Java ML visualization tools and algorithms.

TensorFlow:
Most popular dataflow programing framework used heavily for ML/DL. Has good visualization, monitoring and debugging features which make it good for production.

Pytorch:
The second most popular ML/DL framework which does not have as many production features as TensorFlow but is more intuitive and uses dynamic computation graphs which makes it extremely popular for research.

Keras:
Is a widely used DL python library/high level API which front ends ML frameworks like TensorFlow to make it building and deploying Neural Networks easier. Keras also allows you to import Python DL Models into DL4J.

DL4J:
DL framework for Java which has tight integration with Java based distributed computing frameworks such as Hadoop and Spark. Uses Keras as a Python API.


Jupyter:
Browser-based notebook interface with support for code, text, mathematical expressions, inline plots and other media. Jupyter has a larger community and is a better stand alone tool when compared to Apache Zeppelin. Jupyter is a more natural fit for use with Python Based ML/DL frameworks.

Apache Zeppelin:
Browser-based notebook interface with support for code, text, mathematical expressions, inline plots and other media. Zeppelin has tight integration with Hadoop eco system technologies and Spark plus has better out of box multi-user features when compared to Jupyter.




---

# Deep Learning Software Ecosystem

[../../deep-learning/generic/DL-ecosystem.md](../../deep-learning/generic/DL-ecosystem.md)


---


## Infrastructure Tools

<img src="../../assets/images/deep-learning/Infrastructure-Tools.png" alt="Infrastructure-Tools.png" style="width:60%;"/><!-- {"left" : 1.28, "top" : 1.75, "height" : 5.56, "width" : 7.69} -->



Notes:




---

## Kubeflow

 * Kubeflow = Kubernetes + ML

 * Deploy ML workflows on Kubernetes

 * Portable and scalable

 * Supports all major libraries:Tensorflow, Pytorch, Jupyter

 * Cloud friendly

 * (https://www.kubeflow.org/)

<img src="../../assets/images/deep-learning/3rd-party/Kubeflow.png" alt="Kubeflow.png" style="width:20%;"/><!-- {"left" : 7.49, "top" : 1.25, "height" : 2.46, "width" : 2.47} -->



Notes:


---

## Big Data Infrastructure - Hadoop

<img src="../../assets/images/deep-learning/3rd-party/Big-Data-Infrastructure-Hadoop.png" alt="Big-Data-Infrastructure-Hadoop.png" style="width:30%;float:right;"/><!-- {"left" : 7.32, "top" : 1.53, "height" : 4.26, "width" : 2.55} -->


 * Hadoop is the popular on-premise Big Data platform

 * Hadoop v3.0 offers support for Machine Learning

 * Native support for

     - GPU

     - Docker containers

     - AI frameworks: Tensorflow, Pytorch ..etc.

 * HDFS improvements

     - 1.7 copies instead of 3 copies (reducing storage overhead)

* See next slide for a sample Hadoop reference architecture

Notes:

---

## A Hadoop 3 Reference Architecture

<img src="../../assets/images/hadoop/3rd-party/hadoop3-reference-architecture-1.png" alt="Big-Data-Infrastructure-Hadoop.png" style="max-width:100%;"/><!-- {"left" : 0.18, "top" : 2.24, "height" : 4.58, "width" : 9.9} -->


Notes:
- [Source: Hortonworks](https://hortonworks.com/blog/trying-containerized-applications-apache-hadoop-yarn-3-1/)
---

## Big Data Infrastructure - Spark


 * Spark is a distributed framework

 * Can run on Hadoop and Cloud environments

 * Spark has become a very popular framework for Machine Learning and Deep Learning

 * Massively scalable

 * Can use memory (caching) effectively for iterative algorithms

 * Multi Language support: Scala, Java, Python, R

<img src="../../assets/images/logos/spark-logo-1.png"  style="width:30%;"/><!-- {"left" : 2.8, "top" : 5.26, "height" : 2.42, "width" : 4.66} -->


Notes:




---

## Distributed Data Processing


 * Hadoop distributes data across many node

 * Processing also happens on multiple nodes (distributed processing)

 * Data is processed on the node it is located

<img src="../../assets/images/deep-learning/Distributed-Data-Processing.png" alt="Distributed-Data-Processing.png" style="width:60%;"/><!-- {"left" : 0.9, "top" : 4.05, "height" : 3.42, "width" : 8.46} -->




Notes:




---

## Scalable Machine Learning Systems


 * Actual ML is a small part of overall system!

 * In the diagram below, you can see all the infrastructure goes into building a large scale ML system

<img src="../../assets/images/deep-learning/production_ML_system-02.png" alt="production_ML_system-02.png" style="width:60%;"/><!-- {"left" : 0.82, "top" : 3.47, "height" : 3.07, "width" : 8.61} -->



Notes:


---

## A Reference Scalable AI Infrastructure

<img src="../../assets/images/deep-learning/Reference-Scalable-AI-Infrastructure.png" alt="Reference-Scalable-AI-Infrastructure.png" style="width:80%;"/><!-- {"left" : 0.89, "top" : 2.51, "height" : 3.13, "width" : 8.47} -->



Notes:


---

## A Reference Scalable AI Infrastructure Explained


 *  **HDFS**  is our data lake, it can store huge amount of data, distributed across nodes

 *  **Spark**  is our processing engine, it runs in a distributed fashion on all nodes

 *  **Jupyter**  notebook is used interactively explore data

 *  **Kafka**  does streaming

Notes:




---

## AI in the Cloud


 * Pretty much all cloud vendors have a cloud based AI offering

 * 'AI as Service'

 * Benefits of cloud

     - Not having to worry about infrastructure

     - Scalable infrastructure (start small, grow as needed)

     - Pay per use model

     - 'Deployment gap' is no longer an issue

 * Go from experiment to production very quickly

Notes:


---

## AI Cloud Offerings


| AWS                       | Azure                             | Google Cloud               |
|---------------------------|-----------------------------------|----------------------------|
| -AI as service,'Sagemaker | -AI as service,-'Azure ML Studio' | -AI as service,-'Cloud ML' |

<!-- {"left" : 0.99, "top" : 1.33, "height" : 1.88, "width" : 8.27, "columnwidth" : [2.76, 2.76, 2.76]} -->



<img src="../../assets/images/logos/aws-logo-2.png"  style="width:20%;"/> &nbsp; <!-- {"left" : 2.75, "top" : 4.07, "height" : 1.1, "width" : 4.76} -->
<img src="../../assets/images/logos/azure-logo-1.png"  style="width:30%;"/> &nbsp; &nbsp; <!-- {"left" : 2.99, "top" : 5.51, "height" : 1.23, "width" : 4.28} -->
<img src="../../assets/images/deep-learning/3rd-party/google-cloud.png"  style="width:30%;"/><!-- {"left" : 3.45, "top" : 7.08, "height" : 0.76, "width" : 3.37} -->



Notes:


---

## Video: Advances in Robotics



<img src="../../assets/images/deep-learning/3rd-party/Video-Advances-Robotics.png" alt="Video-Advances-Robotics.png" style="width:50%;"/><!-- {"left" : 1.95, "top" : 1.35, "height" : 4.98, "width" : 6.35} -->


[Link](https://www.youtube.com/watch?v=8vIT2da6N_o)

Notes:

https://www.youtube.com/watch?v=8vIT2da6N_o


---

## Demo: Human Powered AI

<img src="../../assets/images/deep-learning/3rd-party/Demo-Human-Powered-AI-01.png" alt="Demo-Human-Powered-AI-01.png" style="width:40%;float:right;"/><!-- {"left" : 6.01, "top" : 1.22, "height" : 3.75, "width" : 3.98} -->


 * Hive is paying 600,000 strangers to help him build human-powered AI that's 'whole orders of magnitude better than Google'

 * Users are paid a small amount of money to tag images

 * [Link](https://finance.yahoo.com/news/ceo-paying-600-000-strangers-150000655.html)




Notes:

https://finance.yahoo.com/news/ceo-paying-600-000-strangers-150000655.html


---

# AI Gone Wrong

---

## AI Gone Wrong


<img src="../../assets/images/deep-learning/3rd-party/AI-Gone-Wrong.png" alt="AI-Gone-Wrong.png" style="width:40%;float:right;"/><!-- {"left" : 5.98, "top" : 1.22, "height" : 4, "width" : 4} -->


 * Here we are going look at some cases where AI experiments haven't gone well

 * Links

     - [link1](https://www.zdnet.com/pictures/im-sorry-dave-9-real-times-ai-has-given-us-the-creeps/2/)



Notes:

https://www.zdnet.com/pictures/im-sorry-dave-9-real-times-ai-has-given-us-the-creeps/2/



---

## Facebook's Bots Invent their own language

<img src="../../assets/images/deep-learning/3rd-party/Facebook-Bots-0.png" alt="Facebook-Bots-0.png" style="width:40%;float:right;"/><!-- {"left" : 6.4, "top" : 1.08, "height" : 2.45, "width" : 3.68} -->


 * Facebook designed to chat bots to talk to each other

 * They were communicating with each other freely

 * After a year


       - `Bob: "I can can I I everything else."`

       - `Alice: "Balls have zero to me to me to me to me  
        to me to me to me to me to."`

 * This indecipherable language is actually a 'new bot language'
 * Bots developed this on their own
 * FB discontinued the experiment
 * [Link](https://www.independent.co.uk/voices/facebook-shuts-down-robots-ai-artificial-intelligence-develop-own-language-common-a7871341.html)



Notes:

https://www.independent.co.uk/voices/facebook-shuts-down-robots-ai-artificial-intelligence-develop-own-language-common-a7871341.html


---

## Facebook Bots

<img src="../../assets/images/deep-learning/3rd-party/Facebook-Bots.png" alt="Facebook-Bots.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 2.56, "height" : 4.53, "width" : 8.21} -->



Notes:


---

## Target Algorithm Predicts Young Woman's Pregnancy

<img src="../../assets/images/deep-learning/3rd-party/Predicts-Young-Woman-01.png" alt="Predicts-Young-Woman-01.png" style="width:30%;float:right;"/><!-- {"left" : 6.52, "top" : 1.13, "height" : 2.51, "width" : 3.56} -->

 * Target's Data Scientists identified 25 products that, when purchased together, predict a woman's pregnancy

 * Target started sending out targeted coupons to women shoppers who they have identified as being pregnant

 * One angry man walked into Target store and complained to the manager :  
  " *Why are you sending these baby coupons to my daughter, she is still in high school* "

 * Few days later, the same man called the manager and apologized  
 " *Sorry, I just learned that my daughter is pregnant* "

 * Links: [link1](https://www.zdnet.com/pictures/im-sorry-dave-9-real-times-ai-has-given-us-the-creeps/6/), [link2](https://www.nytimes.com/2012/02/19/magazine/shopping-habits.html?mtrref=www.google.com)

---


## Tesla AutoPilot Crashes Car


 * A Tesla driving on AutoPilot crashes into a truck (2017, Florida)

 * NTSB investigation revealed that AutoPilot system thought the truck was a brightly lit sky, and kept going!

 * Links : [link1](https://www.theregister.co.uk/2017/06/20/tesla_death_crash_accident_report_ntsb/)


<img src="../../assets/images/deep-learning/3rd-party/Tesla-AutoPilot-Crashes-Car-01.png" alt="Tesla-AutoPilot-Crashes-Car-01.png" style="width:38%;"/><!-- {"left" : 0.57, "top" : 4.46, "height" : 2.92, "width" : 4.38} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/Tesla-AutoPilot-Crashes-Car-02.png" alt="Tesla-AutoPilot-Crashes-Car-02.png" style="width:35%;"/><!-- {"left" : 5.67, "top" : 4.46, "height" : 2.92, "width" : 4.01} -->




Notes:

https://www.theregister.co.uk/2017/06/20/tesla_death_crash_accident_report_ntsb/


---

## AI Mis-Identifying Dogs as Wolfs

<img src="../../assets/images/deep-learning/3rd-party/Dogs-as-Wolfs.png" alt="Dogs-as-Wolfs.png" style="width:40%;float:right;"/><!-- {"left" : 5.27, "top" : 1.32, "height" : 2.85, "width" : 4.77} -->

 * Farmers used an algorithm to identify dogs vs wolves

 * Algorithm worked great in Summer months

 * In Winter months, it started mis-classifying dogs as wolves

 * Algorithm was rewrote to explain what part of picture it was paying attention to

     -  **The SNOW!**

 * [Link](https://www.youtube.com/watch?v=TRzBk_KuIaM)

 * [Video](http://innovation.uci.edu/2017/08/husky-or-wolf-using-a-black-box-learning-model-to-avoid-adoption-errors/
)(@ 2:30 min)




Notes:

https://www.youtube.com/watch?v=TRzBk_KuIaM
http://innovation.uci.edu/2017/08/husky-or-wolf-using-a-black-box-learning-model-to-avoid-adoption-errors/


---

## Amazon uses AI to Identify Job Applicants


<img src="../../assets/images/deep-learning/3rd-party/global-headcount.png" alt="global-headcount.png" style="width:40%;float:right;"/><!-- {"left" : 6.12, "top" : 1.26, "height" : 4.23, "width" : 3.97} -->

 * Amazon tried an AI algorithm to short-list candidates

 * The algorithm was trained by job applications submitted in 10 year period

 *  **The algorithm was selecting mostly men for technical positions**

     - Because the training data had male bias

 * Links : [link1](https://www.theladders.com/career-advice/amazon-reportedly-scraps-ai-recruiting-tool-biased-against-women
), [link2](https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G)


Notes:

https://www.theladders.com/career-advice/amazon-reportedly-scraps-ai-recruiting-tool-biased-against-women
https://www.reuters.com/article/us-amazon-com-jobs-automation-insight/amazon-scraps-secret-ai-recruiting-tool-that-showed-bias-against-women-idUSKCN1MK08G


---

## Class Discussion

<img src="../../assets/images/icons/quiz-icon.png" alt="" style="width:30%;float:right;"/><!-- {"left" : 5.39, "top" : 1.22, "height" : 3.22, "width" : 4.82} -->


 * Do you know of any cases where AI failed / gone wrong?Please share with the class.

Notes:




---

# AI, Ethics, and Humanity

---

## Elon Musk: "AI will take over humanity"

<img src="../../assets/images/machine-learning/3rd-party/Elon-Musk-tweet-1.png" alt="Elon-musk.png" style="width:40%;"/><!-- {"left" : 2.17, "top" : 1.68, "height" : 6.27, "width" : 5.9} -->



Notes:


---

## Class Discussion : Ethical AI


 * Let's discuss some the topics

 * AI replacing humans in jobs (e.g. truck drivers)

 * Weaponizing AI (killer drones)

 * Any thing else?

Notes:


---

# Final Thoughts

---

## Design an AI Project

<img src="../../assets/images/icons/group-labs.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 5.28, "top" : 1.31, "height" : 3.39, "width" : 4.67} -->

 *  **Class Project**

 * Let's design an AI project that is from your company

Notes:




---

## Anything Else We Want to Discuss?


Notes:


---
## Closing Demo: Everybody Dance Now

<img src="../../assets/images/deep-learning/3rd-party/Closing-Demo.png" alt="Closing-Demo.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.75, "height" : 3.67, "width" : 8.21} -->


 [Link](https://www.youtube.com/watch?v=PCBTZh41Ris)


Notes:

https://www.youtube.com/watch?v=PCBTZh41Ris


---
## Summary


 *  **We covered the following**

 * AI use cases in industry

 * Recent advances in AI

 * Hardware innovations

 * Machine Learning

 * Deep Learning and Neural Networks

 * Software stacks

 * Cloud offerings

Notes:


---

## Further Reading


 * [Great AI Awakening](https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html) - New York Times profile of on Google Brain and the people behind it

 * [Gentle Intro to Machine Learning](https://monkeylearn.com/blog/a-gentle-guide-to-machine-learning/)

 * [Machine Learning Basics](https://www.analyticsvidhya.com/blog/2015/06/machine-learning-basics/)

Notes:

https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html
https://monkeylearn.com/blog/a-gentle-guide-to-machine-learning/
https://www.analyticsvidhya.com/blog/2015/06/machine-learning-basics/


---

# Backup Slides

---
