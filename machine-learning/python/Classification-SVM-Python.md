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
<!-- {"left" : 0.85, "top" : 2.55, "height" : 4.81, "width" : 12.1} -->

---

## Lab: SVM

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.77, "top" : 1.33, "height" : 5.75, "width" : 4.31} -->

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

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.07, "top" : 1.89, "height" : 2.69, "width" : 3.63} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.62, "top" : 4.8, "height" : 5.53, "width" : 8.31} -->
