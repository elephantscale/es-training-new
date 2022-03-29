# Classifications in Scikit-Learn

---


## Lesson Objectives

 * Learn classification algorithms in Python
 * Logistic Regression
 * SVM (Support Vector Machines)
 * Naive Bayes

Notes:

---

# Classification Intro

[../generic/Classification-Intro.md](../generic/Classification-Intro.md)

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

 *  **Overview:**

     - Practice Logistic Regression

 *  **Approximate Time:**

     - 30 mins

 *  **Instructions:**
    -  **LOGIT-1: Credit card approval (single variable)**
    -  **LOGIT-2: College Admission (multiple variables)**

Notes:

---

## Lab: Cross Validation: Hyper Parameter Tuning

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 7.11, "top" : 0.85, "height" : 3.78, "width" : 2.83} -->

 *  **Overview:**

    - Learn to do Cross Validation

 *  **Approximate Time:**

    - 30 mins

 *  **Instructions:**
     -  **Cross Validation 1: Tuning the model**


Notes:

---

# SVM

[../generic/Classification-SVM.md](../generic/Classification-SVM.md)

---

# SVM in Scikit-Learn

---
## SVM in Scikit-Learn

```python
from sklearn.svm import LinearSVC
from sklearn.datasets import make_classification

X, y = make_classification(n_features=4, random_state=0)
clf = LinearSVC(random_state=0, tol=1e-5)
clf.fit(X, y)

print(clf.coef_)
print(clf.intercept_)

predictions = clf.predict (X)

clf.score(X,y)

```
<!-- {"left" : 0, "top" : 1.3, "height" : 4.07, "width" : 10.25} -->

---
## Lab: SVM

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Work with SVM algorithm

* **Approximate time:**
    - 20-30 mins

* **Instructions:**

    - SVM1 - 'college-admission' data

    - SVM2 - Customer churn data


Notes:

---

# Naïve Bayes

[../generic/Classification-Naive-Bayes.md](../generic/Classification-Naive-Bayes.md)

---

# Naïve Bayes in Scikit-Learn

---

## Naïve Bayes in Scikit-Learn

* Sci-kit has following Naive Bayes implementations
    - Gaussian:
    - Multinomial
    - Bernoulli

---

## Gaussian Naive Bayes in Scikit-Learn

```python
from sklearn import datasets
from sklearn.naive_bayes import GaussianNB

iris = datasets.load_iris()
gnb = GaussianNB()
gnb.fit(iris.data, iris.target)

predictions = gnb.predict(iris.data)

gnb.score(iris.data, iris.target)

```
<!-- {"left" : 0, "top" : 1.34, "height" : 3.19, "width" : 7.78} -->

---

## Lab: Naïve Bayes

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.93, "top" : 0.94, "height" : 3.77, "width" : 2.83} -->


* **Overview:** Use Naïve Bayes implementation

* **Approximate Time:** 20-30 min.

* **Instructions:**

    - **NB1**: naive-bayes/NB1-Spam classification

    - BONUS: **NB2**: naive-bayes/NB2-Income classification

Notes:

---

## Lab: Evaluating Multiple Algorithms

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 7.11, "top" : 0.85, "height" : 3.78, "width" : 2.83} -->

 *  **Overview:**

    - We will use cross validation to evaluate multiple algorithms

 *  **Approximate Time:**

    - 30 mins

 *  **Instructions:**
     -  **Cross Validation 3: Evaluate multiple algorithms**


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
