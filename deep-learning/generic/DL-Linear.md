Linear
======
## Lesson Objectives

 * Learn about simple perceptron classifiers

 * Understand how Gradient Descent and Backpropagation help us train .

Notes:


---
# Perceptrons

## A Simple Example

 * Let’s imagine we want to perform a binary classification step

 * Can you create a linear model that will separate these points?

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--A-Simple-Example-0.png) <!-- {"left" : 2.58, "top" : 1.93, "height" : 5.16, "width" : 5.08} -->


Notes:


---
## Finding a separation

 * How would you do the separation?

 * There are lots of lines one could draw.  How is one better than another?  What criteria do we use?

 * One Way:

     - Try to maximize the distance between the points on both sides and our line.

     - This is essentially what the Support Vector Machine (SVM) does.

Notes:



---
## Separating the Points

 * We’ve drawn a line here that does the separation.

 * This is our linear model.  But how did we come to that?

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--A-Simple-Example-0.png) <!-- {"left" : 2.58, "top" : 1.93, "height" : 5.16, "width" : 5.08} -->


Notes:




---
## Single Layer Perceptron

 * Let’s create the simplest neural network with one neuron:

 * This is a linear model.  Finding a line that will separate.

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--Single-Layer-Perceptron-0.png) <!-- {"left" : 0.65, "top" : 3.44, "height" : 2.41, "width" : 8.96} -->

Notes:



---
## A trained perceptron model

 * After we’ve trained our model, we’ve now have a linear model

 * w1, w2 are our weights.

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--A-trained-perceptron-model-0.png) <!-- {"left" : 2.59, "top" : 1.96, "height" : 5.15, "width" : 5.07} -->

Notes:



---
## How do we train?

 * For a single perceptron with no hidden layers, we can train using Gradient Descent.

![](../../assets/images/deep-learning/gradient-descent-1.png) <!-- {"left" : 1.02, "top" : 2.33, "height" : 4.45, "width" : 8.21} -->


Notes:



---
## Sample Neural Network Visualizer

 * Go to playground.tensorflow.org

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--Sample-Neural-Network-Visualizer-0.png) <!-- {"left" : 0.71, "top" : 2.29, "height" : 4.11, "width" : 8.83} -->

Notes:



---
## Perceptron Mini Lab–5 Mins

 * Try this at http://playground.tensorflow.org

```text
Select the Linearly Separable dataset as shown.
Select x1 and x2 as features.
Select zero hidden layers
Press play to converge on a solution.

```
<!-- {"left" : 0, "top" : 1.38, "height" : 1.59, "width" : 10.25} -->

![](../../assets/images/deep-learning/Introduction-to-Neural-Networks--A-trained-perceptron-model-0.png) <!-- {"left" : 3.06, "top" : 3.04, "height" : 4.19, "width" : 4.13} -->

Notes:


---
## Lab Review

 * Why didn’t we need hidden layers to converge on a solution?

 * What would happen if the dataset wasn’t linearly separable?

Notes:



---
## Activation Functions

 * Once we have the output of neuron, what do we do it?

 * In our previous example, we defined a step function

     - If the output was greater than threshold b, `y = 1`,

     - Else, `y = 0`

     - Not Differentiable (can’t use gradient descent to optimize)

 * Possible Activation Funtions
   - None (just use raw output of neuron)
   - Linear (apply linear transformation)
   - Sigmoid
   - Tanh
   - Relu (Covered later)

Notes:



---
## Linear Activation Function

   * `Output * weight + constant`
   * Commonly used for **Regresssion**
   * Linear Regression:
     - Single Layer (Linear)
     - Linear Activation Function
   * Differentiable
     - So we *can* use gradient descent

Notes:



---
## Sigmoid

   * Comes from Logistic Regression
   * Solve for the "log-odds-ratio"
   * Logistic Regression:
     - Single Layer (Linear)
     - Sigmoid Activation Function

![](../../assets/images/deep-learning/activation-sigmoid.png) <!-- {"left" : 1.72, "top" : 3.21, "height" : 3.86, "width" : 6.81} -->



Notes:


---
## Tanh Activation

 * Tanh is more popular, rather than Sigmoid.

 * The two are closely related, as tanh is a “stretched” Sigmoid

     - `Tanh(x) = 2 * logistic(2x) – 1`

 * Tanh is symmetric around zero.

![](../../assets/images/deep-learning/activation-sigmoid-vs-tanh.png) <!-- {"left" : 0.77, "top" : 3.3, "height" : 3.24, "width" : 8.71} -->



Notes:



---
## Vanishing Gradient Problem

 * Sigmoid and Tanh both suffer from the Vanishing Gradient Problem.

     - The derivative of a Sigmoid is less than .25

     - As we propagate that through many layers, that gradient becomes much less.

 * This means that they suffer from difficult convergence as one gets away from the center.

 * One way is to fix the vanishing gradient problem is repeated scaling.

 * However, there is another way.

Notes:


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

![](../../assets/images/deep-learning/Softmax-Function.png) <!-- {"left" : 0.38, "top" : 1.5, "height" : 4.5, "width" : 9.48} -->



Notes:



---
## Logistic Regression Redux?


 * What we’ve done so far is essentially create a logistic regression classifier.

 * In fact, with the Sigmoid activation function, we’ve done essentially exactly that.

 * So are neural networks just a implementation scheme for logistic regression?

     - Not really.

Notes:



---
## Lab: Logistic Regression

 * In this lab, we will be implementing a logistic regression classifier using Neural Networks in Tensorflow.

 * The result will be a linear model (no hidden layer) with a Sigmoid output

Notes:



---
## The XOR problem

 * What happens if we don’t have linear separability?

 * For example, can we learn a function that does an exclusive or?

 * There is no line that can separate these.  

     - And so the single-layer perceptron will never converge.

     - This is known as the XOR problem (though many other datasets are not linearly separable).

![](../../assets/images/deep-learning/xor.png) <!-- {"left" : 2.63, "top" : 3.98, "height" : 3.49, "width" : 4.99} -->

Notes:



---
## Training the Model

 * Rosenblatt’s original algorithm for training was simple:

     - Iterate through weights and look at the output error

     - Adjust weights until output error was zero.

     - Will converge only if the outputs are linearly separable.

 * The Problem:

     - This kind of “brute force” method will take too long to train.

Notes:



---
## Calculating the Error

 * When we randomly initialize the weights, our first pass outputs of our network will almost certainly be wrong!

     - We have training data, so we know the “right” answer

 * How do we calculate how wrong we are?

 * We consider this the  **Error** or **Loss** .  But what is the error?

 * The error is the  **distance**  between the training output vector and the current output.

 * But what is the meaning of  **distance** ?

     - Simplest: Euclidean distance, the distance in Euclidean space.

     - But this is not what we usually use.

     - For classification, we normally use  **cross entropy** to calculate loss.

Notes:



---
## Gradient Descent

 * We want to optimize our model so error is  **minimized**

 * Gradient Descent is a common optimization algorithm.

 * Imagine a snowboarder going down the slope of a mountain

     - The snowboarder descends because the slope is steep.

     - Descent slows as she approaches the bottom, because the slope is less.

     - At the bottom of the hill, the slope is zero, so the snowboarder stops. This is the minimum.

     -  There may, however, be parts of the run with a zero slope that are NOT the bottom (local minima).  

![](../../assets/images/deep-learning/local_minima.png)  <!-- {"left" : 6.33, "top" : 4.79, "height" : 2.49, "width" : 3.44} -->


Notes:


---
## Backpropagation


 * We can complete our training by backpropagating the errors to the hidden nodes and continuing to use gradient descent to optimize.

 * This means that we take the errors output, and simply adjust the weights in the network to account for the errors.

Notes:



---
## Feedforward Network Sizing


 * Input Layer:

     - Size: Equal to Number of Input Dimensions

        * Possibly add one extra neuron for bias term.

     - What if we have thousands of sparse dimensions?

        * Consider Wide and Deep Neural Network

 * Hidden Layer(s)
     - We don't know yet about sizing of hidden layers.

 * Output Layer:

     - Regression: 1 single neuron (continuous output)

     - Binomial Classification: 1 single neuron (binary output)

     - Multinomial Classification: Softmax Layer

        * Size: 1 node per class label

Notes:



---
