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

## Example Code for loading from pandas

```python
# A utility method to create a tf.data dataset from a Pandas Dataframe
def df_to_dataset(dataframe, shuffle=True, batch_size=32):
  dataframe = dataframe.copy()
  labels = dataframe.pop('target')  # assuming label is named "target"
  ds = tf.data.Dataset.from_tensor_slices((dict(dataframe), labels))
  if shuffle:
    ds = ds.shuffle(buffer_size=len(dataframe))
  ds = ds.batch(batch_size)
  return ds
```


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
# Feature Columns
---


## Schema

 * In addition to the Dataset, we also need a way to specify the **features** of the data
 * Why?
   - Because our input columns are not all necessarily going to be used as features.
   - And, our features


   

## Feature Columns

  * You have to specify the feature columns 
  * Feature columns are like the schema.
  * Types:
    - `tf.feature_column.numeric_column`
    - `tf.feature_column.bucketized_column`
    - `tf.feature_column.categorical_column_with_vocabulary_list`
    - `tf.feature_column.categorical_column_with_identity`
    - `tf.feature_column.categorical_column_with_hash_bucket`
    - `tf.feature_column.embedding_column`
    - `tf.feature_column.crossed_column`




Notes:

---

## Defining Numeric Feature Columns
  * What if all our columns are numeric?
  * Then reating a feature columns is pretty easy.
  * this Means we load the data unchanged

```python
from tf.feature_columns import numeric_column

fc = [numeric_column(key='A'),
      numeric_column(key='B'),
      numeric_column(key='C')
```
<!-- {"left" : 0, "top" : 1.49, "height" : 2.15, "width" : 10.25} -->

Notes:

---

## Categorical Columns

 * There are many ways to deal with Categorical data
 * Must map it somehow to numeric
 * Methods:
   - Bucketized Columns
   - Categorical Column With Vocabulary List
   - Categorical Columns With Hash Bucket
   - Embedding Columns

---


## Bucketized Columns
  * **Bucketized Column** Takes a numeric data and creates a categorical feature out of it.
  * Result is one-hot-encoded.

```python
age_buckets = feature_column.bucketized_column(age, boundaries=[18, 25, 30, 35, 40, 45, 50, 55, 60, 65])
```

```console
[[0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 0. 1. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 1. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 0. 0. 1. 0. 0.]]
```

---


## Categorical Column With Vocabulary List
  * **MUST** Specify all possible values in advance
  * Result is one-hot-encoded.
  * Best if cardinality is low *and* values are all known

```python
feature_column.categorical_column_with_vocabulary_list(
      'color', ['red', 'green', 'blue'])

color_one_hot = feature_column.indicator_column(color)
```

```console
[[1. 0. 0.]
 [0. 1. 0.]
 [0. 1. 0.]
 [0. 1. 0.]
 [0. 0. 1.]]

```

---

## Categorical Column With Hash Bucket 
  * What if we don't know all all the possible values?
  * Maybe there could be a new color, like "orange" or "purple", or even "mauve"
  * We can use a hash bucket, and specify the total number of buckets
  * Result is one-hot encoded (to bucket size)
  * Can't be more than bucket size in length


```python

thal_hashed = feature_column.categorical_column_with_hash_bucket(
      'thal', hash_bucket_size=10)

```

```console
[[0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 0. 1. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 1. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 1. 0. 0. 0. 0. 0.]
 [0. 0. 0. 0. 0. 0. 0. 0. 1. 0. 0.]]

```

---


## Embedding 

 * What if there are thousands of possible values
 * We should do dimensionality reduction!
 * We can use an embedding layer

```python
embedding = feature_column.embedding_column(color, dimension=8)
```

```console
[[ 0.23923533 -0.3158593   0.24390908 -0.22270197 -0.2502222  -0.10531021
  -0.58525187  0.01479302]
 [-0.02755453  0.24845423  0.06485941 -0.27621892 -0.5716588   0.1182462
  -0.25155336  0.60542715]
 [ 0.23923533 -0.3158593   0.24390908 -0.22270197 -0.2502222  -0.10531021
  -0.58525187  0.01479302]
 [-0.02755453  0.24845423  0.06485941 -0.27621892 -0.5716588   0.1182462
  -0.25155336  0.60542715]
 [-0.02755453  0.24845423  0.06485941 -0.27621892 -0.5716588   0.1182462
  -0.25155336  0.60542715]]

```

---

## Feature Crosses

 * What if we have two columns we want to look at together?
 * We can create a `crossed_column`

```python

lat_long = feature_column.crossed_column([lat, long], hash_bucket_size=1000)

```


---

# Feature Layer

## Creating A Feature Layer

 * Once we have our feature columns, we need to define a Feature Layer
 * Basic kind of layer is the `DenseFeatures` layer
 * This means that our feature vector is stored densely rather than sparsely


```python
from tf.feature_columns import numeric_column

fc = [numeric_column(key='A'),
      numeric_column(key='B'),
      numeric_column(key='C')

feature_layer = tf.keras.layers.DenseFeatures(fc)
```


## Using our Feature Layer

 * We can input our dataset into `tf.keras` by using a feature layer

```python
model = tf.keras.Sequential([
  layers.DenseFeatures(fc),
  layers.Dense(128, activation='relu'),
  layers.Dense(128, activation='relu'),
  layers.Dense(1, activation='sigmoid')
])
```

 * This Defines the following layers:
   - Input layer
   - Hidden Layer (128 neurons)
   - 2nd Hidden Layer (128 neurons)
   - Output Layer (1 Neuron)

## Training the Model with the feature layer

 * We need to create a tensorflow DataSet from our data

```python
 train_ds = tf.data.Dataset.from_tensor_slices((dict(dataframe), labels))
 train_ds = train_ds.batch(BATCH_SIZE)
```

 * Then we can train the model with the dataset

```python

model.compile(optimizer='adam',
              loss='binary_crossentropy',
              metrics=['accuracy'],
              run_eagerly=True)

model.fit(ds,
          validation_data=val_ds,
          epochs=50)
```



