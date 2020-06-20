# Monitoring Training

---

## Monitoring Training

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/classification-iris-viz-loss1.png" alt="XXX image missing" style="width:40%;float:right;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

* During training phase, network trains on **training data** and verified on **validation data**

* We can monitor the training progress via Learning Curve

* The **Learning Curve** usually includes 2 plots
    - **Train Learning Curve**: tracks how well the model is learning from training data
    - **Validation Learning Curve**: tracks how well the model is generalizing on validation data

---

## Model Overfit / Underfit / Goodfit

* During training a model **underfit**, **overfit** or **goodfit**

* **Underfit** is the model is not learning enough

* **Overfit** the model is basically memorizing data, instead of learning from it

* **Goodfit** is what we want

* **To instructor**: If appropriate, go through **ML-Concepts # Model Evaluation** section

---

## Underfitting

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/learning-curve-underfit-1.png" alt="XXX image missing" style="width:35%;float:right;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->
<img src="../../assets/images/deep-learning/learning-curve-underfit-3.png" alt="XXX image missing" style="width:35%;float:right;clear:both;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

* In this case the network isn't really learning much from training data

* In the top diagram, the loss is not decreasing.  
The network is no longer learning from training data

* In the bottom diagram, loss function is bouncing around; no improvement

* Causes:
    - The training data is too small; it is not providing enough information for the model to learn
    - The training dataset is not representative

* Possible fixes:
    - Get more training data, if possible
    - Try a more complex model

---

## Overfitting

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/learning-curve-overfit-1.png" alt="XXX image missing" style="width:35%;float:right;clear:both;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

* In this scenario the model is 'memorizing' training data instead of learning from it.

* The model will do well in training data (training loss will be lower (better))

* But the model will not do well with validation data (loss will be higher (worse))

* Here we see training loss is significantly better/lower than validation loss (that is higher)

* This is usually a reliable indication of overfitting

---
## Overfitting

<!-- TODO shiva -->
<img src="../../assets/images/deep-learning/learning-curve-overfit-1.png" alt="XXX image missing" style="width:35%;float:right;clear:both;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

* Causes:
    - Not enough training data

    - Not enough variety in  training data; the model doesn't have enough information to learn from; so it is simply memorizing it

    - The model is too complex

* Possible fixes:
    - Provide more training data

    - Increase the variety in training data

    - Simplify the model

    - Add a **dropout layer**

    - Add a **batch normalization layer**

---

## Preventing Overfitting

* **Instructor**: If time permits, review **DL-Concepts # Preventing Overfitting** section

---

## Goodfit

<!-- TODO shiva -->

<img src="../../assets/images/deep-learning/learning-curve-goodfit-1.png" alt="XXX image missing" style="width:40%;float:right;clear:both;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

* Here is a good example of **goodfit**

* Both training and validation losses are decreasing in tandem

* They are both smooth (no bouncing around) ; indicating a good convergence

* And there is no large gap between training/validation losses

---

##  Quiz: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:30%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->


* What do you think of this training?

* Answer next slide

<img src="../../assets/images/deep-learning/learning-curve-2.png" alt="XXX image missing" style="width:50%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

---
##  Answer: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:30%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->

* Here both training and validation losses are improving steadily

* But we stopped the training prematurely

* We should add more epochs the model can keep learning

<img src="../../assets/images/deep-learning/learning-curve-2.png" alt="XXX image missing" style="width:45%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

---
##  Quiz: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:25%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->


* What do you think of this training?

* Answer next slide

<img src="../../assets/images/deep-learning/learning-curve-3.png" alt="XXX image missing" style="width:50%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

---
##  Answer: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:30%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->



* Here both training and validation losses are not improving steadily

* They are bouncing around a lot

* Model is not stable

<img src="../../assets/images/deep-learning/learning-curve-3.png" alt="XXX image missing" style="width:50%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

---
##  Quiz: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:25%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->


* What do you think of this training?

* Validation is doing better than training!

* Answer next slide

<img src="../../assets/images/deep-learning/learning-curve-4.png" alt="XXX image missing" style="width:50%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->

---

##  Answer: Evaluate Training

<img src="../../assets/images/icons/quiz-icon.png" style="width:30%;float:right;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->

<!-- TODO shiva -->

* We are seeing better results for validation than training

* Means, the validation dataset is 'too simple'; so the model is doing better there

* Fixes:
    - Need better validation set

<img src="../../assets/images/deep-learning/learning-curve-4.png" alt="XXX image missing" style="width:40%;" /><!-- {"left" : 7.04, "top" : 1.01, "height" : 3.9, "width" : 2.93} -->
