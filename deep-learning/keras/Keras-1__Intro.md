# Introduction to Keras

<img src="../../assets/images/logos/keras-logo-1.png" alt="keras-logo-1.png" style="width:40%;"/><!-- {"left" : 6.34, "top" : 7.87, "height" : 1.4, "width" : 4.82} -->


---

## Lesson Objectives

  * Understand Keras framework

  * Understand how Keras works with Deep Learning frameworks

  * Resources: See appendix

Notes:  

---


# Keras Intro

---

## Keras


* Keras ([Keras.io](https://keras.io/)) - is a high level neural networks API
* It was developed by a Google engineer, Francois Chollet
* Written in Python
* Works with [Tensorflow](https://github.com/tensorflow/tensorflow)(from Google), [CNTK](https://github.com/Microsoft/cntk)(from Microsoft) and [Theano](https://github.com/Theano/Theano)

<img src="../../assets/images/deep-learning/keras-architecture.png" alt="XXX image missing" style="border: 5px solid grey;width:55%;"/><!-- {"left" : 4.73, "top" : 5.65, "height" : 5.68, "width" : 8.05} -->


Notes:  
NVIDIA - leading GPU vendor - provides CUDA (Compute Unified Device Architecture) and cuDNN (CUDA Deep Neural Network)

---

## Keras Features

<img src="../../assets/images/machine-learning/keras-cpu-gpu-tpu-1.png" style="width:50%;float:right;"/><!-- {"left" : 9.87, "top" : 2.47, "height" : 3.7, "width" : 7.02} -->

* Write high level code
    - easier to write
    - faster to experiment

* Can support multiple back-ends

* Runs seamlessly on CPU and GPU

* [Wins Machine Learning competitions](https://www.quora.com/Why-has-Keras-been-so-successful-lately-at-Kaggle-competitions)



Notes:
https://www.quora.com/Why-has-Keras-been-so-successful-lately-at-Kaggle-competitions

---

## Keras Guiding Principles

<img src="../../assets/images/generic/3rd-party/legos-1.jpg" alt="legos" style="width:30%; float:right;"/><!-- {"left" : 11.37, "top" : 2.19, "height" : 4.31, "width" : 5.76} -->

 * **User Friendliness**  
   - Offers consistent, simple APIs

 * **Modularity**  
   - Combine various modules, like Legos&reg;

 * **Easy Extensibility**  
   - Add new modules easily

 * **Works 100% in Python**  
   - No other libraries needed

 * ___"Keras is designed for human beings, not machines"___

---

## Keras Comparison

Here is a quick comparison of writing [MNIST](https://en.wikipedia.org/wiki/MNIST_database) digits classification code in Keras and Tensorflow

| Library    | Line Count | Character Count  (no spaces) | Avg. character  count per line |
|------------|------------|------------------------------|--------------------------------|
| Tensorflow | 31         | 2162                         | 70                             |
| Keras      | 22         | 1018                         | 46                             |

<!-- {"left" : 1.05, "top" : 3.3, "height" : 1, "width" : 15.39} -->


* As we can see, Keras is almost 50% more compact.

<small>source: [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/) Ch. 2</small>
---

## Deep Learning Libraries Popularity

* These stats stats are from Github

| Library                       | Stars | Contributors |
|-------------------------------|-------|--------------|
| tensorflow/tensorflow         | 92150 |     1357     |
| fchollet/keras                | 26744 |      638     |
| BVLC/caffe                    | 23159 |      264     |
| Microsoft/CNTK                | 13995 |      173     |
| dmlc/mxnet                    | 13318 |      492     |
| pytorch/pytorch               | 12835 |      414     |
| deeplearning4j/deeplearning4j | 8472  |      140     |
| caffe2/caffe2                 | 7540  |      176     |

<!-- {"left" : 1.38, "top" : 3.19, "height" : 1, "width" : 14.74} -->

Notes:  
Source: 'Practical Deep Learning for Cloud and Mobile' (ISBN : 9781492034841), Ch 2

---

## Keras Version History

| Date     | Release | Features        |
|----------|---------|-----------------|
| 2015 May | v 0.1   | Initial Release |
| 2018 Oct | v 2.2   | Current v2      |

<!-- {"left" : 1.04, "top" : 2.94, "height" : 1, "width" : 15.43} -->

Notes:  
https://github.com/keras-team/keras/releases

---

## Parallelizing Keras

  * These days, we need to train our models on huge amount of data.  
    - This takes enormous amount of compute power; A single machine won't be able to handle this.Need to scale

  * Parallelizing Keras
    - Run on multiple GPUs (on a single machine)
    - Run on [multiple GPUs on Google Cloud cluster](https://cloud.google.com/solutions/running-distributed-tensorflow-on-compute-engine) using distributed Tensorflow
    - Use [dist keras](https://github.com/cerndb/dist-keras) on Spark engine

<img src="../../assets/images/deep-learning/DL-cluster.png" alt="cluster" style="width:45%;"/><!-- {"left" : 4.01, "top" : 6.89, "height" : 4.02, "width" : 9.49} -->


---

## Keras and Other DL Frameworks

* Isn't Keras a wrapper for other DL frameworks?
   - Nope, this is a common (but understandable) misconception.
   - Keras is an API standard for defining and training machine learning models.
   - Keras uses back-end engines (like Tensorflow) for execution
   - Keras is not tied to a specific implementation

* But wait, isn't Tensorflow the most popular framework?

* Newsflash!:
[Tensorflow 2.0 is standardizing on Keras](https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a)

Notes:
https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a

---

## Keras and Tensorflow (2.0)

* Tensorflow includes a full implementation of Keras API in [tf.keras](https://www.tensorflow.org/guide/keras) package
    - This is different from [Keras.io](http://www.keras.io/)

* What is the difference between TensorFlow built-in Keras, and the Keras version at keras.io?
    - _tf.keras_ implementation has TensorFlow specific enhancements
    - [Eager execution](https://www.tensorflow.org/guide/eager) for fast execution
    - Distributed training
    - Support for TPU

Notes:
https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a


---

## Future of Keras

* From [keras.io](https://keras.io) project site...

* As of January 2020, current version is 2.2   
Next major (and final) release of Keras will be 2.3

* __`Multi-backend Keras`__ is superseded by __`tf.keras`__

* Users are encouraged to switch to __`tf.keras`__
    - It is better maintained
    - And supports TF2 better

---

## Keras Model Zoos

<img src="../../assets/images/deep-learning/zoo1.png" alt="XXX image missing" style="float:right;width:40%;"/><!-- {"left" : 11.37, "top" : 1.89, "height" : 5.6, "width" : 5.6} -->

  * A model zoo is a place wheres open-source models are shared so others can use them

  * Training a deep learning model from scratch on a multi-million-image database requires weeks of training time and lots of computational energy, making it a difficult task


  * Models can be trained for
    - specific task (image recognition,  text analytics)
    - specific framework (Keras, Caffe)

  * Popular Zoos
     - https://modelzoo.co/
     - https://github.com/albertomontesg/keras-model-zoo

---

## Model Zoos in Keras

ImageNet trained models

| Model               | Size  | Top 1 Accuracy | Top 5 Accuracy | Parameters  | Depth |
|---------------------|-------|----------------|----------------|-------------|-------|
| Inception-ResNet-V2 | 215MB | 0.804          | 0.953          | 55,873,736  | 572   |
| Xception            | 88MB  | 0.79           | 0.945          | 22,910,480  | 126   |
| Inception-V3        | 92MB  | 0.788          | 0.944          | 23,851,784  | 159   |
| DenseNet-201        | 80MB  | 0.77           | 0.933          | 20,242,984  | 201   |
| ResNet-50           | 99MB  | 0.759          | 0.929          | 25,636,712  | 168   |
| DenseNet-169        | 57MB  | 0.759          | 0.928          | 14,307,880  | 169   |
| DenseNet-121        | 33MB  | 0.745          | 0.918          | 8,062,504   | 121   |
| VGG-19              | 549MB | 0.727          | 0.91           | 143,667,240 | 26    |
| VGG-16              | 528MB | 0.715          | 0.901          | 138,357,544 | 23    |
| MobileNet           | 17MB  | 0.665          | 0.871          | 4,253,864   | 88    |

<!-- {"left" : 0.39, "top" : 3.09, "height" : 1, "width" : 16.72} -->

<small>

Source : [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/ch01.html#image_classification_with_keras), Ch 2
</small>

Notes:
Source : [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/ch01.html#image_classification_with_keras), Ch 2---


---

# Getting Keras Up and Running

---

## Installing Keras

 * Before installing Keras, need to install a back-end engine.

 * With tensorflow v2 keras is included (tf.keras).  
 No need to install keras seperatly

```bash
# if using Anaconda Python
$  conda install tensorflow

# if using vanilla Python
$  pip install tensorflow
```
<!-- {"left" : 0.85, "top" : 3.8, "height" : 2.21, "width" : 6.74} -->

<br/>

* Testing configuration

```python
$  python
>>> import tensorflow as tf
>>> from tensorflow import keras

>>> print(keras.__version__)
#   2.2.4-tf
```
<!-- {"left" : 0.85, "top" : 7.2, "height" : 2.18, "width" : 6.74} -->

---

## Configuring Keras Back-end

  * Linux / Mac:  `$HOME/.keras/keras.json`  
  * Windows: `%USERPROFILE%/.keras/keras.json`

```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```
<!-- {"left" : 0.85, "top" : 3.55, "height" : 2.73, "width" : 11.15} -->


---

## Configuring Keras Back-end

  * Change the `backend` to "theano", "tensorflow", or "cntk"
  * Overwrite the config file by defining an environment variable `KERAS_BACKEND`

```bash
$  KERAS_BACKEND=tensorflow python -c "from keras import backend"

>  "Using TensorFlow backend."
```
<!-- {"left" : 0.85, "top" : 4.13, "height" : 1.15, "width" : 12.49} -->

---

## Keras Config Explained

```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```
<!-- {"left" : 0.85, "top" : 2, "height" : 2.83, "width" : 11.59} -->

<br/>

  * **image_data_format:**  
    - It specifies which data format convention Keras will follow. (keras.backend.image_data_format() returns it.)  
    - For 2D data (e.g. image), "channels_last" assumes (rows, cols, channels) while "channels_first" assumes (channels, rows, cols).
    - For 3D data, "channels_last" assumes (conv_dim1, conv_dim2, conv_dim3, channels) while "channels_first" assumes (channels, conv_dim1, conv_dim2, conv_dim3).
    - Values: "channels_last" or "channels_first".

---

## Keras Config Explained

```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```
<!-- {"left" : 0.85, "top" : 2.6, "height" : 2.28, "width" : 9.33} -->

<br/>

  * **epsilon:**
    - A numeric fuzzing constant used to avoid dividing by zero in some operations.

  * **floatx:**
    - Default float precision.
    - Values: "float16", "float32", or "float64".

  * **backend:**
    - Values: "tensorflow", "theano", or "cntk".

---

# Resources

---

## Resources

  * [Hands-on Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2nd Edition (https://learning.oreilly.com/library/view/hands-on-machine-learning/9781492032632/)by Aurélien Géron (ISBN: 9781492032649)

  * [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/) by Meher Kasam, Siddha Ganju, Anirudh Koul (ISBN: 9781492034841)


<img src="../../assets/images/books/hands-on-machine-learning-with-scikit-learn-9781492032649.jpg" alt="keras book1" style="width:20%;"/><!-- {"left" : 5, "top" : 6.16, "height" : 4.39, "width" : 3.34} --> &nbsp;&nbsp; <img src="../../assets/images/books/practical-deep-learning-for-cloud-and-mobile-9781492034841.jpg" alt="keras book4" style="width:20%;"/><!-- {"left" : 9.15, "top" : 6.16, "height" : 4.39, "width" : 3.34} -->

---

## Resources

  * [Keras Deep Learning Cookbook](https://learning.oreilly.com/library/view/keras-deep-learning/9781788621755/)by Manpreet Singh Ghotra, Rajdeep Dua (ISBN: 9781788621755)

  * [Learn Keras for Deep Neural Networks:A Fast-Track Approach to Modern Deep Learning with Python](https://learning.oreilly.com/library/view/learn-keras-for/9781484242407/)by Jojo Moolayil (ISBN : 9781484242407)very good book that explains concepts pretty well

<img src="../../assets/images/books/keras-deep-learning-9781788621755.jpg" alt="keras book3" style="width:19.1%;"/> &nbsp;&nbsp; <!-- {"left" : 5.35, "top" : 6.12, "height" : 4.18, "width" : 3.42} --><img src="../../assets/images/books/learn-keras-for-deep-neural-networks-9781484242407.jpg" alt="keras book3" style="width:15.5%;"/><!-- {"left" : 9.39, "top" : 6.12, "height" : 4.18, "width" : 2.76} -->
---
## Resources

  * [Deep Learning with Keras : Implement various deep-learning algorithms in Keras and see how deep-learning can be used in games](https://learning.oreilly.com/library/view/deep-learning-with/9781787128422/)by Sujit Pal, Antonio Gulli (ISBN: 9781787128422)

  * [Safari books online, Keras books](https://learning.oreilly.com/topics/keras)

<img src="../../assets/images/books/deep-learning-with-keras-9781787128422.jpg" alt="keras book2" style="width:18%;"/><!-- {"left" : 12.97, "top" : 2.2, "height" : 5.35, "width" : 3.51} -->
