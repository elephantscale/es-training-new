# Linear

---

## Lesson Objectives

 * Learn about simple perceptron classifiers

 * Understand how Gradient Descent and Backpropagation help us train .

Notes:


---
# Perceptrons

---

## Simple Perceptron Example

- Design a perceptron that will decide if I should go to a concert, based on a few inputs
    - Inputs : Weather,  Close to public transit, if a friend can join
    - Assign weights to each of the above inputs
    - Output : YES / NO  
    If the final score is > 50, then the answer is YES, otherwise NO

<img src="../../assets/images/deep-learning/perceptron-02.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/>

---
## Simple Perceptron Example

- What is the outcome if
    - Weather is good
    - And a friend can join?

- What is the outcome if
    - You can go by public transit
    - And a friend can join

- Please note, here the weights are assigned manually

<img src="../../assets/images/deep-learning/perceptron-02.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/>

---

## A Generalized Perceptron

- Here we are adding more inputs (X1, X2, ... Xm)
- Each input has their weights (W1, W2, ... Wm)
- The inupt '1' and weight 'W0' is bias term

<img src="../../assets/images/deep-learning/perceptron-03.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/>

---
## Another Example

Find a divider to separate these two classes (blue / orange)

<img src="../../assets/images/deep-learning/sample-01.png" alt="XXX image missing" style="background:white;max-width:100%;" width="50%"/> <!-- {"left" : 2.58, "top" : 1.93, "height" : 5.16, "width" : 5.08} -->

---

## Solution

<img src="../../assets/images/deep-learning/sample-01b.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="40%"/> <!-- {"left" : 2.58, "top" : 1.93, "height" : 5.16, "width" : 5.08} -->

 * We can draw line that separates these two classes;  Essentially  a linear model

 * There are many lines we can draw, which one to pick?

 * One Way:

     - Try to maximize the distance between the points on both sides and our line.

     - Lines of A,B,C  which one is better?

     - This is essentially what the [Support Vector Machine (SVM)](https://en.wikipedia.org/wiki/Support-vector_machine) does.

Notes:



---
## Single Layer Perceptron

 * Let’s create the simplest neural network with one neuron:

 * This is a linear model.  Finding a line that will separate.

 * Two inputs : X1 and X2
    - Associated weights : W1 and W2

 * Output is binary

 <img src="../../assets/images/deep-learning/perceptron-01.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/><!-- {"left" : 0.65, "top" : 3.44, "height" : 2.41, "width" : 8.96} -->

Notes:



---
## A Trained Perceptron Model

 * After we’ve trained our model, we’ve now have a linear model

 * During training the values for  weights w1, w2 have been figured out

 <img src="../../assets/images/deep-learning/linear-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="40%"/> <!-- {"left" : 2.59, "top" : 1.96, "height" : 5.15, "width" : 5.07} -->

Notes:



---
## How do We Train?

 * For a single perceptron with no hidden layers, we can train using Gradient Descent.
 
 * Gradient Descent is a popular optimization algorithm

 * It tweaks the values of parameters ( **coefficients** ) of  **target function** (f) that  **minimizes cost function**




Notes:


---

## Gradient Descent

<img src="../../assets/images/machine-learning/gradient-descent-1a.png" style="width:50%;float:right;"/>


- Start with initial values of coefficients (zero or random value)
-  **cost = cost_function(coefficients)**
- Calculate 'derivative' (think calculus) to determinethe 'slope' or 'direction'
- Update coefficients in the right'direction' and calculate cost again
- **'learning rate parameter' (alpha)** determines how much coefficientscan change
- Iterate  until you find minimum
-  Algorithm will converge after multiple iterations



---
## Gradiant Descent

- Here we are adjusting 2 coefficients, so the descent is a 'surface' (think 3D)

 <img src="../../assets/images/machine-learning/gradient-descent-3.png" alt="XXX image missing" style="background:white;max-width:100%;" width="100%"/> <!-- {"left" : 1.02, "top" : 2.33, "height" : 4.45, "width" : 8.21} -->


Notes:



---


## Sample Neural Network Visualizer

 * Go to [playground.tensorflow.org](https://playground.tensorflow.org/)

 <img src="../../assets/images/deep-learning/3rd-party/playground-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/><!-- {"left" : 0.71, "top" : 2.29, "height" : 4.11, "width" : 8.83} -->


Notes:



---
## Perceptron Mini Lab–5 Mins

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="10%"/>

 * Try this at [playground.tensorflow.org](https://playground.tensorflow.org/)

 * Instructions
    - Select the Linearly Separable dataset as shown (on left)
    - Select x1 and x2 as features.
    - Select zero hidden layers
    - Press play to converge on a solution (as shown on right)

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/> <!-- {"left" : 3.06, "top" : 3.04, "height" : 4.19, "width" : 4.13} -->
<img src="../../assets/images/deep-learning/3rd-party/arrow-right-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="20%"/>
<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-2.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/>

Notes:

----

[DL-Playground.md](DL-Playground.md#Playground Linear Regression)

---
## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="20%"/>

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

 * We will see more complex **Activation functions** later.  
 Some examples:
   - None (just use raw output of neuron)
   - Linear (apply linear transformation)
   - Sigmoid
   - Tanh
   - Relu (Covered later)

Notes:


---
## Logistic Regression Redux?


 * What we’ve done so far is essentially create a logistic regression classifier.

 * In fact, with the Sigmoid activation function, we’ve done essentially exactly that.

 * So are neural networks just a implementation scheme for logistic regression?

     - Not really.

Notes:



---
## Mini Lab: Logistic Regression

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="20%"/>

 * In this lab, we will be implementing a logistic regression classifier using Neural Networks in Tensorflow.

 * The result will be a linear model (no hidden layer) with a Sigmoid output

Notes:

---

[DL-Playground.md](DL-Playground.md#Classification Examples 1)


---
## The XOR problem

 * What happens if we don’t have linear separability?

 * For example, can we learn a function that does an exclusive or?

 * There is no line that can separate these.  
     - And so the single-layer perceptron will never converge.
     - This is known as the XOR problem (though many other datasets are not linearly separable).

<img src="../../assets/images/deep-learning/xor.png" alt="XXX image missing" style="background:white;max-width:100%;" width="45%"/> <!-- {"left" : 2.63, "top" : 3.98, "height" : 3.49, "width" : 4.99} -->

Notes:



---
