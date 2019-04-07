TENSORFLOW RNN
======
## Lesson Objectives

 * Learn the meaning of Recurrence and Recurrent Neural Networks
 * Understand why Recurrence creates memory and state in NN
 * Learn how to implement RNN in Tensorflow

Notes: 


---
# Introducing RNNs

[Introducing RNNs](../generic/DL-RNNs.md)


# RNNs in Tensorflow

## Recurrence in Tensorflow
 * Recurrent layers with 2 time step:

```python
n_inputs = 3
n_neurons = 5

X0 = tf.placeholder(tf.float32, [None, n_inputs])
X1 = tf.placeholder(tf.float32, [None, n_inputs])

Wx = tf.Variable(tf.random_normal(shape=[n_inputs, n_neurons], dtype=tf.float32))
Wy = tf.Variable(tf.random_normal(shape=[n_inputs, n_neurons], dtype=tf.float32))
b = tf.Variable(tf.zeroes([1, n_neurons], dtype=tf.float32))

Y0 = tf.tanh(tf.matmul(X0, Wx) + b)
Y1 = tf.tanh(tf.matmul(X0, Wy) + tf.matmul(X1, Wx) + b)

init = tf.global_variables_initializer()


```

Notes:

This is *NOT* a neural network because we aren't training anything. What we're doing
is randomly initializing weights and moving inputs through.

Note that the ouput of Y1  is dependent both on its own input X1 as well as the the same output as Y0. Effectively this is a recurrent connection.

## Input Values in Network

* The network looks like a regular ANN *except*:
  - The weights are shared by both layers.
  - Inputs are fed at each layer
  - Outputs are retrieved from both layers.

```python


# Input 4 obs of 3 variables each @ times 0 and 1
X_t0 = np.array([[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 0, 1]]) # t = 0
X_t1 = np.array([[9, 8, 7], [0, 0, 0], [6, 5, 4], [3, 2, 1]]) # t = 1

with tf.Session() as sess:
    init.run()
    Y0_val, Y1_val = sess.run([Y0, Y1], feed_dict={X0: X_t0, X1: X_t1})

X_t0 = np.array([[0,1,2], [3,4,5], [6,7,8], [9,0,1]]) # t = 0
X_t1 = np.array([[9,8,7], [6,5,4], [3,2,1], [0,0,0]]) # t = 1

with tf.Session() as sess:
   init.run()
   Y0_val, Y1_val = sess.run([Y0, Y1], feed_dict={X0: X_t0, X1: X_t1}
```


## Output of Network

```python
>>> print(Y0_val)
[[ 0.9247161  -0.999995   -0.8969864  -0.7115789  -0.97927713]
 [ 0.9773871  -1.         -0.9999943   0.76748437 -0.66078764]
 [ 0.9933354  -1.         -1.          0.99418443  0.5987562 ]
 [-0.99991107  0.9999316  -0.99937576  1.          1.        ]]

>>> print(Y1_val)
[[ 0.7885174  -1.         -1.          0.9999928   1.        ]
 [ 0.01587098  0.7866728  -0.96647304  0.75650764  0.5484772 ]
 [-0.5836996  -1.         -1.          0.9999931   0.9999637 ]
 [-0.9998492  -0.9985043  -0.99633384  0.9894642  -0.06464703]]
```



Notes:

---

## BasicRNNCell in TF

  * The `BasicRNNCell` in TF works by unrolling through time.
  * Works by unrolling and creating copies of the cell for many time steps.
  * There are two ways to do this:
    - static
    - dynamic
  * Both involve unrolling the network through time in TF Graph

## Static RNN

```python

n_steps = 2
n_inputs = 3
n_neurons = 5

X = tf.placeholder(tf.float32, [None, n_steps, n_inputs])
X_seqs = tf.unstack(tf.transpose(X, perm=[1, 0, 2]))

basic_cell = tf.nn.rnn_cell.BasicRNNCell(num_units=n_neurons)
output_seqs, states = tf.nn.static_rnn(basic_cell, X_seqs,
                                                dtype=tf.float32)
outputs = tf.transpose(tf.stack(output_seqs), perm=[1, 0, 2])
```


## Problems

 * Builds a graph containing one cell per time step. 
   - 50 time steps = Ugly Graph!
   - Like Writing a program without ever using loops!
 * May (will!) get Out of Memory Errors!
   - Graph grows without bound as time progresses.
   - Especially problem with limited memory of GPU
 * Must store all tensor values during forward pass
   - Use them to compute gradients in reverse pass


## Dynamic RNN

 * `dynamic_rnn() uses a `while_loop()` operation
    - runs over the cell as many times as needed
    - still unrolling through time -- dynamically!
 * Can swap GPU memory out if needed
    - set `swap_memory=True`
 * Inputs a single tensor for all inputs at every time step
   - `[None, n_steps, n_inputs]`
 * Outputs a single tensor for all outputs
   - `[None, n_steps, n_neurons]`

```python
X = tf.placeholder(tf.float32, [None, n_steps, n_inputs])

basic_cell = tf.nn.rnn_cell.BasicRNNCell(num_units=n_neurons)
outputs, states = tf.nn.dynamic_rnn(basic_cell, X, dtype=tf.float32)
```

---

## Variable Sequence Lengths
 * So far we have done only fixed-length sequences.
   - But what about variable lengths?

```python
X = tf.placeholder(tf.float32, [None, n_steps, n_inputs])
basic_cell = tf.nn.rnn_cell.BasicRNNCell(num_units=n_neurons)
seq_length = tf.placeholder(tf.int32, [None])
outputs, states = tf.nn.dynamic_rnn(basic_cell, X, dtype=tf.float32,
                                    sequence_length=seq_length)
```

---

## Lab: RNN Intro in Low-Level Tensorflow API


  * **Note**:

  * **Instructions for the trainer**:

    - This lab is run with Jupyter Notebook
    - Help the students start a Jupyter Notebook

  * **Overview**: In this lab, we will do a hello world for TensorFlow and Keras.

  * **Approximate time**: 15-20 minutes

  * **Instructions for students**:

    - (Keras)  **07-rnn/6.1-cnn-intro.ipynb** lab

Notes:

---
