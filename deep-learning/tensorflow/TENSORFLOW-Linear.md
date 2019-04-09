# Tensorflow Linear Models
---


## Lesson Objectives

 * Learn how to implement Linear Models within TensorFlow
 * Understand Gradient Descent and Training
 * Explain how Linear Models differ from ANNs

---

# Introducing Linear Models

---

[GENERIC Linear Model](../generic/DL-Linear.md)

---

# Linear Models in Tensorflow

---

## Placeholder Variables
 * X: Placeholder for input
   - Univariate (single varialble)
 * Y: Placeholder for output
   - Continuous Output (regresssion)

```python
X = tf.placeholder(dtype=tf.float32,
                   shape=(None, self.x_dim),
                   name='x_input')

Y = tf.placeholder(dtype=tf.float32,
                   shape=(None),
                   name='y_input')
```

---

## Weight and Bias Variables
 

```python
## define weight matrix and bias vector

W = tf.Variable(tf.zeros(shape=(1)),
                name='weight')
B = tf.Variable(tf.zeros(shape=(1)), 
                name="bias")

```

---

## Output
 * We will define `y_` as an output.
 * formula: `Y_ = W * X + B`

```python
Y_ = tf.squeeze(W * X + B)
```

---

## Training 

 * This is how we train.
 * First define the loss:
   - MSE  

```python
loss = tf.reduce_mean(tf.square(y - y_))


o = tf.train.GradientOptimizer(
              learning_rate=0.01)
o = o.minimize(loss)

for i in range(num_epochs):
  _ = sess.run(o, feed_dict={X:X_train,
                             Y:Y_train})
```

---

## Multivariate Problems
 * The previous example was *univariate*
   - `X` was just a scalar number
   - What if X is a vector?
 * New Formula
   - `Y = W x X + B`
 * in this case, we have a matrix mutiply

```python
Y_ = tf.squeeze(tf.matmul(W,X) + B)
```

---

## Classification Outputs
 * Classification outputs differ from Regression outputs.
 * They use the softmax layer

---
# Tensorflow High-Level Models

---

[TENSORFLOW Regression](./TENSORFLOW-Regression.md)
