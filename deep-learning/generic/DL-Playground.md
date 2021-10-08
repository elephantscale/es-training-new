# Tensorflow Playground

Reference Only.    
Specific Sections are covered in other slides.

---

# Introduction to Tensorflow Playground

---

## Introducing the Playground

  * Navigate in your browser to http://playground.tensorflow.org
  * This is a playground that we will use to play with some concepts
  * It will be fun!
  * When you start, you should see this

<img src="../../assets/images/deep-learning/3rd-party/playground-startup.png" alt="XXX image missing" style="width:55%;"/><!-- {"left" : 2.45, "top" : 4.04, "height" : 3.53, "width" : 5.35} -->


Notes:



---
## Playground Overview

- Step 1: Select data
- Step 2: Select features
- Step 3: Design neural network
- Step 4: Adjust parameters
- Step 5: Run
- Step 6: Inspect the results

<img src="../../assets/images/deep-learning/playground-explained.png" alt="playground-explained.png" style="width:60%;"/><!-- {"left" : 1.59, "top" : 4.56, "height" : 3.17, "width" : 7.08} -->



Notes:


---
## Hidden Layers
  * We will start out with **no** hidden layers
  * Click the "minus" icon to get to no hidden layers

<img src="../../assets/images/deep-learning/3rd-party/playground-nohidden.png" alt="XXX image missing" style="width:70%;"/><!-- {"left" : 1.12, "top" : 3.14, "height" : 4.15, "width" : 8.01} -->


Notes:


---
# Playground Linear Regression

---

## Linear Regression: Setup

<img src="../../assets/images/deep-learning/3rd-party/playground-regression-dropdown.png" alt="playground-regression-dropdown.png" style="width:15%;float:right;"/><!-- {"left" : 6.96, "top" : 1.06, "height" : 1.48, "width" : 2.48} -->

  * Click on the dropdown at the upper right, select 'Regression'

<br clear="all" />

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-lregression-1.png" alt="playground-dataset-lregression-1.png" style="width:15%;float:right;clear:both;"/><!-- {"left" : 7.17, "top" : 2.96, "height" : 2.14, "width" : 2.06} -->

  * Select the dataset in lower left

<br clear="all" />

<img src="../../assets/images/deep-learning/3rd-party/playground-lowest-learning-rate.png" alt="playground-lowest-learning-rate.png" style="width:15%;float:right;clear:both;"/><!-- {"left" : 6.97, "top" : 5.52, "height" : 1.21, "width" : 2.26} -->


  * Select the **lowest** setting of Learning Rate


Notes:


---
## Linear Regression: Parameters

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-lregression-3.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%"/><!-- {"left" : 0.7, "top" : 1.22, "height" : 0.82, "width" : 8.85} -->


  * Learning Rate
    - This is the "step size" we use for Gradient Descent

  * Activation Function
    - This is what we do to the output of the neuron
    - More on this later.

  * Regularization  / Regularization Rate
    - L1 / L2 are penalties to help reduce overfitting
    - How much to add

Notes:


---
## Linear Regression: Run!


<img src="../../assets/images/deep-learning/3rd-party/playground-controls-1.png" alt="playground-controls-1.png" style="width:20%;float:right;" /><!-- {"left" : 7.54, "top" : 1.12, "height" : 1.63, "width" : 2.54} -->

<img src="../../assets/images/deep-learning/3rd-party/playground-output-loss-curve.png" alt="playground-output-loss-curve.png" style="width:20%;float:right;clear:both;" /><!-- {"left" : 6.87, "top" : 2.73, "height" : 1.07, "width" : 3.22} -->


  * Let's try pressing the PLAY Button

  * Look at the "Output" curve:

  * TOO **SLOW**!!!  (Why??)
    - How long (how many epochs) does it converge?
    - Do you ever get to loss = 0.0?

  * What is the meaning of "loss?"
    - It's another way of saying "error"
    - In this case, it's the RMSE (Root Mean Squared Error)

  * Is this dataset linearly separable?
    - Is it **possible** to get to zero loss?

Notes:


---
## Linear Regression: Adjust the Learning Rate

<img src="../../assets/images/deep-learning/3rd-party/playground-controls-1.png" alt="XXX image missing" style="width:20%;float:right;" /><!-- {"left" : 7.37, "top" : 1.28, "height" : 1.78, "width" : 2.77} -->

<img src="../../assets/images/deep-learning/3rd-party/playground-output-loss-nan.png" alt="XXX image missing" style="width:20%;float:right;clear:both;" /><!-- {"left" : 7, "top" : 3.21, "height" : 1.37, "width" : 2.77} -->

  * Hit the reset button to the left of "play"

  * Adjust the learning rate dropdown to something higher.

  * Try hitting play again.

  * What happens if you set a really **big** rate?
    - Note the loss is NaN (Not a Number)
    - The data is only `-6.0` to  `+6.0`.
    - A "big" value causes overshoot

  * Challenge: What is the "optimal" learning rate?
    - Get to zero loss in the fewest epochs.

Notes:


---

## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.96, "top" : 1.6, "height" : 2.71, "width" : 4.06} -->


 * What is the impact of __'learning rate'__
    - how does it affect convergence


Notes:

---

# Classification Examples 1

---

## Linear Classification: Setup

<img src="../../assets/images/deep-learning/3rd-party/playground-params.png" alt="XXX image missing" style="background:white;width:60%;" width="50%"/><!-- {"left" : 0.32, "top" : 1.18, "height" : 1.09, "width" : 9.61} -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-1.png" alt="XXX image missing" style="width:20%;float:right;"/><!-- {"left" : 6.82, "top" : 2.68, "height" : 3.34, "width" : 3.25} -->

  * Parameters
    - Select 'Classification' on the dropdown at the upper right
    - Activation : Tanh
    - Learning Rate: 0.01

  * Select the Two-Blob Datasets

  * Is this dataset linearly separable?




Notes:


---
## Linear Classification: Run

  <img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-2.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 6.72, "top" : 1.24, "height" : 3.39, "width" : 3.36} -->

  * The separated dataset might look like below

  * You may not get zero loss, especially if you introduce noise

  * Challenge: Adjust the learning rate to get to minimum loss in as few epochs as possible.




Notes:

---

## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.98, "top" : 1.1, "height" : 2.71, "width" : 4.06} -->


 * Why didn't we need hidden layers to converge on a solution?

 * What would happen if the dataset wasn't linearly separable?

Notes:

---

# Classification Examples 2

---

## Circle Dataset

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-1.png" alt="playground-dataset-circle-1.png" style="width:30%;float:right;"/><!-- {"left" : 6.94, "top" : 1.19, "height" : 3.1, "width" : 3.08} -->

* Select the circle dataset

* Can we linearly separate this dataset?
    - No amount of fiddling with learning rate will help!
    - It's not linearly separable.

* Solution-1: Include other features 
    - **`x1 + x2 + x1² +  x2²`**

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-3.png"  style="width:55%;"/><!-- {"left" : 6.94, "top" : 1.19, "height" : 3.1, "width" : 3.08} -->

Notes:

---

## Circle Dataset With Hidden Layers

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-1.png" alt="playground-dataset-circle-1.png" style="width:25%;float:right;"/><!-- {"left" : 7.65, "top" : 1, "height" : 2.47, "width" : 2.46} -->

* Select the circle dataset
* Select only **`X1 and X2`** as features
* Add a Hidden Layer
* Can you get a solution with 1 hidden Layer
- You can add more neurons to the hidden layer
- Can you solve it with only one hidden layer?
- If not, add another hidden layer

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-4.png" alt="playground-dataset-circle-1.png" style="width:60%;"/><!-- {"left" : 7.65, "top" : 1, "height" : 2.47, "width" : 2.46} -->

Notes:

---

## Four Square Dataset

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-fourposter-1.png" alt="XXX image missing" style="width:25%;float:right;"/><!-- {"left" : 6.44, "top" : 1.16, "height" : 3.58, "width" : 3.59} -->

* Set the Four-Square dataset

* Try setting the input to **`X1 . X2`** with no hidden layers

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-foursquare-2.png" alt="XXX image missing" style="width:60%;"/><!-- {"left" : 6.44, "top" : 1.16, "height" : 3.58, "width" : 3.59} -->

---

## Four Square Dataset With Hidden Layers

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-fourposter-1.png" alt="XXX image missing" style="width:25%;float:right;"/><!-- {"left" : 6.44, "top" : 1.16, "height" : 3.58, "width" : 3.59} -->

* Solve the **Four Square** using hidden layers

* Set the inputs to **`X1 and X2`**

* Try adding 1 or 2 hidden layers

* **Instructor** : Offer hints from the notes section

Notes:

Possible solutions:

- input  = X1, X2 + hidden 1 (4 neurons) + hidden 2 (2 neurons)  + lr = 0.1
- input = X1 , X2, X1^2, X2^2 + one hidden layer (4 neurons)

---

## Spiral Dataset

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-spiral-2.png" alt="XXX image missing" style="width:23%;float:right;"/><!-- {"left" : 6.05, "top" : 1.1, "height" : 4.06, "width" : 4.02} -->
<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-spiral-solution-1.png" alt="playground-dataset-spiral-solution-1.png" style="width:23%;float:right;clear:both;"/><!-- {"left" : 5.65, "top" : 1.16, "height" : 5.55, "width" : 4.37} -->

* Set the Spiral dataset

* This is a **challenging dataset**

* Try 
    - multiple features
    - multiple hidden layers

* Can you get this result?

* **Instructor** : Offer hints from the notes section

Notes:

Try these

- input = X1, X2 +  lr=0.01 + activation=tanh + 5, 5, 5, 5 neurons
- input = X1, X2 +  lr=0.01 + activation=relu + 5, 5, 5, 5 neurons

---

## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.9, "top" : 1.49, "height" : 2.71, "width" : 4.06} -->


* What's the minimum number of hidden layers required to correctly classify all the test data?

* Does adding any additional features help at all?

* Do we necessarily get better results with more neurons and/or hidden layers?

Notes:
