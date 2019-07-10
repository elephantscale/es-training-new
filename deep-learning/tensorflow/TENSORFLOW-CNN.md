TENSORFLOW CNN
======
## Lesson Objectives

 * Learn how to implement CNNs within TensorFlow
 * Discuss the process of convolution and how it work for image processing or other tasks
 * Describe what CNNs are and their applications
 * Illustrate how zero padding works with variations in kernel weights
 * Elaborate the pooling concepts in CNNs
 * Explain how to calculate the weighted inputs for all the feature maps stacked together
 * Explain how CNNs differ from ANNs

Notes: 


---
# Introducing CNNs

[Introducing CNNs](../generic/DL-CNNs.md)

## Lab: MNIST Low-Level with CNN:

  * **Note**:
  * **Instructions for the trainer**:
    - This lab is run with Jupyter Notebook
    - Help the students start a Jupyter Notebook
  * **Overview**: In this lab, we will do a hello world for TensorFlow and Keras.
  * **Approximate time**: 15-20 minutes
  * **Instructions for students**:
    - (Tensorflow)  **03-lowlevel/3.3-mnist-cnn.ipynb** lab


Notes:

---

# Convolutions

[Convolutions](../generic/DL-Convolutions.md)


# CNN in Tensorflow

## CNNs in TensorFlow

  * In Tensorflow, each input image is a tensor of shape [height, width, channels].

  * A mini-batch is represented as a 4D tensor of shape [mini-batch size, height, width, channels].
    -  A mini-batch is the subset of the input training data. It is used to train the model in smaller batches rather than feeding the entire training data together. It provides a nice compromise between training with individual data sample one at a time vs training with all the data samples together in one go.

  * The weights of a convolutional layer are represented as a 4D tensor of shape [fh , fw , fn , fn,]. The bias terms of a convolutional layer are simply represented as a 1D tensor of shape [fn].


Notes: 



---
## CNNs in TensorFlow


  * This code loads two color images, one of a Chinese temple and other of a flower.

  * Then it creates two 7x7 filters, one with horizontal white line and other with vertical white line.

 * TF  *conv2d*  is a convolutional layer, with zero padding (add padding if needed) and stride of 2 in this case.

  *  *strides*  is a 4 element 1D array, where two centre elements represent sh and sw.

```python

filters = np.zeroes(7, 7, channels, 2), dtype=tf.float32)
filters.test[:, 3, :, 0] = 1 # vert line
filters.test[3, :, :, 1] = 1 # horiz line

X = tf.placeholder(tf.float32, shape=(None, height, width,
                                      channels, ))
c = tf.nn.conv2d(X, filters, strides=[1,2,2,1],
                 padding="SAME")

```
<!-- {"left" : 0.0, "top" : 4.51, "height" : 2.34, "width" : 10.25} -->


Notes: 

Note that the stride here is 2 in both height and width, which will reduce dimensions.


---
## Pooling Layer


  * The following code creates a max pooling layer using a 2 × 2 kernel, stride 2, and no padding, then applies it to all the images in the dataset:
 


```python
X = tf.placeholder(tf.float32, shape=(None, height,
                                    width, channels)

max_pool = tf.nn.max_pool(X, ksize=[1,2,2,1],
              strides[1,2,2,1], padding="VALID")
```
<!-- {"left" : 0.0, "top" : 2.55, "height" : 1.73, "width" : 10.25} -->



Notes: 

Note that we specify the ksize in 4 dimensions because X is four dimensions: row, height, width, channels.  We almost never
use a stride across row (which makes no sense) and rarely across channes (RGB).  Mainly stride is used for height and width
convolutions. So it's index 1 (second from left), and 2 (third from left) that is altered.



---
## CNNs in TensorFlow (Contd.)


  * The ksize argument contains the kernel shape along all four dimensions of the input tensor: [mini-batch size, height, width, channels]. 

  * Either height and weight are 1 or channels is 1, depending on whether the pooling is across height and weight or if the pooling is across channels only.

  * To create an average pooling layer, just use the avg_pool() function instead of max_pool().

```python
X = tf.placeholder(tf.float32, shape=(None, height,
                                    width, channels)

max_pool = tf.nn.max_pool(X, ksize=[1,2,2,1],
              strides[1,2,2,1], padding="VALID")
```
<!-- {"left" : 0.0, "top" : 4.74, "height" : 1.73, "width" : 10.25} -->


Notes: 

Code image is same as previous slide. Adding it here to make it easy to relate the points to the code.


---
## CNNs in TensorFlow


  * Apart from `conv2d()`, TensorFlow offers other kinds of convolutional layers also, some of which are:

     - `conv1d()` creates a convolutional layer for 1D inputs. This is useful, for example, in natural language processing, where a sentence may be represented as a 1D array of words, and the receptive field covers a few neighbouring words.

     - `conv3d()` creates a convolutional layer for 3D inputs, such as 3D PET scan.

Notes: 



---
## Lab: Introducing CNNs

  * Demonstrate how to create CNNs in TensorFlow

    - **Objective**: Demonstrate various aspects of CNN with TensorFlow.
  * **Steps:** 
    - Load `china.jpg` and `flower.jpg` images from Python dataset module.
    - Develop a CNN to apply a vertical and horizontal 7x7 kernel filter to highlight vertical and horizontal lines respectively in the images loaded with SAME padding. Plot the output for the two images.

## Lab: Introducing CNNs

  * **Steps:** 
    - Try using the higher level TensorFlow layers API for convolution and check the output image.
    - Using a dataset of numbers between 1 and 13, try to apply a prime number filter first with SAME and then with VALID padding. Check the output of this convolutional layer in the two cases.
    - Create a max pooling layer using a 2x2 kernel, stride 2 and no padding. Apply this to the images in the china image dataset. Plot the output of the pooling layer.
    - **Dataset used:** China and Flower images from Python dataset module.
    - **Skills required:** In-depth understanding of CNNs and all their features like kernel, stride, padding, pooling etc.

Notes: 


---
## LAB: MINST in CNN

  * MNIST Dataset is the "hello world" of deep learning

  * 28x28 greyscale scanned digits

  * How to classify them?
  * CNNs for MNIST image classifcation

    - **Objective**: Use CNNs for MNIST image classification.

    - **Steps**  **:** 

    - Apply CNNs for MNIST image classification. Print training and test accuracy of the trained model. 

    - **Dataset used:** MNIST dataset to test a CNN-based classification network.

    - **Skills required:** In-depth understanding of CNNs and all their features like kernel, stride, padding, pooling etc.

Notes: 

---
## Lab: MNIST Low-Level with CNN:


  * **Note**:
  * **Instructions for the trainer**:

    - This lab is run with Jupyter Notebook
    - Help the students start a Jupyter Notebook

  * **Overview**: In this lab, we will do a hello world for TensorFlow and Keras.
  * **Approximate time**: 15-20 minutes
  * **Instructions for students**:
    - (Tensorflow)  **03-lowlevel/3.3-mnist-cnn.ipynb** lab


Notes:

---
## CNN in Keras

  * Low-Level TF is a bit cumbersome to do for deep learning.
  * Estimator has too little control out of the box
    - though we can "wrap" customized layers in estimators
    - Estimator becomes high-level "glue."
  * Keras is the best mid-level API
    - Not as verbose or as cumbersome as Tensorflow Core (Low-Level)
    - Gives us full control of layers.
  * We can "wrap" keras inside of estimator if we want.
    - Gives us best of both worlds
    - Control + High-level

---
## Lab: Fashion MNist with Keras


  * **Note**:

  * **Instructions for the trainer**:

    - This lab is run with Jupyter Notebook
    - Help the students start a Jupyter Notebook

  * **Overview**: In this lab, we will do a hello world for TensorFlow and Keras.

  * **Approximate time**: 15-20 minutes

  * **Instructions for students**:

    - (Keras)  **06-cnn/6.1-cnn-fashion.ipynb** lab

Notes:

---
## Lab: Image Classification Example


  * Perform Image Classification with CNN.
  * Download cat/dog dataset
    - Large Images
    - Real-World.
  * Will be **very** slow without GPU.
    - Do with caution.
    - Recommend using AWS DL AMI.

Notes:



---
## Summary

  * Zero padding is done when it is required to maintain the same dimensions of the layer as the previous convolutional layers.

  * The convolution operation involves detecting local features in a small receptive field in the data space by means of multiplying the values in the receptive field by a kernel filter (weight matrix).

  * CNNs can detect multiple features in the input by use of stacked feature maps.

## Summary

  * CNNs are neural networks that contain at least 1 convolutional layer. They are majorly used for image classification.

  * Pooling allows CNNs to shrink the input space and zero in on the most important features of the input.

  * Typical CNN architectures involve multiple CNN layers to detect low and high level features going from input to output. Each CNN layer is typically followed by a ReLU and pooling layer.


Notes: 

---

