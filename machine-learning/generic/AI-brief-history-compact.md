# A Brief (Modern) History of AI

---

## 2010+ : The Great AI Revival

 * AI is going through a resurgence now because of the following

 *  **'Big Data** ' - now we have so much data to train our models

 *  **'Big Data ecosystem** ' - excellent big data platforms (Hadoop, Spark, NoSQL) are available as open source

 *  **'Cloud Compute** '  platforms significantly lowered the barrier to massive compute power
     - $1 rents you 16 core + 128 G + 10 Gigabit machine for 1 hr on AWS!
     - So running a 100 node cluster for 5 hrs --> $500

 *  **Advances in hardware** - CPU / GPUs / TPUs

 * **Advances in Algorithms**

 * **Availability of pre-trained models**

 * Reference: [The great AI awakening](https://www.nytimes.com/2016/12/14/magazine/the-great-ai-awakening.html)


Notes:


---

## Hardware Advances: CPU & GPU

 * Recently GPUs - Graphics Processing Units - have become popular (especially in Deep Learning)

 * GPU cores are good at compute intensive calculations (math, matrix operations)

 * Each GPU core is capable of executing small set instructions, but there are 1000s of core per GPU
Running in parallel

<img src="../../assets/images/machine-learning/3rd-party/cpu-gpu.png" alt="XXX image missing" style="width:40%;"/><!-- {"left" : 2.52, "top" : 4.35, "height" : 3.58, "width" : 5.22} -->




Notes:

---

## Video: Audi Autonomous Driving

* Instructor: Show as time permits

* Audi's self driving car program explained.  

* Good comparison of brain vs. CPU vs. GPU around 50 second mark.

* [Link](https://www.youtube.com/watch?v=DjAJnQoNdMA)

<img src="../../assets/images/deep-learning/3rd-party/video-audi-self-driving.png" alt="XXX image missing" style="width:60%;"/><!-- {"left" : 0.86, "top" : 1.54, "height" : 3.12, "width" : 8.53} -->


Notes:

---

## Hardware Advances - CPU

 * Modern Intel Xeon CPUs (E5 or later) have vectorized linear algebra
    - Properly optimized, approaches speed of GPUs
    - And offers faster I/O performance for Big Data.

 * [Intel Math Kernel Library](https://software.intel.com/en-us/mkl) : highly optimized, threaded, and vectorized math functions that maximize performance on each processor family


<img src="../../assets/images/machine-learning/3rd-party/intel-cpu.png" alt="XXX image missing" style="width:60%;"/><!-- {"left" : 1.48, "top" : 5.14, "height" : 2.96, "width" : 7.29} -->

Notes:
- https://software.intel.com/en-us/mkl


---

## Hardware Advances - TPU

<img src="../../assets/images/deep-learning/3rd-party/cloud-tpu-01.png" style="width:30%;float:right;"/><!-- {"left" : 9.27, "top" : 0.92, "height" : 0.67, "width" : 0.98} -->
<img src="../../assets/images/machine-learning/3rd-party/google-cloud-tpu.png" style="width:40%;float:right;clear:both;"><!-- {"left" : 5.34, "top" : 1.24, "height" : 2.19, "width" : 4.6} -->

 * TPU is Google's custom chip built for AI workloads
    - 3rd generation as of March 2018

 * More capable the CPUs / GPUs in certain tasks

 * TPU Use cases:
    - Processing Google Streetview photos (extract street numbers / text)
    - Image processing Google Photos (A single TPU can process 100 millions photos / day)
    - AlphaGo game

 * Designed for [Tensorflow](https://github.com/tensorflow/tensorflow)

 * Available in Google Cloud platform

Notes:

* https://en.wikipedia.org/wiki/Tensor_processing_unit
* https://github.com/tensorflow/tensorflow

---

## Video - TPU

 * Instructor: Show as time permits

 * Google CEO Sundar Pichai announces TPU @ Google I/O 2017
    - Training vs Inference performance @ 1:30
    - AutoML @ 4:25

 * [Link](https://www.youtube.com/watch?v=UsDhVx6cOrw)

<img src="../../assets/images/deep-learning/3rd-party/video-google-cloud-tpu.png" alt="XXX image missing" style="width:40%;"/><!-- {"left" : 2.74, "top" : 1.29, "height" : 3.55, "width" : 4.77} -->

---

## Recent Advances in AI Research

 * In recent years, lot of money is being invested in AI
 * Companies like Google / Facebook / Amazon are in an 'arms race' to hire the best talent in AI
 * Lot of research going on in public / private sectors
 * Organizations like OpenAI are fostering research in public domain
 * References
    - [Venture Capital Funding For Artificial Intelligence Startups Hit Record High In 2018  Forbes](https://www.forbes.com/sites/jeanbaptiste/2019/02/12/venture-capital-funding-for-artificial-intelligence-startups-hit-record-high-in-2018/)

<img src="../../assets/images/deep-learning/3rd-party/AI-investment-2018-forbes.jpg" alt="XXX image missing" style="width:60%;"/><!-- {"left" : 1.7, "top" : 5.97, "height" : 2.59, "width" : 6.85} -->

---

## Tools and Libraries Have Improved Tremendously

 * Historically, machine learning models had to be coded from scratch
    - Converting math into code, testing and debugging
    - This could take weeks or months

 * **Now tooling and libraries have gotten so much better**
    - And lot of high quality libraries are open source

---

## Availability of Pre-Trained Models

* **"If I have seen further it is by standing on the shoulders of giants" -- Isaac Newton**

<img src="../../assets/images/deep-learning/3rd-party/standing-on-shoulders.jpg" alt="XXX image missing" style="width:20%;float:right;"/><!-- {"left" : 7.45, "top" : 1.51, "height" : 3.71, "width" : 2.33} -->

 * Creating complex models takes lot of data and lot of training
    - this can take huge amount of compute power (days or weeks of training)

 * Now, we don't have to start from scratch

 * There are lot of high quality models that are open source.  We can start with them and tweak them to fit our needs

 * _This is probably the biggest reason for AI research advancing rapidly_

---

## AI History Recap

* Reference only

* [Video](https://www.youtube.com/watch?v=056v4OxKwlI)

<img src="../../assets/images/deep-learning/3rd-party/AI-History.png" alt="AI-History.png" style="width:76%;"/><!-- {"left" : 0.87, "top" : 1.64, "height" : 4.26, "width" : 8.5} -->


Notes:
