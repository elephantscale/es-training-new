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

# A Brief (Modern) History of AI

---

## AI Evolution


 * Initial AI thinking was TOP DOWN (or symbolic logic)

 * Write a  **big, comprehensive**  program

     - Program  **all the rules**  (expert systems)

 * Problem:

     - Too many rules

     - Works only for specific domain, e.g. math theorems or chess

 * Success stories: playing chess at the grand master level

     - Domains with limited, clear rules

 * Not so successful: image recognition

Notes:


---

## Another AI Approach - Bottom Up


 * E.g. how babies learn to talk:

     - They don't start by learning the 'rules of the language'

     - Learn by example

 * Train computers the similar way

 * The focus shifts from  **logic to data**

 * More data --> smarter systems

 * Success stories

     - Image recognition

     - Language translation

     - Self-driving cars

Notes:


---

## AI Success Story : Translation - Early Approach

 * Creating a translation system (English <--> Japanese) involves the following

     - English dictionary + grammar rules

     - Japanese dictionary + grammar rules

     - Translation rules

 * Now the system is ready to translate

 * But this approach really doesn't work well:

     - Rules have too many exceptions

     - Context and subtle meanings are lost

 * Example : **"Minister of agriculture" --> "Priest of farming"**

Notes:


---

##  Translation - 'Bottom Up' Approach (Google Translate)

<img src="../../assets/images/machine-learning/Google-translate-01.png" alt="Google-translate-01.png" style="max-width:60%;float:right;"><!-- {"left" : 5.18, "top" : 2.52, "height" : 2.94, "width" : 4.83} -->

 * Google Translate has been ported to 'Google Brain' on Sept 2016
 * System learned from 'data'
 * AI based system improved the accuracy many times over
 * [Link to case study](https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html)



Notes:

* https://en.wikiquote.org/wiki/Jorge_Luis_Borges
* https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html

---

## Image Recognition: Cats & Dogs

<img src="../../assets/images/machine-learning/3rd-party/cats-and-dogs.png" style="max-width:35%;"><!-- {"left" : 2.92, "top" : 1.92, "height" : 5.81, "width" : 4.4} -->


Notes:


---

## Kaggle Competition


 * Recognize dogs & cats

 * Given 25,000 sample images to train

 * Then tested on 15,000 test images

 * Winning algorithm correctly classified 98.9% time !

 * [https://www.kaggle.com/c/dogs-vs-cats](https://www.kaggle.com/c/dogs-vs-cats )

<img src="../../assets/images/machine-learning/3rd-party/Kaggle-Competition-01.png" style="width:40%;"><!-- {"left" : 1.02, "top" : 4.58, "height" : 2.55, "width" : 8.21} -->





Notes:


---

## A Glimpse of AI History

 * Sixties

     - Commercial computers & mainframes

     - Computers play chess

 * Eighties

     - Artificial intelligence (AI) get  **'oversold** ', doesn't live up to the promise and gets a bad rap

 * 21st century

     - Big Data changes it all

Notes:

---
## 1980s-1990s : AI (Neural Net) Winter

* In 1990s, Neural networks fell out of favor.
     - AI in general was perceived as pie-in-the-sky/academic
     - "Expert Systems" and "Rules Engines" found only niche applications.

* Neural Networks Received Criticism
     - Too hard to train
     - Resulting Model not transparent enough.
     - Not suitable for large datasets
     - "Toy Problems"
* Reasons
     - Not enough data
     - Not enough compute power


Notes:
- https://en.wikipedia.org/wiki/AI_winter

---
## 80s -90s : Surge of Statistical Machine Learning

 * Statistical Machine Learning became the method of choice

 * Well Understood (Applied Statistics)

 * Achieved impressive results compared to previous rule-based approaches

 * Ensemble Methods (Random Forests, Gradient Boosted Trees) gave impressive results.

 * Resultant Models often fairly transparent

     - Example: Credit scoring algorithms: Have to unambiguously show WHY the model gives the result it does.

Notes:

---
## 2012 - Neural Networks' Comeback

<img src="../../assets/images/machine-learning/3rd-party/imagenet-results-1.png"  style="width:40%;float:right;"/><!-- {"left" : 5.84, "top" : 1.87, "height" : 5.33, "width" : 4.13} -->


- In [ImageNet competition](http://image-net.org/challenges/LSVRC/) of 2012...

- A __deep convolutional neural network architecture called AlexNet__ beats the field by a whopping 10.8 percentage point margin
    - Developed by Geoffrey Hinton, Ilya Sutskever, and Alex Krizhevsky from the University of Toronto

- __AlexNet__ is still used in research to this day

- The race is on!



---
## 2012 - AI Recognizes Cats in YouTube Videos

<img src="../../assets/images/deep-learning/3rd-party/google-cat-detection.jpeg"  style=" width:25%;float:right;"/><!-- {"left" : 6.51, "top" : 1.3, "height" : 2.98, "width" : 3.45} -->

- 2012 Google created a neural network that can 'identify' cats from YouTube videos

- Up until now, traditional machine learning algorithms are trained on labeled data.  
    - So to train an algorithm to distinguish between cats and dogs, we need thousands of images labeled as 'cat' and thousands of images labeled as 'dog'
    - labeling takes a lot of work, and not a lot of labeled data is available


---
## 2012 - AI Recognizes Cats in YouTube Videos


- They built a huge neural network with **1 Billion+** connections and trained it on **16,000 CPU cores (distributed)**

- The network watched a lot of stills from YouTube videos and 'intuitively learned' to recognize cats
    - no one told the network what a cat looks like, it is 'self-taught'

- References:
    - [1](https://googleblog.blogspot.com/2012/06/using-large-scale-brain-simulations-for.html), [2](https://www.wired.com/2012/06/google-x-neural-network/)



Notes:

- References
    - ['Using large-scale brain simulations for machine learning and A.I.' - Google Blog](https://googleblog.blogspot.com/2012/06/using-large-scale-brain-simulations-for.html)
    - [Google AI learns to find cat videos -- Wired magazine](https://www.wired.com/2012/06/google-x-neural-network/)

---
## The Great AI Revival (2010 on)


 * AI is going through a resurgence now because of the following

 *  **'Big Data** ' - now we have so much data to train our models

 *  **'Big Data ecosystem** ' - excellent big data platforms (Hadoop, Spark, NoSQL) are available as open source

 *  **'Big Compute** ' - **cloud**  platforms significantly lowered the barrier to massive compute power
     - $1 rents you 16 core + 128 G + 10 Gigabit machine for 1 hr on AWS!
     - So running a 100 node cluster for 5 hrs --> $500

 *  **Advances in hardware** - CPU / GPUs / TPUs

 * **Advances in Algorithms**

 * **Availability of pre-trained models**


Notes:

https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html

---

## Hardware Advances: CPU & GPU

 * Recently GPUs - Graphics Processing Units - have become popular (especially in Deep Learning)

 * GPU cores are good at compute intensive calculations (math, matrix operations)

 * Each GPU core is capable of executing small set instructions, but there are 1000s of core per GPU
Running in parallel

<img src="../../assets/images/machine-learning/3rd-party/cpu-gpu.png" alt="XXX image missing" style="width:40%;"/><!-- {"left" : 2.52, "top" : 4.35, "height" : 3.58, "width" : 5.22} -->




Notes:



---

## Hardware Advances - CPU

 * Modern Intel Xeon CPUs (E5 or later) have vectorized linear algebra
    - Properly optimized, approaches speed of GPUs
    - And offers faster I/O performance for Big Data.

 * [Intel Math Kernel Library](https://software.intel.com/en-us/mkl) : highly optimized, threaded, and vectorized math functions that maximize performance on each processor family


<img src="../../assets/images/machine-learning/3rd-party/intel-cpu.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="60%;"/><!-- {"left" : 1.48, "top" : 5.14, "height" : 2.96, "width" : 7.29} -->

Notes:
- https://software.intel.com/en-us/mkl


---

## Hardware Advances - TPU

<img src="../../assets/images/machine-learning/3rd-party/google-cloud-tpu.png" style="width:50%;float:right;"><!-- {"left" : 5.34, "top" : 1.24, "height" : 2.19, "width" : 4.6} -->

 * TPU is Google's custom chip built for AI workloads
    - 3rd generation as of March 2018

 * More capable the CPUs / GPUs in certain tasks

 * Designed for [Tensorflow](https://github.com/tensorflow/tensorflow)

 * Available in Google Cloud platform

Notes:

* https://en.wikipedia.org/wiki/Tensor_processing_unit
* https://github.com/tensorflow/tensorflow

---

## TPU Features


<img src="../../assets/images/deep-learning/3rd-party/cloud-tpu-01.png" style="width:20%;float:right;"/><!-- {"left" : 8.52, "top" : 0.92, "height" : 1.2, "width" : 1.73} -->

 * TPU Use cases:
    - Processing Google Streetview photos (extract street numbers / text)
    - Image processing Google Photos (A single TPU can process 100 millions photos / day)
    - AlphaGo game
 * TPUs are have two very distinct use cases: Training and Inference
 * Training TPUs only available in Google Cloud Platform for now
   - High power chip
   - *Free* evaluation with Google Colaboratory
 * Edge TPUs
   - Much smaller and consumes far less power compared to 'data center TPUs'
   - Google Sells physical devices
   - Designed to be used in IOT type devices, robotics, etc

Notes:
- https://en.wikipedia.org/wiki/Tensor_processing_unit

---

## Incredible Growth of AI Power

<img src="../../assets/images/deep-learning/3rd-party/Incredible-Growth-of-AI-Power.png" alt="Incredible-Growth-of-AI-Power.png" style="width:60%;float:right;"/><!-- {"left" : 5.38, "top" : 2.04, "height" : 5.73, "width" : 4.77} -->

 * Since 2012, the amount of compute used in the largest AI training runs has been increasing exponentially with a 3.5 month-doubling time

 * by comparison, Moore's Law had an 18-month doubling period

 * Source: https://blog.openai.com/ai-and-compute/

Notes:

---

## Advances in AI Research

 * In recent years, lot of money is being invested in AI
 * Companies like Google / Facebook / Amazon are in an 'arms race' to hire the best talent in AI
 * Lot of research going on in public / private sectors
 * Organizations like OpenAI are fostering research in public domain
 * References
    - [Venture Capital Funding For Artificial Intelligence Startups Hit Record High In 2018  Forbes](https://www.forbes.com/sites/jeanbaptiste/2019/02/12/venture-capital-funding-for-artificial-intelligence-startups-hit-record-high-in-2018/)

<img src="../../assets/images/deep-learning/3rd-party/AI-investment-2018-forbes.jpg" alt="XXX image missing" style="width:60%;"/><!-- {"left" : 1.7, "top" : 5.97, "height" : 2.59, "width" : 6.85} -->

---
## Creating Complex Models Have Become Easier

 * Historically, neural network models had to be coded from scratch
    - Converting math into code, testing and debugging
    - This could take weeks or months

 * **Now tooling and libraries have gotten so much better**
    - High level tools like Keras and efficient libraries like Tensorflow, allow us to code complex models very quickly

---
## Availability of Pre-Trained Models

* **"If I have seen further it is by standing on the shoulders of giants" -- Isaac Newton**

<img src="../../assets/images/deep-learning/3rd-party/standing-on-shoulders.jpg" alt="XXX image missing" style="background:white;float:right;max-width:100%;" width="20%;"/><!-- {"left" : 7.45, "top" : 1.51, "height" : 3.71, "width" : 2.33} -->

 * Creating complex models takes lot of data and lot of training
    - this can take huge amount of compute power (days or weeks of training)

 * Now, we don't have to start from scratch

 * There are lot of high quality models that are open source.  We can start with them and tweak them to fit our needs

 * _This is probably the biggest reason DL has become mainstream_

 * See example on next slide

---


## Building on Other Models

- Say we want to develop a model that can classify people into male / female

- Rather than starting from scratch, we can start with a model that can recognize people

- And then train it more to classify them into male/female

<img src="../../assets/images/deep-learning/transfer-learning-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="80%;"/><!-- {"left" : 0.85, "top" : 4.46, "height" : 3.34, "width" : 8.54} -->

---

## Model Zoos

<img src="../../assets/images/deep-learning/zoo1.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="50%;"/><!-- {"left" : 5.49, "top" : 1.14, "height" : 4.61, "width" : 4.61} -->

 * Building and training complex models from scratch takes a lot of effort and compute

 * Luckily, there are lot models available publicly  
    - Computer vision models : LeNet, AlexNet, ZFNet, GoogLeNet, VGGNet, Inception

 * Available model zoos
    - [Tensorflow model zoo](https://github.com/tensorflow/models)
    - [Caffe model zoo](https://github.com/BVLC/caffe/wiki/Model-Zoo)

---

## Neural Networks Timeline

<img src="../../assets/images/deep-learning/3rd-party/nn_timeline.jpg" alt="XXX image missing" style="width:80;%;"/><!-- {"left" : 0.66, "top" : 2.72, "height" : 4.2, "width" : 8.93} -->


Notes:
ref : https://beamandrew.github.io/deeplearning/2017/02/23/deep_learning_101_part1.html

---
## Godfathers of Neural Networks

 * [Geoffrey Hinton](https://en.wikipedia.org/wiki/Geoffrey_Hinton) @ Google, University of Toronto.  
Kept NN research going during 'AI Winter'

 * [Yann LeCun](http://yann.lecun.com/) - Chief AI researcher @ Facebook, Professor @ University of New York

 * [Yoshua Bengio](https://en.wikipedia.org/wiki/Yoshua_Bengio) - Professor @ University of Montreal

 * **These 3 won ACM Turing Award (Nobel price of computing) in 2019**

<img src="../../assets/images/people/geoffrey-hinton-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="15.6%" />&nbsp;<!-- {"left" : 1.1, "top" : 5.52, "height" : 2.77, "width" : 2.07} -->
<img src="../../assets/images/people/yann-lecun-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="20.5%" />&nbsp;<!-- {"left" : 3.58, "top" : 5.52, "height" : 2.77, "width" : 2.71} -->
<img src="../../assets/images/people/yoshua-bengio-1.jpeg" alt="XXX image missing" style="background:white;max-width:100%;" width="17.9%" /><!-- {"left" : 6.77, "top" : 5.52, "height" : 2.77, "width" : 2.37} -->

Notes:
- https://www.deeplearningitalia.com/godfather-2/
- https://torontolife.com/tech/ai-superstars-google-facebook-apple-studied-guy/
- https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html
- https://www.wired.com/story/godfathers-ai-boom-win-computings-highest-honor/
- https://www.theverge.com/2019/3/27/18280665/ai-godfathers-turing-award-2018-yoshua-bengio-geoffrey-hinton-yann-lecun

---

## Video Demos

- In the following sections, we have some really cool videos illustrating the hardware advances

- Instructor : show as time permits

---

## Video: CPU vs. GPU

<img src="../../assets/images/deep-learning/3rd-party/video-cpu-gpu.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="60%;"/><!-- {"left" : 1.65, "top" : 1.29, "height" : 4.23, "width" : 6.95} -->

[Link](https://www.youtube.com/watch?v=-P28LKWTzrI)

From Myth Busters hosts!

Notes:

https://www.youtube.com/watch?v=-P28LKWTzrI


---


## Video: Nvidia Self Driving Car

<img src="../../assets/images/deep-learning/3rd-party/video-nvidia-self-driving.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="60%"/><!-- {"left" : 1.56, "top" : 1.35, "height" : 4.32, "width" : 7.12} -->

[Link](https://www.youtube.com/watch?v=0rc4RqYLtEU)

Nice video showing Deep Learning perceptions during self driving.

Notes:

https://www.youtube.com/watch?v=0rc4RqYLtEU

---


## Video: Audi Autonomous Driving

<img src="../../assets/images/deep-learning/3rd-party/video-audi-self-driving.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="60%;"/><!-- {"left" : 0.86, "top" : 1.54, "height" : 3.12, "width" : 8.53} -->

[Link](https://www.youtube.com/watch?v=DjAJnQoNdMA)

Audi's self driving car program explained.  
Good comparison of brain vs. CPU vs. GPU around 50 second mark.

Notes:

https://www.youtube.com/watch?v=DjAJnQoNdMA

---

## Video - TPU


<img src="../../assets/images/deep-learning/3rd-party/video-google-cloud-tpu.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="40%;"/><!-- {"left" : 2.74, "top" : 1.29, "height" : 3.55, "width" : 4.77} -->

[Link](https://www.youtube.com/watch?v=UsDhVx6cOrw)

 * Google CEO Sundar Pichai announces TPU @ Google I/O 2017
    - Training vs Inference performance @ 1:30
    - AutoML @ 4:25

Notes:

https://www.youtube.com/watch?v=UsDhVx6cOrw

---

## AI History Recap

<img src="../../assets/images/deep-learning/3rd-party/AI-History.png" alt="AI-History.png" style="width:76%;"/><!-- {"left" : 0.87, "top" : 1.64, "height" : 4.26, "width" : 8.5} -->

 * [Video](https://www.youtube.com/watch?v=056v4OxKwlI)

Notes:

https://www.youtube.com/watch?v=056v4OxKwlI


---

# AI Vocabulary

---

## Generic / Narrow AI

<img src="../../assets/images/machine-learning/3rd-party/Driver_free_car.png" alt="Driver_free_car.png" style="width:26%;float:right;"/><!-- {"left" : 6.3, "top" : 1.26, "height" : 2.43, "width" : 3.65} -->

 * **Artificial Narrow Intelligence (ANI)**
   - Focused on a specific tasks
   - Self driving, smart speaker, image recognition
   - Tremendous progress in the last few years

&nbsp;
&nbsp;

<img src="../../assets/images/generic/3rd-party/terminator-1.jpg" alt="bank-of-america.png" style="width:26%;float:right;"/><!-- {"left" : 6.29, "top" : 5.37, "height" : 2.7, "width" : 3.65} -->

 * **Artificial Generic Intelligence (AGI)**
    - AI can do anything a human can do
    - We are decades or hundreds of years away from this
    - So no need to worry about killer robots yet :-)



Notes:


---

## AI / Machine Learning / Deep Learning

<img src="../../assets/images/machine-learning/AI-ML-DL-1.png" alt="AI-ML-DL.png" style="width:37%;float:right;"/><!-- {"left" : 5.42, "top" : 2.38, "height" : 4.3, "width" : 4.3} -->

 * **Artificial Intelligence (AI):** Broader concept of "making machines smart"

 * **Machine Learning:** Current application of AI that machines learn from data using mathematical, statistical models

 * **Deep Learning: (Hot!)** Using Neural Networks to solve some hard problems



Notes:

* http://www.teglor.com/b/deep-learning-libraries-language-cm569/

---

## AI / Machine Learning / Deep Learning


<img src="../../assets/images/machine-learning/AI-ML-DL-2.png" alt="AI-ML-DL-3.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 2.69, "height" : 4.26, "width" : 8.21} -->


Notes:


---

## Data Science


<img src="../../assets/images/deep-learning/Data-Science.png" alt="Data-Science.png" style="width:20%;float:right;"/><!-- {"left" : 7.37, "top" : 1.14, "height" : 2.44, "width" : 2.6} -->

 * **Data Science:** Deriving intelligence from data

 * For example, a real estate company can use data science to figure out which types of homes to build to maximize profits

 * A machine learning algorithm can learn from the past data and predict house prices for new houses coming on market

&nbsp;

| Bedrooms (input 0) | Bathrooms (input 1) | Size (input 2) | Sale Price (in thousands) (we are trying to predict) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 2                  | 0                   | 1499           | 229                                                  |
| 2                  | 1                   | 1799           | 319                                                  |
| 4                  | 2                   | 2399           | 599                                                  |
| 3                  | 1                   | 1999           | 499                                                  |
| 3                  | 2.4                 | 2199           | 549                                                  |

<!-- {"left" : 0.25, "top" : 5.6, "height" : 3.19, "width" : 9.75, "columnwidth" : [1.61, 1.81, 1.33, 5]} -->


Notes:

---

## Data Science vs. Machine Learning

 * **Data Science** works with existing data and derive intelligence

 * **Machine Learning** learns from existing data and predicts on new/unseen data

 * The definitions are not clear-cut,  some people use these interchangeably

<img src="../../assets/images/deep-learning/3rd-party/Data-Scientist-01.png" alt="Data-Scientist-2.png" style="width:49%;"/><!-- {"left" : 1.02, "top" : 4.17, "height" : 3.94, "width" : 8.21} -->


---

## Neural Networks

 * Layers of parallel processing elements, working together to solve very complex tasks

 * Inspired by neurons from human brain

 * Used in Deep Learning

 * (More on this later)

<img src="../../assets/images/deep-learning/Neural-Networks-Simulation.png" alt="AI-ML-DL.png" style="width:89%;"/><!-- {"left" : 0.38, "top" : 4.99, "height" : 2.23, "width" : 9.48} -->

Notes:

---

## Training vs. Inference

*  **Training**
    - Feeding data to an algorithm to create a model
    - Computationally expensive (can take hours, days, weeks)
        - Google translate model trains on 2 billion+ words on 99+ GPUs for week+
*  **Prediction / Inference**
    - Created model answering questions (very fast)
    - "is this transaction fraud / not-fraud"
    - "What are the recommended movies for this user"

<img src="../../assets/images/deep-learning/AI-Vocabulary.png" alt="AI-Vocabulary.png" style="max-width:99%;width:69%;"/><!-- {"left" : 1.52, "top" : 5.81, "height" : 2.39, "width" : 7.19} -->

---

## Data Size Vs. Model Size

- An algorithm can train on small / large / huge amount of data (depending on problem complexity)
    - Since it can be computationally very intensive;  So we may use cluster of computers for training
    - Clusters can contain 99s (or 999s) of CPUs/GPUs/TPUs

- The resulting model is orders of magnitude smaller in size
    - it could fit in your phone!

<img src="../../assets/images/AI/data-size-vs-model-size.png" alt="AI-Vocabulary.png" style="max-width:99%;"/><!-- {"left" : 1.29, "top" : 5.14, "height" : 3.14, "width" : 7.69} -->

---

## Algorithm vs. Model

* **Algorithm**
    - Algorithms are 'generic' mathematical formulas
* **Model**
    - algorithm + data ==> model
* Often Algorithm and Model are used interchangeably

<img src="../../assets/images/machine-learning/algorithm-vs-model1.png" alt="algorithm-vs-model0" style="width:59%;"/><!-- {"left" : 1.82, "top" : 4.48, "height" : 3.69, "width" : 6.6} -->


---

## Algorithm and Model

  <img src="../../assets/images/machine-learning/algorithm-vs-model2.png" alt="algorithm-vs-model1" style="width:79%;"/><!-- {"left" : 0.6, "top" : 2.17, "height" : 5.31, "width" : 9.04} -->








---

# Machine Learning vs. Deep Learning

---

## AI / Machine Learning / Deep Learning

<img src="../../assets/images/machine-learning/AI-ML-DL-1.png" alt="AI-ML-DL.png" style="width:37%;float:right;"/><!-- {"left" : 5.56, "top" : 2.35, "height" : 4.37, "width" : 4.37} -->

 * **Artificial Intelligence (AI):** Broader concept of "making machines smart"

 * **Machine Learning:** Current application of AI that machines learn from data using mathematical, statistical models

 * **Deep Learning: (Hot!)** Using Neural Networks to solve some hard problems



Notes:

* http://www.teglor.com/b/deep-learning-libraries-language-cm569/

---

## AI / Machine Learning / Deep Learning


<img src="../../assets/images/machine-learning/AI-ML-DL-2.png" alt="AI-ML-DL-02.png" style="max-width:100%;"/><!-- {"left" : 1.02, "top" : 2.69, "height" : 4.26, "width" : 8.21} -->


Notes:

---

## Deep Learning (DL)


* Deep Learning uses Neural networks techniques

* Neural Networks fell out of favor in the 89s as statistics-based methods yielded better results

* Now making a comeback due to Big Data & Big Compute ((cluster computing , GPU and TPU)

* Examples
   - Facebook Deep Face
   - Google Translate
   - Google DeepMind playing GO game
   - IBM Deep Blue winning Jeopardy

Notes:

* https://www.quora.com/What-is-the-difference-between-deep-learning-and-usual-machine-learning
* https://www.wired.com/2015/5/deep-learning-isnt-dangerous-magic-genie-just-math/
* https://en.wikipedia.org/wiki/AlphaGo


---

## Deep Neural Network - Face Recognition


<img src="../../assets/images/machine-learning/3rd-party/Face-Recognition.png" style="width:32%;"/><!-- {"left" : 2.64, "top" : 1.53, "height" : 6.59, "width" : 4.98} -->


Notes:

* Image credit : Facebook research
* Source: https://deeplearning3j.org/neuralnet-overview



---

## Machine Learning vs. Deep Learning (1/3)

| Features                             | Machine Learning                                              | Deep Learning                                                    |
|--------------------------------------|---------------------------------------------------------------|------------------------------------------------------------------|
| **==> Data size (see next slide for graph)** | Performs reasonably well on small / medium data               | Need large amount of data for reasonable performance             |
| Data Type (see next slides)          | Works well with structured data                               | Can handle structured data & unstructured data                   |
| Scaling                              | Doesn't scale with large amount of data                       | Scales well with large amount of data                            |
| Compute power                        | Doesn't need a lot of compute (works well on single machines) | Needs a lot of compute power (usually runs on clusters)          |
| CPU/GPU                              | Mostly CPU bound                                              | Can utilize GPU for certain computes (massive matrix operations) |
| Feature Engineering                  | Features needs to specified manually (by experts)             | DL can learn high level features from data automatically         |
| Execution Time                       | Training usually takes seconds, minutes, hours                | Training takes lot longer (days)                                 |
| Interpretability                     | Easy to interpret                                             | Hard to understand the final result                              |

<!-- {"left" : 0.13, "top" : 1.22, "height" : 6.74, "width" : 9.99, "columnwidth" : [2.59, 3.32, 4.09]} -->




Notes:

* https://www.analyticsvidhya.com/blog/2017/04/comparison-between-deep-learning-machine-learning/


---

## Machine Learning vs. Deep Learning


<img src="../../assets/images/machine-learning/machine_learning_vs_deep_learning.png" style="width:60%;"/><!-- {"left" : 1.18, "top" : 1.83, "height" : 5.98, "width" : 7.88} -->


Notes:



---

## 1980's and 1990's

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-01.png" style="width:80%;"/><!-- {"left" : 0.71, "top" : 2.28, "height" : 5.08, "width" : 8.83} -->




Notes:

Source: Jeff Dean


---

## 1990+

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-02.png" style="width:80%;"/><!-- {"left" : 0.22, "top" : 2, "height" : 5.64, "width" : 9.8} -->



Notes:

Source: Jeff Dean


---

## Now

<img src="../../assets/images/machine-learning/ML-vs-DL-timeline-1980-1990-03.png" style="width:80%;"/><!-- {"left" : 0.31, "top" : 2.05, "height" : 5.55, "width" : 9.64} -->



Notes:

---

## Machine Learning vs. Deep Learning (2/3)

| Features                             | Machine Learning                                              | Deep Learning                                                    |
|--------------------------------------|---------------------------------------------------------------|------------------------------------------------------------------|
| Data size (see next slide for graph) | Performs reasonably well on small / medium data               | Need large amount of data for reasonable performance             |
| **==> Data Type (see next slides)**          | Works well with structured data                               | Can handle structured data & unstructured data                   |
| Scaling                              | Doesn't scale with large amount of data                       | Scales well with large amount of data                            |
| Compute power                        | Doesn't need a lot of compute (works well on single machines) | Needs a lot of compute power (usually runs on clusters)          |
| CPU/GPU                              | Mostly CPU bound                                              | Can utilize GPU for certain computes (massive matrix operations) |
| Feature Engineering                  | Features needs to specified manually (by experts)             | DL can learn high level features from data automatically         |
| Execution Time                       | Training usually takes seconds, minutes, hours                | Training takes lot longer (days)                                 |
| Interpretability                     | Easy to interpret                                             | Hard to understand the final result                              |

<!-- {"left" : 0.25, "top" : 1.26, "height" : 6.89, "width" : 9.75, "columnwidth" : [2.86, 3.17, 3.72]} -->

Notes:



---

## Structured Data vs. Unstructured Data

| Structured Data                                          | Unstructured Data                             |
|----------------------------------------------------------|-----------------------------------------------|
| Data has well defined structure.                         | Structure is not well defined or non existing |
| Data in a database tables are well defined.  10 columns, first column is integer, second column is timestamp ..etc | videos, images                                             |

<!-- {"left" : 0.26, "top" : 1.31, "height" : 2.65, "width" : 9.82, "columnwidth" : [6.33, 3.49]} -->

<img src="../../assets/images/deep-learning/3rd-party/Structured-Data-Unstructured-Data.png" alt="XXX image not found" style="max-width:60%;"/><!-- {"left" : 1.53, "top" : 4.35, "height" : 3.83, "width" : 7.19} -->


Notes:


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

<!-- {"left" : 2.1, "top" : 1.77, "height" : 2.68, "width" : 6.04, "columnwidth" : [1.36, 1.44, 1.22, 2.02]} -->

 * Text data (CSV, JSON) can have structure too

JSON data

```json
{   "name" : "Joe",
    "email" : "joe@gmail.com" }
```
<!-- {"left" : 0, "top" : 5.87, "height" : 0.49, "width" : 3.61} -->


CSV data (Comma Seperated Values)

```
joe,joe@gmail.com
jane,jane@gmail.com
```
<!-- {"left" : 0, "top" : 6.93, "height" : 0.81, "width" : 3.94} -->



Notes:


---

## Unstructured Data Examples


 * Text
    - Documents: email, word documents
    - Survey results (customer feedback)
    - customer support ticket notes

 * Binary data
    - Audio (phone call recordings)
    - Images
    - Video (YouTube videos)

<img src="../../assets/images/generic/3rd-party/word-document-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 1.93, "top" : 5.83, "height" : 1.22, "width" : 0.97} --><img src="../../assets/images/generic/3rd-party/email-at-sign-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 3.25, "top" : 5.95, "height" : 0.97, "width" : 0.97} --><img src="../../assets/images/deep-learning/3rd-party/cat-2.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 4.57, "top" : 5.65, "height" : 1.51, "width" : 0.97} --><img src="../../assets/images/generic/3rd-party/video-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/>&nbsp;<!-- {"left" : 5.86, "top" : 5.92, "height" : 1.04, "width" : 0.97} --><img src="../../assets/images/generic/3rd-party/audio-headphones-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="10%"/><!-- {"left" : 7.15, "top" : 5.95, "height" : 0.97, "width" : 1.17} -->


Notes:

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

Notes:



---

## Machine Learning vs. Deep Learning (3/3)

| Features                             | Machine Learning                                              | Deep Learning                                                    |
|--------------------------------------|---------------------------------------------------------------|------------------------------------------------------------------|
| Data size (see next slide for graph) | Performs reasonably well on small / medium data               | Need large amount of data for reasonable performance             |
| Data Type (see next slides)          | Works well with structured data                               | Can handle structured data & unstructured data                   |
| Scaling                              | Doesn't scale with large amount of data                       | Scales well with large amount of data                            |
| Compute power                        | Doesn't need a lot of compute (works well on single machines) | Needs a lot of compute power (usually runs on clusters)          |
| CPU/GPU                              | Mostly CPU bound                                              | Can utilize GPU for certain computes (massive matrix operations) |
| Feature Engineering                  | Features needs to specified manually (by experts)             | DL can learn high level features from data automatically         |
| Execution Time                       | Training usually takes seconds, minutes, hours                | Training takes lot longer (days)                                 |
| Interpretability                     | Easy to interpret                                             | Hard to understand the final result                              |

<!-- {"left" : 0.25, "top" : 1.3, "height" : 6.89, "width" : 9.75, "columnwidth" : [2.86, 3.17, 3.72]} -->


Notes:


---

## Deciding Between Machine Learning(ML) and Deep Learning(DL)

- This is not an easy decision, but here are some factors to think about

- Have structured data?  Then both ML and DL can be used

- Got unstructured data?  Probably deep learning

- Do keep in mind, deep learning usually needs
    - lot of data
    - and lot of compute time   
    to produce good results


Notes:


---

## Video: How Scale is Helping Deep Learning

<img src="../../assets/images/deep-learning/3rd-party/video-dl-scale-andrew-ng.png" alt="XXX image missing" style="background:white;border: 2px solid grey; max-width:100%;" width="60%"/><!-- {"left" : 1.36, "top" : 1.34, "height" : 4.04, "width" : 7.52} -->


[Link](https://www.youtube.com/watch?v=LcfLo7YP8O4)

Andrew Ng explains how Deep Learning algorithms can scale better with data size.


Notes:

https://www.youtube.com/watch?v=LcfLo7YP8O4




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

---

## Algorithm Summary

<img src="../../assets/images/machine-learning/algorithm-summary-1.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 1.75, "height" : 5.07, "width" : 8.21} -->
                                                  |

Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/


---
## How to do Machine Learning


 *  **Collect data**
    More data we have, the better the algorithms become.  This data can come from internal logs (clickstreams) or external sources (credit scores of customers)

 *  **Prepare Data**
    Raw data is hardly in a form to be used.  It needs to be cleansed, tagged and curated before ready to use

 *  **Train a model**
    Feed the training data to model so it can learn

 *  **Evaluate the model**
    Test the model accuracy

 *  **Improve the model**
    Either by adding more training data, choosing a different algorithm ..etc.

Notes:




---

## Types of Machine Learning


 *  **Supervised Machine Learning:**
     - Algorithm learns from labeled training data
     - And predicts on new data

 *  **Unsupervised Machine Learning**
     - Algorithm tries to find natural patterns in the data

 *  **Semi-Supervised Learning**
     - Algorithm is trained with a training set which contains unlabeled (usually lot) and labeled (usually little) data
     - Example: Large images archive only a few of them are labeled (cat, dog, person) and majority are unlabeled

 *  **Reinforcement Learning**
     - Based on 'game play'  (rewards vs penalties)

Notes:


---

## Supervised Machine Learning

<img src="../../assets/images/machine-learning/3rd-party/Supervised.png" style="width:39%;float:right;" /><!-- {"left" : 5.51, "top" : 1.18, "height" : 2.96, "width" : 4.45} -->

 * Algorithm learns from (training) data

 * Then predicts on 'unseen' data

<br clear="all" />

| Algorithms     | Description                                                            | Applications                                     |
|----------------|------------------------------------------------------------------------|--------------------------------------------------|
| Classification | Categorize things into groups                                          | -Spam classification <br/>-Fraud / no fraud      |
| Regression     | Dealing with numbers and calculate the probability something happening | -Predict house prices <br/>-Predict stock market |

<!-- {"left" : 0.25, "top" : 5.1, "height" : 2.17, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

Image credit (Creative Commons): Pexels.com

---


## Supervised Learning Example - Regression


 * Predicting stock market

 * Train the model using training data (already known)

 * Test performance using test data (already known)

 * Predict no new data (unseen)

<img src="../../assets/images/machine-learning/3rd-party/stock-market-1.png" style="width:59%;"><!-- {"left" : 1.02, "top" : 4.12, "height" : 3.44, "width" : 8.21} -->


Notes:




---

## Supervised Learning Methodology


 * Split the data set into

     - **Training set:** Train the algorithm (training set should represent data well enough)

     - **Test set:** Validate the model

 * Start with 69% training, 29% test
    - Tweak the dials to increase or decrease the proportion

<img src="../../assets/images/machine-learning/Model-Validation-1.png" style="max-width:59%;"><!-- {"left" : 2.69, "top" : 5.16, "height" : 2.14, "width" : 4.87} -->


Notes:

Facebook used 95%/5% `Understanding text from scratch`

---

## Supervised Learning - Classification


 * Classification is a model that predicts data into "buckets"
 * Examples:
     - Email is  **SPAM**  or  **HAM**  (not-SPAM)
     - A cell is  **cancerous**  or  **healthy**
     - Hand-written numbers -> any digits -1, 0, 1,..., 8
 * Classification algorithm learns from training data
     - Supervised learning
 * Also predicted classes are **discrete** or **qualitative**

<img src="../../assets/images/machine-learning/Classification-01.png" style="max-width:59%;"><!-- {"left" : 1.21, "top" : 5.37, "height" : 2.88, "width" : 7.83} -->



Notes:




---

## Classification Applications


 * Web

     - Email is spam or not

     - Website is authentic or fraudulent

 * Medicine

     - Is this cell cancerous or not?

 * Finance

     - Credit card transaction fraudulent or not

 * OCR

     - Recognizing characters and symbols

Notes:




---

## Un Supervised Machine Learning

<img src="../../assets/images/machine-learning/3rd-party/Un-Supervised.png" style="width:29%;float:right;" /><!-- {"left" : 5.1, "top" : 1.23, "height" : 2.75, "width" : 4.87} -->


 * No training needed

 * Algorithm tries to find patterns in data



| Algorithms               | Description                             | Applications                                                      |
|--------------------------|-----------------------------------------|-------------------------------------------------------------------|
| Clustering               | Find naturally present patterns in data | -Identify news stories (sports / business) <br/>-Gnome clustering |
| Association              | Find similar patterns                   | -people who buy A also buy B                                      |
| Dimensionality Reduction | Reduces number of features              | -Reducing 999s of variables into manageable size                 |

<!-- {"left" : 0.25, "top" : 5.12, "height" : 3.13, "width" : 9.75, "columnwidth" : [3.11, 2.97, 3.67]} -->

Notes:



---

## Clustering

<img src="../../assets/images/machine-learning/clustering-02.png" style="width:49%;float:right;"><!-- {"left" : 5.41, "top" : 1.5, "height" : 1.79, "width" : 4.72} -->

 * Clustering finds natural groupings in data

 * Humans naturally cluster data we encounter
     - Categorizing, organizing, etc.
     - Our brains seek patterns

 * Why do we cluster?
     - To understand our data
     - To find "more like this"


Notes:

* Clustering allows us to group similar objects or events or data sets.
* This is a method of unsupervised learning.


---


## Clustering Use Cases: Fraud / Anomaly Detection

 * Anomaly detection

     - Find fraud

     - Detect network intrusion attack

     - Discover problems on servers

<img src="../../assets/images/machine-learning/clustering-anomaly-detection-1.png" style="width:29%;"><!-- {"left" : 2.34, "top" : 3.62, "height" : 4.52, "width" : 5.57} -->


Notes:

* Image credit : Pixabay : Creative Commons Zero :
* https://pixabay.com/en/nuts-black-acorn-oak-animal-food-60813/





---

## Clustering Applications


 * Biology

     - Genomics grouping

 * Medicine

     - Xray/CAT image analysis

 * Marketing

     - Consumer grouping ("soccer mom"...etc.) and behavior analysis

 * Web

     - Search result grouping
     - News article grouping (Google news)

 * Computer Science: Image analysis

 * Climatology: Weather pattern analysis (high pressure/warm regions)

Notes:

* https://en.wikipedia.org/wiki/Cluster_analysis

---

## Unsupervised Example: Google News


 * Google News algorithm automatically groups **related news stories**  into sections

<img src="../../assets/images/machine-learning/3rd-party/Google-News-1.png" style="max-width:89%;"><!-- {"left" : 2.13, "top" : 2.41, "height" : 6.02, "width" : 5.99} -->



Notes:


---

## Clustering Use Case: Customer Purchases @ Walmart

<img src="../../assets/images/deep-learning/3rd-party/Walmart-01.png" alt="Walmart-01.png" style="width:40%;float:right;"/><!-- {"left" : 5.38, "top" : 1.11, "height" : 2.78, "width" : 4.62} -->

 * Here is how Walmart is segmenting customer purchases
     * Pharmacy Runs
     * Strictly Grocery
     * Grocery and General Merchandise
     * Michaels Run
     * Party Trip
     * Toys
     * Electronics
     * Baby
     * Gallon of Milk
     * **Booze and Calories**
     * and more ...


---

## Clustering Use Case: Customer Purchases @ Walmart

 * **Question for class:** What is the use case for this?


<img src="../../assets/images/deep-learning/3rd-party/Walmart-01.png" alt="Walmart-01.png" style="width:40%;float:right;"/><!-- {"left" : 1.41, "top" : 2.3, "height" : 4.46, "width" : 7.42} -->



Notes:

https://www.kaggle.com/c/walmart-recruiting-trip-type-classification



---

## Semi-Supervised


 * We are still learning, but not all data points are 'labelled'

 * But by grouping data points together, the algorithm can 'infer' information, even when labels are missing

<img src="../../assets/images/machine-learning/Semi-Supervised.png" style="max-width:49%;"><!-- {"left" : 1.56, "top" : 2.97, "height" : 5.25, "width" : 7.12} -->


Notes:

---

## Semi-Supervised Learning Video

<img src="../../assets/images/deep-learning/3rd-party/Semi-Supervised-Learning-Video.png" alt="Semi-Supervised-Learning-Video.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 1.52, "height" : 4.59, "width" : 8.21} -->


[Link](https://www.youtube.com/watch?v=b-yhKUINb7o)

Notes:

https://www.youtube.com/watch?v=b-yhKUINb7o



---

## Reinforcement Learning


 * Imagine you are playing a new video game.  You have no idea how to play it.How will you learn?

 * Try a few things:
    - Open a door -> get more money / ammo
    - Jump from a cliff -> got hurt.. Loose health points .. Ouch!

 * This is how 'Reinforcement Learning' works.
     - Algorithm tries a few moves.. And learns automatically

Notes:



---

## Reinforcement Learning


 * Here the robot gets rewarded for 'food' and penalized for walking into fire

<img src="../../assets/images/machine-learning/Reinforcement-Learning.png" style="max-width:79%;"><!-- {"left" : 1.05, "top" : 2.66, "height" : 4.71, "width" : 8.15} -->


Notes:



---

## Reinforcement Learning Demo: Atari Breakout


<img src="../../assets/images/deep-learning/3rd-party/Atari-Breakout.png" style="width:29%;"><!-- {"left" : 2.64, "top" : 1.24, "height" : 5.66, "width" : 4.96} -->



[Link](https://www.youtube.com/watch?v=V1eYniJ0Rnk)


Notes:

* [Video](https://www.youtube.com/watch?v=V1eYniJ0Rnk)
* https://money.cnn.com/2016/8/28/technology/future/alphago-movie/index.html


---

## Reinforcement Learning Demo: Open AI Bots Playing Dota


<img src="../../assets/images/machine-learning/3rd-party/Open-AI-Bots-Playing-Dota.png" style="width:69%;"><!-- {"left" : 1.05, "top" : 1.27, "height" : 4.59, "width" : 8.15} -->

[Link](https://www.youtube.com/watch?v=eHipy_j29Xw)


Notes:

* https://www.youtube.com/watch?v=eHipy_j29Xw


---


## Reinforcement Learning Success Stories


 * [OpenAI trounces Dota-3 players](https://www.theinquirer.net/inquirer/news/3037135/openais-dota-3-playing-bots-trounce-semi-pro-players)

 * [Deep Mind's AI beats GO champion](https://www.theverge.com/2016/9/17/16495547/deepmind-ai-go-alphago-zero-self-taught)

    The company's latest AlphaGo AI learned superhuman skills by playing itself over and over

 * [Google's Alpha-GO defeats GO master](https://qz.com/639951/googles-ai-won-the-game-go-by-defying-millennia-of-basic-human-instinct/)

 * [OpenAI](https://openai.com/research/) is founded by Elon Musk.

     - To promote AI research for public bood

Notes:

* https://www.theinquirer.net/inquirer/news/3037135/openais-dota-3-playing-bots-trounce-semi-pro-players
* https://openai.com/research/
* https://www.theverge.com/2016/9/17/16495547/deepmind-ai-go-alphago-zero-self-taught
* https://qz.com/639951/googles-ai-won-the-game-go-by-defying-millennia-of-basic-human-instinct/


---

## Algorithm Summary

<img src="../../assets/images/machine-learning/algorithm-summary-1.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 1.75, "height" : 5.07, "width" : 8.21} -->
                                                  |

Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/


---

## ML Algorithm Cheat Sheet


<img src="../../assets/images/machine-learning/cheat-sheet.png" style="width:79%;"><!-- {"left" : 0.29, "top" : 1.62, "height" : 5.82, "width" : 9.67} -->


Notes:


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
