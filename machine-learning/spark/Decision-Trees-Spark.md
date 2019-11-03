# Trees in Spark

---

## Lesson Objectives


 * Learn classification algorithms in Spark

Notes:




---

## Decision Trees

[../generic/Decision-Trees-Generic.md#Decision Trees](../generic/Decision-Trees-Generic.md#Decision Trees)

---

## Classification Trees in Spark


 * Implemented by  
    - __pyspark.ml.classification.DecisionTreeClassifier__ (python)
    - __org.apache.spark.ml.classification.DecisionTreeClassifier__ (Scala)

 * Supports Binary and Multi-class Classification

Notes:



---

## Decision Tree Classifier in Spark ML (Python)

```python
from pyspark.ml.classification import DecisionTreeClassifier

# Load training data
(training, testing) = ...

dt= DecisionTreeClassifier(labelColumn='label', featuresCol = 'features')

# Fit the model
model = dt.fit(training)

predictions = model.transform(testing)
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.1, "width" : 10.25} -->

Notes:




---

## Decision Trees Parameters (Classification)

| Parameter       | Description                                                      | Default Value |
|---------------------|----------------------------------------------------------------------|-------------------|
| maxIter             | Max number of iterations                                             | 100               |
| maxDepth            | Max Depth of Tree                                                    | 5                 |
| maxBins             | Max # of values for Categorical Variable                             | 32                |
| minInstancesPerNode | Each child node must have at least this number of training instances | 0.0               |
| minInfoGain         | Minimum Information Gain per split                                   |                   |
| impurity            | 'gini' = Measure Gini impurity 'entropy' = measure entropy impurity  | `gini`            |
| featuresCol         | Which column as input features                                       | "features"        |
| predictionCol       | Output prediction column                                             | "prediction"      |
| labelCol            | Label  Column                                                        | "label"           |

<!-- {"left" : 0.25, "top" : 1.27, "height" : 6.53, "width" : 9.75} -->

Notes:




---

## Model Evaluation Sample Code (Python)

```python
from pyspark.ml.evaluation import MultiClassClassificationEvaluator

# select (prediction, true label) and compute test error
evaluator = MulticlassClassificationEvaluator(labelCol="indexedLabel",
            predictionCol="prediction", metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Accuracy = %g " , accuracy)
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.13, "width" : 10.25} -->

Notes:





---


## Regression Trees in Spark ML


 * Implemented by  
    - __pyspark.ml.regression.DecisionTreeRegressor__ (python)
    - __org.apache.spark.ml.regressionRegressor__  (Scala)

 * Allows us to do a regression (numeric) output column

Notes:



---

## Decision Tree Regressor in Spark ML (Python)

```python
from pyspark.ml.classification import DecisionTreeRegressor

# Load training data
(training,testing) = ...

dt= DecisionTreeRegressor (labelColumn='label', featuresCol = 'features')

# Fit the model
model = dt.fit(training)

predictions = model.transform(test)
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.31, "width" : 10.25} -->

Notes:




---

## DecisionTrees Parameters (Regressor)

| **Parameter**       | **Description**                                                      | **Default Value** |
|---------------------|----------------------------------------------------------------------|-------------------|
| maxIter             | Max number of iterations                                             | 100               |
| maxDepth            | Max Depth of Tree                                                    | 5                 |
| maxBins             | Max # of values for Categorical Variable                             | 32                |
| minInstancesPerNode | Each child node must have at least this number of training instances | 0.0               |
| minInfoGain         | Minimum Information Gain per split                                   |                   |
| impurity            | '                                                                    | `variance`        |
| featuresCol         | Which column as input features                                       | "features"        |
| predictionCol       | Output prediction column                                             | "prediction"      |
| labelCol            | Label Column                                                         | "label"           |

<!-- {"left" : 0.25, "top" : 1.27, "height" : 6.05, "width" : 9.75} -->

Notes:



---

## Model Evaluation Sample Code (Python)

```python
from pyspark.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error
evaluator = RegressionEvaluator(labelCol="indexedLabel",
predictionCol="prediction", metricName="rmse")

accuracy = evaluator.evaluate(predictions)

print("Accuracy = %g " , accuracy)
```
<!-- {"left" : 0, "top" : 1.34, "height" : 2.9, "width" : 10.11} -->

Notes:




---

# Random Forests

---

## Random Forest

[../generic/Decision-Trees-Generic.md#Random Forest](../generic/Decision-Trees-Generic.md#Random Forest)

---

## Random Forests in Spark


 * Implemented by  
    - __pyspark.ml.regression.RandomForestClassifier__    (python)
    - __org.apache.spark.ml.regression.RandomForestClassifier__  (Scala)

Notes:



---

## Random Forest Sample Code (Python)

```python
from pyspark.ml.classification import RandomForestClassifer

# Load training data
(training, testing) = ...

rf = RandomForestClassifier(labelColumn='label', featuresCol = 'features')

# Fit the model
model= rf.fit(training)

predictions = model.transform(test)
```
<!-- {"left" : 0, "top" : 1.34, "height" : 2.71, "width" : 10.25} -->

Notes:




---


## RandomForest Parameters (Classification)


 * All the same parameters as Decision Trees

     - These parameters are run on a per-tree basis

 * Additional Parameters


| Parameter   | Description                          | Default Value |
|-----------------|--------------------------------------------|-------------------|
| numtrees        | Max Numbers of trees                       | 20                |
| subSamplingRate | Adjusts Sampling rate of data for boosting | 5                 |

<!-- {"left" : 0.25, "top" : 2.83, "height" : 1.69, "width" : 9.75} -->

Notes:



---



## Random Forest Classifier in Spark


* Implemented by  
  - **pyspark.ml.regression.RandomForestRegressor** (python)
  - **org.apache.spark.ml.regression.RandomForestRegressor**  (Scala)


Notes:



---

## Random Forest Sample Code (Python)

```python
from pyspark.ml.classification import RandomForestRegressor

# Load training data
(training, test) = ...

rf = RandomForestRegression(labelColumn='label', featuresCol = 'features')

# Fit the model
model = rf.fit(training)

predictions = model.transform(test)
```
<!-- {"left" : 0, "top" : 1.3, "height" : 2.71, "width" : 10.25} -->


Notes:




---

## RandomForest Parameters (Classification)


 * All the same parameters as Decision Trees

     - These parameters are run on a per-tree basis

 * Additional Parameters


 | Parameter   | Description                            | Default Value |
|-----------------|--------------------------------------------|-------------------|
| numtrees        | Max Numbers of trees                       | 20                |
| subSamplingRate | Adjusts Sampling rate of data for boosting | 5                 |

<!-- {"left" : 0.25, "top" : 2.83, "height" : 1.69, "width" : 9.75} -->

Notes:



---

## Model Evaluation Sample Code (Python)
```python
from pyspark.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error
evaluator = RegressionEvaluator(labelCol="indexedLabel",
                predictionCol="prediction",
                metricName="rmse")

accuracy = evaluator.evaluate(predictions)

print("Accuracy = %g " , accuracy)
```
<!-- {"left" : 0, "top" : 1.2, "height" : 3.19, "width" : 10.25} -->

Notes:
