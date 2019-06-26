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


<img src="../../assets/images/deep-learning/local_minima.png" style="max-width:20%"/>

Notes:


---
## Backpropagation


 * We can complete our training by backpropagating the errors to the hidden nodes and continuing to use gradient descent to optimize.

 * This means that we take the errors output, and simply adjust the weights in the network to account for the errors.

Notes:



---
