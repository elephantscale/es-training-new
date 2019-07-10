# Trees in Python

---


## Lesson Objectives


 * Learn classification algorithms in Python 

Notes:

---

# Decision Trees (Classifier)

---

## Classification Trees in Python


 * Implemented by **sklearn.tree.DecisionTreeClassifier** (python)

 * Supports Binary and Multi-class Classification

Notes: 



---

## Decision Tree Sample Code (Python)
```python
from sklearn.tree.classification import Decision

# Load training data
training = pd.read_csv('...') 

dt= DecisionTreeClassifier(labelColumn='label', featuresCol = 'features')

# Fit the model
dtModel = dt.fit(training)
```
<!-- {"left" : 0, "top" : 1.1, "height" : 2.1, "width" : 10.25} -->


Notes: 

 


---

## Decision Trees Parameters (Classification)

| Parameter           | Description                                                          | Default Value |
|---------------------|----------------------------------------------------------------------|---------------|
| maxIter             | Max number of iterations                                             | 100           |
| maxDepth            | Max Depth of Tree                                                    | 5             |
| maxBins             | Max # of values for Categorical Variable                             | 3.2           |
| minInstancesPerNode | Each child node must have at least this number of training instances | 0.0           |
| minInfoGain         | Minimum Information Gain per split                                   |               |
| impurity            | 'gini' = Measure Gini impurity 'entropy' = measure entropy impurity  | "gini"        |
| featuresCol         | Which column as input features                                       | "features"    |
| predictionCol       | Output prediction column                                             | "prediction"  |
| labelCol            | Label Column                                                         | "label"       |

Notes: 




---

## Decision Tree Attributes
| Attribute            | Description                                   | type                |
|----------------------|-----------------------------------------------|---------------------|
| classes-             | Class label for output                        | Array of  str       |
| n-classes-           | Number of output classes                      | int or List of  int |
| n-features-          | Number of features                            | Int                 |
| n-outputs-           | Number of outputs                             | Int                 |
| Feature-importances- | Relative importance based on OOB observations | array[float]        |
| Tree-                | Underlying tree object                        | Tree                |

Notes: 



---

## Model Evaluation Sample Code (Python)

```python
 from sklearn.ml.evaluation import MultiClassClassificationEvaluator
 
 # select (prediction, true label) and compute test error
 evaluator = MulticlassClassificationEvaluator(labelCol="indexedLabel",\
  predictionCol="prediction", metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
<!-- {"left" : 0, "top" : 1.17, "height" : 2.13, "width" : 10.25} -->

Notes: 

 


---

## Model Output in Python

```
+--------------+--------------------+-----------+
|rawprediction |probability         |prediction |
+--------------+--------------------+-----------+
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
|[1961.0,75.0] |[0.96316306483300...|       0.0 |
+--------------+--------------------+-----------+
 
```
Notes: 



---

## Lab: Decision Tree Classification


 *  **Overview** : Work with Decision Tree algorithm

 *  **Approximate time** : 20-30 mins

 *  **Instructions** : 

     - Follow instructions for Python Python / Scala

     - `prosper loan` data, use Decision Tree classification to predict loan status

     - Navigate to `decisiontrees/3-randomf-election-regression.ipynb`
 

Notes: 

 


---

# Decision Trees (Regression)

---

## Regression Trees in Python


 * Implemented by  **sklearn.tree.DecisionTreeRegressor**    (python)

 * Allows us to do a regression (numeric) output column

Notes: 



---

## Decision Tree Sample Code (Python)
```python
from sklearn.tree import DecisionTreeRegressor
import pandas as pd

# Load training data
training = pd.read_csv(...)

dt= DecisionTreeRegressor(labelColumn='label', featuresCol = 'features')

# Fit the model
dtModel = dt.fit(training)
```
<!-- {"left" : 0, "top" : 1.17, "height" : 2.34, "width" : 10.25} -->

Notes: 

 


---

## DecisionTrees Parameters (Classification)

| **Parameter**     | **Description**                                                                    | **Default Value** |
|-------------------|------------------------------------------------------------------------------------|-------------------|
| criterion         | 'gini' for impurty vs. 'entropy' for information gain                              | `gini`            |
| max-features      | Maximum number of features to consider                                             | `auto`            |
| max-depth         | Maximum depth of each tree                                                         | `auto`            |
| min-samples-split | Min samples required to split in node                                              | 2                 |
| min-samples-leaf  | Min samples required to be leaf node                                               | 1                 |
| Class-weight      | How to weight input classes (default is to balance based on class value frequency) | `balance`         |
Notes: 

---

## Random Forest Attributes


| **Atribute**           | **Description**                               | **Type**           |
|------------------------|-----------------------------------------------|--------------------|
| estimators_            | Collection of trees                           | List of Estimators |
| classes_               | Class label for output                        | Array of str       |
| n-classes-             | Number of output classes                      | int or List of int |
| n-features-            | Number of features                            | Int                |
| n-outputs-             | Number of outputs                             | Int                |
| Feature-importances-   | Relative importance based on OOB observations | array[float]       |
| oob-score-             | Score metric based on OOB observations        | float              |
| oob-decision-function- | OOB decision function                         | 2-d array          |

Notes:
---

## Model Evaluation Sample Code (Python)
```python
from sklearn.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error 
evaluator = RegressionEvaluator(labelCol="indexedLabel", \
predictionCol="prediction", metricName="rmse")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
<!-- {"left" : 0, "top" : 1.17, "height" : 2.6, "width" : 10.25} -->

Notes: 

 


---

# Random Forest (Classifier)

---

## Random Forests in Python


 * Implemented by  **sklearn.ensemble.RandomForestClassifier**    (python)

 * Allows us to do a random forest.

Notes: 



---

## Random Forest Sample Code (Python)
```python
from sklearn.ensemble import RandomForestClassifer

# Load training datat
raining = pd.read_csv

rf = RandomForestClassifier(labelColumn='label', featuresCol = 'features')

# Fit the model
rfModel= rf.fit(training)
```
Notes: 

 


---

## Random Forest Parameters


 * All the same parameters as Decision Trees 

     - These parameters are run on a per-tree basis

 * numTrees

     - This is the number of trees to be trained

 * subSamplingRate

     - This is the rate (percentage) of data sampled the original data per tree

Notes: 



---

## RandomForest Parameters (Classification)


 * All the same parameters as Decision Trees 

     - These parameters are run on a per-tree basis

 * Additional Parameters


 |   **Parameter**   |                                   **Description**                                  | **Default Value** |
|:-----------------:|:----------------------------------------------------------------------------------:|:-----------------:|
| n_estimators      | Max Numbers of trees                                                               |         10        |
| criterion         | 'gini' for impurty vs. 'entropy' for information gain                              |       `gini`      |
| max_features      | Maximum number of features to consider                                             |       `auto`      |
| max_depth         | Maximum depth of each tree                                                         |       `auto`      |
| min_samples_split | Min samples required to split in node                                              |         2         |
| min_samples_leaf  | Min samples required to be leaf node                                               |         1         |
| Class_weight      | How to weight input classes (default is to balance based on class value frequency) |     `balance`     |

Notes: 



---

## Random Forest Parameters


 * All the same parameters as Decision Trees 

     - These parameters are run on a per-tree basis

 * n_estimators

     - This is the number of trees to be trained

 * subSamplingRate

     - This is the rate (percentage) of data sampled the original data per tree

Notes: 



---

## Random Forest Attributes

| **Attribute**          | **Description**                               | **Type**              |
|------------------------|-----------------------------------------------|-----------------------|
| estimators_            | Collection of trees                           | OOB decision function |
| classes_               | Class label for output                        | Array of  str         |
| n_classes_             | Number of output classes                      | int or List of  int   |
| n_features_            | Number of features                            | Int                   |
| n_outputs_             | Number of outputs                             | Int                   |
| Feature_importances_   | Relative importance based on OOB observations | array[float]          |
| oob_score_             | Score metric based on OOB observations        | float                 |
| oob_decision_function_ | OOB decision function                         | 2-d array             |

Notes: 



---

## Model Output in Python


```
+--------------------+--------------------+----------+
|         probability|       rawprediction|prediction|
+--------------------+--------------------+----------+
|[0.51021080634302...|[10.2042161268605...|       0.0|
|[0.06486703371183...|[1.29734067423667...|       2.0|
|[0.56770347232184...|[11.3540694464368...|       0.0|
|[0.89201623617251...|[17.8403247234502...|       0.0|
|[0.45421891667160...|[9.08437833343213...|       0.0|
|[0.83489325412351...|[16.6978650824702...|       0.0|
|[0.38250283196206...|[7.65005663924123...|       0.0|
|[0.35234467819467...|[7.04689356389342...|       0.0|

```

Notes: 



---

## Lab: Random Forest Classification


 *  **Overview**: Work with Random Forest for Classification

 *  **Approximate time**: 20-30 mins

 *  **Instructions**: 

     - Follow instructions for Python Python / Scala

     - Election contribution data, use Random Forest Classification to predict candidate in donation


Notes: 

 


---

# Random Forest (Regression)

---

## Random Forests in Python


 * Implemented by  **sklearn.ensemble.RandomForestRegressor**    (python)

 * Allows us to do a regression (numeric) output column

Notes: 



---

## Random Forest Sample Code (Python)
```python
from sklearn.ensemble import RandomForestRegressor

# Load training data
training = pd.read_csv('...') 

rf = RandomForestRegression(labelColumn='label', featuresCol = 'features')

# Fit the model
rfModel= rf.fit(training)
```
Notes: 

 


---

## RandomForest Parameters (Classification)


 * All the same parameters as Decision Trees 

     - These parameters are run on a per-tree basis

 * Additional Parameters


 | **Parameter**   | **Description**                            | **Default Value** |
|-----------------|--------------------------------------------|-------------------|
| numtrees        | Max Numbers of trees                       | 20                |
| subSamplingRate | Adjusts Sampling rate of data for boosting | 5                 |

Notes: 



---

## Model Evaluation Sample Code (Python)
```python
from sklearn.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error
evaluator = RegressionEvaluator(labelCol="indexedLabel", \
predictionCol="prediction", metricName="rmse")

 accuracy = evaluator.evaluate(predictions)

 print("Test Error = %g " % (1.0 - accuracy))
```
<!-- {"left" : 0, "top" : 1.17, "height" : 2.6, "width" : 10.25} -->

Notes: 

 


---

## Lab: Random Forest Regression


 *  **Overview**: Work with Random Forest for Regression

 *  **Approximate time**: 20-30 mins

 *  **Instructions**: 

     - Follow instructions for Python

     - Election contribution' data, use Random Forest Regression to predict amount donated

Notes: 

---