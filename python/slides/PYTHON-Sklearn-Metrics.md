# Python Sklearn: Metrics 

---

## Lesson Objectives
 * Understand Evaluation
 * Types of Evaluation

---

# Model Evaluation 

---

## What is Model Evaluation?
 * We can't just "run and forget"
 
 * Models may be worthless!
 
 * How do we know our model is working?
 
 * How do we compare models?


Notes:

---

# Regression Models 

---

## Evaluating a Regression Model

 * We can use the following:
   - Explained Variance
   - Mean Absolute Error (MAE)
   - Mean Squared Error (MSE)
   - R-Squared (R2)
   
 * We will talk about each one



Notes:

---

## Explained Variance

 * Computes the explained variance regression
 
 * Basically same as r-squared for linear model

<img src="../../assets/images/data-analysis-python/3rd-party/math01.png" alt="math01.png" style="width:30%;"/><!-- {"left" : 2.97, "top" : 2.69, "height" : 0.46, "width" : 4.31} -->

```python
from sklearn.metrics import explained_variance_score
explained_variance_score(y_true, hy_pred)
```
<!-- {"left" : 0.0, "top" : 3.77, "height" : 0.87, "width" : 10.25} -->

Notes:

$F(\theta) = \int r\,g(r)\,\ln f(r;\theta)$

---


## Mean Absolute Error

 * Mean Absolute Error is different than MSE
 
 * Take absolute value of each error and take the mean of that.


<img src="../../assets/images/data-analysis-python/3rd-party/math02.png" alt="math02.png" style="width:40%;"/><!-- {"left" : 2.57, "top" : 2.78, "height" : 0.7, "width" : 5.12} -->


```python
# python
from sklearn.metrics import mean_absolute_error

```
<!-- {"left" : 0.0, "top" : 3.99, "height" : 0.7, "width" : 10.25} -->


Notes:

`$\mathrm{MAE} = \frac{\sum_{i=1}^n\left| y_i-x_i\right|}{n} =\frac{\sum_{i=1}^n\left| e_i \right|}{n}$`

---



## Mean Squared Error

 * MSE is the mean of the squared errors (residual)
 * The mean squared error is defined as the following:


<img src="../../assets/images/data-analysis-python/3rd-party/math03.png" alt="math03.png" style="width:30%;"/><!-- {"left" : 3.02, "top" : 2.69, "height" : 0.5, "width" : 4.21} -->


```python
from sklearn.metrics import mean_squared_error_score

```
<!-- {"left" : 0.0, "top" : 3.88, "height" : 0.57, "width" : 9.44} -->

Notes:

`$\operatorname{MSE}=\frac{1}{n}\sum_{i=1}^n(Y_i-\hat{Y_i})^2$`

---

# Classification
---

## Accuracy

 * The Accuracy Score is simply ratio of correct to total.
 
 * Does not consider class balance.



Notes:

---

## Accuracy can Lie!

 * Accuracy is the most deceptive evaluation
 
 * Class Balance can affect results.
 
 * Imagine a test for a rare medical condition
   - Only 1% of tested have the condition.
   - Let's say your accuracy is 99.0%
   - Is that good?
   - **NO!!** It could be always "negative"
   
 * Need to balance other factors



Notes:

---

## Accuracy in Scikit-Learn

 * Here is how we do accuracy in Scikit-Learn
 * Returns number from 0.0 to 1.0

```python
from sklearn.metrics import accuracy_score
accuracy_score(y_test, predicted)
```
<!-- {"left" : 0.0, "top" : 2.56, "height" : 1.05, "width" : 10.16} -->

Notes:

---

## Classification Report

 * Classification Report Gives us a lot!
 * Includes:
   - Accuracy
   - F1 Score
   - Precision
   - Recall



Notes:

---

## Classification Report in Python

 * Here is how we do classification report:

```python
from sklearn.metrics import classification_report
classification_report(y_test, predicted)
```
<!-- {"left" : 0.0, "top" : 1.87, "height" : 0.93, "width" : 10.25} -->


Notes:



