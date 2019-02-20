Introduction to TensorFlow
======

## Lesson Objectives


 * Understand the needs that TensorFlow addresses

 * Be familiar with TensorFlow's capabilities and advantages

 * Gain an understanding of a basic TensorFlow installation


Notes: 


---

# TensoFlow Project

## TensorFlow Eco-System


 * Open Source Project
    - Very active, fast-growing community
 *  - __Google__ supporting and developing TensorFlow
    - Very much supportive of TensorFlow
    - Wants to see TensorFlow as THE AI software
    - Supports TensorFlow in GCP


Notes: 


---
## TensorFlow Project


 * TensorFlow is a Google-sponsored, Open Source project

     - http://www.tensorflow.org/

 * Written in C++

     - Major API in Python

     - Newer API bindings in Java/JVM, C++, Go, R, etc.

Notes: 


---
## Tensorflow Popularity

 * Tensorflow has outpaced its rivals in popularity:
 * Survey of Github Stars:

![](../../assets/images/deep-learning/Github_stars.png) <!-- {"left" : 0.56, "top" : 2.36, "height" : 4.88, "width" : 9.13} -->


Notes: 



---


## Big Spike in Job Postings


 * Source: indeed.com

![](../../assets/images/deep-learning/Introduction-to-Tensorflow-Used-More-and-More-0.png) <!-- {"left" : 1.01, "top" : 1.41, "height" : 5.5, "width" : 8.02} -->


Notes: 




---

## TensorFlow Noteworthy Versions

| Version | Release Date | Noteworthy Features         |
|---------|--------------|-----------------------------|
| 0.01    | 2015-11      | Initial Release from Google |
| 0.20    | 2016-05      | TensorFlow Reaches Maturity |
| 1.0     | 2017-01      | First Stable Release        |
| 1.1     | 2017-07      | Installable with Pip/conda  |
| 1.12    | 2018-12      | Current Release             |

<!-- {"left" : 0.61, "top" : 1.55, "height" : 3, "width" : 9.03, "columnwidth" : [2.01, 3.03, 3.98]} -->


Notes: 


---

## What is a Tensor?


 * Mathematically, a tensor is linear relationship describing a multidimensional map between vector spaces.

 * Practically, a tensor is a multidimensional array.  The number of dimensions is specified as the Rank.

| Rank | Tensor      |
|------|-------------|
| 0    | Scalar      |
| 1    | Vector      |
| 2    | Matrix      |
| 3    | Number Cube |
| n    | n-Tensor    |

<!-- {"left" : 2.9, "top" : 3.23, "height" : 3, "width" : 4.44, "columnwidth" : [2.22, 2.22]} -->

Notes: 



---

## TensorFlow versus NumPy


 * TensorFlow is comparable to NumPy. (Really??)

     - Both define highly optimized processing of n-dimensional arrays.

     - Both do most of their work outside of Python in optimized C++

 * But there are key differences

     - NumPy  **immediately**  processes the operation

     - TensorFlow builds a Directed Acyclic Graph of operations and executes it

Notes: 



---

## Using GPUs


 * One of TensorFlow’s most exciting features is using GPUs for compute capacity

     - ML is mainly linear algebra (matrix manipulation)

     - GPUs specialize in fast linear algebra.

     - GPUs + ML = match made in heaven.

 * Machines running with GPUs have been shown up to 10x faster.

 * TensorFlow will consume GPU + all its memory 

     - So, you can’t use the GPU for graphics at the same time

     - No problem; servers don’t use graphics anyway!! 

 * You have to use TensorFlow builds matched to your GPU

     - Nvidia CUDA

     - Installation is a bit complicated. So on dev boxes we skip it

Notes: 



---

## Parallel TensorFlow


 * NN’s are known for being difficult to parallelize

 * But, TensorFlow can run on distributed clusters

 * Define a distributed master service plus worker services

Notes: 



---

## TensorFlow + Hadoop


 * TensorFlow can natively read HDFS data (as a client)

     - Refer to files as hdfs://namenode:8020/path/to/your/files

 * TensorFlow can also use Hadoop YARN as a cluster manager for Distributed TensorFlow!

     - Hortonworks has a TensorFlow assembly to run yarn on its Hadoop distribution

Notes: 



---

## TensorFlow + Spark


 * Spark is becoming more popular than Hadoop itself these days:

     - Much faster

     - Better ML support

     - Runs natively on Hadoop/YARN

     - Arguably, better to run TF on Spark than on Hadoop.

 * Yahoo: TensorFlow on Spark (TFoS)

     - Framework for distributing TensorFlow apps on Spark / Hadoop

     - Immature

Notes: 



---

## Deep Learning in TensorFlow


 * Deep Learning simply means a Neural Network:

     - With more than one hidden layer

 * TensorFlow is the world’s most popular engine for deep learning

     - Execution Engine is Tuned to Facilitate Deep Learning
     - Runs very fast on GPUs!

Notes: 

Another meaning of "Deep Learning" deals with breaking the learning into subsequent levels of understanding
This is also called "Representation Learning" where the network first learns the features,
and then uses these features for further understanding.
For us, though, the definition of "neural network with more than one hidden layer" will suffice.


---

## Traditional Machine Learning in TensorFlow


 * TensorFlow can also be used for traditional Machine Learning

 * Traditional Machine Learning Algorithms:

     - Linear Regression

     - Logistic Regression

     - Support Vector Machines

     - Decision Tree Learning

 * Other libraries are more extensive in terms of features

Notes: 



---

# TensorFlow Installation

## Lab Setup


 * Login to VM running in the cloud

 *  **Lab** 

![](../../assets/images/deep-learning/Introduction-to-Tensorflow-Lab-Setup-0.png) <!-- {"left" : 0.31, "top" : 2.41, "height" : 3.1, "width" : 9.62} -->


Notes: 




---

## Installation


 * Much Easier Installation than it used to be!

 * Can install with pip!

 * You may need to have python-dev libraries installed.

 * Recommended to install in virtualenv (or conda environment).

```text
$ (sudo) pip install tensorflow keras 
```
<!-- {"left" : 0, "top" : 2.93, "height" : 0.65, "width" : 8.27} -->

 * Anaconda: Now officially suported

```text
$ conda install tensorflow keras
```
<!-- {"left" : 0, "top" : 4.74, "height" : 0.73, "width" : 8.27} -->




Notes: 



---

## TensorFlow Lab: Installing Tensorflow and Keras


 *  **Instructions for the trainer**:

     - Provide a zip bundle of lab files to students

     - Help set up ‘mark down preview plus’ plugin to view markdown files

 *  **Overview**: In this lab, we will become familiar with the lab environment, set up TensorFlow, and start.

 *  **Approximate time**: 15-20 minutes

 *  **Instructions for students**:

     - Follow the **01-basics/1.1-install-tensorflow.md** lab


Notes: 

(1) The labs are written in markdown format
We recommend reading them in Google chrome with the Markdown Preview Plus plugin  (trainer will guide you through this)
But they're just text files, and can be read with any text editor


---

## TensorFlow Lab: Hello World in TensorFlow


 *  **Note**: 

 *  **Instructions for the trainer**:

    - This lab is run with Jupyter Notebook
    - Help the students start a Jupyter Notebook

 *  **Overview**: In this lab, we will do a hello world for TensorFlow and Keras.

 *  **Approximate time**: 15-20 minutes

 *  **Instructions for students**:

     - Follow  **01-basics/1.2-helloworld.ipynb** lab


Notes: 

---


# High Level TensorFlow


## Base TensorFlow is Low Level


 * It is more of an execution model 

     - Handles the flows of Tensors

     - Does not automatically train models
 
     - We can write code to do that

 *  Low Level TensorFlow does **NOT** have built-in training 
    - You have to do it yourself with Tensor Transformations


Notes: 




---

## Tensorflow UI Tiers

 * TensorFlow has a multi-tiered API
   - Low-Level
   - Mid-Level
   - High-Level

![https://www.tensorflow.org/images/tensorflow_programming_environment.png](../../assets/images/deep-learning/tensorflow_layers_small.png) <!-- {"left" : 0.35, "top" : 3.25, "height" : 2.80, "width" : 9.53} -->



---

## tf.estimator API


 * Packaged With TensorFlow core as of 1.0

     - Formerly named scikit-train, then `tf.contrib.learn`

 * Designed to be familiar to scikit-learn users

     - one-line models.

 * Used together with TensorFlow Datasets API

Notes: 



---

## Keras


 * Mature library that pre-dates TensorFlow

 * Allows for tensorflow-independent code

     - Might want to use another underlying library?

 * Ensures stability within fast-paced TensorFlow release cycle

 * TensorFlow now includes bindings for 

     - `tf.keras` namespace

Notes: 



---

## Comparison With Scikit-learn

| TensorFlow                                                                           | Scikit-Learn                                |
|--------------------------------------------------------------------------------------|---------------------------------------------|
| Focused on Neural Networks and Deep Learning Models (Other Algorithms Available too) | Focused on a wide-variety of ML algorithms  |
| Base Framework low-level (Wrappers available for high-level)                         | Higher-level API                            |
| Distributed Execution Model                                                          | Not Distributed                             |
| Extensive GPU Optimization                                                           | Not GPU Optimized                           |
| Support for Distributed File Systems (HDFS)                                          | No Support for Hadoop                       |
| Supports Python API (primary), plus Java, C++ Go, R, etc.                            | Python Support Only                         |

<!-- {"left" : 0.25, "top" : 1.22, "height" : 4.55, "width" : 9.75, "columnwidth" : [4.88, 4.88]} -->

Notes: 



