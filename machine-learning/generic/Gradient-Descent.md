# Gradient Descent Algorithm

---

## Find the Optimal Value for a Variable

<img src="../../assets/images/machine-learning/gradient-descent-1b.png" style="width:40%;float:right;"/><!-- {"left" : 5.92, "top" : 2.07, "height" : 3.15, "width" : 3.92} -->

 * Now we understand **error/loss functions** let's try this:

 * Here when we change variable X, the error function changes   
    `Error = F(x)`


 * Goal: find the optimal X that gives me the lowest error

 * How ever there is a catch!  (See next slide!)

---

## Gradient Descent Process

* Challenge is find the optimal value of X without knowing the graph!

<img src="../../assets/images/machine-learning/gradient-descent-4a.png" style="width:50%;"/><!-- {"left" : 1.94, "top" : 2.05, "height" : 5.55, "width" : 6.37} -->




---

## Gradient Descent Process - Step 1

<img src="../../assets/images/machine-learning/gradient-descent-4b.png" style="width:50%;float:right;"/><!-- {"left" : 5.83, "top" : 1.73, "height" : 3.16, "width" : 3.98} -->

- We are going to start at some random value of X (say x1)

- We can calculate the error for this x1  
 `error = f(x1)`

- We can also measure the error gradient (which way the error function is sloping) for x1
    - This uses _derivative_ functions


---

## Gradient Descent Process - Step 2

<img src="../../assets/images/machine-learning/gradient-descent-4c.png" style="width:50%;float:right;"/><!-- {"left" : 5.11, "top" : 1.81, "height" : 3.42, "width" : 4.74} -->

- Using the error derivative, we can see the error function sloping to the right

- That tells us we should be 'moving right' in the graph

- So we calculate x2 (mostly randomly)

- And repeat the process

---


## Gradient Descent Process - Step 3

<img src="../../assets/images/machine-learning/gradient-descent-4d.png" style="width:50%;float:right;"/><!-- {"left" : 5.18, "top" : 1.63, "height" : 3.42, "width" : 4.73} -->

- Now we calculate the error for x2  
`error = f(x2)`

- Measure the error gradient at f(x2)

- And calculate the next X (x3)

- And repeat the process

---

## Gradient Descent

<img src="../../assets/images/machine-learning/gradient-descent-1a.png" style="width:50%;float:right;"/><!-- {"left" : 5.5, "top" : 1.73, "height" : 4.47, "width" : 4.48} -->

 * This is basically what a Gradient Descent algorithm does

 * Start at a random point, and make 'jumps' towards the minimum

 * As it gets closer to convergence the 'steps' gets smaller
    - so we don't overshoot  and miss the bottom

---

## Avoiding Getting Trapped in Local Minima

<img src="../../assets/images/machine-learning/gradient-descent-avoid-local-minima-1.png" style="width:50%;float:right;"/><!-- {"left" : 5.81, "top" : 1.52, "height" : 3.2, "width" : 4.33} -->

- Sometimes the descent algorithm will get stuck on local minima

- A practical solution for this problem is to run the descent algorithm multiple times, starting at different random points

- And the algorithm will eventually find the global minimum


Notes:



---

## Gradient Descent Algorithm


 * Another example in 2D data

<img src="../../assets/images/machine-learning/gradient-descent-3.png" style="width:80%"/><!-- {"left" : 0.57, "top" : 2.65, "height" : 5.18, "width" : 9.11} -->


Notes:

Image credit to KDNuggets : https://www.kdnuggets.com/2017/04/simple-understand-gradient-descent-algorithm.html


---
## Gradient Descent Demo

<img src="../../assets/images/machine-learning/3rd-party/gradient-descent-animation-1.gif" alt="XXX image missing" style="background:white;max-width:100%;" width="40%" /><!-- {"left" : 0.57, "top" : 3.65, "height" : 3.87, "width" : 3.9} --> &nbsp; &nbsp; <img src="../../assets/images/machine-learning/3rd-party/gradient-descent-animation-3.gif" alt="XXX image missing" style="background:white;max-width:100%;" width="50%" /><!-- {"left" : 4.8, "top" : 4.63, "height" : 1.91, "width" : 4.88} -->


 - [Animation 1](https://s3.amazonaws.com/elephantscale-public/media/gradient-descent-animation-1.gif)

 - [Animation 2](https://s3.amazonaws.com/elephantscale-public/media/gradient-descent-animation-3.gif)

Notes:

Demo1 : http://vis.supstat.com/2013/03/gradient-descent-algorithm-with-r/


---

## Variations of Gradient Descent Algorithms


 *  **Batch Gradient Descent**

     - The cost is calculated for a machine learning algorithm over the entire training dataset for each iteration of the gradient

     - One iteration of the algorithm is called  **one batch** and this form of gradient descent is referred to as batch gradient descent

---

## Variations of Gradient Descent Algorithms

 *  **Stochastic Gradient Descent (SGD)**

     - Classic Gradient Descent can be slow on large datasets (each iteration requires calculation over millions of data points)

     - SGD updates coefficients for each training instance, rather than at the end of the batch of instances

     - Also randomizes training set to

        * reduce coefficients jumping all over the place

        * And to avoid 'getting stuck' at local minima

     - Very effective for large datasets,  requires very few passes (usually 10-20) to converge

Notes:

---

## End: Gradient Descent
