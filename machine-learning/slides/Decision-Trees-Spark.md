# Trees in Spark

---

## Lesson Objectives


 * Learn classification algorithms in Spark 

Notes: 

 


---

# Decision Trees (Classifier)

---

## Classification Trees in Spark


 * Implemented by  
 
 **pyspark.ml.classification.DecisionTreeClassifier** (python) 
 
 **org.apache.spark.ml.classification.DecisionTreeClassifier** (Scala)

 * Supports Binary and Multi-class Classification

Notes: 



---

## Decision Tree Sample Code (Python)
```python
from pyspark.ml.classification import DecisionTreeClassifier

# Load training data
training = spark.read(...) 

dt= DecisionTreeClassifier(labelColumn='label', featuresCol = 'features')

# Fit the model
dtModel = dt.fit(training)
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.1, "width" : 10.25} -->

Notes: 

 


---

## Decision Trees Parameters (Classification)

| **Parameter**       | **Description**                                                      | **Default Value** |
|---------------------|----------------------------------------------------------------------|-------------------|
| maxIter             | Max number of iterations                                             | 100               |
| maxDepth            | Max Depth of Tree                                                    | 5                 |
| maxBins             | Max # of values for Categorical Variable                             | 32                |
| minInstancesPerNode | Each child node must have at least this number of training instances | 0.0               |
| minInfoGain         | Minimum Information Gain per split                                   |                   |
| impurity            | ‘gini’ = Measure Gini impurity ‘entropy’ = measure entropy impurity  | `gini`            |
| featuresCol         | Which column as input features                                       | "features"        |
| predictionCol       | Output prediction column                                             | "prediction"      |
| labelCol            | Label  Column                                                        | "label"           |

Notes: 




---

## Model Evaluation Sample Code (Python)

```python
from pyspark.ml.evaluation import MultiClassClassificationEvaluator

# select (prediction, true label) and compute test error
evaluator = MulticlassClassificationEvaluator(labelCol="indexedLabel", \
 predictionCol="prediction", metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.13, "width" : 10.25} -->

Notes: 

 


---

## Model Output in Spark

```
+-------------+--------------------+----------+ 
|rawprediction|probability         |prediction|
+-------------+--------------------+----------+
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
|[1961.0,75.0]|[0.96316306483300...|       0.0|
+-------------+--------------------+----------+

```

Notes: 



---

## Lab: Decision Tree Classification


 *  **Overview**: Work with Decision Tree algorithm

 *  **Approximate time**: 20-30 mins

 *  **Instructions**: 

     - Follow instructions for Spark Python / Scala

     - 'prosper loan' data, use Decision Tree classification to predict loan status

     - Navigate to 'decisiontrees/3-randomf-election-regression.ipynb


Notes: 

 


---

# Decision Trees (Regression)

---

## Regression Trees in Spark


 * Implemented by  
 
 **pyspark.ml.regression.DecisionTreeRegressor** (python) 

 **org.apache.spark.ml.regressionRegressor**  (Scala)

 * Allows us to do a regression (numeric) output column

Notes: 



---

## Decision Tree Sample Code (Python)
```python
from pyspark.ml.classification import DecisionTreeRegressor

# Load training data
training = spark.read(...) dt= DecisionTreeRegressor
(labelColumn='label', featuresCol = 'features')

# Fit the model
dtModel = dt.fit(training)
```
<!-- {"left" : 0, "top" : 1.18, "height" : 2.31, "width" : 10.25} -->

Notes: 

 


---

## DecisionTrees Parameters (Classification)

| **Parameter**       | **Description**                                                      | **Default Value** |
|---------------------|----------------------------------------------------------------------|-------------------|
| maxIter             | Max number of iterations                                             | 100               |
| maxDepth            | Max Depth of Tree                                                    | 5                 |
| maxBins             | Max # of values for Categorical Variable                             | 32                |
| minInstancesPerNode | Each child node must have at least this number of training instances | 0.0               |
| minInfoGain         | Minimum Information Gain per split                                   |                   |
| impurity            | ‘                                                                    | `variance`        |
| featuresCol         | Which column as input features                                       | "features"        |
| predictionCol       | Output prediction column                                             | "prediction"      |
| labelCol            | Label Column                                                         | "label"           |

Notes: 



---

## Model Evaluation Sample Code (Python)
```python
from pyspark.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error 
evaluator = RegressionEvaluator(labelCol="indexedLabel", 
predictionCol="prediction", metricName="rmse")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
Notes: 

 


---

# Random Forest (Classifier)

---

## Random Forests in Spark


 * Implemented by  
 
 **pyspark.ml.regression.RandomForestClassifier**    (python) 
 
 **org.apache.spark.ml.regression.RandomForestClassifier**  (Scala)

 * Allows us to do a regression (numeric) output column

Notes: 



---

## Random Forest Sample Code (Python)
```python
from pyspark.ml.classification import RandomForestClassifer

# Load training data
training = spark.read(...) 

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


| **Parameter**   | **Description**                            | **Default Value** |
|-----------------|--------------------------------------------|-------------------|
| numtrees        | Max Numbers of trees                       | 20                |
| subSamplingRate | Adjusts Sampling rate of data for boosting | 5                 |

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

## Model Output in Spark

```
+--------------------+--------------------+----------+
|probability         |rawprediction       |prediction|
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

     - Follow instructions for Spark Python / Scala

     - Election contribution' data, use Random Forest Classification to predict candidate in donation

Notes: 

 


---

# Random Forest (Regression)

---

## Random Forests in Spark


 * Implemented by  
 
 **pyspark.ml.regression.RandomForestRegressor**    (python)

 **org.apache.spark.ml.regression.RandomForestRegressor**  (Scala)

 * Allows us to do a regression (numeric) output column

Notes: 



---

## Random Forest Sample Code (Python)
```python
from pyspark.ml.classification import RandomForestRegressor

# Load training data
training = spark.read(...) 
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
from pyspark.ml.evaluation import RegressionEvaluator

# select (prediction, true label) and compute test error
evaluator = RegressionEvaluator(labelCol="indexedLabel",
predictionCol="prediction", metricName="rmse")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
Notes: 

 


---

## Lab: Random Forest Regression


 *  **Overview** : 
 
 Work with Random Forest for Regression

 *  **Approximate time** : 
 
 20-30 mins

 *  **Instructions** : 

     - Follow instructions for Spark Python / Scala

     - Election contribution' data, use Random Forest Regression to predict amount donated

Notes: 

---