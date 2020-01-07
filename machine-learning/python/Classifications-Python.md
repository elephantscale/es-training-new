# Classifications in Python Scikit-Learn

---


## Lesson Objectives

 * Learn classification algorithms in Python
 * Logistic Regression
 * SVM (Support Vector Machines)
 * Naive Bayes

Notes:

---

## Classification Intro

[../generic/Classification-Intro.md](../generic/Classification-Intro.md)

---

## Logistic Regression

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

## SVM

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


<img src="../../assets/images/icons/individual-labs.png" style="width:30%;float:right;"/><!-- {"left" : 6.45, "top" : 1.39, "height" : 4.36, "width" : 3.27} -->


---


## Naïve Bayes

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

