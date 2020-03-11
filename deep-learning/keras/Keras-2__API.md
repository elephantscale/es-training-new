# Neural Network Design with Tensorflow and Keras

<!-- TODO shiva -->
<img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:20%;"/> &nbsp;  &nbsp; <!-- {"left" : 2.79, "top" : 6.07, "height" : 1.81, "width" : 2.13} -->
<img src="../../assets/images/logos/keras-logo-1.png" alt="keras-logo-1.png" style="width:40%;"/><!-- {"left" : 4.97, "top" : 8.21, "height" : 0.71, "width" : 2.45} -->


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

## continue using tf.keras APIs
model = tf.keras.Sequential([
            tf.keras.layers.Dense(units=input_dim, activation=tf.nn.relu, input_dim=input_dim),
            tf.keras.layers.Dense(units=64, activation=tf.nn.relu),
            tf.keras.layers.Dense(units=output_clases,  activation=tf.nn.softmax)
            ])

```

---


## Keras Abstractions

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/keras-model-layers-1.png" style="width:30%;float:right;"/>
<img src="../../assets/images/generic/3rd-party/baseball-coach-1.jpg" style="width:25%;float:right;clear:both;"/>
<img src="../../assets/images/generic/3rd-party/soccer-referee-1.jpg" style="width:25%;float:right;"/>

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

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="XXX image missing" style="width:30%;"/><!-- {"left" : 2.99, "top" : 4.17, "height" : 4.12, "width" : 4.26} -->


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
<!-- {"left" : 0, "top" : 1.17, "height" : 3.64, "width" : 10.25} -->


```python
## Usage

from keras.layers import Dense

# has 32 neurons
# Takes input array of shape [*,16]
# output array shape [*,32]
d = Dense(32, input_shape=(16,)))
```
<!-- {"left" : 0, "top" : 5.07, "height" : 2.35, "width" : 8.34} -->

---

## Keras Core Layers: Dropout

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/dropout-1.png" style="width:40%;float:right;"/>

  * The dropout layer in DL helps reduce overfitting by introducing regularization and generalization

  * The dropout layer drops out a few neurons or sets them to 0 and reduces computation in the training process.

```python
## API

keras.layers.Dropout(rate, noise_shape=None, seed=None)
```
<!-- {"left" : 0, "top" : 3.16, "height" : 1.19, "width" : 10.25} -->


```python
## Usage

from keras.layers import Dropout

d = Dropout(rate = 0.1,seed=100)
```
<!-- {"left" : 0, "top" : 4.74, "height" : 1.74, "width" : 6.11} -->

---

# Keras Optimizers

---
## Keras Optimizers

<!-- TODO shiva -->
<img src="../../assets/images/generic/3rd-party/baseball-coach-1.jpg" style="width:30%;float:right;"/>

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
<!-- {"left" : 0, "top" : 1.01, "height" : 2.39, "width" : 10.25} -->

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
<!-- {"left" : 0, "top" : 1.14, "height" : 2.39, "width" : 7.37} -->

<br/>

  * Arguments
    - `lr`: float >= 0. Initial learning rate.
    - `epsilon`: float >= 0. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.


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
<!-- {"left" : 0, "top" : 1.11, "height" : 2.82, "width" : 6.55} -->

<br/>

  * Arguments
    - `lr`: float >= 0. Learning rate.
    - `rho`: float >= 0.
    - `epsilon`: float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.

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

<!-- {"left" : 0, "top" : 1.35, "height" : 3.78, "width" : 7.94} -->

---

## Optimizer: Adam

  * Arguments
    - `lr`: float >= 0. Learning rate.
    - `beta_1`: float, 0 < beta < 1. Generally close to 1.
    - `beta_2`: float, 0 < beta < 1. Generally close to 1.
    - `epsilon`: float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.
    - `amsgrad`: boolean. Whether to apply the AMSGrad variant of this algorithm from the paper "On the Convergence of Adam and Beyond".


---

# Keras Loss Functions

---

## Keras Loss Functions

<img src="../../assets/images/generic/3rd-party/soccer-referee-1.jpg" style="width:30%;float:right;"/>


  * We will look at a few popular Loss functions.  
  * For full list see [Keras documentation](https://keras.io/losses/#available-loss-functions).

  * Loss functions are defined in [keras.losses](https://keras.io/losses) package

  * For Regressions:
    - Mean Squared Error
    - Mean Absolute Error
    - Mean Squared Logarithmic Error

  * For Classifications:
    - Categorical Cross-entropy
    - Binary Cross-entropy

---

## Loss Functions (Regressions)

  * **Mean Squared Error**

```python
    keras.losses.mean_squared_error(y_true, y_pred)
```
<!-- {"left" : 0, "top" : 1.71, "height" : 0.54, "width" : 8.61} -->

<img src="../../assets/images/deep-learning/equation-mean-square-error.png" alt="equation-mean-square-error" style="width:30%;"/><!-- {"left" : 3.11, "top" : 2.56, "height" : 1.34, "width" : 4.03} -->

  *  **Mean Absolute Error**

```python
    keras.losses.mean_absolute_error(y_true, y_pred)
```
<!-- {"left" : 0, "top" : 4.89, "height" : 0.54, "width" : 8.78} -->

<img src="../../assets/images/deep-learning/equation-mean-absolute-error.png" alt="equation-mean-absolute-error" style="width:30%;"/><!-- {"left" : 2.57, "top" : 5.55, "height" : 1.71, "width" : 5.1} -->

---

## Loss Functions (Regressions)

  * **MAPE - Mean absolute percentage error**

```python
keras.losses.mean_absolute_percentage_error
```
<!-- {"left" : 0, "top" : 1.65, "height" : 0.54, "width" : 7.94} -->

<img src="../../assets/images/deep-learning/3rd-party/mse_mape_eqs.png" alt="XXX image missing" style="width:30%;"/><!-- {"left" : 3.78, "top" : 2.52, "height" : 2.47, "width" : 2.69} -->

  * **MSLE - Mean square logarithmic error**

```python
keras.losses.mean_squared_logarithmic_error
```
<!-- {"left" : 0, "top" : 5.92, "height" : 0.54, "width" : 7.94} -->

---

## Loss Functions  (Categorical)

  *  **Binary Cross-entropy**
    - Used when outcome is binary (yes/now,  0/1)

```
Loss = - [ y * log(p) + (1-y) * log(1-p) ]
```
<!-- {"left" : 0, "top" : 1.91, "height" : 0.43, "width" : 6.26} -->

```python
keras.losses.binary_crossentropy(y_true, y_pred)
```
<!-- {"left" : 0, "top" : 2.43, "height" : 0.45, "width" : 7.29} -->

  * **Categorical Cross-entropy**
    - Used for multi-class classifications (class-1, class-2, class-3  ..etc)

```python
keras.losses.categorical_crossentropy(y_true, y_pred)
```
<!-- {"left" : 0, "top" : 4.55, "height" : 0.54, "width" : 9.61} -->

<img src="../../assets/images/deep-learning/3rd-party/category-crossentrophy.png" alt="XXX image missing" style="width:30%;"/><!-- {"left" : 3.18, "top" : 5.73, "height" : 1.32, "width" : 3.9} -->

---

# Keras Activation Functions

---

## Keras Activation Functions
* Sigmoid
* Tanh
* ReLU
* Softmax

<!-- TODO shiva -->
```python

## Easiest to use activation function names
## like 'relu'  , 'tanh'  and 'softmax'

from keras.layers import Dense

model.add(Dense(units=64, activation='relu', input_dim=100))
model.add(Dense(units=10, activation='softmax'))

# --------------------------

## Also can initialize using classes
keras.activations.softmax(x, axis=-1)
keras.activations.relu()

```

---

# Keras Models
---

## Keras Models Intro

  * Models are defined in `keras.models` package

```python
from keras.models import Model
from keras.layers import Input, Dense

a = Input(shape=(32,))
b = Dense(32)(a)
model = Model(inputs=a, outputs=b)
```
<!-- {"left" : 0, "top" : 1.65, "height" : 2.5, "width" : 9.32} -->

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

<!-- {"left" : 0.25, "top" : 1.88, "height" : 3.88, "width" : 9.75} -->

---


## Compile method

```python
compile(optimizer,
        loss=None,
        metrics=None,
        loss_weights=None,
        sample_weight_mode=None,
        weighted_metrics=None,
        target_tensors=None)
```
<!-- {"left" : 0, "top" : 1.2, "height" : 2.23, "width" : 5.87} -->

<br/>

  * Arguments
    - **optimzer:** optimizer name ('adam', 'sgd') or optimizer instance
    - **loss:** loss function name or instance
    - **metrics:** metrics to evaluate during training/testing  
      `metrics = ['accuracy']`

---

## Fit method

```python
fit(x=None, y=None,
    batch_size=None, epochs=1,
    verbose=1, callbacks=None,
    validation_split=0.0, validation_data=None,
    shuffle=True, class_weight=None,
    sample_weight=None, initial_epoch=0,
    steps_per_epoch=None, validation_steps=None, validation_freq=1)
```
<!-- {"left" : 0, "top" : 1.66, "height" : 1.82, "width" : 10.25} -->


---

## Fit method

  * This method does training

  * Arguments
    - x: training input data (numpy array or list of numpy arrays)
    - y: training target data (numpy array)
    - batch_size: integer, usually powers of two (default = 32)
    - epochs: integer, how many times to go through data
    - verbose: 0 or 1 or 2  (0 = silent, 1 = progress bar, 2 = one line per epoch)

---

## Evaluate

- Measures performance metrics (loss values) for testing data

```python
evaluate(x=None, y=None,
         batch_size=None, verbose=1,
         sample_weight=None, steps=None, callbacks=None)
```
<!-- {"left" : 0, "top" : 2.02, "height" : 1.07, "width" : 10.25} -->

<br/>

  * Arguments
    - x: test data inputs (numpy array(s) )
    - y: test data labels (numpy array(s) )
    - batch_size: integer, usually powers of two (default = 32)
    - verbose: 0 or 1. Verbosity mode. 0 = silent, 1 = progress bar.

---

## Predict

```python
predictions = predict(x, batch_size=None,
                      verbose=0, steps=None, callbacks=None)
```
<!-- {"left" : 0, "top" : 1.62, "height" : 0.82, "width" : 10.25} -->

<br/>

  * Arguments
    - x: The input data, as a Numpy array (or list of Numpy arrays if the model has multiple inputs).
    - batch_size: Integer. If unspecified, it will default to 32.
    - verbose: Verbosity mode, 0 or 1.

---

# Defining a Keras Sequential Model

---
## Keras Workflow

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 4.15, "top" : 2.46, "height" : 4.73, "width" : 1.95} -->

* Here is a typical Keras workflow.  This is pretty common workflow for most neural networks

* Step 1 - Define the network
    - Step 1A - Use a model class from **`keras.models`**
    - Step 1B - Stack layers using the **`.add()`** method

* Step 2 - Configure the learning process using the **`compile()`** method

* Step 3 - Train the model on the train dataset using the **`.fit()`** method

* Step 4 - Evaluate the network

* Step 5 - Predict




---

## Let's use IRIS Dataset


<!-- TODO shiva -->
<img src="../../assets/images/generic/3rd-party/iris-flower-1.jpg" style="width:30%;float:right;"/>

* IRIS is a very simple dataset (a ML classic)

* 4 inputs (a,b,c,d) - representing dimensions of the flower, like 'petal width'
* and 3 output classes `label` (1,2,3)
* Total samples : 150
* Well balanced, each label (1,2,3) has 50 samples each

<br />

| a   | b   | c   | d   | label |
|-----|-----|-----|-----|-------|
| 6.4 | 2.8 | 5.6 | 2.2 | 3     |
| 5.0 | 2.3 | 3.3 | 1.0 | 2     |
| 4.9 | 3.1 | 1.5 | 0.1 | 1     |

<!-- {"left" : 0.25, "top" : 3.82, "height" : 2, "width" : 9.75} -->

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

---


## Network Design

- Input layer will have 4 neurons to match input dimensions (a,b,c,d)

- Hidden layer will have 8 neurons, with 'ReLU' activation

- Output layer will have 3 neurons with 'SoftMax' activation

<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="iris_feedforward_neural_network.png" style="width:50%;"/><!-- {"left" : 1.33, "top" : 3.4, "height" : 4.71, "width" : 7.6} -->



---

## Step 1: Define Model

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 7.7, "top" : 4.26, "height" : 3.89, "width" : 1.6} -->

```python
from keras.models import Sequential
from keras.layers import Dense

model = new Sequential()
model.add(Dense(8, input_dim=4, activation='relu'))
model.add(Dense(3, activation='softmax'))
```
<!-- {"left" : 0, "top" : 1.69, "height" : 2.13, "width" : 9.28} -->


<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="keras tensorboard" style="width:40%;"/><!-- {"left" : 0.63, "top" : 4.59, "height" : 3.55, "width" : 5.72} -->


---
## Step 1.5: Visualize the Model

* Models are visualized using python plot library  **pydot**


```python
tf.keras.utils.plot_model(model, to_file='model.png', show_shapes=True)
```
<!-- {"left" : 0, "top" : 1.15, "height" : 2.94, "width" : 10.25} -->

<img src="../../assets/images/deep-learning/viz-model1.png" alt="nn workflow" width="30%;"/><!-- {"left" : 3.66, "top" : 4.86, "height" : 2.58, "width" : 2.93} -->



---

## Step 2: Compile the Model

<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/><!-- {"left" : 8.08, "top" : 3.7, "height" : 4.19, "width" : 1.73} -->

```python
model.compile( optimizer = 'adam',
               loss = 'categorical_crossentropy',
               metrics = ['accuracy'] )
```
<!-- {"left" : 0, "top" : 1.77, "height" : 1.07, "width" : 8.94} -->

  * Parameters explained:
    - Optimizer: one of 'adam', 'sgd', 'rmsprop'
    - loss function: how to measure the loss/error  (regression / classification)
    - metrics: what metrics to optimize for

---

## Step 3: Train the Network

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/>

```python
## without validation
history = model.fit(x_train, y_train, epochs = 100, batch_size = 2**4)

## with validation
history = model.fit(x_train, y_train, epochs = 100, batch_size = 2**4,
validation_split=0.25)
```
<!-- {"left" : 0, "top" : 2.51, "height" : 1.41, "width" : 9.41} -->



---

## Step 4: Evaluate network

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/nn-workflow.png"  style="width:20%;float:right;"/>

```python
scores = model.evaluate(x_test, y_test)
print("\n%s: %.2f%%" % (model.metrics_names[1], scores[1]*100))

# acc = 96%
```
<!-- {"left" : 0, "top" : 2.51, "height" : 1.17, "width" : 9.89} -->

---
## Step 4.5: Visualize Training History 1

* Training history can be visualized using python **matplotlib** or **Tensorboard**


* The `fit()` method on a Keras Model returns a `History` object.

* The `History.history` attribute is a dictionary recording training loss values and metrics values at successive epochs,

* Also records  validation loss values and validation metrics values (if applicable).

```python
history = (model.fit(x, y,
                     validation_split=0.25, epochs=50,
                     batch_size=16, verbose=1))

```
<!-- {"left" : 0, "top" : 3.88, "height" : 1.12, "width" : 10.25} -->


---

## Step 4.5: Visualizing Training History 1 - Accuracy

```python
import matplotlib.pyplot as plt

 # Plot training & validation accuracy values
 plt.plot(history.history['acc'])
 if 'val_acc' in history.history:
     plt.plot(history.history['val_acc'])
 plt.title('Model accuracy')
 plt.ylabel('Accuracy')
 plt.xlabel('Epoch')
 plt.legend(['Train', 'Test'], loc='upper left')
 plt.show()
```
<!-- {"left" : 0, "top" : 1.11, "height" : 3.18, "width" : 8.78} -->

<img src="../../assets/images/deep-learning/viz-accuracy1.png" alt="XXX image missing" width="30%" style="background:white;"/><!-- {"left" : 2.72, "top" : 4.76, "height" : 3.59, "width" : 4.82} -->



---

## Step 4.5: Visualizing Training History 1 - Loss

```python
import matplotlib.pyplot as plt

# Plot training & validation loss values
plt.plot(history.history['loss'])
if 'val_loss' in history.history:
    plt.plot(history.history['val_loss'])
plt.title('Model loss')
plt.ylabel('Loss')
plt.xlabel('Epoch')
plt.legend(['Train', 'Test'], loc='upper left')
plt.show()

```
<!-- {"left" : 0, "top" : 1.11, "height" : 3.18, "width" : 8.61} -->

<img src="../../assets/images/deep-learning/viz-loss1.png" alt="XXX image missing" width="38%" style="background:white;"/><!-- {"left" : 2.78, "top" : 4.77, "height" : 3.5, "width" : 4.69} -->


---
## Training Accuracy & Loss

<img src="../../assets/images/deep-learning/viz-accuracy1.png" alt="XXX image missing" width="33%" style="background:white;"/><!-- {"left" : 2.96, "top" : 1.65, "height" : 3.22, "width" : 4.32} --><br clear="all;"/>
<img src="../../assets/images/deep-learning/viz-loss1.png" alt="XXX image missing" width="33%" style="background:white;"/><!-- {"left" : 2.96, "top" : 5.24, "height" : 3.22, "width" : 4.32} -->


---

## Step 4.5: Visualizing Training History With Tensorboard (3)

- Use Keras callback for saving your training and test metrics, as well as activation histograms for the different layers in your model

```python
(keras.callbacks.TensorBoard(log_dir='./logs',
                            histogram_freq=0,
                            write_graph=True,
                            write_images=False) )
```
<!-- {"left" : 0, "top" : 2.72, "height" : 1.44, "width" : 8.94} -->

<br/>


- Saved data can then be visualized with Tensorboard


```bash
$   tensorboard --logdir=/full_path_to_your_logs
```
<!-- {"left" : 0, "top" : 5.21, "height" : 0.58, "width" : 8.94} -->

<br/>

- See next slide for a visualization.

---

## Keras and Tensorboard

<img src="../../assets/images/deep-learning/tensorboard-keras.png" alt="tensorboard-keras.png" style="width:70%;"/><!-- {"left" : 1.51, "top" : 2.18, "height" : 5.28, "width" : 7.22} -->


---

## Lab: Classifier IRIS

<img src="../../assets/images/icons/individual-labs.png" alt="individual-labs.png" style="background:white;max-width:100%;float:right;" width="30%;"/><!-- {"left" : 6.73, "top" : 2.04, "height" : 3.9, "width" : 2.93} -->

  * **Overview:**
     - KERAS-1: Simple Keras network to classify IRIS

  * **Depends on:**
     - None

  * **Runtime:**
     - 15 mins

  * **Instructions:**
     - Follow 'KERAS-1'

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->


* Let's go over what we have covered so far

* Any questions?

* See following slides for 'resources'

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
---

# Resources

---

## Resources

  * [Hands-on Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2nd Edition (https://learning.oreilly.com/library/view/hands-on-machine-learning/9781492032632/)by Aurélien Géron (ISBN: 9781492032649)

  * [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/) by Meher Kasam, Siddha Ganju, Anirudh Koul (ISBN: 9781492034841)


<img src="../../assets/images/books/hands-on-machine-learning-with-scikit-learn-9781492032649.jpg" alt="keras book1" style="width:20%;"/><!-- {"left" : 2.62, "top" : 4.41, "height" : 2.93, "width" : 2.23} --> &nbsp;&nbsp; <img src="../../assets/images/books/practical-deep-learning-for-cloud-and-mobile-9781492034841.jpg" alt="keras book4" style="width:20%;"/><!-- {"left" : 5.39, "top" : 4.41, "height" : 2.93, "width" : 2.23} -->

---

## Resources

  * [Keras Deep Learning Cookbook](https://learning.oreilly.com/library/view/keras-deep-learning/9781788621755/)by Manpreet Singh Ghotra, Rajdeep Dua (ISBN: 9781788621755)

  * [Learn Keras for Deep Neural Networks:A Fast-Track Approach to Modern Deep Learning with Python](https://learning.oreilly.com/library/view/learn-keras-for/9781484242407/)by Jojo Moolayil (ISBN : 9781484242407)very good book that explains concepts pretty well

<img src="../../assets/images/books/keras-deep-learning-9781788621755.jpg" alt="keras book3" style="width:19.1%;"/> &nbsp;&nbsp; <!-- {"left" : 2.66, "top" : 4.69, "height" : 3.03, "width" : 2.48} --><img src="../../assets/images/books/learn-keras-for-deep-neural-networks-9781484242407.jpg" alt="keras book3" style="width:15.5%;"/><!-- {"left" : 5.59, "top" : 4.69, "height" : 3.03, "width" : 2} -->
---
## Resources

  * [Deep Learning with Keras : Implement various deep-learning algorithms in Keras and see how deep-learning can be used in games](https://learning.oreilly.com/library/view/deep-learning-with/9781787128422/)by Sujit Pal, Antonio Gulli (ISBN: 9781787128422)

  * [Safari books online, Keras books](https://learning.oreilly.com/topics/keras)

<img src="../../assets/images/books/deep-learning-with-keras-9781787128422.jpg" alt="keras book2" style="width:18%;"/><!-- {"left" : 3.99, "top" : 3.9, "height" : 3.44, "width" : 2.26} -->
