# Logistic Classifier in Scikit-Learn

---

## Module Objectives

* Learn Logistic Regression

* Perform Logistic in Scikit

Notes:

---

# Logistic Regression

[../generic/Classification-Logistic-Regression.md](../generic/Classification-Logistic-Regression.md)

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
<!-- {"left" : 0.85, "top" : 2.52, "height" : 4.3, "width" : 12.64} -->

---

## Lab: Logistic Regression

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.84, "top" : 1.66, "height" : 5.57, "width" : 4.17} -->

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

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.84, "top" : 1.66, "height" : 5.57, "width" : 4.17} -->

* **Overview:**

    - Learn to do Cross Validation

* **Approximate Time:**

    - 30 mins

* **Instructions:**
    - **Cross Validation 1: Tuning the model**

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.07, "top" : 1.89, "height" : 2.69, "width" : 3.63} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.62, "top" : 4.8, "height" : 5.53, "width" : 8.31} -->
