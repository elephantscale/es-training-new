# Decision Trees in Spark

<img src="../../assets/images/logos/spark-logo-1.png" style="width:20%;" />
<img src="../../assets/images/machine-learning/tree-model-3.png" style="width:70%"><!-- {"left" : 2.75, "top" : 2.75, "height" : 7.93, "width" : 12} -->

---

## Lesson Objectives

* Learn tree algorithms in Spark

Notes:

---

# Decision Trees

[../generic/Decision-Trees.md](../generic/Decision-Trees.md)

---

# Decision Trees in Spark

<img src="../../assets/images/logos/spark-logo-1.png" style="width:20%;" />
<img src="../../assets/images/machine-learning/tree-model-3.png" style="width:70%"><!-- {"left" : 2.75, "top" : 2.75, "height" : 7.93, "width" : 12} -->

---

## Trees in Spark

* Spark implements Decision trees for both classification and regression

* Classifiers support Binary and Multi-class Classification
    - **pyspark.ml.classification.DecisionTreeClassifier** (python)
    - **org.apache.spark.ml.classification.DecisionTreeClassifier** (Scala)

* Regressors:
    - **pyspark.ml.regression.DecisionTreeRegressor** (python)
    - **org.apache.spark.ml.regression.DecisionTreeRegressor** (Scala)

* [Reference](https://spark.apache.org/docs/latest/ml-classification-regression.html#decision-trees)

Notes:

---

## Decision Tree Classifier (Python)

```python
from pyspark.ml.classification import DecisionTreeClassifier
from pyspark.ml.evaluation import MultiClassClassificationEvaluator

# Load training data
(training, testing) = ...

dt = DecisionTreeClassifier()
# dt = DecisionTreeClassifier(maxDepth=10, maxBins=100)

# Fit the model
model = dt.fit(training)

# predict
predictions = model.transform(testing)

## evaluate
evaluator = MulticlassClassificationEvaluator(metricName="accuracy")
accuracy = evaluator.evaluate(predictions)

print("Accuracy = %g " , accuracy)
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 3.88, "width" : 14.41} -->

Notes:

---

## Decision Tree Classifier Parameters

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

<!-- {"left" : 0.31, "top" : 3, "height" : 6.99, "width" : 16.89} -->

Notes:

---

## Decision Tree Regressor (Python)

```python
from pyspark.ml.regression import DecisionTreeRegressor
from pyspark.ml.evaluation import RegressionEvaluator

## Load training data
(training,testing) = ...

dt = DecisionTreeRegressor ()
# dt = DecisionTreeRegressor(maxDepth=10, maxBins=100)

## Fit the model
model = dt.fit(training)

## predict
predictions = model.transform(test)

## Evaluate
evaluator = RegressionEvaluator(metricName="rmse")
rmse = evaluator.evaluate(predictions)

print("RMSE = %g " , rmse)
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 3.98, "width" : 14.79} -->

Notes:

---

## Decision Tree Regressor Parameters

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

<!-- {"left" : 0.88, "top" : 3.03, "height" : 6.33, "width" : 15.74} -->

Notes:

---

## Lab: Decision Trees

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.52, "top" : 1.44, "height" : 5.76, "width" : 4.32} -->

* **Overview**
    - Create a classification decision tree

* **Approximate Time** 30 mins

* **Instructions**
    - **DT-1: college-admission**
    - **DT-2: prosper-loans**  (see following slides for details on Prosper dataset)

<img src="../../assets/images/logos/prosper-logo-2.png" style="width:30%;"><!--{"left" : 1.16, "top" : 6.91, "height" : 1.4, "width" : 5.97} -->

Notes:

---

## About the Prosper Dataset

 <img src="../../assets/images/logos/prosper-logo-2.png" style="width:30%; float:right"/><!-- {"left" : 10.5, "top" : 1.89, "height" : 1.57, "width" : 6.67} -->

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

<!-- {"left" : 1.14, "top" : 2.79, "height" : 6.81, "width" : 15.21, "columnwidth" : [1.9, 5.7, 2, 5.61]} -->

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?


