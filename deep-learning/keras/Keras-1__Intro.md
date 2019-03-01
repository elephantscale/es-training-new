# Introduction to Keras
<img src="../../assets/images/logos/keras_logo.png" alt="XXX image missing" style="background:white;"/>

---

## Lesson Objectives

* Understand Keras framework

* Understand how Keras works with Deep Learning frameworks

Notes:  

---

## Resources

* [Hands-on Machine Learning with Scikit-Learn, Keras, and TensorFlow, 2nd Edition](https://learning.oreilly.com/library/view/hands-on-machine-learning/9781492032632/)  
by  Aurélien Géron (ISBN: 9781492032649)

* [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/)  
by Meher Kasam, Siddha Ganju, Anirudh Koul (ISBN: 9781492034841)



<img src="../../assets/images/deep-learning/3rd-party/book-9781492032649.jpg" alt="keras book1" style="width:20%;"/>
<img src="../../assets/images/deep-learning/3rd-party/book-9781492034841.jpg" alt="keras book4" style="width:20%;"/>

---

## Resources

* [Keras Deep Learning Cookbook](https://learning.oreilly.com/library/view/keras-deep-learning/9781788621755/)   
by Manpreet Singh Ghotra, Rajdeep Dua (ISBN: 9781788621755)

* [Learn Keras for Deep Neural Networks: A Fast-Track Approach to Modern Deep Learning with Python](https://learning.oreilly.com/library/view/learn-keras-for/9781484242407/) by Jojo Moolayil (ISBN : 9781484242407)  
very good book that explains concepts pretty well

<img src="../../assets/images/deep-learning/3rd-party/book-9781788621755.jpg" alt="keras book3" style="width:19%;"/>
<img src="../../assets/images/deep-learning/3rd-party/book-9781484242407.jpg" alt="keras book3" style="width:15%;"/>
---
## Resources

* [Deep Learning with Keras : Implement various deep-learning algorithms in Keras and see how deep-learning can be used in games](https://learning.oreilly.com/library/view/deep-learning-with/9781787128422/)  
by Sujit Pal, Antonio Gulli (ISBN: 9781787128422)

* [Safari books online, Keras books](https://learning.oreilly.com/topics/keras)

<img src="../../assets/images/deep-learning/3rd-party/book-9781787128422.jpg" alt="keras book2" style="maxwidth=100%;"/>
---

## Keras


* Keras ([Keras.io](https://keras.io/)) - is a high level neural networks API
* Written in Python
* Works with [Tensorflow](https://github.com/tensorflow/tensorflow)(from Google), [CNTK](https://github.com/Microsoft/cntk)(from Microsoft) and [Theano](https://github.com/Theano/Theano)

<img src="../../assets/images/deep-learning/keras-architecture.png" alt="XXX image missing" style="background:white;border: 5px solid grey; max-width:100%;"  width="60%"/>


Notes:  
NVIDIA - leading GPU vendor - provides CUDA (Compute Unified Device Architecture) and cuDNN (CUDA Deep Neural Network)

---

## Keras Features

* Write high level code
    - easier to write
    - faster to experiment

* Can support multiple backends

* Runs seamlessly on CPU and GPU

* [Wins Machine Learning competitions](https://www.quora.com/Why-has-Keras-been-so-successful-lately-at-Kaggle-competitions)

<img src="../../assets/images/deep-learning/cpu-gpu-tpu-1.png" alt="cpu gpu tpu" width="50%" style="background:white;"/>

Notes:
https://www.quora.com/Why-has-Keras-been-so-successful-lately-at-Kaggle-competitions

---

## Keras Guiding Principles

<img src="../../assets/images/deep-learning/3rd-party/duplo-1981724_640.jpg" alt="legos" style="width:30%; float:right;"/>

* **User Friendliness**  
Offers consistent, simple APIs

* **Modularity**  
Combine various modules, like Legos&reg;

* **Easy Extensibility**  
Add new modules easily

* **Works 100% in Python**  
No other libraries needed


> "Keras is designed for human beings,  
> not machines"

---

## Keras Comparison

Here is a quick comparison of writing [MNIST](https://en.wikipedia.org/wiki/MNIST_database) digits classification code in Keras and Tensorflow

| Library    | Line Count | Character Count  (no spaces) | Avg. character  count per line |
|------------|------------|------------------------------|--------------------------------|
| Tensorflow | 31         | 2162                         | 70                             |
| Keras      | 22         | 1018                         | 46                             |

As we can see, Keras is almost 50% more compact.

<small>source: [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/) Ch. 2</small>
---

## Deep Learning Libraries Popularity

These stats stats are from Github

| Library                       | Stars | Contributors |
|-------------------------------|-------|--------------|
| tensorflow/tensorflow         | 92150 |     1357     |
| fchollet/keras                | 26744 |      638     |
| BVLC/caffe                    | 23159 |      264     |
| Microsoft/CNTK                | 13995 |      173     |
| dmlc/mxnet                    | 13318 |      492     |
| pytorch/pytorch               | 12835 |      414     |
| deeplearning4j/deeplearning4j | 8472  |      140     |
| caffe2/caffe2                 | 7540  |      176     |

Notes:  
Source: 'Practical Deep Learning for Cloud and Mobile' (ISBN : 9781492034841), Ch 2

---

## Keras Version History

| Date     | Release | Features        |
|----------|---------|-----------------|
| 2015 May | v 0.1   | Initial Release |
| 2018 Oct | v 2.2   | Current v2      |

Notes:  
https://github.com/keras-team/keras/releases

---

## Parallelizing Keras

* These days, we need to train our models on huge amount of data.  
    - This takes enormous amount of compute power; A single machine won't be able to handle this.  Need to scale

* Parallelizing Keras
    - Run on  multiple GPUs (on a single machine)
    - Run on [multiple GPUs on Google Cloud cluster](https://cloud.google.com/solutions/running-distributed-tensorflow-on-compute-engine) using distributed Tensorflow
    - Use [dist keras](https://github.com/cerndb/dist-keras) on Spark engine

<img src="../../assets/images/deep-learning/DL-cluster.png" alt="cluster" style="width:50%;"/>

---


## Keras and Other DL Frameworks

<img src="../../assets/images/deep-learning/3rd-party/dl_frameworks_power_scores.png" alt="legos" />

<small>src : https://keras.io/why-use-keras/</small>


Notes:
Image source : https://keras.io/why-use-keras/

---

## Keras and Other DL Frameworks

* Isn't Keras a wrapper for other DL frameworks?
    - Nope, this is a common (but understandable) misconception.
    - Keras is an API standard for defining and training machine learning models.
    - Keras uses backend engines (like Tensorflow) for execution
    - Keras is not tied to a specific implementation

* But wait, isn't Tensorflow the most popular framework?

* Newsflash!:
[Tensorflow 2.0 is standardizing on Keras](https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a)

Notes:
https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a

---

## Keras and Tensorflow (2.0)

* Tensorflow includes a full implementation of Keras API in [tf.keras](https://www.tensorflow.org/guide/keras) package
    - This is different from [Keras.io](http://www.keras.io/)

* What is the difference between TensorFlow built-in Keras, and the Keras version at keras.io?
    - _tf.keras_ implementation has TensorFlow specific enhancements
    - [Eager execution](https://www.tensorflow.org/guide/eager) for fast execution
    - Distributed training
    - Support for TPU

Notes:
https://medium.com/tensorflow/standardizing-on-keras-guidance-on-high-level-apis-in-tensorflow-2-0-bad2b04c819a


---

## Model Zoos

* A model zoo is a place whered open-source models are shared so others can use them
    - started with Caffe framework

* Training a deep learning model from scratch on a multi-million-image database requires weeks of training time and lots of computational energy, making it a difficult task

* Organizations that participated in the ImageNet competition open-sourced their trained models on Caffe’s website

* Models can be trained for
    - specific task (image recognition,  text analytics)
    - specific framework (Keras, Caffe)

---

## Model Zoos in Keras

ImageNet trained models
<small>

| Model               | Size  | Top 1 Accuracy | Top 5 Accuracy | Parameters  | Depth |
|---------------------|-------|----------------|----------------|-------------|-------|
| Inception-ResNet-V2 | 215MB | 0.804          | 0.953          | 55,873,736  | 572   |
| Xception            | 88MB  | 0.79           | 0.945          | 22,910,480  | 126   |
| Inception-V3        | 92MB  | 0.788          | 0.944          | 23,851,784  | 159   |
| DenseNet-201        | 80MB  | 0.77           | 0.933          | 20,242,984  | 201   |
| ResNet-50           | 99MB  | 0.759          | 0.929          | 25,636,712  | 168   |
| DenseNet-169        | 57MB  | 0.759          | 0.928          | 14,307,880  | 169   |
| DenseNet-121        | 33MB  | 0.745          | 0.918          | 8,062,504   | 121   |
| VGG-19              | 549MB | 0.727          | 0.91           | 143,667,240 | 26    |
| VGG-16              | 528MB | 0.715          | 0.901          | 138,357,544 | 23    |
| MobileNet           | 17MB  | 0.665          | 0.871          | 4,253,864   | 88    |

Source : [Practical Deep Learning for Cloud and Mobile](https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/ch01.html#image_classification_with_keras), Ch 2
</small>

---

# Getting Keras Up and Running

---

## Installing Keras

* Before installing Keras, need to install a backend engine.

**With Tensorflow (Default Keras Engine)**

```bash
# if using Anaconda Python  (highly recommended)
$  conda install tensorflow
$  conda install keras

# if using vanilla Python
$  pip install tensorflow
$  pip install keras
```

Testing configuration

```python
$  python

>>> import keras
Using TensorFlow backend.

>>> keras.__version__
'2.2.4'
```

---

## Configuring Keras Backend

Linux / Mac :  `$HOME/.keras/keras.json`  
Windows : `%USERPROFILE%/.keras/keras.json`
```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```
Change the `backend` to "theano", "tensorflow", or "cntk"

Overwrite the config file by defining an environment variable `KERAS_BACKEND`
```bash
$  KERAS_BACKEND=tensorflow python -c "from keras import backend"

>  "Using TensorFlow backend."
```

---

## Keras Config Explained

```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```

- **image_data_format:**  
    - It specifies which data format convention Keras will follow. (keras.backend.image_data_format() returns it.)  
    - For 2D data (e.g. image), "channels_last" assumes (rows, cols, channels) while "channels_first" assumes (channels, rows, cols).
    - For 3D data, "channels_last" assumes (conv_dim1, conv_dim2, conv_dim3, channels) while "channels_first" assumes (channels, conv_dim1, conv_dim2, conv_dim3).
    - Values : "channels_last" or "channels_first".

---

## Keras Config Explained

```json
{
    "image_data_format": "channels_last",
    "epsilon": 1e-07,
    "floatx": "float32",
    "backend": "tensorflow"
}
```


- **epsilon:**
    - A numeric fuzzing constant used to avoid dividing by zero in some operations.

- **floatx:**
    - Default float precision.
    - Values: "float16", "float32", or "float64".

- **backend:**
    - Values: "tensorflow", "theano", or "cntk".

---

## Keras workflow

Here is a typical Keras workflow.  This is pretty common workflow for most neural networks

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="20%" style="background:white;"/>


---

## Keras Abstractions

- **Layer**
    - In DNN Layer is a group of neurons.
    - Keras provides many layers (more on this soon)

- **Model**
    - Model is a collection of Layers
    - Keras has two kinds of models - Sequential and Functional

- **Loss Functions**
    - Help network calculate the errors

- **Optimizer**
    - Helps with training

---

## Keras Layers

- Core layers
    - Dense
    - Dropout
- Convolutional Layer
- Pooling Layer
- Recurrent Layer
- Embedding Layer
- Merge Layer

Layers are defined in **`keras.layers`** package.

We are only going to look at few layers here.  
Refer to [Keras.io](keras.io) for complete details.

---
## Keras Core Layers : Dense

- A dense layer connects every neuron in this layer to every neuron in previous layer.

- If Layer 1 has 3 neurons and Layer 2 (dense layer) has 4 neurons, the total number of connections between Layer 1 and Layer 2 would be 12 (3 × 4)

- First layer need to know the input dimensions

<img src="../../assets/images/deep-learning/hidden-layer.png" alt="XXX image missing" style="width:30%;"/>

---
## Keras Core Layers : Dense

```python
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

Usage:
```python
from keras.layers import Dense

# has 32 neurons
# Takes input array of shape [*,16]
# output array shape [*,32]
d = Dense(32, input_shape=(16,)))
```

---

## Keras Core Layers : Dropout

- The dropout layer in DL helps reduce overfitting by introducing regularization and generalization

- The dropout layer drops out a few neurons or sets them to 0 and reduces computation in the training process.

```python
keras.layers.Dropout(rate, noise_shape=None, seed=None)
```

Usage:
```python
from keras.layers import Dropout

d = Dropout(rate = 0.1,seed=100)
```

---
## Keras Optimizers

- We can specify the optimizers by 'name' or initialize the respective classes for customization

- Choice of optimizers
    - SGD : Stochastic Gradient Descent Optimizer
    - Momentum / Nestrov
    - Adagrad
    - RMSProp
    - Adam

---

## Optimizer: SGD

```python
from keras.optimizers import SGD

sgd = SGD(lr=0.01,
          decay=1e-6,
          momentum=0.9,
          nesterov=True)  # using Nestrov momentum

model.compile(optimizer=sgd, loss='mean_squared_error')
```


- Arguments
    - `lr`: float >= 0. Learning rate.
    - `momentum`: float >= 0. Parameter that accelerates SGD in the relevant direction and dampens oscillations.
    - `decay`: float >= 0. Learning rate decay over each update.
    - `nesterov`: boolean. Whether to apply Nesterov momentum.

---

## Optimizer: Adagrad

```python
adagrad = keras.optimizers.Adagrad(lr=0.01,
                                   epsilon=None,
                                   decay=0.0)

model.compile(optimizer=adagrad, ...)
```

- Arguments
    - `lr`: float >= 0. Initial learning rate.
    - `epsilon`: float >= 0. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.


---

## Optimizer: RMSProp

```python
rmsprop = keras.optimizers.RMSprop(lr=0.001,
                                   rho=0.9,
                                   epsilon=None,
                                   decay=0.0)

model.compile(optimizer=rmsprop, ...)
```

- Arguments
    - `lr`: float >= 0. Learning rate.
    - `rho`: float >= 0.
    - `epsilon`: float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.

---

## Optimizer: Adam

```python
adam = keras.optimizers.Adam(lr=0.001,
                             beta_1=0.9,
                             beta_2=0.999,
                             epsilon=None,
                             decay=0.0,
                             amsgrad=False)

model.compile(optimizer=adam, ...)
```

- Arguments
    - `lr`: float >= 0. Learning rate.
    - `beta_1`: float, 0 < beta < 1. Generally close to 1.
    - `beta_2`: float, 0 < beta < 1. Generally close to 1.
    - `epsilon`: float >= 0. Fuzz factor. If None, defaults to K.epsilon().
    - `decay`: float >= 0. Learning rate decay over each update.
    - `amsgrad`: boolean. Whether to apply the AMSGrad variant of this algorithm from the paper "On the Convergence of Adam and Beyond".


---

## Keras Loss Functions

We will look at a few popular Loss functions.  
For full list see [Keras documentation](https://keras.io/losses/#available-loss-functions).

- Loss functions are defined in [keras.losses](https://keras.io/losses) package

- For Regressions:
    - Mean Squared Error
    - Mean Absolute Error
    - Mean Squared Logarithmic Error

- For Classifications:
    - Categorical Crossentropy
    - Binary Crossentropy

---

## Loss Functions (Regressions)

- **Mean Squared Error**

```python
    keras.losses.mean_squared_error(y_true, y_pred)
```
<img src="../../assets/images/deep-learning/mean-square-error.png" alt="mean-square-error" style="width:30%;"/>

-  **Mean Absolute Error**

```python
    keras.losses.mean_absolute_error(y_true, y_pred)
```

<img src="../../assets/images/deep-learning/mean-absolute-error.png" alt="mean-absolute-error" style="width:30%;"/>

---

## Loss Functions (Regressions)

- **MAPE – Mean absolute percentage error**

```python
keras.losses.mean_absolute_percentage_error
```

<img src="../../assets/images/deep-learning/3rd-party/mse_mape_eqs.png" alt="XXX image missing" style="width:30%;"/>

- **MSLE – Mean square logarithmic error**

```python
keras.losses.mean_squared_logarithmic_error
```

---

## Loss Functions  (Categorical)

-  **Binary Crossentropy**
    - Used when outcome is binary (yes/now,  0/1)

```
Loss = − [ y * log(p) + (1−y) * log(1−p) ]
```

```python
keras.losses.binary_crossentropy(y_true, y_pred)
```

- **Categorical Crossentropy**
    - Used for multi-class classifications (class-1, class-2, class-3  ..etc)

```python
keras.losses.categorical_crossentropy(y_true, y_pred)
```

<img src="../../assets/images/deep-learning/3rd-party/category-crossentrophy.png" alt="XXX image missing" style="width:30%;"/>

---


## Keras Models



---

## Keras Sequential Model

Here is the overall workflow for creating a Sequential model:

1. Import the sequential class from **`keras.models`**

2. Stack layers using the **`.add()`** method

3. Configure the learning process using the **`compile()`** method

4. Import the data

5. Train the model on the train dataset using the **`.fit()`** method

---

## Creating a Keras Sequential Model

- Let's create a simple model that will classify the classic IRIS dataset

- IRIS is a very simple dataset that has
    - 4 inputs (a,b,c,d),
    - and 3 output classes `label` (1,2,3)

| a   | b   | c   | d   | label |
|-----|-----|-----|-----|-------|
| 6.4 | 2.8 | 5.6 | 2.2 | 3     |
| 5.0 | 2.3 | 3.3 | 1.0 | 2     |
| 4.9 | 3.1 | 1.5 | 0.1 | 1     |

---

## Keras Sequential Model for Classifying IRIS

- We will have 2 dense layers
    - First layer will have 8 neurons, with 'ReLU' activation
    - Second layer will have 3 neurons with 'SoftMax' activation

<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="iris_feedforward_neural_network.png" style="width:70%;"/>


---

## Keras Sequential Model for Classifying IRIS

#### Step 1 : Define Model

```python
from keras.models import Sequential
from keras.layers import Dense

layer1 = Dense(8, input_dim=4, activation='relu')
layer2 = Dense(3, activation='softmax')

model = Sequential()
model.add(layer1)
model.add(layer2)
```

<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="keras tensorboard" style="width:40%;"/>

---
## Keras Sequential Model for Classifying IRIS

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="14%" style="float:right;background:white;" />

#### Step 1 : Define Model

```python
# shorter form
from keras.models import Sequential
from keras.layers import Dense

model = new Sequential()
model.add(Dense(8, input_dim=4, activation='relu'))
model.add(Dense(3, activation='softmax'))
```

<img src="../../assets/images/deep-learning/iris_feedforward_neural_network.png" alt="keras tensorboard" style="width:40%;"/>

---

## Keras Sequential Model for Classifying IRIS
<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="15%" style="float:right;background:white;" />

#### Step 2 : Compile the Model

```python
model.compile( optimizer = 'adam',
               loss = 'categorical_crossentropy',
               metrics = ['accuracy'] )
```

Parameters explained:
- Optimizer: one of 'adam', 'sgd', 'rmsprop'
- loss function : how to measure the loss/error  (regression / classification)
- metrics : what metrics to optimize for

---



## Keras Sequential Model for Classifying IRIS


#### Step 3 : Fit Model to Data (or Training)
Training might take a while depending on amont of data and model.

```python
## without validation
history = model.fit(train_X, train_y, epochs = 100, batch_size = 2**4)

## with validation
history = model.fit(train_X, train_y, epochs = 100, batch_size = 2**4,
validation_split=0.25)
```

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="10%" style="background:white;" />

---

## Keras Sequential Model for Classifying IRIS

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="15%" style="float:right;background:white;" />

#### Step 4 : Evaluate network
For this we will use test dataset.

```python
scores = model.evaluate(test_X, test_y)
print("\n%s: %.2f%%" % (model.metrics_names[1], scores[1]*100))

>> acc = 96%
```
---
## Keras Sequential Model for Classifying IRIS

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="15%" style="float:right;background:white;" />

#### Step 4.5 : Evaluate network
We will visualize the training progress

---

## Keras Visualizations

- In Keras we can visualize **models** and **training history**

- Models  are visualized using python plot library **graphviz**

- Training history can be visualized using python **matplotlib** or **Tensorboard**

---

## Visualizing a Model

```python
from keras.utils import plot_model

(plot_model(model, to_file='model.png',
           # following are optional parameters
           # with their default values
               show_shapes=False, # output shapes are shown?
               show_layer_names=True, # layer names are shown?
               expand_nested=False, # expand nested models into clusters?
               dpi=96  # image dpi
           ))
# to display this in Jupyter notebook
from IPython.display import Image
Image("model_plot.png")
```

<img src="../../assets/images/deep-learning/viz-model1.png" alt="nn workflow" width="30%" />


---

## Visualizing Training History 1

- The `fit()` method on a Keras Model returns a `History` object.

- The `History.history` attribute is a dictionary recording training loss values and metrics values at successive epochs,

- Also records  validation loss values and validation metrics values (if applicable).

```python
history = (model.fit(x, y,
                     validation_split=0.25, epochs=50,
                     batch_size=16, verbose=1))

```

---
## Visualizing Training History 1 - Accuracy

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
<img src="../../assets/images/deep-learning/viz-accuracy1.png" alt="XXX image missing" width="40%" style="background:white;"/>


---

## Visualizing Training History 1 - Loss

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
<img src="../../assets/images/deep-learning/viz-loss1.png" alt="XXX image missing" width="40%" style="background:white;"/>

---
## Training Accuracy & Loss

<img src="../../assets/images/deep-learning/viz-accuracy1.png" alt="XXX image missing" width="40%" style="background:white;"/>
<br clear="all" />
<img src="../../assets/images/deep-learning/viz-loss1.png" alt="XXX image missing" width="40%" style="background:white;"/>

---

## Visualizing Trainng History With Tensorboard (3)

Use Keras callback for saving your training and test metrics, as well as activation histograms for the different layers in your model

```python
(keras.callbacks.TensorBoard(log_dir='./logs',
                            histogram_freq=0,
                            write_graph=True,
                            write_images=False) )
```

Saved data can then be visualized with TensorBoad

```bash
$   tensorboard --logdir=/full_path_to_your_logs
```

See next slide for a visualization.

---

## Keras and Tensorboard

<img src="../../assets/images/deep-learning/tensorboard-keras.png" alt="XXX image missing" style="width:75%;"/>

---

## Lab

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%"/>


#### Overview
KERAS-1 : Simple Keras network to classify IRIS

#### Depends on
None

#### Runtime
15 mins

#### Instructions
Follow 'KERAS-1'
