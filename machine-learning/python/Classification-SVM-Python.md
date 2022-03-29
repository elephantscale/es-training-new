# SVM Classifier in Scikit-Learn

---

## Module Objectives

* Learn SVM algorithm

* Perform SVM in Scikit-Learn

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

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
