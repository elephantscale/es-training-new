# TensorFlow Low-Level API
---

# Tensors

---

## What is a Tensor?

 * Mathematically, a tensor is linear relationship describing a multidimensional map between vector spaces.

 * Practically, a tensor is a multidimensional array.
 
 *  **Everything**  in TensorFlow is a tensor (`tf.Tensor`)
 
 *  Tensors have rank, shape, and type
    - rank: dimension of tensor
    - shape: number of rows / columns 
    - type: data type (int, float ..etc.)
    

| Rank | Tensor      |
|------|-------------|
| 0    | Scalar      |
| 1    | Vector      |
| 2    | Matrix      |
| 3    | Number Cube |
| n    | n-Tensor    |

<!-- {"left" : 3.13, "top" : 7.44, "height" : 3, "width" : 11.23} -->

Notes: 


---

## Tensors


<img src="../../assets/images/deep-learning/tensors-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:60%;" /><!-- {"left" : 2.62, "top" : 3.97, "height" : 4.45, "width" : 12.26} -->



---



## Datatypes

* All Datatypes in TensorFlow are from `tf.Tensor`

* Immutable Types:
   - `tf.constant`
   - `tf.placeholder`
   - `tf.SparseTensor`
   
* Mutable Type:
   - `tf.Variable`

Notes: 

---
## Immutability

 * Why are types in TF immutable?
 
 * Initialization
   - Immutable types don't need to be initialized 
   
 * Parallelization
   - Immutable types have no need for synchronization
   - no locks / blocks
   - no race conditions
   - very fast to execute on distributed environments
   
 * Note `tf.Variable` is *not* immutable (e.g. mutable or value can change)

Notes: 

---
## Typing in Tensorflow

  * Tensorflow is *strongly* typed
  
  * Vanilla Python is dynamically typed.
  
  * TF variables *must* be defined as a static `tf.DType` object.
  
  * TF types can be *inferred*, but only at creation time.
    - Example: `10.0` : `tf.float64`
    - Example: `5` : `tf.int64`

Notes: 

---
## Tensorflow Types

|      Type     |               Description              |
|:-------------:|:--------------------------------------:|
| tf.float16    | 16-bit half-precision floating-point   |
| tf.float32    | 32-bit single-precision floating-point |
| tf.float64    | 64-bit double-precision floating-point |
| tf.bfloat16   | 16-bit truncated floating-point        |
| tf.complex64  | 64-bit single-precision complex        |
| tf.complex128 | 128-bit double-precision complex       |
| tf.int8       | 8-bit signed integer                   |
| tf.uint8      | 8-bit unsigned integer                 |
| tf.uint16     | 16-bit unsigned integer                |
| tf.uint32     | 32-bit unsigned integer                |
| tf.uint64     | 64-bit unsigned integer                |

<!-- {"left" : 1.33, "top" : 2.94, "height" : 1, "width" : 14.85} -->

Notes: 

---
## Tensorflow Types (continued)

|     Type    |            Description            |
|:-----------:|:---------------------------------:|
| tf.int16    | 16-bit signed integer             |
| tf.int32    | 32-bit signed integer             |
| tf.int64    | 64-bit signed integer             |
| tf.bool     | Boolean                           |
| tf.string   | String                            |
| tf.qint8    | Quantized 8-bit signed integer    |
| tf.quint8   | Quantized 8-bit unsigned integer  |
| tf.qint16   | Quantized 16-bit signed integer   |
| tf.quint16  | Quantized 16-bit unsigned integer |
| tf.qint32   | Quantized 32-bit signed integer   |
| tf.resource | Handle to a mutable resource      |
| tf.variant  | Values of arbitrary types         |

<!-- {"left" : 1.69, "top" : 2.94, "height" : 1, "width" : 14.12} -->

Notes: 

---
## Tensor Rank

 * The Rank is the number of dimensions

| Rank | Meaning     |
|------|-------------|
| 0    | Scalar      |
| 1    | Vector      |
| 2    | Matrix      |
| 3    | Number Cube |
| n    | n-Tensor    |

<!-- {"left" : 4.53, "top" : 2.94, "height" : 1, "width" : 8.43} -->

Notes: 

---
## Rank 0

 * Rank 0 is also known as a *scalar*
 
 * Here are some Example scalars:

<br/>

```python
person = tf.Variable("Tim", tf.string)
count = tf.Variable(30, tf.int16)
floating_point = tf.Variable(5.5, tf.float64)
complex_number = tf.Variable(4.1 + 3.3j, tf.complex64)
```
<!-- {"left" : 0.85, "top" : 3.28, "height" : 1.88, "width" : 13.78} -->

 * Note that the scalars are converted from python types to TF types.


Notes: 

---
## Rank 1

 * Rank 1 Tensors are *vectors*
 
 * Here are some vectors (rank 1)
 
 * Initialize with Python lists or NumPy arrays

```python
counts = tf.Variable([10,20,30], tf.int16)
distances = tf.Variable([3.1,2.2,5.5], tf.float32)
```
<!-- {"left" : 0.85, "top" : 3.92, "height" : 1.33, "width" : 14.95} -->

Notes: 

---

## Rank 1 Example

```python
# Create an array using Numpy 
import numpy as np 

a = np.array([1,2,3,4])
print(a)
# > [1 2 3 4]

# first element 
print(a[0])  
# > 1

## rank 
print (a.ndim)
# > 1

## shape 
print (a.shape)
# > (4,)

## type
print(a.dtype)
# > int64

```
<!-- {"left" : 0.85, "top" : 2.33, "height" : 8.58, "width" : 7.41} -->


---
## Rank 1 Example

```python 
# converting to tensor
import tensorflow as tf

tensor_1d = tf.convert_to_tensor(a, dtype=tf.int64) 
print (tensor_1d)
# > Tensor("Const_3:0", shape=(4,), dtype=int64)

with tf.Session() as sess: 
    print(sess.run(tensor_1d))
# > [1 2 3 4]
```

<!-- {"left" : 0.85, "top" : 2.65, "height" : 4.66, "width" : 13.77} -->



Notes: 

---


## Rank 2

 * Rank 2 Tensors are *matrices*
 
 * Here are some *matrices* (rank 2) 
 
 * Initialize with Python lists or NumPy arrays

```python
a = np.array ([(1,2,3), (4,5,6), (7,8,9) ])
b = np.array ([(9, 8, 7), (6, 5, 4), (3,2,1)])
```

<!-- {"left" : 0.85, "top" : 4.04, "height" : 1.18, "width" : 13.31} -->

Notes: 

---

## Rank 2 Example

```python 
import tensorflow as tf
import numpy as np

a = np.array ([(1,2,3), (4,5,6), (7,8,9) ])
b = np.array ([(9, 8, 7), (6, 5, 4), (3,2,1)])

tensor_a = tf.convert_to_tensor(a, dtype=tf.int64)
print(tensor_a)
# > Tensor("Const_18:0", shape=(3, 3), dtype=int64)

tensor_b = tf.convert_to_tensor(b, dtype=tf.int64)
print(tensor_b)
# > Tensor("Const_19:0", shape=(3, 3), dtype=int64)

tensor_c = tf.matmul(tensor_a, tensor_b)
print (tensor_c)
# > Tensor("MatMul_5:0", shape=(3, 3), dtype=int64)

with tf.Session() as sess: 
    print(sess.run(tensor_c))

# >     [[ 30  24  18]
# >      [ 84  69  54]
# >      [138 114  90]]
```
<!-- {"left" : 0.85, "top" : 2.12, "height" : 9.18, "width" : 11.7} -->

---

## Higher Ranks
 * Initialize with n-dimensional NumPy array (or list)


```python
rubiks = tf.Variable([[[1,2,3],[4,5,6],[7,8,9]], \
                      [[1,2,3],[4,5,6],[7,8,9]], \
                      [[1,2,3],[4,5,6],[7,8,9]]], \
                      tf.float32)

tf.rank(rubiks) # Will get value of rank after session runs
tf.shape(rubiks) # Will get [3,3,3] after session runs
tf.reshape(rubiks, [9,3]) # Will reshape into 9 x3 Matrix
```
<!-- {"left" : 0.85, "top" : 2.82, "height" : 3.39, "width" : 14.54} -->

Notes: 

---
## Slicing and Dicing
 
 * Use NumPy slicing rules (zero-based)
 
 * The `:` symbol means to leave dimension alone.

```python


rubiks = np.array([[[1,2,3],[4,5,6],[7,8,9]], \
                      [[1,2,3],[4,5,6],[7,8,9]], \
                      [[1,2,3],[4,5,6],[7,8,9]]])

rubiks[0:2,:,0]
# ([[1, 4, 7],
#   [1, 4, 7]])
```
<!-- {"left" : 0.85, "top" : 3.52, "height" : 2.9, "width" : 12.4} -->


Notes: 

---
## Constants

 * Constants are used for values that *never* change
   - Not model itself
   - Nor by input.
   
 * Constants don't have to be initialized
   - They are always there
   
 * Literals won't work in TF
   - can't just say `constant2 + 1`
   - Have to define a constant first. `tf.constant(1, dtype=tf.int32)`
       
 * Used for literals mostly
 
 * Can be used for hyperparameters
   - But we usually want those tunable from the outside.

Notes: 

---
## Placeholders

  * Placeholders are not changeable by the model
    - Can't hold state
    - Once set by the outside, they are fixed.
    
  * They are usually inputs to the model from *outside*.
  
  * Training Data and Labels are typically placeholders
  
  * Hyperparameter values are also placeholders.
  
  * Don't require initialization.

Notes: 

---
## Feed Dicts
  * How do we "feed" a series of elements into the placeholder
    - for example, training data examples

```python
import tensorflow as tf

placeholder_ex_one = tf.placeholder(tf.float32)
placeholder_ex_two = tf.placeholder(tf.float32)
placeholder_ex_tre = tf.placeholder(tf.float32)
placeholder_sum = placeholder_ex_one+ placeholder_ex_two + placeholder_ex_tre

with tf.Session() as sess: 
    print(sess.run(placeholder_sum, 
         feed_dict={placeholder_ex_one: 10,
                    placeholder_ex_two: 20,
                    placeholder_ex_tre: 30}))

# > output : 60
```
<!-- {"left" : 0.85, "top" : 3.44, "height" : 4.97, "width" : 15.92} -->



Notes: 

---
## Variables

 * Type `tf.Variable` is mutable
 
 * Use it to store stateful variables
   - Especially things like *weights*
   
 * You *must* initialize variables
   - You can also call an initializer at definition time.
   
 * Best way is to call `get_variable`
 
```python 
import tensorflow as tf

# variables are defined, but not initialized yet
x = tf.Variable(3, name="x")
y = tf.Variable(4, name="y")
f = x*x*y + y + 2

with tf.Session() as sess:
    # perform initialization
    x.initializer.run()
    y.initializer.run()
    result = sess.run(f)
    
print(result)
#  > result 42
```
<!-- {"left" : 0.85, "top" : 5.67, "height" : 5.81, "width" : 10.97} -->


Notes: 

---
## Global Initialization

- Rather than initializing each variable separately, we can use **global initializer**

- This doesn't initialize variables right away, but create a node that will initialize all variables when it is run

```python
import tensorflow as tf

x = tf.Variable(3, name="x")
y = tf.Variable(4, name="y")
f = x*x*y + y + 2

init = tf.global_variables_initializer()  # prepare an init node

with tf.Session() as sess:
    init.run()  # actually initialize all the variables
    result = sess.run(f)
    
print (result)
#  > result 42
```
<!-- {"left" : 0.85, "top" : 4.55, "height" : 5.42, "width" : 14.22} -->

Notes: 

---

## Eager Execution vs Sessions

 * Tensorflow's *default* mode of operation is called Eager Execution
   - As of 2.0

 * It means that operations are processed **immediately**
   - Like NumPy
 
---

## About Eager Execution

 * TF's Session API is very efficient:
    - Lazy Evaluation
    - More efficient distribution

 * But, sometimes we just want **interactive** execution
    - Think like ordinary NumPy/Pandas
    - More interactive
    - Great for exploration

```python
import tensorflow as tf
tf.enable_eager_execution()
```
<!-- {"left" : 0.85, "top" : 6.18, "height" : 1.28, "width" : 8.37} -->

Notes: 


---

## Example Eager Execution

 * It is enabled now by default in v2.0+!
 * Here is how we enable Eager Execution:

```pycon
>>> import tensorflow as tf
>>> tf.enable_eager_execution()
>>> a = tf.constant([[1,2],[3,4]])
>>> print(a)

<tf.Tensor: id=0, shape=(2, 2), dtype=int32, numpy=
array([[1, 2],
       [3, 4]], dtype=int32)>
```
<!-- {"left" : 0.85, "top" : 3.4, "height" : 3.72, "width" : 14.42} -->

Notes: 

---
## Eager Execution and NumPy

  * We can use NumPy with Eager Execution

```pycon
>>> import tensorflow as tf
>>> tf.enable_eager_execution()
>>> a = tf.constant([[1, 2],
                     [3, 4]])
>>> a.numpy()
# => [[1 2]
#     [3 4]]
>>> np.multiply(a, 2)
```
<!-- {"left" : 0.85, "top" : 2.78, "height" : 4.21, "width" : 10.46} -->

Notes: 

---
## Models With Eager Execution 
  
  * Keras layers work well with Eager Execution
  * Here is an MNIST

```python
class MNISTModel(tf.keras.Model):
  def __init__(self):
    super(MNISTModel, self).__init__()
    self.dense1 = tf.keras.layers.Dense(units=10)
    self.dense2 = tf.keras.layers.Dense(units=10)

  def call(self, input):
    """Run the model."""
    result = self.dense1(input)
    result = self.dense2(result)
    result = self.dense2(result)
    return result

model = MNISTModel()
```
<!-- {"left" : 0.85, "top" : 3.36, "height" : 5.49, "width" : 12.38} -->

Notes: 

---

## Session


 * A session allows a series of operations on tensors to be defined

 * The session takes care of placing operations onto devices like CPUs, GPUs and running them
 
 * Session also holds all variables 

 * Here is how we create a session:

```python
import tensorflow as tf

a = tf.constant([1., 2., 3.])
b = tf.constant(6.0)
c = a * b

with tf.Session() as sess:
   sess.run(c)
   # session is closed here
```
<!-- {"left" : 0.85, "top" : 5.15, "height" : 4.04, "width" : 7.82} -->

Notes: 

---
## Interactive Sessions

 * For interactive environments like Jupyter notebooks, we prefer **InteractiveSession**
 
 * Will create Session **and** make it the default
 
 * It will rerun statements as soon as they are defined


```python
import tensorflow as tf

# interactive session becomes the default session
sess = tf.InteractiveSession()


a = tf.constant(5.0)
b = tf.constant(6.0)
c = a * b
print(c.eval()) # evaluated immediately
# output > 30

sess.close()  # be sure to close the session
```
<!-- {"left" : 0.85, "top" : 4.47, "height" : 5.42, "width" : 11.91} -->

Notes: 

---
## Tensorflow Graphs 

* Tensorflow executes operations as graphs

<img src="../../assets/images/deep-learning/tensorflow-graph-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:80%;" /><!-- {"left" : 3.5, "top" : 4.03, "height" : 5.65, "width" : 10.51} -->


---
## Tensorflow Graphs 

<img src="../../assets/images/deep-learning/tf-architecture-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:40%;"/><!-- {"left" : 6.16, "top" : 2.72, "height" : 8.26, "width" : 5.17} -->


---


## Tensorflow Graph Example


<img src="../../assets/images/deep-learning/3rd-party/tensors_flowing.gif" alt="XXX image missing" style="background:white;width:30%;"/><!-- {"left" : 5.99, "top" : 2.44, "height" : 8.83, "width" : 5.52} -->



---


## Dataflow

 * Dataflow has several advantages that TensorFlow leverages when executing your programs:
 * **Parallelism.** By using explicit edges to represent dependencies between operations, it is easy for the system to identify operations that can execute in parallel.
 * **Distributed execution.** By using explicit edges to represent the values that flow between operations, it is possible for TensorFlow to partition your program across multiple devices (CPUs, GPUs, and TPUs) attached to different machines. TensorFlow inserts the necessary communication and coordination between devices.
 * **Compilation.** TensorFlow's XLA compiler can use the information in your dataflow graph to generate faster code, for example, by fusing together adjacent operations.
 * **Portability.** The dataflow graph is a language-independent representation of the code in your model. You can build a dataflow graph in Python, store it in a SavedModel, and restore it in a C++ program for low-latency inference.


---


## All Transformations Are Lazy

 * TensorFlow engine does not *immediately* compute results
   - Transformations stored as a dataflow graph on the session
   - They specify how to perform parallel computation 

 * The Dataflow Graph is executed when the session is run
   - When it needs to provide data

 * Allows TensorFlow to:
   - Optimize required calculations 
   - Avoid passing of data to and from python code

Notes: 

---
## Lazy Evaluation
 
<img src="../../assets/images/deep-learning/Introduction-to-TensorFlow-Lazy-Evaluation.png" alt="XXX image missing" style="background:white;max-width:100%;width:50%;float:right;" /> <!-- {"left" : 10.8, "top" : 2.09, "height" : 6.9, "width" : 6.02} --> 

* We read a file
  - Filter out errors
  - No Work Done (Yet)

* Client requests the first line
  - Triggers evaluation of:
    * the Dataflow Graph
  - Now the work is done
  - Result is sent to client

* Many possible optimizations
  - Stop filtering after the 
  - first ERROR line encountered


Notes: 

---

## Tensor Evaluation

 * We can view a Tensor using Evaluation 
 * This only works if InteractiveSession is active

```python
constant = tf.constant([1, 2, 3])
tensor = constant * constant
print tensor.eval()
```
<!-- {"left" : 0.85, "top" : 3.37, "height" : 1.8, "width" : 10.58} -->


Notes: 

---

## Lab: Tensorflow Intro

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="25%"/><!-- {"left" : 12.52, "top" : 1.89, "height" : 5.87, "width" : 4.4} -->

 *  **Overview:**
 In this lab, we will explore sessions in tensorflow 

 *  **Approximate time:** 15-20 minutes

 *  **Lab Instructions:**  
     - **basics-1: basics/1-hello-world.ipynb**
     - **basics-2: basics/2-sessions.ipynb**
     - **basics-3: basics/3-tensors.ipynb**
     - **basics-4: basics/4-variables.ipynb**
     - **basics-5: basics/5-tensorboard.ipynb**


Notes:

---

## TensorFlow Lab Review

 * We saw that we did not **immediately** see results from a session graph.
 * We saw we had to **run** the session graph.
 * We run the session graph with `.eval()`
 * `InteractiveSession` allows us to call `.eval()` without specifying the session

Notes: 

---
## Tensor Graphs

 * We can refer to the underlying tensor graph object
 * Get it from `sess.graph`.

```python
with tf.Session() as sess:
    graph = sess.graph
    print(g.get_operations()) # Will dump graph
```
<!-- {"left" : 0.85, "top" : 3.42, "height" : 1.63, "width" : 13.14} -->

Notes: 

---
## Saving Tensor Graphs

 * We can save our tensor graphs to a file
 * Easiest: Use `simple_save()` :

```python
simple_save(session,
            export_dir,
            inputs={"x": x, "y": y},
            outputs={"z": z})
```
<!-- {"left" : 0.85, "top" : 3.28, "height" : 2.49, "width" : 12.64} -->

Notes: 

---
## Restoring Tensor graphs  

 * We can restore our saved model graphs

```python
export_dir = '/path/to/my/file'
with tf.Session(graph=tf.Graph()) as sess:
  tf.saved_model.loader.load(sess, 
                       [tag_constants.TRAINING], 
                       export_dir)
```
<!-- {"left" : 0.85, "top" : 2.68, "height" : 2.37, "width" : 13.28} -->

Notes: 

---

## Lab: MNIST Dataset

  * MNIST is a dataset of 28x28 pixel images (784 total inputs)
  * It contains greyscale handwritten digits from 0-9. (10 outputs)
  * It is often used as a hello world example for Deep Learning.


<img src="../../assets/images/deep-learning/3rd-party/mnist-1.jpeg" alt="XXX image missing" style="background:white;max-width:100%;width:50%;" /><!-- {"left" : 4.99, "top" : 5.16, "height" : 4.98, "width" : 7.52} -->

Notes: 

---
## Defining some variables

 * We are going to define
   - x: This is a placeholder for our input. (784 pixels)
   - W: This is our weights for our input
   - b: This is our bias for out input.

```python

x = tf.placeholder(tf.float32, [None, 784])
W = tf.Variable(tf.zeros([784, 10]))
b = tf.Variable(tf.zeros([10]))
```
<!-- {"left" : 0.85, "top" : 4.51, "height" : 1.67, "width" : 12.41} -->

Notes: 

---
## Our equation

 * Remember `Y = mx + b` from your algebra classes?
 * Here we will do `Y = wx + b`.
   - x and w are vectors of 784 pixels in size
   - y is a vector of 10 in size.
 * The output takes the softmax function
   - More on this later
   - Converts the output to array of probabilities
 * This is a *linear* model

```python
y = tf.nn.softmax(tf.matmul(x, W) + b)
```
<!-- {"left" : 0.85, "top" : 6.82, "height" : 0.89, "width" : 11.73} -->

Notes: 

---
## Y and Y-hat

 * We will define our `y_` (y-hat) 
   - This is the actual output (0-9)
 * `y` is our *predicted* output
 * `correct_prediction` is whether we were right or wrong

```python
y_ = tf.placeholder(tf.float32, [None, 10])
correct_prediction = 
tf.equal(tf.argmax(y,1), tf.argmax(y_,1))

```
<!-- {"left" : 0.85, "top" : 4.61, "height" : 1.83, "width" : 13.39} -->

Notes: 

---
## Training an Model

  * We will use Gradient Descent to train
    - More about that later.
  * We will train for 1000 *epochs* 
    - with batches of 100 inputs

```python

cross_entropy = tf.reduce_mean
(-tf.reduce_sum(y_ * tf.log(y), reduction_indices=[1]))
train_step = tf.train.GradientDescentOptimizer(0.5).
minimize(cross_entropy)

sess = tf.InteractiveSession()
tf.global_variables_initializer().run()

for _ in range(1000):
  batch_xs, batch_ys = 
mnist.train.next_batch(100)
  sess.run(train_step, feed_dict=
{x: batch_xs, y_: batch_ys})

```
<!-- {"left" : 0.85, "top" : 4.5, "height" : 4.97, "width" : 12.15} -->


Notes: 

---
## Results

 * We only have one layer, so we are training a linear model.
 * This is basically a **logistic regression** model.

Notes: 

---

## Lab : Simple Linear Regression 

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="25%"/> <!-- {"left" : 12.52, "top" : 1.89, "height" : 5.76, "width" : 4.32} -->

 *  **Overview:**  
 In this lab, we will implement a simple linear regression using Tensorflow

 *  **Approximate time:** 20-30 minutes

 *  **Lab Instructions:**

     - **lowlevel/1-linear.ipynb** file
     - bonus: **lowlevel/2-linear-tips-a.ipynb** file


---
## Lab: Tensorflow MNist Example

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="25%"/><!-- {"left" : 12.52, "top" : 1.89, "height" : 5.76, "width" : 4.32} -->


 *  **Overview:**   
 In this lab, we will explore MNIST 

 *  **Approximate time*:* 15-20 minutes

 *  **Lab Instructions:**

     - follow  **lowlevel/3.2-NoHidden.ipynb** file



Notes:

---

## Lab Review

 * Don't worry too much *exactly* how we trained the model
   - We will get to that!
 * Notice we loaded data in batches of 100.
   - **Question for the Class:** Why did we do this in batches?
 * And we called `.eval()` on session graph in a `for` loop.
   - We call each run through an *epoch.*
   
   
Notes: 

