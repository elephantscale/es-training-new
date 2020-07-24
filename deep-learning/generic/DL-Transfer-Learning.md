# Transfer Learning
---
## Learning Objectives
   * You will be able to:
     - Understand Transfer Learning
     - Understand Pre-Trained Models
     - Customize pre-trained models

Notes:


---

# Image Classification

---

## Image Processing is Hard!

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/cats-dog-classifier-learning-curve-100-epochs.png" style="width:35%;float:right;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->

* By now we had trained image classifiers on cat-dog / horse-human / flowers datasets

* Our datasets are of modest size (few thousands images, ~50 - 150 MB in size)

* In 'cat-dog-redux' data we had about 2000 training images (size: 45 MB) and 1000 validation images (size 22 MB)

* Our network is pretty small: 3 Convolutional layers (Conv + MaxPool) ;  10 layers total

* We trained this network for 100 epochs
    - Took about 20 minutes on a Ubuntu machine with 16 cores + 64 GB memory +  Nvidia GeForce RTX 2070  GPU  with 8GB  (Using Tensorflow-GPU acceleration)

* Managed to achieve about 75% accuracy

---

## Computer Vision Models

* Our modest model achieved 75% accuracy with a few minutes of training

* State of the art models can achieve 99% accuracy!

* These are trained on much larger datasets and for many hours/days/weeks!

* Can we re-use these models?

* Yes, enter **Transfer Learning**!

---

# Transfer Learning

---

## Transfer Learning Analogy

<!-- TODO shiva -->
<img src="../../assets/images/generic/guitar-ukulele-1.jpg" style="width:20%;float:right;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->
* Imagine you want to learn how to play the **ukulele**

* If you have no musical background, and you are starting fresh with the ukulele as your very first instrument, it'll take you a few months to get proficient at playing it

* On the other hand, if you are accustomed to playing the **guitar**, it might just take a week, due to how similar the two instruments are

* Taking the learnings from one task and fine-tuning them on a similar task is something we often do in real life.

* The more similar the two tasks are, the easier it is to adapt the learnings from one task to the other.

Notes:

- Image credits : https://pixabay.com/photos/guitar-electric-guitar-2925282/, https://pixabay.com/photos/ukulele-instrument-music-pages-1376516/

---

## Training Large Models is Difficult

 * Large models have many layers (deep models)

 * Deep layers require  **LOTS**  of time and resources to train
    - Many dozens or hundreds of CPUs / GPUs

 * They may require huge amounts of **data** to train
   - Maybe **petabytes** of training data.

 * For example, Google translate model trains on 2 billion+ words on 99+ GPUs for week+

 * What if we don't have that much compute power or don't have that much data?

 * Try to re-use pre-trained models!

---


## Using a Pre-trained Model

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/3rd-party/standing-on-shoulders.jpg" style="width:30%;float:right;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->

 * Despite what you think, your problem is not totally unique
   - Others have worked on it before.
   - Much of their work is useful to you
   - "Stand on the shoulders of giants"

 * Instead of starting from scratch, why not start from a trained model?

 * But how much of the model is reusable?

---

## Reusability of Pre-trained Models


 * In a image classifier neural network, much of the early layers are for extracting features (eyes, ears etc)

 * These features are pretty much the same for most real world use cases

 * So we can re-use the learned knowledge in these layers


<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/transfer-learning-3.png" style="width:80%;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->

Notes:


---
## Reusability of Pre-trained Models

 * The surprise is that a pre-trained model works pretty well!

 * Even if it was trained with data that is totally differently from your data

 * Why is this?
   - Because images are images
   - Words are words
   - etc


---

## Customizing Pre-Trained Models

 * Earlier layers of the pre-trained model are frozen; so their weights do not change during re-training

 * The last few layers can be re-trained

 * We often several `dense` layers to the back end of the network.

 * And then these layers are trained on **our own data**

 * This allows us to customize the model to our data

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/transfer-learning-4.png" style="width:60%;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->

Notes:


---

## Transfer Learning Process

* Earlier layers are frozen; so their weights don't change during re-training

* And later layers are re-trained with our own data

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/transfer-learning-2.png" style="width:50%;" /><!-- {"left" : 1.1, "top" : 1.59, "height" : 6.68, "width" : 8.05} -->



---


## Popular Pre-Trained Models

 * Examples of Pre-trained models for Image Recognition
   - Inception
   - ResNet

 * Example of Pre-Trained model for Natural Language
     - Word2Vec
     - BERT

Notes:



---

# Example Transfer Learning Architectures

---

## LeNet

* LeNet-5 (1998) by LeCun
  - Handwritten digits / MNIST type data (10 classes)
  - 28x28x1 monochrome images
* Revolutionary in its time
  - Mostly constrained by resources of the day


<img src="../../assets/images/deep-learning/lenet-architecture.png" style="width:90%;" /> <!-- {"left" : 0.34, "top" : 4.7, "height" : 2.36, "width" : 9.58} -->

Notes:

---

## Imagenet / AlexNet

* Applied LeNet to full size RGB images (224x224x3) with 1000 classes.
* Still very popular

<img src="../../assets/images/deep-learning/CNN-Imagenet.png" style="width:90%;" /> <!-- {"left" : 1.02, "top" : 3.18, "height" : 3.97, "width" : 8.21} -->


Notes:

---

## VGGNet

* Most popular transfer learning architecture

* Simplified Architecture


<img src="../../assets/images/deep-learning/CNN-VGG.png" style="width:70%;" /> <!-- {"left" : 1.02, "top" : 2.87, "height" : 4.85, "width" : 8.21} -->

Notes:

---

## VGGNet


&nbsp;
&nbsp;

<img src="../../assets/images/deep-learning/CNN-VGG-2.png" style="width:90%;"/> <!-- {"left" : 0.35, "top" : 3.94, "height" : 1.19, "width" : 9.55} -->


Notes:


---

## ResNet

* Uses Residual Neural Networks (RNNs) - Not Feedforward
* Both Residual and Convolutional

<img src="../../assets/images/deep-learning/CNN_resnet.png" style="width:90%;" /> <!-- {"left" : 0.6, "top" : 2.3, "height" : 2.9, "width" : 9.05} -->

Notes:


---

## Inception

* Created by Google; state of the art ConvNet

<img src="../../assets/images/deep-learning/CNN-Inception.png" style="width:90%;"/> <!-- {"left" : 0.6, "top" : 2.3, "height" : 2.9, "width" : 9.05} -->

Notes:


---

## Comparison of Transfer Learning Architectures

<img src="../../assets/images/deep-learning/CNN-tl-comparison.png" style="width:90%;"/> <!-- {"left" : 0.52, "top" : 2.95, "height" : 3.75, "width" : 9.2} -->




Notes:

---


## Conclusion
 * Inception wins on performance, accuracy, and size of network (number of params)
 * ResNet is a close second with some valid use cases.
 * Inception and ResNet are often ensembled (combined together).

---

## Transfer Learning Lab


 * Download inception Dataset

 * Perform Transfer Learning on image classification dataset.

Notes:
