Activation Functions
======

## Activation Functions

 * Once we have the output of neuron, what do we do it?

 * In our previous example, we defined a step function

     - If the output was greater than threshold b, `y = 1`,

     - Else, `y = 0`

     - Not Differentiable (can't use gradient descent to optimize)

 * Possible Activation Funtions
   - None (just use raw output of neuron)
   - Linear (apply linear transformation)
   - Sigmoid
   - Tanh
   - Relu

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

 * The two are closely related, as tanh is a "stretched" Sigmoid

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
## Rectified Linear Unit (ReLU) Activation


 * In real-life, we normally use Rectified Linear Unit Activation.

 * ReLU = Rectified Linear Unit

 * ReLU is Linear when greater than zero, and constant (zero) less than zero

![](../../assets/images/deep-learning/activation-sigmoid-vs-relu.png) <!-- {"left" : 0.58, "top" : 3.26, "height" : 3.57, "width" : 9.09} -->


Notes:



---
## Why ReLU?


 * Isn't ReLU not differentiable?

     - It is not differentiable at zero

     - But we can overcome that limitation.

 * Why do we use ReLU?

     - Simple
     – very easy understand
     - Fast – computationally very cheap
     - No Vanishing gradient problem
     - No Exploding Gradient problem

 * This is an example where simpler is actually better!

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


 * What we've done so far is essentially create a logistic regression classifier.

 * In fact, with the Sigmoid activation function, we've done essentially exactly that.

 * So are neural networks just a implementation scheme for logistic regression?

     - Not really.

Notes:

--

## Review


 * A Sigmoid Function is a mathematical function with a Sigmoid Curve ("S" Curve) and outputs a probability between 0 and 1.

 * A rectifier or ReLU (Rectified Linear Unit) is a commonly used activation function that allows one to eliminate negative units in an ANN. It helps solve vanishing/exploding gradient problems associated with other activation functions.

 * The Softmax activation function is used to output the probability of the result belonging to certain classes.

 * Hyperbolic or tan h function is an extension of logistic sigmoid with output stretching between -1 and +1. It enables faster learning compared to a Sigmoid.
