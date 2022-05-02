# TensorFlow Estimator (High-Level) API
---
## TensorFlow Levels of API

 * TensorFlow has a multi-tiered API 
   - Low-Level
   - Mid-Level
   - High-Level


<img src="../../assets/images/deep-learning/tensorflow_layers_small.png" style="width:35%;"/> <!-- {"left" : 1.73, "top" : 5.88, "height" : 4.12, "width" : 14.04} -->

Notes:

---

# Estimators

---

## About the Estimator API

  * The Estimator API is Tensorflow's High-Level API
  * Easy to Use
  * Not as configurable.
  * Requires the use of the Dataset API.
  * Can "wrap" low level code in Estimator API Wrappers.


Notes:

---

## What is an Estimator?

  * Borrowed from Scikit-Learn
  * Basically a model of some sort
  * usually has a .train() function


Notes:

---

## List of Estimators
  * LinearClassifier
  * LinearRegressor
  * DNNClassifier
  * DNNRegressor
  * BoostedTreesClassifer
  * BoostedTreesRegressor

Notes:

---

## Example of Using Estimators

  * This example uses a DNNClassifier:
  * 2 hidden layers 
  * 10 nodes in each hidden layer.

```python

classifier = tf.estimator.DNNClassifier(
    feature_columns=my_feature_columns,
    # Two hidden layers of 10 nodes each.
    hidden_units=[10, 10],
    # The model must choose between 3 classes.
    n_classes=3)
```
<!-- {"left" : 0.85, "top" : 3.87, "height" : 2.9, "width" : 12.07} -->


Notes:

---

## Input Functions

  * An **input function** returns `tf.Dataset` object:
    - features: a (2-D) list of the features
    - labels: a (1-d) list of the labels 
  * Estimators expect an input function

```python
def input_func(data)
   features = data[['A','B','C']]
   labels = data['label']
   return tf.data.Dataset.from_tensor_slices(
        features, labels)
```
<!-- {"left" : 0.85, "top" : 4.42, "height" : 2.56, "width" : 12.21} -->



Notes:

---

## Feature Columns

  * You have to specify the feature columns 
  * Feature columns are like the schema.
  * Types:
    - `tf.feature_column.numeric_column`
    - `tf.feature_column.bucketized_column`
    - `tf.feature_column.categorical_column_with_vocabulary_list`
    - `tf.feature_column.categorical_column_with_identity`
    - `tf.feature_column.categorical_column_with_hash_bucket`
    - `tf.feature_column.crossed_column`




Notes:

---

## Defining Feature Columns

  * In this case, we have all numeric columns

```python
from tf.feature_columns import numeric_column

fc = [numeric_column(key='A'),
      numeric_column(key='B'),
      numeric_column(key='C')
```
<!-- {"left" : 0.85, "top" : 2.74, "height" : 2.56, "width" : 12.2} -->




Notes:

---

## Categorical Columns 

  * Defining Categorical columns means we use one hot encoding

```python
from tf.feature_column import \
   categorical_column_with_vocabulary_list

vocabulary_feature_column =
    categorical_column_with_vocabulary_list(
        key=feature_name_from_input_fn,
        vocabulary_list=["kitchenware", 
        "electronics", "sports"])

```
<!-- {"left" : 0.85, "top" : 2.75, "height" : 3.95, "width" : 12.28} -->



Notes:

---

## Training Model
  
  * We need to call `train()` on the model
  * Note we pass in the input function

```python
classifier.train(
    input_fn=lambda:train_input_fn(train_x, 
    train_y, args.batch_size),
    steps=args.train_steps)
```
<!-- {"left" : 0.85, "top" : 3.43, "height" : 2.18, "width" : 12.24} -->



Notes:

---

## Eval Functions

  * We also need to define an eval function
  * Helps us evaluate our model

```python
def eval_input_function(test_x, test_y, batch_size)
   features = text_x[['A','B','C']]
   labels = test_y]
   return tf.data.Dataset.from_tensor_slices(
        features, labels)
```
<!-- {"left" : 0.85, "top" : 3.35, "height" : 2.36, "width" : 12.6} -->



Notes:

---

## Validating Model

```python
# Evaluate the model.
eval_result = classifier.evaluate(
    input_fn=lambda:eval_input_fn(
    test_x, test_y, args.batch_size))

print('\nTest set accuracy: 
    {accuracy:0.3f}\n'.format(**eval_result))

```
<!-- {"left" : 0.85, "top" : 2.4, "height" : 3.38, "width" : 12.07} -->



Notes:

---

## Lab: Estimator API

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="25%"/><!-- {"left" : 12.42, "top" : 1.89, "height" : 5.92, "width" : 4.43} -->

*  **Overview:** 
In this lab, we will use Estimator API with IRIS data

*  **Approximate time:** 15-20 minutes

*  **Lab Instructions:**

    - Follow the `high-level/4.1-Estimator-LinRegress-Cars.ipynb` lab



Notes:

---

# Keras Layers

---

## What is Keras?

  * Keras is another API for high-level DL
  * Can use TF as a back-end.
  * TF includes Keras
  * We can also integrate Keras with TF Estimators


Notes:

---
## Keras Example:

```python
from tf.keras.applications.inception_v3 import *
from tf.keras.optimizers import SGD
from tf.keras.estimator import model_to_estimator

keras_inception_v3 = InceptionV3(weights=None)
keras_inception_v3.compile(optimizer=
                        SGD(lr=0.0001, momentum=0.9),
                        loss='categorical_crossentropy',
                        metric='accuracy')

est_inception_v3 = model_to_estimator(
                     keras_model=keras_inception_v3)

train_input_fn = tf.estimator.inputs.numpy_input_fn(
    x={"input_1": train_data},
    y=train_labels,
    num_epochs=1,
    shuffle=False)

# To train, we call Estimator's train function:
est_inception_v3.train(input_fn=train_input_fn, 
                        steps=2000)

```
<!-- {"left" : 0.85, "top" : 2.4, "height" : 8.2, "width" : 12.42} -->


Notes:

---
## Keras Lab

```python
 - Follow the 04-estimator/4.1K-iris.ipynb lab
```

<!-- {"left" : 0.85, "top" : 2.4, "height" : 0.88, "width" : 12.35} -->


Notes:

