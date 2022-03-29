# SVM Classifier in Spark

---

## Lesson Objectives

* Understand SVM (Support Vector Machines) classification
* Perform SVM in Spark

Notes:

---

# SVM

[../generic/Classification-SVM.md](../generic/Classification-SVM.md)

---

# SVM in Spark

---

## SVM Support in Spark

* Implemented by  **pyspark.ml.classification.LinearSVC** (python) **org.apache.spark.ml.classification.LinearSVC**   (Scala)

* Currently supports binary classification.

* Currently supports linear classification

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

<!-- {"left" : 0.6, "top" : 2.5, "height" : 7.27, "width" : 16.29} -->

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
<!-- {"left" : 0.85, "top" : 2.5, "height" : 5.07, "width" : 13.12} -->

Notes:

---

## Model Evaluation Sample Code (Python)

```python
from pyspark.ml.evaluation import MultiClassClassificationEvaluator  

evaluator = MulticlassClassificationEvaluator(
                labelCol="indexedLabel",
                predictionCol="prediction",
                metricName="accuracy")

accuracy = evaluator.evaluate(predictions)

print("Accuracy = %g " , accuracy)
# 0.76
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 3.87, "width" : 13.63} -->

Notes:

---

## Lab: SVM

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.05, "top" : 1.38, "height" : 6.23, "width" : 4.68} -->

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

