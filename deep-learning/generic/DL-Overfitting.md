Overfitting
======

## Managing Overfitting

 * Overfitting can be a serious challenge.
 * How to manage overfitting?
 * One strategy:
   - Don't let it train too long!
   - But how to know how long is too long?


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

 * Dropout means we randomly "ignore" a weight
 * We give a probability, and each time we ignore a weight
 * Gives the chance for other features to catch up.
 * Avoids focusing too much on optimizing a single weight.


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
