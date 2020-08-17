# Trees in Spark

---

## Lesson Objectives


 * Learn tree algorithms in Spark

Notes:

---

## Decision Trees

[../generic/Decision-Trees-1.md](../generic/Decision-Trees-1.md)

---

# Decision Trees in Spark

---

## Classification Trees in Spark


 * Implemented by  
    - __pyspark.ml.classification.DecisionTreeClassifier__ (python)
    - __org.apache.spark.ml.classification.DecisionTreeClassifier__ (Scala)

 * Supports Binary and Multi-class Classification

Notes:



---

## Decision Tree Classifier in Spark ML (Python)

<!-- TODO shiva -->
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

<!-- TODO shiva -->
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

<!-- TODO shiva -->
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

| Parameter       | Description                                                      | Default Value |
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

<!-- TODO shiva -->
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

## Lab: Decision Trees

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


 *  **Overview**
 Create a classification decision tree

 *  **Approximate Time** 30 mins

 *  **Instructions**

     -  **DT-1: college-admission**

     -  **DT-2: prosper-loans**  
     (see following slides for details on Prosper dataset)

<img src="../../assets/images/logos/prosper-logo-2.png" style="width:30%;"><!--{"left" : 2.81, "top" : 5.85, "height" : 1.08, "width" : 4.62} -->


Notes:

---

## About the `Prosper` Dataset

 <img src="../../assets/images/logos/prosper-logo-2.png" style="width:30%; float:right"/><!-- {"left" : 7.32, "top" : 1.12, "height" : 0.63, "width" : 2.68} -->

 * https://www.prosper.com/

 * America's first peer-to-peer lending marketplace

     - 2 million +  members

     - $ 2 B + in  funded loans

 * Dataset is public

     - 113,937 loans with 81 variables



Notes:



---

## Variables in the Prosper Dataset

| #     | Name                      |Name     | #                      |
|-------|---------------------------|---------|------------------------|
| 1     | ListingKey                |2        | ListingNumber          |
| 3     | ListingCreationDate       |4        | CreditGrade            |
| 5     | Term                      |6        | LoanStatus             |
| 7     | ClosedDate                |8        | BorrowerAPR            |
| 9     | BorrowerRate              |10       | LenderYield            |
| 11    | EstimatedEffectiveYield   |12       | EstimatedLoss          |
| 13    | EstimatedReturn           |14       | ProsperRating..numeric |
| 15    | ProsperRating..Alpha      |16       | ProsperScore           |
| 17    | ListingCategory..numeric  |18       | BorrowerState          |
| 19    | Occupation                |20       | EmploymentStatus       |
| 21    | EmploymentStatusDuration  |22       | IsBorrowerHomeowner    |
| 23    | CurrentlyInGroup          |...      | And so on, till #81    |

Notes:

---


## Random Forests

[../generic/Decision-Trees-2-Random-Forest.md](../generic/Decision-Trees-2-Random-Forest.md)

---

# Random Forests in Spark

---

## Random Forests in Spark


 * Implemented by  
    - __pyspark.ml.regression.RandomForestClassifier__    (python)
    - __org.apache.spark.ml.regression.RandomForestClassifier__  (Scala)

Notes:



---

## Random Forest Sample Code (Python)

<!-- TODO shiva -->
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

<!-- TODO shiva -->
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


 | Parameter      | Description                                | Default Value  |
|-----------------|--------------------------------------------|-------------------|
| numtrees        | Max Numbers of trees                       | 20                |
| subSamplingRate | Adjusts Sampling rate of data for boosting | 5                 |

<!-- {"left" : 0.25, "top" : 2.83, "height" : 1.69, "width" : 9.75} -->

Notes:



---

## Model Evaluation Sample Code (Python)

<!-- TODO shiva -->
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

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->


* Let's go over what we have covered so far

* Any questions?

---

## Lab: Random Forest

<img src="../../assets/images/icons/individual-labs.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="25%"/><!--{"left" : 7.23, "top" : 1, "height" : 3.9, "width" : 2.92} -->

 *  **Overview**

 *  **Approximate Time** 30 mins

 *  **Instructions** 

     - RF1: Prosper loan data (classification)

     - RF2: Election contribution data (classification)

     - RF3: Election contribution data (regression)

Notes:



