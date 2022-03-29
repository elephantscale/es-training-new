# Naive Bayes Classifier in Scikit-Learn

---

## Module Objectives

* Learn Naive Bayes algorithm

* Naive Bayes

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

* **Overview:**
    - We will use cross validation to evaluate multiple algorithms

* **Approximate Time:**
    - 30 mins

* **Instructions:**
    - **Cross Validation 3: Evaluate multiple algorithms**

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
