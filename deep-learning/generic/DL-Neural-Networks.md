# Introduction to Neural Networks
---

## Lesson Objectives

- Understand neural network architectures

- How to size and build neural networks


Notes:

---

# Artificial Neural Networks (ANN)

---

## Artificial Neural Networks (ANN)

 * ANNs are at the core of Deep Learning
    - they are powerful, scalable and can solve complex problems like classifying billions of images (Google Images)

 * ANNs were inspired by neurons in human brain

 * How ever ANNs have evolved quite a bit from their original inception.  
For example planes are inspired by birds first, but now modern planes have evolved a lot from their original designs


<img src="../../assets/images/deep-learning/neuron_anatomy.png" alt="XXX image missing" style="background:white;max-width:100%" width="45%"/><!-- {"left" : 1.84, "top" : 5.09, "height" : 3.45, "width" : 6.58} -->



Notes:  
- https://en.wikipedia.org/wiki/Artificial_neuron

---

## ANN History

 * 1943: McCulloch Pitts Neural model

 * 1962: Frank Rosenblatt invented the Perceptron:

 * 1969: Marvin Minsky's paper threw cold water on ANNs.  
He demonstrated the ANNs can't solve a simple XOR problem

 * 1970s: First AI Winter

 * 1980s: some revival in ANNs  (new models + training techniques)

 * 1986: D. E. Rumelhart et al. published a [groundbreaking paper](https://scholar.google.com/scholar?q=Learning+Internal+Representations+by+Error+Propagation) introducing the backpropagation training algorithm.

 * 1990s: Second AI winter (Methods like SVMs were producing better results)

 * 2010s: huge revival in AI after some promising results

 * Now: The race is on!

Notes:  
- https://en.wikipedia.org/wiki/Artificial_neuron
- https://medium.com/@jayeshbahire/the-xor-problem-in-neural-networks-50006411840b

---

## 1943: McCulloch Pitts Neural Model

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/McCulloch.png" alt="XXX image missing" style="width:50%;float:right;" /> <!-- {"left" : 1.97, "top" : 5.77, "height" : 2.77, "width" : 6.31} -->

 * McCulloch and Pitts defined a simple model of a Neuron ([paper](https://scholar.google.com/scholar?q=A+Logical+Calculus+of+Ideas+Immanent+in+Nervous+Activity))

 * It consisted of N inputs In and N Weights

 * Inputs are binary (on/off)

 * Inputs and weights are summed up and a threshold function produces output

 * Limitations:

     - Binary input / output

     - Weights (Wn) were set manually; No way to automatically train weights


Notes:  
- https://scholar.google.com/scholar?q=A+Logical+Calculus+of+Ideas+Immanent+in+Nervous+Activity
- https://towardsdatascience.com/mcculloch-pitts-model-5fdf65ac5dd1

---

## Neuron operations

<img src="../../assets/images/deep-learning/3rd-party/ann-operations.png" alt="XXX image missing" style="background:white;max-width:100%" width="100%"/><!-- {"left" : 0.71, "top" : 3.33, "height" : 2.98, "width" : 8.84} -->


Notes:  
Source : [Neural networks and deep learning](https://learning.oreilly.com/library/view/neural-networks-and/9781492037354/)  by  Aurélien Géron (ISBN: 9781492037347)

---

# Perceptrons

---

## 1962: The Perceptron

 * Frank Rosenblatt invented the Perceptron

 * Inputs are numbers (not binary as before)

 * Simplest type of Feedforward neural network

<img src="../../assets/images/deep-learning/perceptron-03.png" alt="XXX image missing" style="background:white;max-width:100%" width="50%"/> &nbsp;<!-- {"left" : 0.61, "top" : 3.53, "height" : 2.89, "width" : 5.57} --> <img src="../../assets/images/deep-learning/3rd-party/Mark_I_perceptron.jpeg" alt="XXX image missing" style="background:white;max-width:100%" width="30%"/><!-- {"left" : 6.68, "top" : 3.18, "height" : 3.59, "width" : 2.93} -->



Notes:  
Mark I Perceptron at the Cornell Aeronautical Laboratory', hardware implementation of the first Perceptron (Source: Wikipedia)

---



## Simple Perceptron Example

 * Design a perceptron that will decide if I should go to a concert, based on a few inputs
 * Inputs: Weather,  Close to public transit, if a friend can join
 * Assign weights to each of the above inputs
 * Output: YES / NO  
    If the final score is > 50, then the answer is YES, otherwise NO

<img src="../../assets/images/deep-learning/perceptron-02.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%;"/><!-- {"left" : 0.91, "top" : 4.69, "height" : 2.77, "width" : 8.43} -->

---
## Simple Perceptron Example

 * What is the outcome if
    - Weather is good
    - And a friend can join?

 * What is the outcome if
    - You can go by public transit
    - And a friend can join

 * Please note, here the weights are assigned manually

<img src="../../assets/images/deep-learning/perceptron-02.png" alt="XXX image missing" style="background:white;width:60%;"/><!-- {"left" : 1.07, "top" : 5.07, "height" : 2.66, "width" : 8.11} -->


---

## A Generalized Perceptron

 * Here we are adding more inputs (X1, X2, ... Xm)
 * Each input has their weights (W1, W2, ... Wm)
 * The input '1' and weight 'W0' is bias term

<img src="../../assets/images/deep-learning/perceptron-03.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%;"/><!-- {"left" : 1.19, "top" : 3.83, "height" : 4.24, "width" : 7.86} -->

---

## Perceptron Operations

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/perceptron-03.png" alt="XXX image missing" style="width:50%;float:right;"/><!-- {"left" : 2.8, "top" : 5.19, "height" : 2.51, "width" : 4.65} -->

 * Step 1: Calculate sum of inputs and weights  
`z = w0 + w1.x1 + w2.x2 + ... + wn.xn`  
In matrix operations this is  
`wT · x`

 * Step 2: Apply Step function to the sum  
`hw(x) = step (z)`  
`hw(x) = step (wT · x)`

 * Simple step function
    - if sum is positive (`z >= 0`) --> output is 1
    - otherwise, output is 0



---

## Classification Example

 * Find a divider to separate these two classes (blue / orange)

<img src="../../assets/images/deep-learning/sample-01.png" alt="XXX image missing" style="width:40%;"/><!-- {"left" : 2.69, "top" : 2.33, "height" : 4.99, "width" : 4.88} -->



---

## Solution

<img src="../../assets/images/deep-learning/sample-01b.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="40%;"/><!-- {"left" : 5.95, "top" : 1.84, "height" : 4.1, "width" : 4.01} -->

 * We can draw line that separates these two classes;  Essentially  a linear model

 * There are many lines we can draw, which one to pick?

 * One Way:

     - Try to maximize the distance between the points on both sides and our line.

     - Lines of A,B,C  which one is better?

     - This is essentially what the [Support Vector Machine (SVM)](https://en.wikipedia.org/wiki/Support-vector_machine) does.

Notes:



---
## Single Layer Perceptron

 * Let's create the simplest neural network with one neuron

 * This is a linear model.  Finding a line that will separate.

 * Two inputs : X1 and X2
    - Associated weights: W1 and W2

 * Output is binary

<img src="../../assets/images/deep-learning/perceptron-01.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%;"/><!-- {"left" : 0.87, "top" : 4.65, "height" : 2.28, "width" : 8.51} -->

Notes:



---
## A Trained Perceptron Model

 * After we've trained our model, we've now have a linear model

 * How do we figure out the weights w1, w2?
    - This is done during training

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/linear-1.png" alt="XXX image missing" style="width:35%;" /><!-- {"left" : 3.18, "top" : 3.18, "height" : 3.96, "width" : 3.9} -->

Notes:

---

## Quiz : Guessing the Weights

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/perceptron-04.png"  style="width:50%;float:right;" />

- Let's revisit our 'concert going' perceptron.  
- Here is some new training data.
- Can you guess the weights w1 / w2 / w3  to match the training data?
- (Threshold is now changed to 60)

<br clear="all" />

<!-- TODO shiva -->

| Weather | Public Transit | Friend Can Join | Outcome (0 / 1) |
|---------|----------------|-----------------|-----------------|
| 1       | 1              | 1               | 1               |
| 1       | 0              | 1               | 1               |
| 1       | 0              | 0               | 0               |
| 1       | 1              | 0               | 0               |
| 0       | 1              | 1               | 0               |
| 0       | 1              | 0               | 0               |
| 0       | 0              | 1               | 0               |

---

## Quiz : Guessing the Weights

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/perceptron-04.png"  style="width:50%;float:right;" />

- Let's start with equal weights for all inputs:  
weather = 33, public transit = 33, friend = 33
- We got 2 wrong!
- Can we do better?

<br clear="all" />

<!-- TODO shiva -->

| Weather | Public Transit | Friend Can Join | Total | Predicted (> 60) | Actual |
|---------|----------------|-----------------|-------|------------------|--------|
| 1 * 33  | 1 * 33         | 1 * 33          | 99    | 1 - ok           | 1      |
| 1 * 33  | 0 * 33         | 1 * 33          | 66    | 1 - ok           | 1      |
| 1 * 33  | 0  * 33        | 0  * 33         | 33    | 0 - ok           | 0      |
| 1 * 33  | 1 * 33         | 0 * 33          | 66    | 1 - wrong        | 0      |
| 0 * 33  | 1  * 33        | 1 * 33          | 66    | 1 - wrong        | 0      |
| 0 * 33  | 1 * 33         | 0 * 33          | 33    | 0 - ok           | 0      |
| 0 * 33  | 0  * 33        | 1 * 33          | 33    | 0 - ok           | 0      |

---

## Quiz : Guessing the Weights

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/perceptron-04.png"  style="width:45%;float:right;" />

- Looks like 'public transit' isn't as important as 'friend'
- And 'weather' seems important
- Let's adjust the weights to reflect this
- weather = 35, public transit = 20, friend = 30
- __we got all right !!__

<br clear="all" />

| Weather | Public Transit | Friend Can Join | Total | Predicted (> 60) | Actual |
|---------|----------------|-----------------|-------|------------------|--------|
| 1 * 35  | 1 * 20         | 1 * 30          | 85    | 1 - ok           | 1      |
| 1 * 35  | 0 * 20         | 1 * 30          | 65    | 1 - ok           | 1      |
| 1 * 35  | 0  * 20        | 0  * 30         | 35    | 0 - ok           | 0      |
| 1 * 35  | 1 * 20         | 0 * 30          | 55    | 0 - ok           | 0      |
| 0 * 35  | 1 * 20         | 1 * 30          | 50    | 0 - ok           | 0      |
| 0 * 35  | 1 * 20         | 0 * 30          | 20    | 0 - ok           | 0      |
| 0 * 35  | 0  * 20        | 1 * 30          | 30    | 0 - ok           | 0      |


<!-- TODO shiva -->

---

## How do We Train?

 * In the last example, we lucked out by guessing the weights in 2 rounds (2 iterations)

 * But for large complex datasets, we need a more systamatic way of calculating and adjusting weights

 * For a single perceptron with no hidden layers, we can train using Gradient Descent.

 * Gradient Descent is a popular optimization algorithm

 * See next few slides





Notes:

---

## Gradient Descent

[../../machine-learning/generic/Gradient-Descent.md](../../machine-learning/generic/Gradient-Descent.md)

---


# DL Playground: Introduction

[DL-Playground.md](DL-Playground.md#Introduction to Tensorflow Playground)

---

# DL Playground: Linear

[DL-Playground.md](DL-Playground.md#Playground Linear Regression)

---


## Playground : Classification

[DL-Playground.md](DL-Playground.md#Classification Examples 1)

---

# Hidden Layers

---
## The XOR problem

<img src="../../assets/images/deep-learning/xor.png" alt="XXX image missing" style="width:40%;float:right;"/> <!-- {"left" : 5.88, "top" : 1.74, "height" : 2.94, "width" : 4.18} -->

 * What happens if we don't have linear separability?

 * For example, can we learn a function that does an exclusive or?

 * There is no line that can separate these.  
     - And so the single-layer perceptron will never converge.
     - This is known as the XOR problem (though many other datasets are not linearly separable).

 * Solution : We need __hidden layers__



Notes:

---

## The Solution: a Hidden Layer

 * Our problem is that our solution to a single layer neural network is linear.  
     - We call the solution the "decision boundary"
     - What if we could create a nonlinear decision boundary?
     - How would we do that?
 * What if we add a new layer to our network?

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="hidden-layer.png" style="width:32%;"/><!-- {"left" : 3.29, "top" : 3.78, "height" : 3.52, "width" : 3.66} -->



Notes:



---

## Why Hidden Layers

 * Hidden Layers allow us to solve the "XOR" problem
     - Creating a nonlinear decision boundary

 * How Many Hidden Layers?
     - Most nonlinear problems solvable with one hidden layer.
     - Multiple Hidden Layers allow for more complex decision boundaries

 * One Hidden Layer is Enough
     - It has been proven that any function can be represented by a sufficiently large neural network with one hidden layer
     - Training that network may be difficult, however.

 * But it's not enough
     - Current training methods mean that more than one layer is required in many cases.

Notes:


---

## Playground : Hidden Layers

[DL-Playground.md](DL-Playground.md#Playground Hidden Layers)


---

# Neural Network Design

---

## Popular Neural Network Architectures

- Feedforward neural network (FFNN)

- Convolutional  neural network  (CNN)

- Recurrent neural network (RNN)

- We will cover these in detail in the upcoming sections

---

# Feed Forward Neural Networks

---



## Feedforward Neural Networks (FFNN)

- As we have seen earlier, single layer NNs can solve simple, linear problems

- To solve more complex problems (with non-linear solutions) we need a more complex setup

- This is where **Feedforward Networks** come in

- Also known as
    - **Multi Layer Perceptrons (MLP)**
    - **Deep Feedforward Neural Networks (DFNN)**

---

## Feedforward Network Design

- There are multiple layers
- Each layer has many neurons
- Each neuron is connected to neurons on previous layer
- Information flows through ONE-WAY (no feedback loop)
- Composed of : Input, Output and Middle (Hidden) layers

<img src="../../assets/images/deep-learning/Deep-Neural-Networks.png" alt="XXX image missing" style="max-width:100%;width:35%;"/><!-- {"left" : 3.09, "top" : 4.13, "height" : 3.73, "width" : 4.06} -->


---

## Hidden Layers

- Layers between Input and Output are called **Hidden Layers**
- If there is more than one hidden layers, it is called **Deep Neural Network**

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="XXX image missing" style="max-width:100%;width:35%;"/> &nbsp; &nbsp; &nbsp; <!-- {"left" : 0.9, "top" : 3.4, "height" : 3.53, "width" : 3.66} --><img src="../../assets/images/deep-learning/Deep-Neural-Networks.png" alt="XXX image missing" style="max-width:100%;width:35%;"/><!-- {"left" : 5.28, "top" : 3.35, "height" : 3.62, "width" : 3.94} -->


---

## Non-Linearity

- Hidden layers can model 'non-linear' functions
    - one hidden layer can model any continuous functions
    - two or more hidden layers can model discontinuous functions

- Remember the XOR problem?  We couldn't solve it using single layer perceptron.

- But using hidden layers, we can solve it very easily

<img src="../../assets/images/deep-learning/xor.png" alt="XXX image missing" style="width:27%;"/> &nbsp;  &nbsp; <!-- {"left" : 0.83, "top" : 4.35, "height" : 3.32, "width" : 4.74} --><img src="../../assets/images/deep-learning/3rd-party/XOR_perceptron_net.png" alt="XXX image missing" style="width:27%;"/><!-- {"left" : 6.07, "top" : 4.55, "height" : 3.32, "width" : 3.35} -->


---


## The single-layer network

 * We can combine perceptron inputs to a feedforward neural network.

 * We have an input-layer and an output layer

     - Why do we call it single layer? (When there is input + output)

     - Because the input layer only passes through the inputs.

 * What is the size of the input and output layers?

     - Input: number of features variables from input

     - Output: 1 neuron (unless we use a softmax output layer)

Notes:



---

## Multi-class (non-binary) Outputs

 * So far, our neural networks have had exactly one output neuron.

     - For regression problems, the output neuron generates the response variable (a continuous value).

     - For classification problems, the output is binary

 * What about multi-class classification? (non-binary)

     - We need more than one output neuron.

     - Exactly one neuron for each class in classification.

 * How do we generate the output classes?

     - We can use a function called Softmax

Notes:


---

## Softmax output

 * The Softmax function converts an array of values to an array of probabilities.

     - For example `[1, 2, 3, 4, 1, 2, 3] => [.024, .064, .175, .475, .024, .064, .175]`

     - The resultant array must add up to 1, because the output enumerates all probabilities

 * We can implement the softmax function on the output, where we have k neurons indicating that we expect to see k number of output classes.

Notes:


---

## Softmax Function


<img src="../../assets/images/deep-learning/Softmax-Function.png" alt="Softmax-Function.png" style="background:white;width:80%;"/><!-- {"left" : 0.38, "top" : 1.5, "height" : 4.5, "width" : 9.48} -->


Notes:

---



## Feedforward Network Sizing

* __Input Layer__
   - Size: Equal to Number of Input Dimensions
   -  Possibly add one extra neuron for bias term.
   - What if we have thousands of sparse dimensions?
   - Consider Wide and Deep Neural Network
* __Hidden Layer(s)__
   - Deep Learning=  Multiple Hidden Layer (more than 2)
   - Size depends on training sample, input features, outputs
* __Output Layer__
   - Regression: 1 single neuron (continuous output)
   - Binomial Classification: 1 single neuron (binary output)
   - Multinomial Classification: Softmax Layer
   - Size: 1 node per class label

Notes:



---

## Lab: Iris Dataset

 * In this lab, we will be using the Iris dataset.

 * We will be training a multi-layer perceptron feedforward neural network.

Notes:
