# Logistic Classifier in Scikit-Learn

---

## Module Objectives

* Learn Logistic Regression

* Perform Logistic in Scikit

Notes:

---

# Logistic Regression

[../generic/Regression-Logistic.md](../generic/Regression-Logistic.md)

---

# Logistic Regression in Scikit-Learn

---

## Logistic Regression in Scikit-Learn

```python
from sklearn.datasets import load_iris
from sklearn.linear_model import LogisticRegression

X, y = load_iris(return_X_y=True)
clf = LogisticRegression(random_state=0, solver='lbfgs',
                         multi_class='multinomial').fit(X, y)

predictions = clf.predict(X[:2, :])

clf.score(X, y)
# 0.97

```
<!-- {"left" : 0, "top" : 1.3, "height" : 3.49, "width" : 10.25} -->

---

## Lab: Logistic Regression

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 7.11, "top" : 0.85, "height" : 3.78, "width" : 2.83} -->

* **Overview:**
    - Practice Logistic Regression

* **Approximate Time:**
    - 30 mins

* **Instructions:**
    - **LOGIT-1: Credit card approval (single variable)**
    - **LOGIT-2: College Admission (multiple variables)**

Notes:

---

## Lab: Cross Validation: Hyper Parameter Tuning

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 7.11, "top" : 0.85, "height" : 3.78, "width" : 2.83} -->

* **Overview:**

    - Learn to do Cross Validation

* **Approximate Time:**

    - 30 mins

* **Instructions:**
    - **Cross Validation 1: Tuning the model**

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
