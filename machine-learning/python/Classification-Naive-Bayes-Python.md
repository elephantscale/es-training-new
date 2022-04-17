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
<!-- {"left" : 0.85, "top" : 2.58, "height" : 4.35, "width" : 10.61} -->

---

## Lab: Naïve Bayes

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.29, "top" : 1.39, "height" : 5.95, "width" : 4.47} -->

* **Overview:** Use Naïve Bayes implementation

* **Approximate Time:** 20-30 min.

* **Instructions:**

    - **NB1**: naive-bayes/NB1-Spam classification

    - BONUS: **NB2**: naive-bayes/NB2-Income classification

Notes:

---

## Lab: Evaluating Multiple Algorithms

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.29, "top" : 1.39, "height" : 5.95, "width" : 4.47} -->

* **Overview:**
    - We will use cross validation to evaluate multiple algorithms

* **Approximate Time:**
    - 30 mins

* **Instructions:**
    - **Cross Validation 3: Evaluate multiple algorithms**

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.07, "top" : 1.89, "height" : 2.69, "width" : 3.63} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.62, "top" : 4.8, "height" : 5.53, "width" : 8.31} -->
