Deep Learning Playground
=======================
# Setup

## Introducing the playground

  * Navigate in your browser to http://playground.tensorflow.org
  * This is a playground that we will use to play with some concepts
  * It will be fun!

---
## Start

  * When you start, you should see this:

![](../../assets/images/deep-learning/playground-startup.png) <!-- {"left" : 1.02, "top" : 1.6, "height" : 5.41, "width" : 8.21} -->


Notes: 

   

---
## Overview
  * Following show the overview of that:
  * Data: (this is our data)

![](../../assets/images/deep-learning/playground-dataset-circle.png)  <!-- {"left" : 3.35, "top" : 1.96, "height" : 3.58, "width" : 3.56} -->

  * Parameters:

![](../../assets/images/deep-learning/playground-params.png)  <!-- {"left" : 0.33, "top" : 6.1, "height" : 1.08, "width" : 9.58} -->


Notes: 

   
---
## Hidden Layers
  * We will start out with **no** hidden layers
  * Click the "minus" icon to get to no hidden layers
  
![](../../assets/images/deep-learning/playground-nohidden.png) <!-- {"left" : 1.12, "top" : 2.51, "height" : 4.15, "width" : 8.01} -->


Notes: 

   
---
# Linear Regression

## Linear Regression Setup

  * Click on the dropdown at the upper right

![](../../assets/images/deep-learning/playground-regression-dropdown.png) <!-- {"left" : 0.86, "top" : 1.71, "height" : 1.13, "width" : 1.89} -->



  * Select the Left of the Two Datasets

![](../../assets/images/deep-learning/playground-dataset-lregression.png) <!-- {"left" : 0.77, "top" : 3.78, "height" : 2.14, "width" : 2.06} -->



  * Select the **lowest** setting of Learning Rate

![](../../assets/images/deep-learning/playground-lowest-learning-rate.png) <!-- {"left" : 7.75, "top" : 5.98, "height" : 1, "width" : 1.9} -->

Notes: 

   
---
## Parameters

  * What are the parameters?

![](../../assets/images/deep-learning/playground-params.png) <!-- {"left" : 0.64, "top" : 1.75, "height" : 1.01, "width" : 8.97} -->


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
## Let's Go!
  * Let's try pressing the PLAY Button
  * Look at the "Output" curve:

  ![](../../assets/images/deep-learning/playground-output-loss-curve.png) <!-- {"left" : 5.93, "top" : 1.42, "height" : 1.21, "width" : 3.63} -->

  * TOO **SLOW**!!!  (Why??)
    - How long (how many epochs) does it converge?
    - Do you ever get to loss = 0.0?
  * What is the meaning of "loss?"
    - It's another way of saying "error"
    - In this case, it's the RMSE
    - Root Mean Squared Error
  * Is this dataset linearly separable?
    - Is it **possible** to get to zero loss?

Notes: 

   
---
## Adjust the learning rate
  * Hit the reset button to the left of "play"
  * Adjust the learning rate dropdown to something higher.
  * Try hitting play again.
  * What happens if you set a really **big** rate?
    - Note the loss is NaN (Not a Number)
    - The data is only `-6.0` to  `+6.0`. 
    - A "big" value causes overshoot

![Loss](../../assets/images/deep-learning/playground-output-loss-nan.png)  <!-- {"left" : 6.49, "top" : 3.41, "height" : 1.55, "width" : 3.12} -->

  * Challenge: What is the "optimal" learning rate?
    - Get to zero loss in the fewest epochs.

Notes: 

   
---
# Classification Examples
  
## Linear Classification Setup

  * Click on the dropdown at the upper right

 ![](../../assets/images/deep-learning/playground-classification-dropdown.png) <!-- {"left" : 0.47, "top" : 1.33, "height" : 1.73, "width" : 3.2} -->


  * Select the Two-Blob Datasets 
  * Is this dataset linearly separable?

![](../../assets/images/deep-learning/playground-dataset-linear.png) <!-- {"left" : 6.13, "top" : 3.34, "height" : 3.78, "width" : 3.67} -->




Notes: 

   
---
## Perform Linear Classification
  * We are going to try to separate the following: 

![Linear](../../assets/images/deep-learning/playground-dataset-linear.png) <!-- {"left" : 3.16, "top" : 1.41, "height" : 4.06, "width" : 3.94} -->


  * You may not get zero loss, especially if you introduce noise
  * Challenge: Adjust the learning rate to get to minimum loss in as few epochs as possible.

Notes: 

   
---
## Circle Dataset Overview
  * Select the circle dataset:

![Circle](../../assets/images/deep-learning/playground-dataset-circle.png) <!-- {"left" : 6.2, "top" : 0.86, "height" : 3.65, "width" : 3.63} -->
 

  * Can we linearly separate this dataset?
  * Try it!
    - What loss do you get to?
    - Does changing the learning rate help?

Notes: 

   
---
## Adding Features
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

![](../../assets/images/deep-learning/playground-feature-selection.png) <!-- {"left" : 0.71, "top" : 1.53, "height" : 5.4, "width" : 8.83} -->

Notes: 

---
## Experimenting with Features
  * Experiment with adding features
    - What terms converge to a solution?
    - Which do not converge?
    - Why?

Notes: 

---
## Four Square Dataset Overview
   * Set the Four-Square dataset:

![](../../assets/images/deep-learning/playground-dataset-fourposter.png) <!-- {"left" : 5.85, "top" : 1.03, "height" : 3.98, "width" : 3.99} -->


   * Check to see if it will converge with just X1 and X2
   * No??
   * Are there any other features that can help?

Notes: 

---
## Spiral Dataset
   * Set the Spiral dataset:

![](../../assets/images/deep-learning/playground-dataset-spiral.png) <!-- {"left" : 4.94, "top" : 0.95, "height" : 4.57, "width" : 4.53} -->


   * Check to see if you can converge?
   * Can you do it with no hidden layers?

Notes: 

---
# Hidden Layers

## Hidden Layers
  * Feature selection can help us
    - Can model non-linear decision boundary
  * Add a hidden layer

![](../../assets/images/deep-learning/playground-hidden-layer.png) <!-- {"left" : 2.04, "top" : 2.62, "height" : 4.62, "width" : 6.18} -->


Notes: 

---
## Circle Dataset With Hidden Layers
  * Select the circle dataset:

![](../../assets/images/deep-learning/playground-dataset-circle.png)   <!-- {"left" : 2.64, "top" : 1.75, "height" : 4.99, "width" : 4.97} -->

## Circle Dataset With Hidden Layers

  * Select only X1 and X2 as features
  * Add a Hidden Layer

![](../../assets/images/deep-learning/playground-hidden-layer.png) <!-- {"left" : 6.13, "top" : 0.96, "height" : 2.57, "width" : 3.72} -->

  * Can you get a solution with 1 hidden Layer
    - You can add neurons.



Notes: 

---
## Four Square Dataset Hidden Layers 
   * Set the Four-Square dataset:

![](../../assets/images/deep-learning/playground-dataset-fourposter.png) <!-- {"left" : 0.77, "top" : 1.38, "height" : 4.06, "width" : 4.07} -->


   * Can you solve it with hidden layers?

![](../../assets/images/deep-learning/playground-hidden-layer.png) <!-- {"left" : 6.67, "top" : 5.09, "height" : 2.13, "width" : 2.85} -->



Notes: 

---
## Spiral

   * Set the Spiral dataset:

![](../../assets/images/deep-learning/playground-dataset-spiral.png)  <!-- {"left" : 6.08, "top" : 1.09, "height" : 3.65, "width" : 3.61} -->


   * This one is really tricky!
   * Can you do it?
   * Don't be afraid to add new features!
   * Multiple Hidden Layers?


Notes: 

---
## Spiral Solution
   * Can you get this result?

![](../../assets/images/deep-learning/playground-dataset-spiral-solution.png) <!-- {"left" : 4.94, "top" : 0.97, "height" : 6.41, "width" : 5.05} -->


   
Notes: 


