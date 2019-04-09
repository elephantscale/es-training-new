# TensorFlow Datasets 

---

# Datasets Introduction 

---

## TensorFlow Datasets 

 * TF tensors are very like NumPy arrays
 * `tf.data.Dataset` objects are equivalent to Pandas Dataframes?
 * Datasets are created one of two ways:
    - Loading data (say, from a file)
    - Transforming another dataset

---

## Creating a Dataset

 * We can call `Dataset.from_tensor_slices` to create.

```python
>>> dataset = tf.data.Dataset.from_tensor_slices(
   {"a": tf.random_uniform([4]),
    "b": tf.random_uniform([4, 100], maxval=100, 
                           dtype=tf.int32)})
>>> print(dataset.output_types)  
"{'a': tf.float32, 'b': tf.int32}"
>>> print(dataset.output_shapes)  
"{'a': (), 'b': (100,)}"
```
<!-- {"left" : 0.0, "top" : 1.75, "height" : 2.74, "width" : 10.25} -->

---


## Transforming a Dataset

  * We can call the following transformation functions on our dataset: 
    - map : Apply function to dataset row
    - batch : Apply function to dataset group of rows
    - flat_map : Apply a function which may generate more than one output

```python

dataset = tf.data.Datset.from_tensor_slices(
   {"a": np.array(1,2,3,4),
    "b": np.array(5,6,7,8})
         } 

squares = dataset.map(lambda x : return x * x)

beforenafter = dataset.flat_map(
                lambda x : return [x-1, x, x+1])
                
filter = dataset.flat_map(lambda x : return x > 3)
```
<!-- {"left" : 0.0, "top" : 3.57, "height" : 2.98, "width" : 10.25} -->


---

## Iterators

  * `Iterators` allow us to iterate through our data
  * There are 4 types of iterators:
    - one-shot
    - intializable
    - reinitializable
    - feedable


---

## One-Shot
  * Most Common
  * Only Support Single-Pass Iterations
  * Only kind the work with `Estimator` objects.

```python
dataset = tf.data.Dataset.range(100)
iterator = dataset.make_one_shot_iterator()
next_element = iterator.get_next()

for i in range(100):
  value = sess.run(next_element)
  assert i == value
```
<!-- {"left" : 0.0, "top" : 2.63, "height" : 2.74, "width" : 10.25} -->

---

## Initializable

  * Allow you to pass `tf.parameter` objects
  * Note we pass: `max_value` as a parameter:
  
```python
max_value = tf.placeholder(tf.int64, shape=[])
dataset = tf.data.Dataset.range(max_value)
iterator = dataset.make_initializable_iterator()
next_element = iterator.get_next()

sess.run(iterator.initializer, feed_dict={max_value: 10})
for i in range(10):
  value = sess.run(next_element)
  assert i == value
```
<!-- {"left" : 0.0, "top" : 2.19, "height" : 2.65, "width" : 10.25} -->



Notes:

---

## Reinitializable

  * Allows you to switch/combine multiple `Dataset` objects.

```python
dataset = tf.data.Dataset.range(max_value)
dataset2 = tf.data.Dataset.range(max_value)

iterator = tf.data.Iterator.from_structure(dataset1.output_types,
                                           dataset2.output_shapes)
next_element = iterator.get_next()

init_op1 = iterator.make_initializer(dataset1)
init_op2 = iterator.make_initializer(dataset2)

for _ in range(20):
  sess.run(training_init_op)
  for _ in range(100):
    sess.run(next_element)

  sess.run(validation_init_op)
  for _ in range(50):
    sess.run(next_element)
```
<!-- {"left" : 0.0, "top" : 2.19, "height" : 3.98, "width" : 10.25} -->



Notes:

---

## Feedable
  * Allows you to choose dynamically which dataset to feed

```python
dataset = tf.data.Dataset.range(max_value)
dataset2 = tf.data.Dataset.range(max_value)

handle = tf.placeholder(tf.string, shape=[])
iterator = tf.data.Iterator.
from_string_handle
(handle, dataset1.output_types, 
dataset1.output_shapes)

next_element = iterator.get_next()

iterator1 = dataset1.make_one_shot_iterator()
iterator2 = dataset2.make_initializable_iterator()

handle1 = sess.run(iterator1.string_handle())
handle2 = sess.run(iterator2.string_handle())

while True:
  for _ in range(200):
    sess.run(next_element, feed_dict={handle: handle1})

  sess.run(iterator2.initializer)
  for _ in range(50):
    sess.run(next_element, feed_dict={handle: handle2})

```
<!-- {"left" : 0.0, "top" : 1.34, "height" : 6.05, "width" : 10.25} -->


---


## Loading Data From Pandas

  * We can load Dataset features and Labels from Pandas:
  * Data will be converted to NumPy
  * Categorical columns need to be handled.

```python
import tensorflow as tf
import pandas as pd
from tf.data import Dataset

p = pd.read_csv('myfile.csv')

d = Dataset.from_tensor_slices(p[['a','b','c']],p['label])

```
<!-- {"left" : 0.0, "top" : 2.47, "height" : 2.78, "width" : 10.25} -->


Notes:

---

## Loading Data From CSV

  * We can also load directly from CSV file
    - or TSV
    - Or other textual formats

  * Here we load, skipping the header

```python
train_path = '/path/to/myfile.csv'
columns = ['a','b','c']
ds = tf.data.TextLineDataset(train_path).skip(1)
```
<!-- {"left" : 0.0, "top" : 3.28, "height" : 1.25, "width" : 10.25} -->


Notes:

---
