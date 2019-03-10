# Keras Linear

---

# Linear Models in Neural Networks

[Introducing Linear](../generic/DL-Linear.md)

---

# Keras Models

---

## Keras Models Intro

- Models are defined in `keras.models` package

```python
from keras.models import Model
from keras.layers import Input, Dense

a = Input(shape=(32,))
b = Dense(32)(a)
model = Model(inputs=a, outputs=b)
```

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

---

## Keras workflow

Here is a typical Keras workflow.  This is pretty common workflow for most neural networks

<img src="../../assets/images/deep-learning/nn-workflow.png" alt="nn workflow" width="20%" style="background:white;"/>


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

- Arguments
    - **optimzer** : optimizer name ('adam', 'sgd') or optimizer instance
    - **loss** : loss function name or instance
    - **metrics** : metrics to evaluate during training/testing  
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

- This method does training

- Arguments
    - x : training input data (numpy array or list of numpy arrays)
    - y : training target data (numpy array)
    - batch_size : integer, usually powers of two (default = 32)
    - epochs : integer, how many times to go through data
    - verbose : 0 or 1 or 2  (0 = silent, 1 = progress bar, 2 = one line per epoch)

---

## Evaluate

- Measures performance metrics (loss values) for testing data

```python
evaluate(x=None, y=None,
         batch_size=None, verbose=1,
         sample_weight=None, steps=None, callbacks=None)
```

- Arguments
    - x : test data inputs (numpy array(s) )
    - y : test data labels (numpy array(s) )
    - batch_size : integer, usually powers of two (default = 32)
    - verbose: 0 or 1. Verbosity mode. 0 = silent, 1 = progress bar.

---

## Predict

```python
predictions = predict(x, batch_size=None,
                      verbose=0, steps=None, callbacks=None)
```

- Arguments
    - x: The input data, as a Numpy array (or list of Numpy arrays if the model has multiple inputs).
    - batch_size: Integer. If unspecified, it will default to 32.
    - verbose: Verbosity mode, 0 or 1.

---

# Defining a Keras Sequential Model

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

---

## Final Thoughts
