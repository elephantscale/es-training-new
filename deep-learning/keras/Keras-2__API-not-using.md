# Neural Network Design with Tensorflow and Keras

<img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:20%;"/> &nbsp;  &nbsp; <!-- {"left" : 5.41, "top" : 7.75, "height" : 1.89, "width" : 2.22} -->
<img src="../../assets/images/logos/keras-logo-1.png" alt="keras-logo-1.png" style="width:40%;"/><!-- {"left" : 8.53, "top" : 8.18, "height" : 1.03, "width" : 3.56} -->



---

## Lesson Objectives

  * Use Keras API to build networks

Notes:  

---

## Keras / TF.Keras

* From January 2020 onwards, it is recommended to use __`tf.keras`__ package

* When ever you see __`keras.xyz`__  substitute __`tf.keras.xyz`__

```python

try:
  # %tensorflow_version only exists in Colab.
  %tensorflow_version 2.x
except Exception:
  pass

## --- import tf.keras ---
import tensorflow as tf
from tensorflow import keras

## From this point on, when we say keras, we are using tf.keras

## continue using tf.keras APIs
model = keras.Sequential([
            keras.layers.Dense(units=input_dim, activation=tf.nn.relu, input_dim=input_dim),
            keras.layers.Dense(units=64, activation=tf.nn.relu),
            keras.layers.Dense(units=output_clases,  activation=tf.nn.softmax)
            ])

```
<!-- {"left" : 0.85, "top" : 3.95, "height" : 4.74, "width" : 15.94} -->

---


## Keras Abstractions

<img src="../../assets/images/deep-learning/keras-model-layers-1.png" style="width:30%;float:right;"/><!-- {"left" : 11.38, "top" : 2.07, "height" : 2.98, "width" : 5.6} -->

<img src="../../assets/images/generic/3rd-party/baseball-coach-1.jpg" style="width:25%;float:right;clear:both;"/><!-- {"left" : 11.41, "top" : 5.87, "height" : 3.04, "width" : 3.04} --> <img src="../../assets/images/generic/3rd-party/soccer-referee-1.jpg" style="width:25%;float:right;"/><!-- {"left" : 14.69, "top" : 5.87, "height" : 3.04, "width" : 2.19} -->

  * **Layer**
    - A Layer is a group of neurons.

  * **Model**
    - Model is a collection of Layers

  * **Loss Functions**
    - Help network calculate the errors
    - (Like a referee)

  * **Optimizer**
    - Helps with training
    - (Like a coach)


---
# Keras Models
---

## Keras Models Intro


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.07, "top" : 1.89, "height" : 7.05, "width" : 2.9} -->


* Models are defined in __`keras.models`__ package

* There are 2 ways to build a Keras model
    - Option 1: Functional API -- simplest
    - Option 2: Extending Model class -- more work but flexible


---

## Creating a Model - Using Functional API

* With the "functional API", we start from Input
* And chain layer calls to specify the model's forward pass
* Finally we create your model from inputs and outputs:
* Model is a __sequence of layers__

<img src="../../assets/images/deep-learning/keras-model-viz-1.png"  style="width:30%;float:right;"/> <!-- {"left" : 12.37, "top" : 1.89, "height" : 5.15, "width" : 4.78} -->

```python
from tensorflow import keras

# a is the input layer.  Here input has 4 dimensions
a = keras.layers.Input(shape=(4,))

# now 'a' is input to 'b'
b = keras.layers.Dense(units=64, activation=tf.nn.relu) (a)

# 'b' is input to 'c'
c = keras.layers.Dense(units=32, activation=tf.nn.relu) (b)

# d is final layer, takes  'c' as input
d = keras.layers.Dense(units=1, activation=tf.nn.sigmoid) (c)

# create a model
model = Model(inputs=a, outputs=d)
```
<!-- {"left" : 0.85, "top" : 5.43, "height" : 4.94, "width" : 10.94} -->


---

## Model Creation - Functional API

* Here is another way of adding layers to model
* Start with an empty model and keep adding layers

<img src="../../assets/images/deep-learning/regression-house-prices-model-viz-1.png"  style="width:25%;float:right;"/><!-- {"left" : 12.32, "top" : 1.89, "height" : 4.29, "width" : 4.7} -->


```python
## option 1
## explicitly defining input layer
model = keras.models.Sequential()
model.add (keras.layers.Input(shape=(4,)))
model.add (keras.layers.Dense(units=64, activation=tf.nn.relu))
model.add (keras.layers.Dense(units=32, activation=tf.nn.relu))
model.add (keras.layers.Dense(units=1, activation=tf.nn.sigmoid))


## option 2: same as above
## no explicit input layer,
## first layer accepts 'input_shape' argument
model = keras.models.Sequential()
model.add (keras.layers.Dense(units=64, activation=tf.nn.relu, input_shape=(4,)))
# Afterwards, we do automatic shape inference
model.add (keras.layers.Dense(units=32, activation=tf.nn.relu))
model.add (keras.layers.Dense(units=1, activation=tf.nn.sigmoid))


## option 3 : same as above two
model = keras.Sequential([
            keras.layers.Dense(units=64, activation=tf.nn.relu, input_shape=(4,)),
            keras.layers.Dense(units=32, activation=tf.nn.relu)
            keras.layers.Dense(units=1, activation=tf.nn.sigmoid)
        ])
```
<!-- {"left" : 0.85, "top" : 4.45, "height" : 5.87, "width" : 11.2} -->


---

## Model Creation - Subclassing Model Class

* More flexible
* Define your layers in __`init`__ method
* Implement the model's forward pass in __`call`__ function

```python
import tensorflow as tf

class MyModel(tf.keras.Model):

  def __init__(self):
    super(MyModel, self).__init__()
    self.dense1 = tf.keras.layers.Dense(4, activation=tf.nn.relu)
    self.dense2 = tf.keras.layers.Dense(5, activation=tf.nn.softmax)

  def call(self, inputs):
    x = self.dense1(inputs)
    return self.dense2(x)

model = MyModel()
```
<!-- {"left" : 0.85, "top" : 4.15, "height" : 4.63, "width" : 12.76} -->

---

## Model Methods

Keras models have the following methods

| Method             | Description                                              |
|--------------------|----------------------------------------------------------|
| `fit`              | Trains the model                                         |
| `evaluate`         | Computes model accuracy for test                         |
| `predict`          | Generates predictions for inputs                         |
| `train_on_batch`   | Runs a single gradient update on a single batch of data. |
| `test_on_batch`    | Test the model on a single batch of samples              |
| `predict_on_batch` | predictions for a single batch of samples                |

<!-- {"left" : 1.12, "top" : 3.28, "height" : 1, "width" : 15.27} -->

---


## Compile method

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.77, "top" : 1.89, "height" : 5.56, "width" : 2.29} -->


```python
compile(optimizer,
        loss=None,
        metrics=None,
        loss_weights=None,
        sample_weight_mode=None,
        weighted_metrics=None,
        target_tensors=None)
```
<!-- {"left" : 0.85, "top" : 2.37, "height" : 3.09, "width" : 8.13} -->

<br/>

  * Arguments
    - **optimzer:** optimizer name ('adam', 'sgd') or optimizer instance
    - **loss:** loss function name or instance
    - **metrics:** metrics to evaluate during training/testing  
      `metrics = ['accuracy']`

---

## Fit method

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.77, "top" : 1.89, "height" : 5.56, "width" : 2.29} -->



```python
fit(x=None, y=None,
    batch_size=None, epochs=1,
    verbose=1, callbacks=None,
    validation_split=0.0, validation_data=None,
    shuffle=True, class_weight=None,
    sample_weight=None, initial_epoch=0,
    steps_per_epoch=None, validation_steps=None, validation_freq=1)
```
<!-- {"left" : 0.85, "top" : 2.37, "height" : 2.07, "width" : 11.64} -->

<br/>

  * This method does training
  * Arguments
    - x: training input data (numpy array or list of numpy arrays)
    - y: training target data (numpy array)
    - batch_size: integer, usually powers of two (default = 32)
    - epochs: integer, how many times to go through data
    - verbose: 0 or 1 or 2  (0 = silent, 1 = progress bar, 2 = one line per epoch)

---

## Evaluate

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.77, "top" : 1.89, "height" : 5.56, "width" : 2.29} -->

```python
evaluate(x=x_test, y=y_test,
         batch_size=None, verbose=1,
         sample_weight=None, steps=None, callbacks=None)
```
<!-- {"left" : 0.85, "top" : 2.11, "height" : 1.27, "width" : 12.11} -->


* Measures performance metrics (loss values) for testing data
* Arguments
    - x: test data inputs (numpy array(s) )
    - y: test data labels (numpy array(s) )
    - batch_size: integer, usually powers of two (default = 32)
    - verbose: 0 or 1. Verbosity mode. 0 = silent, 1 = progress bar.

---

## Predict


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 14.77, "top" : 1.89, "height" : 5.56, "width" : 2.29} -->



```python
predictions = predict(x, batch_size=None,
                      verbose=0, steps=None, callbacks=None)
```
<!-- {"left" : 0.85, "top" : 2.37, "height" : 0.98, "width" : 12.41} -->


  * Arguments
    - x: The input data, as a Numpy array (or list of Numpy arrays if the model has multiple inputs).
    - batch_size: Integer. If unspecified, it will default to 32.
    - verbose: Verbosity mode, 0 or 1.

---

# Keras Layers

---

## Keras Layers

  * Core layers
    - Dense
    - Dropout
  * Convolutional Layer
  * Pooling Layer
  * Recurrent Layer
  * Embedding Layer
  * Merge Layer

  * Layers are defined in **`keras.layers`** package.

  * We are only going to look at few layers here.  
  * Refer to [Keras.io](keras.io) for complete details.

---
## Keras Core Layers: Dense

  * A dense layer connects every neuron in this layer to every neuron in previous layer.

  * If Layer 1 has 3 neurons and Layer 2 (dense layer) has 4 neurons, the total number of connections between Layer 1 and Layer 2 would be 12 (3 × 4)

  * First layer need to know the input dimensions

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="XXX image missing" style="width:30%;"/><!-- {"left" : 11.9, "top" : 2.42, "height" : 4.98, "width" : 5.15} -->


---

## Keras Core Layers: Dense

```python
## API
keras.layers.Dense(
    units,   # number of neurons
    activation=None, # default is linear : f(x)=x
    use_bias=True,
    kernel_initializer='glorot_uniform',
    bias_initializer='zeros',
    kernel_regularizer=None,
    bias_regularizer=None,
    activity_regularizer=None,
    kernel_constraint=None,
    bias_constraint=None)

```
<!-- {"left" : 0.85, "top" : 2.31, "height" : 4.93, "width" : 11.67} -->


```python
## Usage

from keras.layers import Dense

# has 32 neurons
# Takes input array of shape [*,16]
# output array shape [*,32]
d = Dense(32, input_shape=(16,)))
```
<!-- {"left" : 0.85, "top" : 7.43, "height" : 3.55, "width" : 8.98} -->


---

## Keras Core Layers: Dropout

<img src="../../assets/images/deep-learning/dropout-1.png" style="width:40%;float:right;"/><!-- {"left" : 12.44, "top" : 1.88, "height" : 3.87, "width" : 4.53} -->


  * The dropout layer in DL helps reduce overfitting by introducing regularization and generalization

  * The dropout layer drops out a few neurons or sets them to 0 and reduces computation in the training process.

```python
## API

keras.layers.Dropout(rate, noise_shape=None, seed=None)
```
<!-- {"left" : 0.85, "top" : 6.35, "height" : 1.57, "width" : 13.53} -->


```python
## Usage

from keras.layers import Dropout

d = Dropout(rate = 0.1,seed=100)
```
<!-- {"left" : 0.85, "top" : 8.2, "height" : 2.3, "width" : 8.07} -->

---

# Keras Optimizers

---

## Keras Optimizers

<img src="../../assets/images/generic/3rd-party/baseball-coach-1.jpg" style="width:30%;float:right;"/><!-- {"left" : 12.24, "top" : 1.89, "height" : 4.69, "width" : 4.69} -->

  * We can specify the optimizers by 'name' or initialize the respective classes for customization

  * Choice of optimizers
    - SGD: Stochastic Gradient Descent Optimizer
    - Momentum / Nesterov
    - Adagrad
    - RMSProp
    - Adam

---

## Optimizer: SGD

```python

# Use default values
model.compile(optimizer='sgd', loss='mean_squared_error')

# ~~~~~~~~~

# or Customize
from keras.optimizers import SGD
sgd = SGD(lr=0.01,
          decay=1e-6,
          momentum=0.9,
          nesterov=True)  # using Nestrov momentum
model.compile(optimizer=sgd, loss='mean_squared_error')

```
<!-- {"left" : 0.85, "top" : 1.85, "height" : 4.32, "width" : 11.75} -->


<br/>

  * Arguments
    - `lr`: float >= 0. Learning rate.
    - `momentum`: float >= 0. Parameter that accelerates SGD in the relevant direction and dampens oscillations.
    - `decay`: float >= 0. Learning rate decay over each update.
    - `nesterov`: boolean. Whether to apply Nesterov momentum.

---

## Optimizer: Adagrad

```python
# use defaut args
model.compile(optimizer='adagrad', ...)

# ~~~~~~~~~

# or Customize
from keras.optimizers import Adagrad
adagrad = keras.optimizers.Adagrad(lr=0.01,
                                   epsilon=None,
                                   decay=0.0)
model.compile(optimizer=adagrad, ...)

```
<!-- {"left" : 0.85, "top" : 2.2, "height" : 3.93, "width" : 9.89} -->


<br/>

  * Arguments
    - `lr:` float >= 0. Initial learning rate.
    - `epsilon:` float >= 0. If None, defaults to K.epsilon().
    - `decay:`float >= 0. Learning rate decay over each update.


---

## Optimizer: RMSProp

```python
# use default values
model.compile(optimizer='rmsprop', ...)

# ~~~~~~~~~

# or customize
from keras.optimizers import RMSprop
rmsprop = keras.optimizers.RMSprop(lr=0.001,
                                   rho=0.9,
                                   epsilon=None,
                                   decay=0.0)
model.compile(optimizer=rmsprop, ...)

```
<!-- {"left" : 0.85, "top" : 1.89, "height" : 4.19, "width" : 9.74} -->

<br/>

  * Arguments
    - `lr:` float >= 0. Learning rate.
    - `rho:` float >= 0.
    - `epsilon:` float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay:` float >= 0. Learning rate decay over each update.

---

## Optimizer: Adam

```python
# use default values
model.compile(optimizer='adam', ...)

# or customize
from keras.optimizers import Adam
adam = keras.optimizers.Adam(lr=0.001,
                             beta_1=0.9,
                             beta_2=0.999,
                             epsilon=None,
                             decay=0.0,
                             amsgrad=False)
model.compile(optimizer=adam, ...)


```

<!-- {"left" : 0.85, "top" : 2.41, "height" : 5.39, "width" : 11.34} -->


---

## Optimizer: Adam

  * Arguments
    - `lr:` float >= 0. Learning rate.
    - `beta_1:` float, 0 < beta < 1. Generally close to 1.
    - `beta_2:` float, 0 < beta < 1. Generally close to 1.
    - `epsilon:` float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay:` float >= 0. Learning rate decay over each update.
    - `amsgrad:` boolean. Whether to apply the AMSGrad variant of this algorithm from the paper "On the Convergence of Adam and Beyond".


---

# Keras Loss Functions

---

## Keras Loss Functions

<img src="../../assets/images/generic/3rd-party/soccer-referee-1.jpg" style="width:30%;float:right;"/><!-- {"left" : 12.48, "top" : 1.89, "height" : 6.44, "width" : 4.65} -->

  * We will look at a few popular Loss functions.  
  * For full list see [Keras documentation](https://keras.io/losses/#available-loss-functions).

  * Loss functions are defined in [keras.losses](https://keras.io/losses) package

  * For Regressions:
    - Mean Squared Error
    - Mean Absolute Error
    - more...

  * For Classifications:
    - Categorical Cross-entropy
    - Binary Cross-entropy

---

## Loss Functions for Regressions


| Bedrooms | Bathrooms | Size | Sale Price (in thousands) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 3                  | 1                   | 1500           | 230                                                  |
| 3                  | 2                   | 1800           | 320                                                  |
| 5                  | 3                   | 2400           | 600                                                  |
<!-- {"left" : 0.15, "top" : 2, "height" : 1, "width" : 17.19} -->

* **Mean Squared Error**

```python
model.compile(optimizer=optimizer,
              loss='mean_squared_error', # or 'mse'
              metrics = ['mean_squared_error']) # or 'mse'

model.compile(optimizer=optimizer,
              loss=tf.keras.losses.MeanSquaredError(),
              metrics = ['mse'])
```
<!-- {"left" : 0.85, "top" : 5.93, "height" : 2.46, "width" : 11.07} -->

<br/>

*  **Mean Absolute Error**


```python
model.compile(optimizer=optimizer,
              loss='mean_absolute_error',  # or 'mae'
              metrics = ['mean_absolute_error'])  # or 'mae'

model.compile(optimizer=optimizer,
              loss=tf.keras.losses.MeanAbsoluteError(),
              metrics = ['mae'])
```
<!-- {"left" : 0.85, "top" : 9.44, "height" : 2.15, "width" : 9.99} -->


---

## Loss Functions for Binary Classifications

| gre     | gpa     | rank.    | admit      |
|---------|---------|----------|------------|
| 380     | 3.6     | 3        | 0          |
| 660     | 3.67    | 3        | 1          |
| 800     | 4       | 1        | 1          |
| 640     | 3.19    | 4        | 0          |

<!-- {"left" : 1.67, "top" : 2.03, "height" : 1, "width" : 14.17} -->


*  **Binary Cross-entropy**
* Used when outcome is binary (true/false,  0/1)
* In this example, __`admit`__ is a boolean outcome we are trying to predict


```python
model.compile(optimizer=optimizer,
              loss='binary_crossentropy',
              metrics=['accuracy'])

model.compile(optimizer=optimizer,
              loss=tf.keras.losses.BinaryCrossentropy(),
              metrics=['accuracy'])
```
<!-- {"left" : 0.85, "top" : 7.82, "height" : 2.62, "width" : 11.41} -->


---

## Loss Functions for Multi-Class Classifications


| a   | b   | c   | d   | label |
|-----|-----|-----|-----|-------|
| 6.4 | 2.8 | 5.6 | 2.2 | 1     |
| 5.0 | 2.3 | 3.3 | 1.0 | 2     |
| 4.9 | 3.1 | 1.5 | 0.1 | 3     |

<!-- {"left" : 1.67, "top" : 2.03, "height" : 1, "width" : 14.17} -->

* **Sparse Categorical Cross-entropy**
* Used for multi-class classifications ('cat', 'dog', 'lion' ..etc)
* In this dataset, we are trying to predict __`label`__ as __`1 or 2 or 3`__


```python
model.compile(optimizer=optimizer,
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.compile(optimizer=optimizer,
              loss=tf.keras.losses.SparseCategoricalCrossentropy(),
              metrics=['accuracy'])
```
<!-- {"left" : 0.85, "top" : 7.11, "height" : 2.79, "width" : 14.34} -->


---

## Loss Functions for Multi-Class Classifications

| a   | b   | c   | d   | label    |
|-----|-----|-----|-----|----------|
| 6.4 | 2.8 | 5.6 | 2.2 | [1,0,0]  |
| 5.0 | 2.3 | 3.3 | 1.0 | [0,1,0]  |
| 4.9 | 3.1 | 1.5 | 0.1 | [0,0,1]  |

<!-- {"left" : 1.67, "top" : 2.03, "height" : 2.5, "width" : 14.17} -->

* **Categorical Cross-entropy**
* Used for multi-class classifications ('cat', 'dog', 'lion' ..etc)
* In this dataset, we are trying to predict __`label`__ as __`1 or 2 or 3`__
* Labels must be __`one-hot`__ encoded

```python
model.compile(optimizer=optimizer,
              loss='categorical_crossentropy',
              metrics=['accuracy'])

model.compile(optimizer=optimizer,
              loss=tf.keras.losses.CategoricalCrossentropy(),
              metrics=['accuracy'])
```
<!-- {"left" : 0.85, "top" : 7.87, "height" : 2.56, "width" : 12.1} -->

---

# Keras Activation Functions

---

## Keras Activation Functions

* Linear
* Sigmoid
* Tanh
* ReLU
* Softmax

```python

## Easiest to use activation function names
## like 'relu'  , 'tanh'  and 'softmax'

from tensorflow import keras
from keras.layers import Dense

model.add(Dense(units=64, activation='relu', input_dim=100))
model.add(Dense(units=10, activation='softmax'))

# --------------------------

## Also can initialize using classes
act = keras.activations.softmax(x, axis=-1)
model.add(Dense(units=10, activation=act))

```
<!-- {"left" : 0.85, "top" : 5.35, "height" : 4.81, "width" : 11.88} -->

---

## Activation for Regressions

| Bedrooms | Bathrooms | Size | Sale Price (in thousands) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 3                  | 1                   | 1500           | 230                                                  |
| 3                  | 2                   | 1800           | 320                                                  |
| 5                  | 3                   | 2400           | 600                                                  |

<!-- {"left" : 0.3, "top" : 1.93, "height" : 1, "width" : 16.89} -->


* For regressions, the last layer will have
    - __`ONE`__ neuron
    - __`LINEAR`__ activation

```python

from tensorflow import keras

model = keras.models.Sequential()
# model.add (...)

## Last layer
model.add(keras.layers.Dense(units=1, activation='linear'))

# or
model.add(Dense(units=1,
                activation=tf.keras.activations.linear()))


```
<!-- {"left" : 0.85, "top" : 7.08, "height" : 4.19, "width" : 12.75} -->

---

## Activation for Binary Classifications


| gre     | gpa     | rank.    | admit      |
|---------|---------|----------|------------|
| 380     | 3.6     | 3        | 0          |
| 660     | 3.67    | 3        | 1          |
| 640     | 3.19    | 4        | 0          |

<!-- {"left" : 3.88, "top" : 2.22, "height" : 2, "width" : 9.75} -->

* Used when outcome is binary (true/false,  0/1)
* For binary classifiers, the last layer will have
    - __`ONE`__ neuron
    - __`SIGMOID`__ activation
    - Sigmoid provides output between __0 and 1__ representing probability


```python
# model.add (...)

## Last layer
model.add(Dense(units=1, activation='sigmoid'))

# or
model.add(Dense(units=1,
                activation=tf.keras.activations.linear()))

```
<!-- {"left" : 0.85, "top" : 8.16, "height" : 2.83, "width" : 11.31} -->


---

## Activation for Multi-class Classifiers

| a   | b   | c   | d   | label |
|-----|-----|-----|-----|-------|
| 6.4 | 2.8 | 5.6 | 2.2 | 1     |
| 5.0 | 2.3 | 3.3 | 1.0 | 2     |
| 4.9 | 3.1 | 1.5 | 0.1 | 3     |

<!-- {"left" : 3.88, "top" : 2.22, "height" : 2, "width" : 9.75} -->

* In this dataset, we are trying to predict __`label`__ as __`1 or 2 or 3`__
* Last layer will have
    - Number of neurons matching possible outputs
    - Activation function is __`softmax`__
    - Softmax provides an array of numbers representing probabilities for each class (sum is 1.0)
    - Sample output: [0.1, 0.8, 0.1] (so label 2 is the winner)

```python
## Last layer
# 3 units to match 3 output classes
model.add(Dense(units=3, activation='softmax'))

# or
model.add(Dense(units=3,
                activation=tf.keras.activations.softmax()))
```
<!-- {"left" : 0.85, "top" : 8.96, "height" : 2.4, "width" : 10.97} -->

---

# NN for Regression

---

## Keras Workflow

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.31, "top" : 1.89, "height" : 6.73, "width" : 2.78} -->

* Here is a typical Keras workflow.  This is pretty common workflow for most neural networks

* Step 1 - Define the network
    - Step 1A - Use a model class from **`keras.models`**
    - Step 1B - Stack layers using the **`.add()`** method

* Step 2 - Configure the learning process using the **`compile()`** method

* Step 3 - Train the model on the train dataset using the **`.fit()`** method

* Step 4 - Evaluate the network

* Step 5 - Predict

---

## Predicting House Prices


| Sale Price $ | Bedrooms | Bathrooms | Sqft_Living | Sqft_Lot |
|--------------|----------|-----------|-------------|----------|
| 280,000      | 6        | 3         | 2,400       | 9,373    |
| 1,000,000    | 4        | 3.75      | 3,764       | 20,156   |
| 745,000      | 4        | 1.75      | 2.06        | 26,036   |
| 425,000      | 5        | 3.75      | 3,200       | 8,618    |
| 240,000      | 4        | 1.75      | 1,720       | 8,620    |
| 327,000      | 3        | 1.5       | 1,750       | 34,465   |
| 347,000      | 4        | 1.75      | 1,860       | 14,650   |

<!-- {"left" : 1.14, "top" : 2.31, "height" : 1, "width" : 15.23} -->

* Inputs: Bedrooms, Bathrooms, Sqft_Living, Sqft_Lot
* Output: Sale Price

---

## Step 0: Preparing Data

```python
import pandas as pd
from sklearn.model_selection import train_test_split

house_prices = pd.read_csv('house_sale.csv')

x = house_prices [['Bedrooms', 'Bathrooms', 'SqFtTotLiving', 'SqFtLot']]
y = house_prices[['Sale Price']]

# --- x ----
# Bedrooms  Bathrooms  SqFtTotLiving  SqFtLot
# 0         6       3.00           2400     9373
# 1         4       3.75           3764    20156
# 2         4       1.75           2060    26036
# 3         5       3.75           3200     8618
# 4         4       1.75           1720     8620
# --- y ----
# 0     280000
# 1    1000000
# 2     745000
# 3     425000
# 4     240000


## split train/test = 80% / 20%
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size = 0.2, random_state = 0)

# x_train.shape :  (21650, 4)
# y_train.shape :  (21650, 1)
# x_test.shape :  (5413, 4)
# y_test.shape :  (5413, 1)
```
<!-- {"left" : 0.85, "top" : 2.34, "height" : 9.03, "width" : 16.11} -->

---

## 1: Network Design


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.67, "top" : 1.67, "height" : 5.56, "width" : 2.29} -->


* We will do __4 layers__
* First layer: Input layer with __shape=4__ (to match number of input dimensions)
* Two hidden layers, __64 neurons__ each, with __ReLU__ activation
* Output layer: __1 neuron__ with __linear__ activation

<img src="../../assets/images/deep-learning/regression-house-prices-network-sizing-1.png"  style="width:65%"/><!-- {"left" : 3.62, "top" : 7.64, "height" : 3.39, "width" : 10.26} -->



---

## 1: Network Design


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->


```python
import tensorflow as tf
from tensorflow import keras

model = keras.Sequential([
                keras.layers.Dense(units=64, activation='relu', input_shape=(4,)),
                keras.layers.Dense(units=64, activation='relu'),
                keras.layers.Dense(units=1, activation='linear')
            ])

keras.utils.plot_model(model, to_file='model.png', show_shapes=True)
```
<!-- {"left" : 1.22, "top" : 2.11, "height" : 2.41, "width" : 10.91} -->

<img src="../../assets/images/deep-learning/regression-house-prices-model-viz-1.png"  style="width:35%;"/><!-- {"left" : 5.68, "top" : 5.76, "height" : 5.6, "width" : 6.14} -->



---

## 2: Compile Network


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->


* We are using __`mean_squared_error (mse)`__ for loss
* We are tracking two metrics: __`mean_squared_error`__ and __`mean_absolute_error`__

* Both __`RMSProp`__ and __`Adam`__ are pretty good optimizers, that can self-adjust parameters as they learn

```python
optimizer = tf.keras.optimizers.RMSprop(0.01)
#optimizer = 'adam'

model.compile(loss='mean_squared_error', # or 'mse'
              optimizer=optimizer,
              metrics=['mean_squared_error', 'mean_absolute_error']) # or 'mse', 'mae'
```
<!-- {"left" : 0.85, "top" : 7.36, "height" : 1.71, "width" : 12.76} -->

---

## 3: Fit Network


<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->


* We train on __training_data__ (__`x_train`__ and __`y_train`__)
* Output may look like below; we did 100 epochs in about 3m 34 secs

```python
%%time

epochs = 100  ## experiment 100, 500, 1000

print ("training starting ...")

history = model.fit(x_train, y_train, epochs=epochs)

print ("training done.")
```
<!-- {"left" : 0.85, "top" : 4.97, "height" : 2.9, "width" : 9.44} -->



```text
Train on 21650 samples

Epoch 1/100
21650/21650 [==============================] -  loss: 219936094589.5996 -  
mean_squared_error: 219936030720.0000
...
...
Epoch 100/100
21650/21650 [==============================] -  loss: 52353343859.5725 --
mean_squared_error: 52353351680.0000

training done.

CPU times: user 18min 53s, sys: 29min 51s, total: 48min 44s
Wall time: 3min 34s
```
<!-- {"left" : 0.85, "top" : 7.97, "height" : 3.75, "width" : 10.71} -->


---

## 3.5: Visualize Training History

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->



```python
%matplotlib inline
import matplotlib.pyplot as plt

plt.plot(history.history['mean_squared_error'], label='mse')
plt.plot(history.history['mean_absolute_error'], label='mae')
plt.legend()
plt.show()
```
<!-- {"left" : 0.85, "top" : 2.04, "height" : 2.12, "width" : 10} -->

<img src="../../assets/images/deep-learning/regression-house-prices-training-history-1.png"  style="width:45%;"/><!-- {"left" : 4.97, "top" : 5.9, "height" : 5.27, "width" : 7.57} -->



---
## 4: Evaluate Network

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->

* __`model.evaluate`__ is returning a few metrics, displayed below

```python
metric_names = model.metrics_names
print ("model metrics : " , metric_names)
metrics = model.evaluate(x_test, y_test, verbose=0)

for idx, metric in enumerate(metric_names):
    print ("Metric : {} = {:,.2f}".format (metric_names[idx], metrics[idx]))
```
<!-- {"left" : 0.85, "top" : 4.33, "height" : 1.94, "width" : 12.82} -->


```text
model metrics :  ['loss', 'mean_absolute_error', 'mean_squared_error']
Metric : loss = 63,529,597,115.28
Metric : mean_absolute_error = 132,878.83
Metric : mean_squared_error = 63,529,586,688.00
```
<!-- {"left" : 0.85, "top" : 6.6, "height" : 1.48, "width" : 12.8} -->

---

## 5: Predict

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->


* We predict on __`x_test`__
* That gives us __`predictions`__ or __`y_pred`__
* And compare that with __`y_test`__ (expected output)
* See output below, we calculate __`error`__ or __`residual`__

```python
predictions = model.predict(x_test)
# predictions is just an array [324716.38, 491426.2, 504381.22]

# lets do some pretty output
# comparing actual vs. predicted prices
predictions_df = pd.DataFrame(x_test)  
predictions_df['actual_price'] = y_test
predictions_df['predicted_price'] = predictions
predictions_df['error'] = predictions_df['actual_price'] -
                          predictions_df['predicted_price']
```
<!-- {"left" : 0.85, "top" : 5.85, "height" : 2.81, "width" : 9.92} -->



<img src="../../assets/images/deep-learning/regression-house-prices-predictions-1.png"  style="width:70%;"/><!-- {"left" : 3.74, "top" : 8.84, "height" : 2.81, "width" : 10.03} -->




---

## 5: Predict - Analyze Error

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->

* We are analyzing error, just displaying a error-distribution

```python
%matplotlib inline
import matplotlib.pyplot as plt

predictions_df_filtered =
 predictions_df[predictions_df['error'].abs() < 100000]

plt.hist (predictions_df_filtered['error'], bins=10, rwidth=0.8)
plt.xlabel("Prediction Error [$]")
_ = plt.ylabel("Count")
```
 <!-- {"left" : 0.85, "top" : 4.58, "height" : 3.25, "width" : 12.82} -->


<img src="../../assets/images/deep-learning/regression-house-prices-error-1.png"  style="width:45%;"/> <!-- {"left" : 11.18, "top" : 8.41, "height" : 3.7, "width" : 5.59} -->



---

## 5: Predict - Analyze Error

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 13.92, "top" : 1.89, "height" : 6.42, "width" : 2.64} -->

* Inspect the biggest erorr and smallest error. Can you explain?

```python
## which house we got really wrong?
print ("biggest error: ")
predictions_df.loc[predictions_df['error'].abs().idxmax()]
```
<!-- {"left" : 0.85, "top" : 3.89, "height" : 1.1, "width" : 9.9} -->



```text
biggest error :
Bedrooms                   6.00
Bathrooms                  6.50
SqFtTotLiving          7,560.00
SqFtLot               44,000.00
actual_price      11,000,000.00
predicted_price    2,582,545.50
error              8,417,454.50
```

<!-- {"left" : 0.85, "top" : 5.22, "height" : 2.38, "width" : 5.4} -->


```python
## which house we are spot on?
print ("lowest error")
predictions_df.loc[predictions_df['error'].abs().idxmin()]
```
<!-- {"left" : 0.85, "top" : 7.83, "height" : 1.1, "width" : 9.9} -->


```text
lowest error
Bedrooms                3.00
Bathrooms               2.00
SqFtTotLiving       1,310.00
SqFtLot             5,040.00
actual_price      385,000.00
predicted_price   385,004.03
error                  -4.03
```
<!-- {"left" : 0.85, "top" : 9.09, "height" : 2.38, "width" : 4.95} -->


---

## Lab: Regressions Using NN

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.38, "top" : 1.89, "height" : 5.5, "width" : 4.13} -->


* **Overview:**
    - Solve regression problems with Tensorflow

* **Approximate run time:**
    - 40 - 60 mins

* **Instructions:**
    - Please follow instructions for
        - **Regression-1:** Bill and Tips
        - **Regression-2:** House Prices

Notes:

---

# Metrics

---

## Metrics - Console

* During training metrics are printed out on console
* Controlled by __`verbose`__ flag
    - verbose=0: silent
    - verbose=1: progress bar
    - verbose=2: one line per epoch
* Pros:
    - Easy to understand
    - No extra setup required
* Cons:
    - Can get verbose
    - If we are doing 100s of epochs, it can clutter the program output

```python
model.fit (x_test, y_test, verbose=1)
```
<!-- {"left" : 0.85, "top" : 8.42, "height" : 0.66, "width" : 8.03} -->

```text
Train on 96 samples, validate on 24 samples

Epoch   1/100 [==============================] - loss: 2.1204 - accuracy: 0.9023
...
...
Epoch 100/100 [==============================] - loss: 0.2375 - accuracy: 0.9583
```
<!-- {"left" : 0.85, "top" : 9.34, "height" : 1.7, "width" : 11.86} -->

---

## Metrics - History

* The __`fit()`__ method on a Keras Model returns a __`History`__ object.

* The __`History.history`__ attribute is a dictionary recording training loss values and metrics values at successive epochs

```python
# training
history = model.fit (x_test, y_test, verbose=1)

# plot
plt.plot(history.history['acc'])
if 'val_acc' in history.history:
     plt.plot(history.history['val_acc'])
# ...
plt.show()
```
<!-- {"left" : 0.85, "top" : 3.93, "height" : 2.64, "width" : 7.83} -->

<img src="../../assets/images/deep-learning/classification-iris-viz-accuracy1.png" alt="XXX image missing" width="30%" style="background:white;"/><!-- {"left" : 3.2, "top" : 7.08, "height" : 4.09, "width" : 5.51} -->
<img src="../../assets/images/deep-learning/classification-iris-viz-loss1.png" alt="XXX image missing" width="30%" style="background:white;"/><!-- {"left" : 8.64, "top" : 7.08, "height" : 4.11, "width" : 5.52} -->

---

## Metrics - History

* Pros:
    - Better visualization than plain text
    - Just takes a few extra lines of code

* Cons:
    - History object available __only after__ the training is __complete__
    - So we won't

<img src="../../assets/images/deep-learning/classification-iris-viz-accuracy1.png" alt="XXX image missing" width="35%" style="background:white;"/><!-- {"left" : 2.72, "top" : 6.42, "height" : 4.48, "width" : 6.02} -->
<img src="../../assets/images/deep-learning/classification-iris-viz-loss1.png" alt="XXX image missing" width="35%" style="background:white;"/><!-- {"left" : 8.93, "top" : 6.49, "height" : 4.37, "width" : 5.85} -->

---

# TensorBoard

---

## TensorBoard

* [TensorBoard](https://www.tensorflow.org/tensorboard) is a tool for visualizing machine learning

* It is part of TensorFlow library

* TB features:
    - Tracking and visualizing metrics such as loss and accuracy
    - Visualizing the model graph (ops and layers)
    - Viewing histograms of weights, biases, or other tensors as they change over time
    - Projecting embeddings to a lower dimensional space
    - Displaying images, text, and audio data
    - Profiling TensorFlow programs

* See next slide for animation

---

## TensorBoard


<img src="../../assets/images/deep-learning/3rd-party/tensorboard.gif" style="width:60%;"/><!-- {"left" : 4.35, "top" : 1.89, "height" : 6.66, "width" : 8.8} -->



[Image source](https://www.tensorflow.org/tensorboard/images/tensorboard.gif)


---

## Keras and TensorBoard

<img src="../../assets/images/deep-learning/tensorboard-keras.png" alt="tensorboard-keras.png" style="width:70%;"/><!-- {"left" : 3.26, "top" : 2.84, "height" : 8.03, "width" : 10.98} -->

---

## Setting up TensorBoard

```bash
## Step 1: Run Tensorboard app - it will be monitoring a logs directory
$   tensorboard --logdir=/tmp/tensorboard-logs
```
<!-- {"left" : 0.85, "top" : 2.61, "height" : 1.06, "width" : 15.49} -->


```python
## Step 2: Setup Tensorboard in our application
import datetime
import os

app_name = 'classification-iris-1' # you can change this, if you like

tb_top_level_dir= '/tmp/tensorboard-logs' # this is the top level log dir

# Create an 'app dir' within logdir
tensorboard_logs_dir= os.path.join (tb_top_level_dir, app_name,
                                    datetime.datetime.now().strftime("%Y-%m-%d--%H-%M-%S"))
print ("Saving TB logs to : " , tensorboard_logs_dir)
# Saving TB logs to :  /tmp/tensorboard-logs/classification-iris-1/2020-02-05--18-47-10
```
<!-- {"left" : 0.85, "top" : 4.03, "height" : 4.07, "width" : 15.96} -->


```python
## Step 3: provide tb-callback function during training
tb_callback = tf.keras.callbacks.TensorBoard(log_dir=tensorboard_logs_dir, histogram_freq=1)

model.fit(x, y, epochs=5,
          callbacks=[tb_callback])  ## <-- here is the linkup

```
<!-- {"left" : 0.85, "top" : 8.47, "height" : 1.74, "width" : 16.11} -->


---

## TensorBoard Log Directory

<img src="../../assets/images/deep-learning/tensorboard-2.png" style="width:60%;float:right;"/><!-- {"left" : 8.33, "top" : 2.16, "height" : 4.24, "width" : 8.75} -->


* Each application will write their own directory within logs directory

* It is also recommended, that each run is its own directory; so we can compare runs

* Each run is timestamped

* Here we see two runs of __'app1'__; check timestamps


```text
tensorboard-logs/
├── app1__2020-01-01--12-30-10
├── app1__2020-01-01--12-32-30
└── app2__2020-01-01--12-33-00

```
<!-- {"left" : 0.85, "top" : 8.44, "height" : 1.66, "width" : 6.64} -->



---

## Lab: Using TensorBoard

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.47, "top" : 1.89, "height" : 5.65, "width" : 4.24} -->


* **Overview:**
    - Incorporate TensorBoard into NN

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - **Metrics-2:** TensorBoard

Notes:

---

# Classifications with NNs

---
## Keras Workflow

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 13.92, "top" : 1.89, "height" : 6.93, "width" : 2.85} -->

* Here is a typical Keras workflow. This is pretty common workflow for most neural networks

* Step 1 - Define the network
    - Step 1A - Use a model class from **`keras.models`**
    - Step 1B - Stack layers using the **`.add()`** method

* Step 2 - Configure the learning process using the **`compile()`** method

* Step 3 - Train the model on the train dataset using the **`.fit()`** method

* Step 4 - Evaluate the network

* Step 5 - Predict




---

## Let's use IRIS Dataset

<img src="../../assets/images/generic/3rd-party/iris-flower-1.jpg" style="width:30%;float:right;"/><!-- {"left" : 11.7, "top" : 2.24, "height" : 4.29, "width" : 5.33} -->

* IRIS is a very simple dataset (a ML classic)

* 4 inputs (a,b,c,d) - representing dimensions of the flower, like 'petal width'
* and 3 output classes `label` (1,2,3)
* Total samples: 150
* Well balanced, each label (1,2,3) has 50 samples each

| a   | b   | c   | d   | label |
|-----|-----|-----|-----|-------|
| 6.4 | 2.8 | 5.6 | 2.2 | 3     |
| 5.0 | 2.3 | 3.3 | 1.0 | 2     |
| 4.9 | 3.1 | 1.5 | 0.1 | 1     |

<!-- {"left" : 3.88, "top" : 8.92, "height" : 2, "width" : 9.75} -->

Notes:
Image by <a href="https://pixabay.com/users/pixel2013-2364555/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2339883">S. Hermann &amp; F. Richter</a> from <a href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=2339883">Pixabay</a>

---

## Step 0 - Data Prep

```python
### --- read input ----
iris = pd.read_csv('iris.csv')
x = iris [['SepalLengthCm', 'SepalWidthCm', 'PetalLengthCm', 'PetalWidthCm']]
y = iris[['Species']]
# SepalLengthCm  SepalWidthCm  PetalLengthCm  PetalWidthCm
# 0            5.1           3.5            1.4           0.2
# 4            5.0           3.6            1.4           0.2
# -----
#      Species
# 0  Iris-setosa
# 1  Iris-virginica

# ---- pre processing ----
from sklearn.preprocessing import LabelEncoder
encoder =  LabelEncoder()
y1 = encoder.fit_transform(y.values) ## need y.values which is an array
# [0 0 0 ...  1 1 1 ... 2 2 2]

# --- train test split ----
from sklearn.model_selection import train_test_split
x_train,x_test, y_train,y_test = train_test_split(x,y1,test_size=0.2,random_state=0)

print ("x_train.shape : ", x_train.shape)
print ("y_train.shape : ", y_train.shape)
print ("x_test.shape : ", x_test.shape)
print ("y_test.shape : ", y_test.shape)

# x_train.shape :  (120, 4)
# y_train.shape :  (120,)
# x_test.shape :  (30, 4)
# y_test.shape :  (30,)

```
<!-- {"left" : 0.85, "top" : 2.06, "height" : 9.45, "width" : 14.95} -->


---


## 1: Network Design

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.55, "top" : 1.65, "height" : 5.86, "width" : 2.42} -->


- Input layer will have __`4 neurons`__ to match input dimensions (a,b,c,d)

- Hidden layer will have __`8 neurons`__, with __`ReLU`__ activation

- Output layer will have __`3 neurons`__ with __`SoftMax`__ activation

<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="iris_feedforward_neural_network.png" style="width:50%;"/><!-- {"left" : 10.84, "top" : 7.94, "height" : 3.83, "width" : 6.18} -->



---

## Step 1: Define Model

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.17, "top" : 1.89, "height" : 6.17, "width" : 2.54} -->

```python
from keras.models import Sequential
from keras.layers import Dense

model = Sequential()
model.add(Dense(8, input_dim=4, activation='relu'))
model.add(Dense(3, activation='softmax'))

keras.utils.plot_model(model, to_file='model.png', show_shapes=True)
```
<!-- {"left" : 0.85, "top" : 2.19, "height" : 2.57, "width" : 11.19} -->


<img src="../../assets/images/deep-learning/classification-iris-model-viz-1.png" style="width:30%;"/><!-- {"left" : 5.22, "top" : 5.55, "height" : 5.48, "width" : 7.07} -->


---

## Step 2: Compile the Model

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 14.17, "top" : 1.89, "height" : 6.17, "width" : 2.54} -->

* We are using __`sparse_categorical_crossentropy`__ for loss, because this is a __multi-class classifier__
* We are tracking metric  __`accuracy`__
* __`Adam`__ is a pretty good optimizer, that can self-adjust parameters as they learn


```python
model.compile( optimizer = 'adam',
               loss = 'categorical_crossentropy',
               metrics = ['accuracy'] )
```
<!-- {"left" : 0.85, "top" : 6.23, "height" : 1.37, "width" : 11.47} -->

---

## Step 3: Train the Network

* We train on __training_data__ (__`x_train`__ and __`y_train`__)
* Output may look like below; we did 100 epochs in about 10 seconds

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:15%;float:right;"/> <!-- {"left" : 14.17, "top" : 1.89, "height" : 6.17, "width" : 2.54} -->


```python
## without validation
history = model.fit(x_train, y_train, epochs = 100, batch_size = 2**4)

## with validation
history = model.fit(x_train, y_train, epochs = 100, batch_size = 2**4,
validation_split=0.25)
```
<!-- {"left" : 0.85, "top" : 4.93, "height" : 1.97, "width" : 12.08} -->

```text
training starting ...

Train on 96 samples, validate on 24 samples

Epoch 1/100 [==============================] - loss: 2.1204 - accuracy: 0.2708 -
val_loss: 1.5499 - val_accuracy: 0.4583
...
...
Epoch 100/100 [==============================] - loss: 0.2375 - accuracy: 0.9583 -
val_loss: 0.2986 - val_accuracy: 0.9167

training done.

CPU times: user 14.3 s, sys: 18.9 s, total: 33.3 s
Wall time: 10.1 s
```
<!-- {"left" : 0.85, "top" : 7.33, "height" : 3.89, "width" : 12.08} -->

---

## Step 3.5: Visualize Training History

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 14.17, "top" : 1.89, "height" : 6.17, "width" : 2.54} -->


* The __`fit()`__ method on a Keras Model returns a __`History`__ object.
* The __`History.history`__ attribute is a dictionary recording training loss values and metrics values at successive epochs

```python
import matplotlib.pyplot as plt

plt.plot(history.history['acc'])
if 'val_acc' in history.history:
     plt.plot(history.history['val_acc'])
plt.title('Model accuracy')
plt.ylabel('Accuracy')
plt.xlabel('Epoch')
plt.legend(['Train', 'Test'], loc='upper left')
plt.show()
```
<!-- {"left" : 0.85, "top" : 5.71, "height" : 2.75, "width" : 7.42} -->

<img src="../../assets/images/deep-learning/classification-iris-viz-accuracy1.png" alt="XXX image missing" width="30%" style="background:white;"/><!-- {"left" : 3.74, "top" : 8.51, "height" : 3.26, "width" : 4.56} -->   &nbsp; &nbsp; <img src="../../assets/images/deep-learning/classification-iris-viz-loss1.png" alt="XXX 3.21 missing" width="30%" style="background:white;"/><!-- {"left" : 9.2, "top" : 8.54, "height" : 2.4, "width" : 4.56} -->


---

## Step 4: Evaluate network

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/> <!-- {"left" : 14.17, "top" : 1.89, "height" : 6.17, "width" : 2.54} -->


* __`model.evaluate`__ is returning a few metrics, displayed below

```python
metric_names = model.metrics_names
print ("model metrics : " , metric_names)

metrics = model.evaluate(x_test, y_test, verbose=0)

for idx, metric in enumerate(metric_names):
    print ("Metric : {} = {:,.2f}".format (metric_names[idx], metrics[idx]))
```
<!-- {"left" : 0.85, "top" : 4.58, "height" : 1.97, "width" : 11.39} -->


```text
model metrics :  ['loss', 'accuracy']
Metric : loss = 0.27
Metric : accuracy = 0.93
```
<!-- {"left" : 0.85, "top" : 6.81, "height" : 1.28, "width" : 7.71} -->


---
## Step 4.5: Training Accuracy & Loss

<img src="../../assets/images/deep-learning/classification-iris-viz-accuracy1.png" alt="XXX image missing" width="33%" style="background:white;"/><!-- {"left" : 5.95, "top" : 2.44, "height" : 4.18, "width" : 5.6} --><br clear="all;"/>
<img src="../../assets/images/deep-learning/classification-iris-viz-loss1.png" alt="XXX image missing" width="33%" style="background:white;"/><!-- {"left" : 5.95, "top" : 7.09, "height" : 4.18, "width" : 5.6} -->


---

## Step 4.5: Visualizing Training History With Tensorboard

* Tensorboard allows us to view training metrics live

```python
## Step 1: Setup Tensorboard
import datetime
import os

app_name = 'classification-iris-1' # you can change this, if you like

tb_top_level_dir= '/tmp/tensorboard-logs'
tensorboard_logs_dir= os.path.join (tb_top_level_dir, app_name,
                                    datetime.datetime.now().strftime("%Y-%m-%d--%H-%M-%S"))
print ("Saving TB logs to : " , tensorboard_logs_dir)
# Saving TB logs to :  /tmp/tensorboard-logs/classification-iris-1/2020-02-05--18-47-10

tensorboard_callback = tf.keras.callbacks.TensorBoard(log_dir=tensorboard_logs_dir, histogram_freq=1)
```
<!-- {"left" : 0.85, "top" : 2.94, "height" : 3.76, "width" : 16.27} -->


```bash
## Step 2: Run Tensorboard
$   tensorboard --logdir=/tmp/tensorboard-logs
```
<!-- {"left" : 0.85, "top" : 6.92, "height" : 1.04, "width" : 10.22} -->


```python
# Step 3: Use tensorboard callback during training
history = model.fit( x_train, y_train,
              epochs=epochs, validation_split = 0.2, verbose=1,
              callbacks=[tensorboard_callback]) # <-- here is the TB callback

```
<!-- {"left" : 0.85, "top" : 8.18, "height" : 1.57, "width" : 14.75} -->


---

## TensorBoard Visualization

<img src="../../assets/images/deep-learning/tensorboard-keras.png" alt="tensorboard-keras.png" style="width:70%;"/><!-- {"left" : 3, "top" : 2.65, "height" : 8.41, "width" : 11.5} -->


---

## Step 5: Predict

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.06, "top" : 1.35, "height" : 6.91, "width" : 2.85} -->

* __`model.predict`__ is run on __`x_test`__

* It returns __`predictions`__ which is a __`softmax`__ output

* Softmax output is an array of probabilities for each output class (in our case 3);  
They should add up to 1.0 (total probability)

```python
np.set_printoptions(formatter={'float': '{: 0.3f}'.format})

predictions = model.predict(x_test)
predictions
```
<!-- {"left" : 0.85, "top" : 6.33, "height" : 1.53, "width" : 11.22} -->


```text
array([[ 0.002,  0.249,  0.749], # winner class-3 (0.749)
       [ 0.023,  0.602,  0.375], # winner class-2 (0.602)
       [ 0.987,  0.012,  0.000], # winner class-1 (0.987)
       [ 0.000,  0.111,  0.889],
       [ 0.965,  0.034,  0.001],
       [ 0.000,  0.151,  0.849],
```
<!-- {"left" : 0.85, "top" : 8.11, "height" : 2.1, "width" : 10.65} -->


---

## Step 5: Predict

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 14.06, "top" : 1.35, "height" : 6.91, "width" : 2.85} -->


* Here we use __`predict_classes`__ to convert softmax output actual class label

```python
## Use 'predict_classes' instead of 'predict'
y_pred = model.predict_classes(x_test)
y_pred
```
<!-- {"left" : 0.85, "top" : 4.24, "height" : 1.37, "width" : 9.79} -->


```text
array([2, 1, 0, 2, 0, 2, 0, 1, 1, 1, 2, 1, 2, 1, 2, 0, 1, 2, 0, 0, 2, 2,
       0, 0, 2, 0, 0, 1, 1, 0])
```
<!-- {"left" : 0.85, "top" : 6, "height" : 0.86, "width" : 12.52} -->


---

## Evaluation - Confusion Matrix

```python
## plain confusion matrix

from sklearn.metrics import confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns

cm = confusion_matrix(y_test, y_pred, labels = [0,1,2])

plt.figure(figsize = (8,5))
# colormaps : cmap="YlGnBu" , cmap="Greens", cmap="Blues",  cmap="Reds"
sns.heatmap(cm, annot=True, cmap="Reds", fmt='d').plot()
```
<!-- {"left" : 0.85, "top" : 1.7, "height" : 3.04, "width" : 11.01} -->


<img src="../../assets/images/deep-learning/classification-iris-confusion-matrix-1.png"  style="width:50%;float:right;"/><!-- {"left" : 12.12, "top" : 1.7, "height" : 3.49, "width" : 5.11} -->


* __To the Instructor:__  You may want to cover __Confusion Matrix__ from __ML Concepts__

* Can you interpret the confusion matrix?
---

## Lab: Classifier with NN

<img src="../../assets/images/icons/individual-labs.png" alt="individual-labs.png" style="width:30%;float:right;" /><!-- {"left" : 12.93, "top" : 1.89, "height" : 5.37, "width" : 4.04} -->

  * **Overview:**
     - Build a classification network with NN

  * **Depends on:**
     - None

  * **Runtime:**
     - 40-60 mins

  * **Instructions:**
     - Follow instructions for
        - __Classification-1:__ IRIS
        - __Classification-2:__ Propser Loan

---

# Callbacks

---

## Callbacks

<img src="../../assets/images/deep-learning/classification-iris-accuracy-2.png" style="width:40%;float:right;" /><!-- {"left" : 10.55, "top" : 2.15, "height" : 4.46, "width" : 6.69} -->


* In our previous lab runs we have noticed with increased epochs the network accruacy increases

* However after certain epochs, the accuracy hardly increases

* Here in IRIS classification, after epoch=60 we don't see much improvement in accuracy

* So can we stop training if accuracy doesn't improve?

* **Callbacks** can help!


---

## Standard Callbacks

* Tensorflow provides following callbacks
    - **`EarlyStopping:`** Stop training when a monitored metric has stopped improving
    - **`ModelCheckpoint:`** Callback to save the Keras model or model weights at some frequency
    - **`TensorBoard:`** Enable visualizations for TensorBoard.
    - and more...

* [Callback reference](https://www.tensorflow.org/api_docs/python/tf/keras/callbacks/)

---

## Early Stopping

* This can stop training when a metric has stopped improving

* [Reference](https://www.tensorflow.org/api_docs/python/tf/keras/callbacks/EarlyStopping)

```python

cb_early_stop = tf.keras.callbacks.EarlyStopping(monitor='val_accuracy', min_delta=0.5, patience=3)

## Arguments
##    - monitor: metric to monitor;  here it is 'loss'
##    - min_delta: The minimum change in monitored metric that qualifies as improvement
##    - patience: number of consecutive epochs where the metric didn't improve

## This callback will stop the training when there is no improvement in
## the validation accuracy for 3 consecutive epochs.


## Supply the callback during training
history = model.fit (x, y, epochs=100,
                     callbacks = [cb_early_stop]) ## <-- here

```
<!-- {"left" : 0.85, "top" : 3.48, "height" : 4.09, "width" : 16.19} -->


---

## Using More Than One Callback

* We can provide more than one callbacks

```python

## Tensorboard callback
cb_tensorboard = tf.keras.callbacks.TensorBoard(log_dir='tblogs', histogram_freq=1)

## Early stopping callback
cb_early_stop = tf.keras.callbacks.EarlyStopping(monitor='val_accuracy', min_delta=0.5, patience=3)

## Supply the callbacks during training
history = model.fit (x_train, y_train, epochs=100,
                     callbacks = [cb_tensorboard, cb_early_stop]) ## <-- here

```
<!-- {"left" : 0.85, "top" : 2.77, "height" : 2.64, "width" : 15.74} -->


---

## Custom Callbacks

* We can also provide our own callbacks!

* Extend **`tf.keras.callbacks.Callback`**

* [Reference](https://www.tensorflow.org/api_docs/python/tf/keras/callbacks/Callback)

```python
on_epoch_end: logs include `acc` and `loss`, and
    optionally include `val_loss`
    (if validation is enabled in `fit`), and `val_acc`
    (if validation and accuracy monitoring are enabled).

on_batch_begin: logs include `size`,
    the number of samples in the current batch.

on_batch_end: logs include `loss`, and optionally `acc`
    (if accuracy monitoring is enabled).

```
<!-- {"left" : 0.85, "top" : 3.97, "height" : 4.07, "width" : 12.9} -->


---

## Implementing a Custom Callback

<br/>

```python
class CustomCallback(keras.callbacks.Callback):
    def on_train_begin(self, logs=None):
        keys = list(logs.keys())
        print("Starting training; got log keys: {}".format(keys))

    def on_train_end(self, logs=None):
        keys = list(logs.keys())
        print("Stop training; got log keys: {}".format(keys))

    def on_epoch_begin(self, epoch, logs=None):
        keys = list(logs.keys())
        print("Start epoch {} of training; got log keys: {}".format(epoch, keys))

    def on_epoch_end(self, epoch, logs=None):
        keys = list(logs.keys())
        print("End epoch {} of training; got log keys: {}".format(epoch, keys))

    def on_test_begin(self, logs=None):
        keys = list(logs.keys())
        print("Start testing; got log keys: {}".format(keys))

    def on_test_end(self, logs=None):
        keys = list(logs.keys())
        print("Stop testing; got log keys: {}".format(keys))



model.fit(x_train, y_train, epochs=2,
            callbacks=[CustomCallback()])
```
<!-- {"left" : 0.85, "top" : 1.89, "height" : 8.35, "width" : 13.65} -->


* Output next slide

---

## Implementing a Custom Callback

```console
Starting training; got log keys: []
...
Start epoch 0 of training; got log keys: []
...

Start testing; got log keys: []
...
Stop testing; got log keys: []
...
End epoch 0 of training; got log keys:
    ['loss', 'mean_absolute_error', 'val_loss', 'val_mean_absolute_error']
...

Start epoch 1 of training; got log keys: []
...
Start testing; got log keys: []
...
Stop testing; got log keys: []
...
End epoch 0 of training; got log keys:
    ['loss', 'mean_absolute_error', 'val_loss', 'val_mean_absolute_error']

...
Stop training; got log keys: []
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 7.28, "width" : 13.11} -->


---

## Implementing a Custom Callback

* We will implement a custom callback that will stop training if a desired accuracy is reached

```python
class MyCallback(tf.keras.callbacks.Callback):

  def on_epoch_end(self, epoch, logs={}):
    if(logs.get('accuracy')>0.6):
      print("\nReached 60% accuracy so cancelling training!")
      self.model.stop_training = True
# end class: MyCallback


## Supply custom callback
model.fit(x_train, y_train, epochs=2,
            callbacks=[MyCallback()])
```
<!-- {"left" : 0.85, "top" : 3.39, "height" : 4.26, "width" : 12.33} -->


---
## Implementing a Custom Callback

<br/>

```python
import tensorflow as tf

class myCallback(tf.keras.callbacks.Callback):
  def on_epoch_end(self, epoch, logs={}):
    if(logs.get('accuracy')>0.6):
      print("\nReached 60% accuracy so cancelling training!")
      self.model.stop_training = True

mnist = tf.keras.datasets.fashion_mnist

(x_train, y_train),(x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

callbacks = myCallback()

model = tf.keras.models.Sequential([
  tf.keras.layers.Flatten(input_shape=(28, 28)),
  tf.keras.layers.Dense(512, activation=tf.nn.relu),
  tf.keras.layers.Dense(10, activation=tf.nn.softmax)
])
model.compile(optimizer=tf.optimizers.Adam(),
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(x_train, y_train, epochs=10, callbacks=[callbacks])
```
<!-- {"left" : 0.85, "top" : 1.89, "height" : 7.28, "width" : 10.52} -->


* Output next slide
* [Reference](https://colab.research.google.com/github/lmoroney/dlaicourse/blob/master/Course%201%20-%20Part%204%20-%20Lesson%204%20-%20Notebook.ipynb)

---

## Implementing a Custom Callback

* We ran training with **`epochs=10`**

* How ever our callback stops training, as the desired accuracy (60%) is reached

```console
Downloading data from https://storage.googleapis.com/tensorflow/tf-keras-datasets/train-labels-idx1-ubyte.gz
...

Epoch 1/10
1872/1875 [============================>.] - ETA: 0s - loss: 0.4773 - accuracy: 0.8299

Reached 60% accuracy so cancelling training!

1875/1875 [==============================] - 6s 3ms/step - loss: 0.4771 - accuracy: 0.8299

<tensorflow.python.keras.callbacks.History at 0x7f63ad143c88>

```
<!-- {"left" : 0.85, "top" : 4.04, "height" : 3.01, "width" : 16.21} -->


---

## Lab: Callbacks

<img src="../../assets/images/icons/individual-labs.png" alt="individual-labs.png" style="width:20%;float:right;" /> <!-- {"left" : 13.06, "top" : 1.89, "height" : 5.04, "width" : 3.78} -->

  * **Overview:**
     - Implement a custom callback

  * **Depends on:**
     - None

  * **Runtime:**
     - 20 mins

  * **Instructions:**
    - __Callback-1__  

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.07, "top" : 1.89, "height" : 2.69, "width" : 3.63} -->


* Let's go over what we have covered so far

* Any questions?

* See following slides for 'resources'

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.62, "top" : 5, "height" : 5.53, "width" : 8.31} -->

---

# Resources

---

## Resources

  * [Hands-on Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2nd Edition (https://learning.oreilly.com/library/view/hands-on-machine-learning/9781492032632/)by Aurélien Géron (ISBN: 9781492032649)

  * [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/) by Meher Kasam, Siddha Ganju, Anirudh Koul (ISBN: 9781492034841)


<img src="../../assets/images/books/hands-on-machine-learning-with-scikit-learn-9781492032649.jpg" alt="keras book1" style="width:20%;"/><!-- {"left" : 5, "top" : 6.36, "height" : 4.39, "width" : 3.34} --> &nbsp;&nbsp; <img src="../../assets/images/books/practical-deep-learning-for-cloud-and-mobile-9781492034841.jpg" alt="keras book4" style="width:20%;"/><!-- {"left" : 9.15, "top" : 6.36, "height" : 4.39, "width" : 3.34} -->

---

## Resources

  * [Keras Deep Learning Cookbook](https://learning.oreilly.com/library/view/keras-deep-learning/9781788621755/)by Manpreet Singh Ghotra, Rajdeep Dua (ISBN: 9781788621755)

  * [Learn Keras for Deep Neural Networks:A Fast-Track Approach to Modern Deep Learning with Python](https://learning.oreilly.com/library/view/learn-keras-for/9781484242407/)by Jojo Moolayil (ISBN : 9781484242407)very good book that explains concepts pretty well

<img src="../../assets/images/books/keras-deep-learning-9781788621755.jpg" alt="keras book3" style="width:19.1%;"/> &nbsp;&nbsp; <!-- {"left" : 5.31, "top" : 6.54, "height" : 4.23, "width" : 3.47} --><img src="../../assets/images/books/learn-keras-for-deep-neural-networks-9781484242407.jpg" alt="keras book3" style="width:15.5%;"/><!-- {"left" : 9.4, "top" : 6.54, "height" : 4.23, "width" : 2.79} -->
---
## Resources

  * [Deep Learning with Keras: Implement various deep-learning algorithms in Keras and see how deep-learning can be used in games](https://learning.oreilly.com/library/view/deep-learning-with/9781787128422/)by Sujit Pal, Antonio Gulli (ISBN: 9781787128422)

  * [Safari books online, Keras books](https://learning.oreilly.com/topics/keras)

<img src="../../assets/images/books/deep-learning-with-keras-9781787128422.jpg" alt="keras book2" style="width:18%;"/><!-- {"left" : 13.16, "top" : 1.89, "height" : 5.77, "width" : 3.78} -->
