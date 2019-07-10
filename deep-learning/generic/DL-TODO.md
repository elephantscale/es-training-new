# DL TODO
Misc. stuff to add to other slides



## ResNet-50
ResNet-50 is trained on a image set with multiple categories.

---




---



## Transfer Learning

- Imagine you want to learn how to play the ukulele. If you have no musical background, and you are starting fresh with the ukulele as your very first instrument, it'll take you a few months to get proficient at playing it. On the other hand, if you are accustomed to playing the guitar, it might just take a week, due to how similar the two instruments are. Taking the learnings from one task and fine-tuning them on a similar task is something we often do in real life. The more similar the two tasks are, the easier it is to adapt the learnings from one task to the other.

TODO Shiva:

<img src="../../assets/images/deep-learning/transfer-learning-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="100%" />
---

## Transfer Learning

TODO Shiva:

<img src="../../assets/images/deep-learning/transfer-learning-2.png" alt="XXX image missing" style="background:white;max-width:100%;" width="100%" />


---

## Transfer Learning

- Freeze lower layers, so their weights are fixed
    - they do not change during training

- Unfreeze higher layers
    - So their weights can be trained during training

- May add extra layers specific to our problem

---

## Caching the Frozen Layers

- Since frozen layer weights don't change, when an insfance of training data goes through, the output is the same

- So by caching the output, we can get huge speed boost

- Need a lot of memory though

---

## Organizing Training Data

- Download from  
`https://www.kaggle.com/c/dogs-vs-cats-redux-kernels-edition/download/train.zip`

- We need to divide the data into training / validation sets

- Keras can automatically assign the name of class using the folder name

- So a good folder structure is like this

```
data
├── train
│   ├── cat
│   │   ├── cat1.jpg
│   │   └── cat2.jpg
│   └── dog
│       ├── dog1.jpg
│       └── dog2.jpg
└── val
    ├── cat
    │   ├── cat3.jpg
    │   └── cat4.jpg
    └── dog
        ├── dog3.jpg
        └── dog4.jpg
```

- Keras processes the input data in the alphabetical order of the folder names. Since 'cat' comes before 'dog' alphabetically, our 1 class for prediction is 'cat'. For a multi-class task, we can apply the same concept and infer each class id based on the folder sort order.

---





## TRAINING PARAMETERS

With both the data and model ready, all we have left to do is train the model. This is also known as fitting the model to the data. For training any model, we need to pick a loss function, an optimizer, initial learning rate and a metric.

Loss function: The loss function is the objective being minimized. For example, in a task to predict house prices, the loss function could be the mean squared error.

Optimizer: This is an optimization algorithm that helps minimize the loss function. We'll choose Adam, one of the fastest optimizers out there.

Learning rate: This defines how quickly or slowly you update the weights during training. Choosing an optimal learning rate is crucial - a big value can cause the training process to jump around, missing the target. On the other hand, a tiny value can cause the training process to take ages to reach the target. We'll keep it at 0.001 for now.

Metric: Choose a metric to judge the performance of the trained model. Accuracy is a good explainable metric, especially when the classes are not imbalanced, i.e. roughly equal in size. Note that this metric is not used during training to maximize or minimize an objective.


--


---

Obscure trivia warning - MobileNet happens to use ReLu6 which has an upper bound with value 6. Standard ReLu, on the other hand, does not have an upper bound.

---

There are 3 questions we want to answer for each category (cat, dog):

Which images are we most confident about being a cat/dog?

Which images are we least confident about being a cat/dog?

Which images have incorrect predictions in spite of being highly confident?

---
