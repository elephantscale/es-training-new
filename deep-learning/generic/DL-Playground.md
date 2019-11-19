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

  * Click on the dropdown at the upper right, select 'Regression'

<img src="../../assets/images/deep-learning/3rd-party/playground-regression-dropdown.png" alt="playground-regression-dropdown.png" style="width:15%;"/><!-- {"left" : 4.18, "top" : 1.85, "height" : 1.13, "width" : 1.89} -->

  * Select the dataset in lower left

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-lregression-1.png" alt="playground-dataset-lregression-1.png" style="width:15%;"/><!-- {"left" : 4.09, "top" : 4.05, "height" : 2.14, "width" : 2.06} -->


  * Select the **lowest** setting of Learning Rate

<img src="../../assets/images/deep-learning/3rd-party/playground-lowest-learning-rate.png" alt="playground-lowest-learning-rate.png" style="width:15%;"/><!-- {"left" : 4, "top" : 7.25, "height" : 1.21, "width" : 2.26} -->

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

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-controls-1.png" alt="playground-controls-1.png" style="width:20%;float:right;" /><!-- {"left" : 6.97, "top" : 1.22, "height" : 1.63, "width" : 2.54} --><img src="../../assets/images/deep-learning/3rd-party/playground-output-loss-curve.png" alt="playground-output-loss-curve.png" style="width:20%;float:right;clear:both;" /><!-- {"left" : 6.15, "top" : 3.43, "height" : 1.29, "width" : 3.86} -->


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

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-controls-1.png" alt="XXX image missing" style="width:20%;float:right;" /><!-- {"left" : 8.22, "top" : 0.98, "height" : 1.14, "width" : 1.78} -->
<img src="../../assets/images/deep-learning/3rd-party/playground-output-loss-nan.png" alt="XXX image missing" style="width:20%;float:right;clear:both;" /><!-- {"left" : 7.22, "top" : 3.28, "height" : 1.37, "width" : 2.77} -->

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

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.98, "top" : 2.4, "height" : 2.71, "width" : 4.06} -->


 * What is the impact of __'learning rate'__
    - how does it affect convergence


Notes:

---

# Classification Examples 1

---

## Linear Classification: Setup

<img src="../../assets/images/deep-learning/3rd-party/playground-params.png" alt="XXX image missing" style="background:white;width:60%;" width="50%"/><!-- {"left" : 0.32, "top" : 1.55, "height" : 1.09, "width" : 9.61} -->

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-1.png" alt="XXX image missing" style="width:20%;float:right;"/><!-- {"left" : 6.43, "top" : 4.17, "height" : 3.34, "width" : 3.25} -->

  * Parameters
    - Select 'Classification' on the dropdown at the upper right
    - Activation : Tanh
    - Learning Rate: 0.01

  * Select the Two-Blob Datasets

  * Is this dataset linearly separable?




Notes:


---
## Linear Classification: Run

<!-- TODO shiva -->

  <img src="../../assets/images/deep-learning/3rd-party/playground-dataset-linear-2.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 3.22, "top" : 3.78, "height" : 3.86, "width" : 3.82} -->

  * The separated dataset might look like below

  * You may not get zero loss, especially if you introduce noise

  * Challenge: Adjust the learning rate to get to minimum loss in as few epochs as possible.




Notes:

---

## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.98, "top" : 2.4, "height" : 2.71, "width" : 4.06} -->


 * Why didn't we need hidden layers to converge on a solution?

 * What would happen if the dataset wasn't linearly separable?

Notes:

---

# Classification Examples 2

---
## Circle Dataset Overview

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-1.png" alt="playground-dataset-circle-1.png" style="width:30%;float:right;"/><!-- {"left" : 0.77, "top" : 1.67, "height" : 3.1, "width" : 3.08} -->

  * Select the circle dataset:



  * Can we linearly separate this dataset?

  * Try it!
    - What loss do you get to?
    - Does changing the learning rate help?

Notes:


---
## Adding Features

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-1.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 3.28, "top" : 4.32, "height" : 3.72, "width" : 3.69} -->

  * No amount of fiddling with learning rate will help!
    - It's not linearly separable.
    - Is it impossible?

  * So far, we have input just x1,x2 as features.
    - What if we include other terms?
    - x1² or x2² ?



Notes:

---
## Including Features

* Include these terms:

<img src="../../assets/images/deep-learning/3rd-party/playground-feature-selection.png" alt="XXX image missing" style="width:65%;"/><!-- {"left" : 1.02, "top" : 2.31, "height" : 5.03, "width" : 8.21} -->

Notes:

---
## Experimenting with Features

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-features-1.png" alt="XXX image missing" style="width:15%;float:right;"/><!-- {"left" : 7, "top" : 1.73, "height" : 6.19, "width" : 1.91} -->

  * Experiment with adding features
  *  What terms converge to a solution?
  * Which do not converge?
  * Why?




Notes:

---
## Four Square Dataset Overview

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-fourposter-1.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 0.77, "top" : 1.62, "height" : 3.58, "width" : 3.59} -->

* Set the Four-Square dataset:

* Check to see if it will converge with just X0 and X1

* No??

* Are there any other features that can help?

Notes:

---
## Spiral Dataset

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-spiral-2.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 0.77, "top" : 1.67, "height" : 4.06, "width" : 4.02} -->

* Set the Spiral dataset:

* Check to see if you can converge?

* Can you do it with no hidden layers?

Notes:

---

# Playground Hidden Layers

---

## Circle Dataset With Hidden Layers

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-circle-1.png" alt="playground-dataset-circle-1.png" style="max-width:25%;float:right;"/><!-- {"left" : 2.52, "top" : 2.2, "height" : 5.24, "width" : 5.21} -->
<img src="../../assets/images/deep-learning/3rd-party/playground-hidden-layer.png" alt="playground-hidden-layer.png" style="max-width:25%;float:right;clear:both;"/><!-- {"left" : 2.33, "top" : 3.31, "height" : 4.18, "width" : 5.59} -->

 * Select the circle dataset:

* Select only X1 and X2 as features

* Add a Hidden Layer

* Can you get a solution with 1 hidden Layer

- You can add more neurons to the hidden layer

- Can you solve it with only one hidden layer?

- If not, add another hidden layer


Notes:

---

## Four Square Dataset Hidden Layers

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-fourposter-1.png" alt="playground-dataset-fourposter-1.png" style="width:25%;"/><!-- {"left" : 0.82, "top" : 1.79, "height" : 3.41, "width" : 3.42} -->  &nbsp;  &nbsp;
<img src="../../assets/images/deep-learning/3rd-party/playground-hidden-layer.png" alt="playground-hidden-layer.png" style="width:20%;"/><!-- {"left" : 6.61, "top" : 5.31, "height" : 2.23, "width" : 2.99} -->

   * Set the Four-Square dataset:

   * Can you solve it with hidden layers?




Notes:

---
## Spiral

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-spiral-2.png" alt="playground-dataset-spiral-2.png" style="width:30%;float:right;"/><!-- {"left" : 0.77, "top" : 1.65, "height" : 3.1, "width" : 3.07} -->

* Set the Spiral dataset:

* This one is really tricky!

* Can you do it?

* Don't be afraid to add new features!

* Multiple Hidden Layers?


Notes:

---
## Spiral Solution

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/3rd-party/playground-dataset-spiral-solution-1.png" alt="playground-dataset-spiral-solution-1.png" style="width:40%;float:right;"/><!-- {"left" : 2.94, "top" : 2.05, "height" : 5.55, "width" : 4.37} -->

   * Can you get this result?


---

## Lab Review

<img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 5.98, "top" : 2.4, "height" : 2.71, "width" : 4.06} -->


* What's the minimum number of hidden layers required to correctly classify all the test data?

 * Does adding any additional features help at all?

 * Do we necessarily get better results with more neurons and/or hidden layers?

Notes:
