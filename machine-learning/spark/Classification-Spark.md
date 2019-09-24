# Classifications in Spark
---


## Lesson Objectives


 * Learn classification algorithms in Spark

Notes:

---

# Classification Generic

[../generic/Classification-Generic.md](../generic/Classification-Generic.md)



---

# SVM

---

## SVM Support in Spark


 * Implemented by  **pyspark.ml.classification.LinearSVC**    (python) **org.apache.spark.ml.classification.LinearSVC**   (Scala)

 * Currently supports binary classification.

     - More than 2 classes

 * Only supports linear classification (kernel SVM not supported).

Notes:



---

## SVM Parameters

| Parameter        | Description                                                      | Default Value |
|------------------|------------------------------------------------------------------|---------------|
| maxIter          | Max number of iterations for SGD  fitting                        | 100           |
| regParam         | Misclassification  penalty C                                     | 0             |
| tol              | Convergence tolerance                                            | 1e-6          |
| FitIntercept     | Whether or not to  fit the intercept as well as the coefficients | true          |
| threshold        | Minimum Information Gain per split                               | 0             |
| AggregationDepth | The number of features to aggregate                              | 2             |
| standardization  | Whether to standardize  before running model                     | true          |
| predictionCol    | Output  prediction column                                        | "prediction"  |
| labelCol         | Label  Column                                                    | "label"       |


Notes:



---

## SVM Sample Code (Python)
```python
 from pyspark.ml.classification import LinearSVC  
 # Load training data
 training = spark.read(...)
 lsvc = LinearSVC(maxIter=10, regParam=0.1)
 # Fit the model  
 lsvcModel = lsvc.fit(training)
 # Print the coefficients and intercept for linearsSVC
 print("Coefficients: " + str(lsvcModel.coefficients))
 print("Intercept: " + str(lsvcModel.intercept))
 ```

Notes:




---

## Model Evaluation Sample Code (Python)
```python
from pyspark.ml.evaluation import MultiClassClassificationEvaluator  
#select (prediction, true label) and compute test error

evaluator = MulticlassClassificationEvaluator(labelCol="indexedLabel", \
predictionCol="prediction", metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
<!-- {"left" : 0, "top" : 0.9, "height" : 2.13, "width" : 10.25} -->

Notes:




---

## Lab: SVM


 *  **Overview**: Work with SVM algorithm

 *  **Approximate time**: 20-30 mins

 *  **Instructions**:

     - Follow instructions for Spark Python / Scala

     - 'college-admission' data, use SVM to predict admission status

 *  **To Instructor**

     - Demo this lab on screen

Notes:




---

# Naïve Bayes

---
## Naïve Bayes Support in Spark


 * Implemented by  
 **pyspark.ml.classification.NaïveBayes**  (python)
 **org.apache.spark.ml.classification.NaïveBayes**  (Scala)

 * Mostly used for text classification

Notes:



---

## Naïve Bayes Parameters

| **Parameter** | **Description**                      | **Default Value** |
|---------------|--------------------------------------|-------------------|
| numIterations | Max number of iterations for fitting | 100               |
| modelType     | 'multinomial' or 'bernoulli'         | 'multinomial'     |
| lambda        | Lambda smoothing                     | 1                 |
| predictionCol | Output prediction column             | "prediction"      |
| labelCol      | Label Column                         | "label"           |


Notes:



---

## Naïve Bayes Sample Code (Python)
```python
from pyspark.ml.classification import NaïveBayes  
# Load training data
training = spark.read(...)
nb = NaïveBayes(training, 1.0, modelType='multinomial')
# Fit the model  
nbModel = nb.fit(training)
```
Notes:




---

## Model Evaluation Sample Code (Python)
```python
from pyspark.ml.evaluation import MultiClassClassificationEvaluator
# select (prediction, true label) and compute test error*

evaluator = MulticlassClassificationEvaluator(    labelCol="indexedLabel", \
predictionCol="prediction", metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Test Error = %g " % (1.0 - accuracy))
```
Notes:

---

## Naïve Bayes Example : College Admission


 * To Instructor <br/>
 Please walk through Naïve Bayes demo

Notes:



---

## Lab: Naïve Bayes


 *  **Overview**: Work with Naïve Bayes algorithm

 *  **Approximate time**: 20-30 mins

 *  **Instructions**:

     - Follow instructions for Spark Python / Scala

     - 'spam' data, use Naïve Bayes to predict SMS spam status


Notes:

---
