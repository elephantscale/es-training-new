
# Neural Network Concepts

---

# Part 1: Essentials

---

## NN Concepts (Overview)

 * Learning rate, Loss function, Cost

 * Batch size, epoch, iterations

 * Backpropagation

 * Activation Functions

 * Vanishing / Exploding gradient problem

 * Gradient clipping

 * Optimizers


---

## Data Instance / Features

 * Sample is a single row of data
 * Sample has inputs (vectors) and output
    - algorithm makes a prediction from inputs, and compares the prediction with actual (expected) output
 * Sample = instance / observation / input vector / feature vector
 * In the following example, we have 5 data points / samples (instances 1 - 5)
 - And 3 dimensional input / features: Inputs A,B,C

 <br/>

| Instance   | Input A | Input B | Input C | Output Y |
|------------|---------|---------|---------|----------|
| Instance 1 | a1      | b1      | c1      | y1       |
| Instance 2 | a2      | b2      | c2      | y2       |
| Instance 3 | a3      | b3      | c3      | y3       |
| Instance 4 | a4      | b4      | c4      | y4       |
| Instance 5 | a5      | b5      | c5      | y5       |

<!-- {"left" : 0.25, "top" : 4.86, "height" : 3, "width" : 9.75} -->

---

## Training the Model

 * Rosenblatt's original algorithm for training was simple:

     - Iterate through weights and look at the output error

     - Adjust weights until output error was zero.

     - Will converge only if the outputs are linearly separable.

 * The Problem:

     - With hidden layers, we now have a much greater number of weights to try.

     - This kind of "brute force" method will take too long to train.

Notes:

---

## A Restaurant on an Alien Planet

<img src="../../assets/images/generic/3rd-party/group-dinner-1.jpg" alt="XXX image missing" style="width:35%;float:right;"/><!-- {"left" : 7.29, "top" : 1.06, "height" : 1.89, "width" : 2.84} -->

<img src="../../assets/images/generic/3rd-party/robot-chef-1.jpg" alt="XXX image missing" style="width:20%;float:right;clear:both;"/><!-- {"left" : 7.91, "top" : 3.1, "height" : 3.07, "width" : 2.22} -->


- Imagine you are at restaurant, but you and the waitstaff don't speak the same language (remember they are aliens!)

- You tell them what you want (_"I want a burger, well done"_)

- The kitchen will try to make your meal and bring it out

- If it is not to your liking, you send it back with feedback (_"meat is not cooked well"_,  _"I need more avocado"_ ..etc)

- You keep sending the meal back until they get your order right!

- This happens until every one's order is cooked correctly!!


---

## Epoch

<img src="../../assets/images/deep-learning/epoch-1.png" alt="XXX image missing" style="width:30%;float:right;"/><!-- {"left" : 8.45, "top" : 1.28, "height" : 2.39, "width" : 1.74} -->

 * One **Epoch** means when an entire dataset passed forward and backward exactly ONCE
    - Restaurant Example: Entire table's meal is sent back once and re-delivered
 * Why do we need more than one epoch?
    - Optimizer algorithms try to adjust the weights of neural networks  based on training data
    - Just one-pass isn't enough to tweak the weights
    - leads to under-fitting
 * As we pass the data back and forth multiple times (multiple epochs) the network gets more chance to learn from data and tweak the parameters  further
    - model gets more accurate
    - Too many epochs, will lead to overfitting (not good either)
 * Epoch values are typically in hundreds or thousands


Notes:   
- https://towardsdatascience.com/epoch-vs-iterations-vs-batch-size-4dfb9c7ce9c9
---

## Batch size

<img src="../../assets/images/deep-learning/epoch-batch-2.png" style="width:45%;float:right;"/><!-- {"left" : 2.13, "top" : 1.6, "height" : 1.07, "width" : 5.98} -->


 * When we are training on large dataset, we can not fit the entire dataset into the network due to memory constraints / processing restraints

 * So we send data into batches

 * Algorithms (Optimizers) update the weights of neural network after each batch
    - At the end of the batch, predictions are compared with output
    - Error is calculated
    - The algorithm will then calculate error gradient and make the move to minimize the error during the next cycle

 * Batch size is usually power of 2 (4, 8, 16, 64 ...)

 * Alien Restaurant Example: We send back meals in batches of 3, not the entire table.

Notes:  
- https://machinelearningmastery.com/difference-between-a-batch-and-an-epoch/

---

## Batch Size Calculations

- What if data size is not divisible evenly by batch size?

- That is fine, the last batch will have what is left, and will be smaller than previous batches

- For example, if we have 10 data points and batch size is 4

- batch-1 = 4, batch-2 = 4, batch-3 = 2


| Batch Size                            | Algorithm                    | Description                                        |
|---------------------------------------|------------------------------|----------------------------------------------------|
| Size of Training Set                  | Batch Gradient Descent       | All data goes in a single batch                    |  
| 1                                     | Stochastic Gradient Descent  | Each batch has one data sample                     |  
| 1 < batch size < size of training set | Mini-Batch Gradient Descent. | Batch size is usually power of 2 (32, 64, 128...)  |  

<!-- {"left" : 0.16, "top" : 4.29, "height" : 2.46, "width" : 9.93, "columnwidth" : [2.88, 3.74, 3.31]} -->



---

## Iterations

 * Iterations is the number of batches needed to complete one epoch.

 * `Iterations  = data size / batch size  (round up the result)`

 * For each epoch, we will need to run `iteration` amount of times to pass the whole data through the network

```
# think like a nested loop

for e  in number_of_epochs {
    iterations = round_up (data_size / batch_size)
    for i in iterations {
        # process batch i
    }
}
```
<!-- {"left" : 0, "top" : 3.96, "height" : 2.39, "width" : 9.11} -->

---

## Epoch / Batch size / Iterations

 * We have 10 data points

 * Batch size is 4

 * Iterations = 10 / 4 = 3 (round up!)

<img src="../../assets/images/deep-learning/epoch-batch-iteration-1.png" style="width:100%;"/><!-- {"left" : 0.7, "top" : 3.63, "height" : 1.46, "width" : 8.85} -->


---
## Determining Optimal Values or Batch Size / Epochs

 * Typical epochs values are in 100s to thousands

 * Batch sizes are powers of 2 (32, 64, 128 ... ).  
  32 is a good value to start with

 * One epoch will typically will have many iterations
    - Each iteration processing a single batch

 * There is no magic formula to calculate the optimal values of batch size and epoch
    - In practice, we try a few runs to figure out optimal  values


---

# Loss Functions

[../../machine-learning/generic/ML-Concepts-Errors-and-Loss-Functions.md](../../machine-learning/generic/ML-Concepts-Errors-and-Loss-Functions.md)

---

# Backpropagation

---

## Difficulty in Training Neural Networks

- In early days (1980s) neural networks' parameters were tuned by hand by experts

- Hand engineering required a lot of knowledge and effort; and usually a very very slow process

- Can the networks be trained automatically ?

- Enter __backpropagation__

<img src="../../assets/images/deep-learning/perceptron-02.png" style="width:50%;"/><!-- {"left" : 0.61, "top" : 4.43, "height" : 2.97, "width" : 9.04} -->



---

## Backpropagation

* Backpropagation algorithm was proposed in 1970s

* But it's usefulness wasn't appreciated until a seminal paper in 1986.  

* **"Learning representations by back-propagating errors"**   
    by  [David Rumelhart](http://en.wikipedia.org/wiki/David_Rumelhart), [Geoffrey Hinton](http://www.cs.toronto.edu/~hinton/), and [Ronald Williams](http://en.wikipedia.org/wiki/Ronald_J._Williams)   
 ([PDF](http://www.cs.toronto.edu/~hinton/absps/naturebp.pdf), [Google Scholar](https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=Learning+representations+by+back-propagating+errors&btnG=))

* This paper showed, how backpropagation can be an effective way to train neural networks.  And it worked much faster than previous approaches.

* This enabled neural networks to solve difficult problems that were unsolvable before

* This kicked started the current research boom in neural nets



Notes:   
- http://neuralnetworksanddeeplearning.com/chap2.html

---

## Backpropagation Process: Forward Pass

 * During training phase, training data is fed to network

 * Neurons in each layer calculate output

<img src="../../assets/images/deep-learning/backpropagation-1.png" style="width:50%;"/><!-- {"left" : 2.04, "top" : 3.19, "height" : 4.18, "width" : 6.17} -->



---

## Backpropagation Process: Prediction

 * Network predicts an outcome

 * This prediction is not usually the same as expected outcome

 * Then it measures the error (networks output (prediction) vs. the expected output)


<img src="../../assets/images/deep-learning/backpropagation-2.png" style="width:70%;"/><!-- {"left" : 1.02, "top" : 4.01, "height" : 3.06, "width" : 8.21} -->


---
## Backpropagation Process: Backward Pass

 * It then computes how much each neuron in the last hidden layer contributed to each output neuron's error

 * And the network weights are adjusted accordingly to minimize the error


<img src="../../assets/images/deep-learning/backpropagation-3.png" style="width:60%;"/><!-- {"left" : 1.44, "top" : 3.78, "height" : 4.13, "width" : 7.36} -->


---

## Backpropagation: Backward Pass

 * It traverses the network in reverse, computing errors from previous layer
    - until it reaches the input layer
    - this is called 'reverse pass'
    - The reverse pass measures the error gradient across all the connection weights in the network
    - hence called **back propagation**

 * During the last step algorithm applies 'Gradient Descent' algorithm on connection weights to tweak them

<img src="../../assets/images/deep-learning/backpropagation-4.png" style="width:45%;"/><!-- {"left" : 2.07, "top" : 5.24, "height" : 3.1, "width" : 6.1} -->




---

## Backpropagation Math

<img src="../../assets/images/icons/math-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right" width="25%"/><!-- {"left" : 6.15, "top" : 1.14, "height" : 2.58, "width" : 3.86} -->

 * Given a cost function `C`

 * weight `w` in the network

 * backpropagation uses partial derivative of  
`∂C/∂w`

 * This tells us how quickly cost `C` changes relative to weight `w`

 * For detailed math please see these links:
    - http://neuralnetworksanddeeplearning.com/chap2.html

---

## Backpropagation Summary

 * For each training instance the backpropagation algorithm first makes a prediction (forward pass)

 * Measures the error (prediction vs. output)

 * Then traverses each layer in reverse to measure the error contribution from each  connection (reverse pass)

 * And finally slightly tweaks the connection weights to reduce the error (Gradient Descent step).

<img src="../../assets/images/deep-learning/backpropagation-5.gif" style="width:50%;"/><!-- {"left" : 1.5, "top" : 4.53, "height" : 3.62, "width" : 7.24} -->


Notes:  
- https://medium.com/@14prakash/back-propagation-is-very-simple-who-made-it-complicated-97b794c97e5c
- http://neuralnetworksanddeeplearning.com/chap2.html

---

## Backpropagation Demos

 * [Demo 1: from Google](https://google-developers.appspot.com/machine-learning/crash-course/backprop-scroll/)

 * [Demo 2](https://www.youtube.com/watch?v=46Jzu-xWIBk) - from Geoffrey Hinton himself !  (~12 mins)

 * [Demo2](https://www.youtube.com/watch?v=Ilg3gGewQ5U)  - Goes through pretty good details (~14 mins)

<img src="../../assets/images/deep-learning/3rd-party/backpropagation-demo-1.png" alt="XXX image missing" style="background:white;max-width:100%" height="20%" width="15%"/><!-- {"left" : 1.6, "top" : 3.3, "height" : 3.7, "width" : 1.69} --> &nbsp; <img src="../../assets/images/deep-learning/3rd-party/backpropagation-demo-3.png" alt="XXX image missing" style="background:white;max-width:100%"  width="20%"/> &nbsp; <!-- {"left" : 3.6, "top" : 4.1, "height" : 1.6, "width" : 2.76} --> <img src="../../assets/images/deep-learning/3rd-party/backpropagation-demo-2.png" alt="XXX image missing" style="background:white;max-width:100%"  width="20%"/><!-- {"left" : 6.95, "top" : 3.77, "height" : 2.25, "width" : 2.68} -->


---


# Activation Functions

[Activation Functions](DL-activation-functions.md)

---

# Optimizers

[Optimizers](DL-Optimizers.md)

---

# Part 2: Advanced Concepts

---

# Avoiding Overfitting

---

## Managing Overfitting

 * Neural networks have tens of thousands / millions of  parameters

 * With these many parameters, the networks are very flexible, they can fit very complex data sets

 * Also means the network can overfit training data

 * How to manage overfitting?
    - Regularization
    - Early stopping
    - Dropout
    - Max-norm regularization
    - Data augmentation

---

## Early Stopping

 * Don't train too long
 * Interrupt training when its performance on the validation set starts dropping.
 * How to do it?
    - Measure validation accuracy every few steps (say 20)
    - If it scores higher than previous snapshot, save the current model snapshot as 'winner'

<img src="../../assets/images/deep-learning/early-stopping-1.png" alt="XXX image missing" style="background:white;max-width:100%" width="50%"/><!-- {"left" : 2.69, "top" : 4.86, "height" : 3.26, "width" : 4.88} -->


---

## Regularization

 * In conventional ML we often use regularization to control overfitting.

 * L1 and L2 are common mechanisms for regularization

 * In DL, Regularization is probably not enough
   - Even penalized, certain features will eventually dominate.
   - DL will always overfit, even with L1/L2.

 * Is there something else we can do?

---

## Dropout

 * **Dropout** is the most popular regularization technique for deep neural networks

 * It was proposed by Geoffrey Hinton in 2012 ([paper1](https://arxiv.org/pdf/1207.0580.pdf), [paper2](http://jmlr.org/papers/volume15/srivastava14a/srivastava14a.pdf))

 * By omitting half the neurons' signal (50% dropout rate), they were able to increase an accuracy of state of the art model from 95%  to 97.5%  
    - This may not seem like a lot, but the error rate improved from 5% to 2.5%  (that is 50% reduction in error!)


---

## Dropout

 * How does it work?
    - At every training step, each neuron has a chance (probability) of being 'dropped'.  
    Meaning, it's output ignored during this step
    - The neuron can become active during the next step
    - Neurons in input layer and hidden layer can be dropped
    - Output neurons are not dropped
    - The parameter (p) is called 'dropout rate' - varies from 0 to 1.0.  
    Typically set to 0.5 (50%)

---

## Dropout

<img src="../../assets/images/deep-learning/dropout-1.png" alt="XXX image missing" style="background:white;max-width:100%" width="50%"/><!-- {"left" : 1.78, "top" : 1.97, "height" : 5.7, "width" : 6.69} -->


---

## Dropout

 * It is really surprising, that dropout method works in real life.  
Imagine this scenario

 * Workers of this 'unicorn' company
    - Every morning they toss a coin
    - 'Heads' they come to work, 'tails' they don't
    - So that means 50% of workers don't show up at any day
    - 'Dropout' method says, this makes the 'company' as a whole, perform better :-)

 * Increase dropout rate, if you notice the model is overfitting.  
Decrease it if it is underfitting

 * Dropout slows down the model convergence, but the model you get is much better at the end

---

## Max-Norm Regularization

 * Max-Norm regularization is very popular for neural networks

 * for each neuron, it constrains the weights `w` of the incoming connections such that ||w||2 ≤ r
    - where r is the max-norm hyperparameter and ||.||2 is the L2 norm

<img src="../../assets/images/deep-learning/min-max-regularization-1.png" alt="XXX image missing" style="background:white;width:20%"/><!-- {"left" : 3.72, "top" : 3.01, "height" : 0.68, "width" : 2.81} -->


- Max-norm regularization can also help reduce the vanishing/exploding gradients

---

## Data Augmentation

 * **Data augmentation** creates new training instances from existing ones
    - this artificially boosts training set size

 * This technique is mostly used in image training

 * Common techniques involve:
    - adjusting brightness
    - introducing some noise
    - rotating images slightly clockwise / anti-clockwise (10 to 20 degrees)
    - cropping images / moving centers

 * See next slide for an example

---

## Data Augmentation Example

<img src="../../assets/images/deep-learning/image-augmentation-1.png" alt="XXX image missing" style="background:white;max-width:100%" width="100%"/><!-- {"left" : 0.25, "top" : 2.54, "height" : 3.98, "width" : 9.75} -->



---

## Stochastic Pooling

 * Normally, we apply MAX function for pooling
   - sometimes AVG (mean) pooling, but less often these days

 * Problem: Selecting MAX tends to overfit!

 * What if we do something else?

 * "Stochastic" pooling means we randomly choose another one.

 * Conform to normal distribution.

 * Similar to dropout in that we randomly ignore a preferred weight.

---

# Neural Network Modern Techniques (Advanced / Optional)

---
## Neural Network Modern Techniques

These are discussed in the following sections/slides

 * Using ReLU activation functions (we just saw this)

 * Xavier and He Initialization

 * Batch Normalization

 * Gradient Clipping

---

## Xavier and He Initialization

 * **Problem**
 * We want signals to flow properly in both directions : forward and backwards
    - no dying out or not exploding

 * **Solution**
 * Make the `variance of the outputs` of each layer to be equal to the `variance of its inputs`  
<small>(see paper for the math details)</small>

 * Connection weights are initialized randomly
(see next slide)

 * Doing this **Xavier initialization strategy** really sped up learning in neural networks and really kick started the research again

---

## Xavier and He Initialization

 * For layer with n-inputs and n-outputs

 * Normal distribution with mean 0 and standard deviation σ as follows  

<img src="../../assets/images/deep-learning/xavier-init1.png" alt="XXX image missing" style="background:white;max-width:100%" width="30%" /><!-- {"left" : 3.07, "top" : 2.69, "height" : 0.99, "width" : 4.1} -->

 * Or Uniform distribution between -r and r with r  

<img src="../../assets/images/deep-learning/xavier-init2.png" alt="XXX image missing" style="background:white;max-width:100%" width="40%"/><!-- {"left" : 3.07, "top" : 5.12, "height" : 0.99, "width" : 4.1} -->


 * When number of inputs == number of outputs, we get a simplified equation  

<img src="../../assets/images/deep-learning/xavier-init3.png" alt="XXX image missing" style="background:white;max-width:100%" width="30%"/><!-- {"left" : 2.77, "top" : 7.93, "height" : 0.43, "width" : 2.04} -->&nbsp;  &nbsp; &nbsp;  &nbsp;<img src="../../assets/images/deep-learning/xavier-init4.png" alt="XXX image missing" style="background:white;max-width:100%" width="30%"/><!-- {"left" : 5.59, "top" : 7.93, "height" : 0.43, "width" : 1.88} -->


Notes:  
Source : [Neural Networks and Deep Learning](https://learning.oreilly.com/library/view/neural-networks-and/9781492037354/ch02.html), Ch 2

---

## Xe Initialization Parameters


<img src="../../assets/images/deep-learning/xavier-init-params.png" alt="XXX image missing" style="background:white;max-width:100%" width="100%"/><!-- {"left" : 0.43, "top" : 1.39, "height" : 4.99, "width" : 9.39} -->



---



## Batch Normalization

 * So far we have seen **Xe initialization** and **ReLU variants**

 * These can help avoid vanishing/exploding gradient problems at the start of training
    - how ever during later phases of training, it may occur

 * Sergey Ioffe and Christian Szegedy proposed a technique called Batch Normalization (BN) in this 2015 paper(https://arxiv.org/pdf/1502.03167v3.pdf)

 * This approach adds another operation before the activation function of each layer
    - it normalizes input to the layer and zero centers them

---

## Batch Normalization Performance

 * Significantly reduced vanishing gradient problems

 * They could even try saturating functions like sigmoid and tanh

 * Network was less sensitive to initial weight initialization

 * Learning time can be reduced by using larger learning rates (converges faster)

 * In ImageNet classification it gave 4.9% top-5 validation error (and 4.8% test error), exceeding the accuracy of human raters

 * Also acts as a regularizer reducing overfitting

 * Downside:
    - Slower performance during predictions / inferences, because it adds extra compute for each layer
    - Even though the same penalty applies during training phase, it comes out ahead, because training converges quicker (in much fewer steps)

---

## Batch Normalization Implementation

 * In Tensorflow
```python
tf.layers.batch_normalization
```
<!-- {"left" : 0, "top" : 1.56, "height" : 0.54, "width" : 5.61} -->


 * In Keras
```python
keras.layers.BatchNormalization(axis=-1, momentum=0.99,
          epsilon=0.001, center=True, scale=True,
          beta_initializer='zeros', gamma_initializer='ones',
          moving_mean_initializer='zeros', moving_variance_initializer='ones',
          beta_regularizer=None, gamma_regularizer=None,
          beta_constraint=None, gamma_constraint=None)
```
<!-- {"left" : 0, "top" : 3, "height" : 1.38, "width" : 10.25} -->

---

## Batch Normalization Math (Reference Only)

For reference only, please see the paper for underlying math.

<img src="../../assets/images/deep-learning/mini-batch-equation.png" alt="XXX image missing" style="background:white;max-width:100%" width="45%" /><!-- {"left" : 2.49, "top" : 2.49, "height" : 4.66, "width" : 5.27} -->


Notes:  
[Reference paper](https://arxiv.org/pdf/1502.03167v3.pdf)


---

## Batch Normalization Math (Reference Only)

For reference only, please see the paper for underlying math.

 * μB is the empirical mean, evaluated over the whole mini-batch B.
 * σB is the empirical standard deviation, also evaluated over the whole mini-batch.
 * mB is the number of instances in the mini-batch.
 * (i) is the zero-centered and normalized input.
 * γ is the scaling parameter for the layer.
 * β is the shifting parameter (offset) for the layer.
 * ϵ is a tiny number to avoid division by zero (typically 10-5). This is called a smoothing term.
 * z(i) is the output of the BN operation: it is a scaled and shifted version of the inputs.

Notes:  
[Reference paper](https://arxiv.org/pdf/1502.03167v3.pdf)

---

## Gradient Clipping

 * One way to solve **exploding gradients** during backpropagation is to make sure they don't exceed a certain threshold
    - **gradient clipping**

 * See [this paper](http://proceedings.mlr.press/v28/pascanu13.pdf) by Razvan Pascanu, Tomas Mikolov and Yoshua Bengio for details

---

## Figuring Out The Optimal Learning Rate

 * Learning Rate (⍺) is a very important factor in the algorithm converging (finding the global minimum)

 * Set it too high, algorithm may diverge

 * Set it too low, algorithm will eventually converge, but will take too many iterations and too long

 * Set it a little high, it will make quick progress at the start, then bounce around the global minimum (not settling)

 * Modern optimizers like Adagrad, RMSProp and Adam have adaptive learning rate (they can adjust learning rate as training progresses)

---

## Learning Rate

<img src="../../assets/images/deep-learning/learning-rate-1.png" alt="XXX image missing" style="background:white;max-width:100%" width="100%"/><!-- {"left" : 0.77, "top" : 2.73, "height" : 3.61, "width" : 8.72} -->


---

## How to Find the Optimal Learning Rate

 * Start with high learning rate

 * Run a few epochs of training

 * Watch the convergence using a tool like [Tensorboard](https://www.tensorflow.org/guide/summaries_and_tensorboard)

 * Adjust learning rate, rinse and repeat

---
## Final Words

These default values should get you started, and should work well in most scenarios

| Parameter                  | Value                                |
|----------------------------|--------------------------------------|
| **Initialization**         | He initialization                    |
| **Activation function**    | ELU                                  |
| **Normalization**          | Batch Normalization                  |
| **Regularization**         | Dropout                              |
| **Optimizer**              | Adam / Nesterov Accelerated Gradient |
| **Learning rate schedule** | None                                 |


<!-- {"left" : 0.25, "top" : 3.5, "height" : 2.55, "width" : 9.75} -->


---

## Review Questions

 <img src="../../assets/images/icons/quiz-icon.png" alt="XXX image missing" style="background:white;max-width:100%;float:right" width="30%" /><!-- {"left" : 6.58, "top" : 1.2, "height" : 2.34, "width" : 3.52} -->


 * **Q:** Can you name 3 activation functions and when they are used?

 * **Q:** How many neurons do you need in the output layer to classify emails into spam/ham?
     - how about for classifying digits 0 to 9?

 * **Q:** Name advantages of the ELU activation function over ReLU

 * **Q:** In which cases you would use the following activation functions: ELU, leaky ReLU (and its variants), ReLU, tanh, logistic, and softmax?

 * **Q:** Explain how Dropoff works

---

## Resources

 * [Neural networks and deep learning](https://learning.oreilly.com/library/view/neural-networks-and/9781492037354/)  
by  Aurélien Géron (ISBN: 9781492037347)

<img src="../../assets/images/books/neural-networks-and-deep-learning-9781492037347.jpeg" alt="keras book1" style="width:17%"/><!-- {"left" : 3.92, "top" : 3.01, "height" : 3.63, "width" : 2.4} -->
