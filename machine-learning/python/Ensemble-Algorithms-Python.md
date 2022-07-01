# Ensemble Algorithms in Python

<img src="../../assets/images/logos/scikit-learn-logo-1.png" style="width:30%;"/>

---

## Lesson Objectives

* Learn ensemble algorithms in Python

Notes:

---

## Random Forests

[../generic/Random-Forest.md](../generic/Random-Forest.md)

---

# Random Forests in Scikit

<img src="../../assets/images/logos/scikit-learn-logo-1.png" style="width:30%;"/>
<img src="../../assets/images/machine-learning/random-forest-2.png" style="width:20%">

---

## Random Forests in Python

* Classifier

```python
from sklearn.ensemble import RandomForestClassifer

# 20 subtrees
rf = RandomForestClassifier(n_estimators=20)

# Fit the model
model = rf.fit(x_train, y_train)
```
<!-- {"left" : 0.85, "top" : 2.62, "height" : 2.79, "width" : 12.54} -->

<br/>

* Regression

```python
from sklearn.ensemble import RandomForestRegressor

# 20 subtrees
rf = RandomForestRegression(n_estimators=20)

# Fit the model
model = rf.fit(x_train, y_train)
```
<!-- {"left" : 0.85, "top" : 6.45, "height" : 3.41, "width" : 12.42} -->

Notes:

---

## Random Forest Parameters

* n_estimators: This is the number of trees to be trained

* All the same parameters as Decision Trees
  - These parameters are run on a per-tree basis

<br />

 |   Parameter      |                                     Description                                    |   Default Value   |
|:-----------------:|:----------------------------------------------------------------------------------:|:-----------------:|
| n_estimators      | Max Numbers of trees                                                               |         10        |
| criterion         | 'gini' for impurity vs. 'entropy' for information gain                             |       `gini`      |
| max_features      | Maximum number of features to consider                                             |       `auto`      |
| max_depth         | Maximum depth of each tree                                                         |       `auto`      |
| min_samples_split | Min samples required to split in node                                              |         2         |
| min_samples_leaf  | Min samples required to be leaf node                                               |         1         |
| Class_weight      | How to weight input classes (default is to balance based on class value frequency) |     `balance`     |

<!-- {"left" : 0.35, "top" : 4.62, "height" : 1, "width" : 16.81} -->

Notes:

---

## Random Forest Attributes

|   Attribute            |   Description                                 |    Type               |
|------------------------|-----------------------------------------------|-----------------------|
| estimators_            | Collection of trees                           | OOB decision function |
| classes_               | Class label for output                        | Array of  str         |
| n_classes_             | Number of output classes                      | int or List of  int   |
| n_features_            | Number of features                            | Int                   |
| n_outputs_             | Number of outputs                             | Int                   |
| feature_importances_   | Relative importance based on OOB observations | array[float]          |
| oob_score_             | Score metric based on OOB observations        | float                 |
| oob_decision_function_ | OOB decision function                         | 2-d array             |

<!-- {"left" : 0.47, "top" : 2.5, "height" : 1, "width" : 16.55} -->

Notes:

---

## Model Evaluation For Classifier

```python
model.score(x_test, y_test)
# output:  0.72

from sklearn.metrics import accuracy_score
accuracy_score(y_test, y_pred)
# output: 0.72

## Confusion matrix
from sklearn.metrics import confusion_matrix

cm = confusion_matrix(y_test, y_pred)
print(cm)
# array([[10,  3],
#        [ 2,  5]])
```
<!-- {"left" : 0.85, "top" : 2.56, "height" : 6.03, "width" : 11.21} -->

---

## Feature Importance

* Random Forest can tell us which feature was influential in determining outcome

* In this example, we see `StatedMonthlyIncome` is a very important feature

```python
print (model.feature_importances_)
# output : array([0.44220925, 0.47501859, 0.08277217])


## pretty print
fi = pd.DataFrame({'feature' : input_columns, 'importantance' : model.feature_importances_})
print (fi)
```

```text
               feature  importantance
 0             EmpIndex       0.040567
 1          CreditScore       0.135828
 2  StatedMonthlyIncome       0.712424
 3        CategoryIndex       0.111181
```
<!-- {"left" : 0.85, "top" : 3.96, "height" : 4.14, "width" : 16.38} -->

---

## Lab: Random Forest

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;" /><!--{"left" : 12.83, "top" : 1, "height" : 5.7, "width" : 4.27} -->

 *  **Overview**

 *  **Approximate Time** 30 mins

 *  **Instructions** 

     - RF1: Prosper loan data (classification)

     - RF2: Election contribution data (classification)

     - RF3: Election contribution data (regression)

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 12.85, "top" : 2.01, "height" : 3.04, "width" : 4.09} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.63, "top" : 5.46, "height" : 5.48, "width" : 8.24} -->

