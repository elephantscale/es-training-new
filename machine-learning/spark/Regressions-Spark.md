# Regressions in Spark

<img src="../../assets/images/logos/spark-logo-1.png" style="width:30%;"/>
<img src="../../assets/images/machine-learning/linear-regression-plot-1.png" style="width:40%;"/><!-- {"left" : 2.39, "top" : 2.61, "height" : 8.48, "width" : 12.71} -->

---

# Regressions Intro

[../generic/Regressions-Intro.md](../generic/Regressions-Intro.md)

---

# Linear Regression in Spark

---

## Regression Algorithms In Spark ML

| Algorithms                       |                                                        | Class / Package                                                 |
|----------------------------------|--------------------------------------------------------|-----------------------------------------------------------------|
| Linear Regression                |                                                        | org.apache.spark.ml.regression. **LinearRegression**            |
| Generalized  Linear Models (GLM) | -  Logistic  Regression   <br /> -  Poisson Regression | org.apache.spark.ml.regression. **GeneralizedLinearRegression** |

<!-- {"left" : 1.1, "top" : 3.45, "height" : 1, "width" : 15.3} -->

Notes:

---

## LinearRegression Parameters

| Parameter        | Function                    | Description                                                                                                                                                                                                       | Default Value |
|------------------|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| maxIter          | setMaxIter(Int)             | Max number of iterations                                                                                                                                                                                          | 100           |
| regParam         | setRegParam(Double)         | Regulation parameter                                                                                                                                                                                              | 0.0           |
| elasticNetParam | setElasticNetParam (Double) | ElasticNet mixing parameter.  Range 0 to 1.<br /> - For alpha = 0, the penalty is an L2 penalty<br /> - For alpha = 1, it is an L1 penalty<br /> - For alpha in (0,1), the penalty is a combination of L1 and L2. | 0.0  (L2)     |
| featuresCol      | setFeaturesCol ()           | Which column as input features                                                                                                                                                                                    | "features"    |
| predictionCol    | setPredictionCol ()         | Output prediction column                                                                                                                                                                                          | "prediction"  |

<!-- {"left" : 0.41, "top" : 2.39, "height" : 1, "width" : 16.73, "columnwidth" : [2.46, 3.86, 8.19, 2.22]} -->

Notes:

---

## Example: Tip Calculation

* Now our tip data includes total bill amount too!

* Do you see any correlation?

<img src="../../assets/images/machine-learning/bill-tip-1.png" alt="Session-Regressions-in-Spark-Example-Tip-Calculation-0.png" style="width:76%;"/><!-- {"left" : 2.97, "top" : 3.73, "height" : 5.96, "width" : 11.57} -->

Notes:

---

## Linear Regression in Spark (Scala)

```scala
import org.apache.spark.ml.regression.LinearRegression  

// Load training data
val training = spark.read.....  

val lr = new LinearRegression()  
.setMaxIter(10)  
.setRegParam(0.3)  
.setElasticNetParam(0.8)    

// Fit the model
val lrModel = lr.fit(training)  

// Print the coefficients and intercept for linear regression
println(s"Coefficients: ${lrModel.coefficients} Intercept: ${lrModel.intercept}")  

// Summarize the model over the training set and print out some metrics
val trainingSummary = lrModel.summary
println(s"numIterations: ${trainingSummary.totalIterations}")
println(s"objectiveHistory: [${trainingSummary.objectiveHistory.mkString(",")}]")
trainingSummary.residuals.show()
println(s"RMSE: ${trainingSummary.rootMeanSquaredError}")
println(s"r2: ${trainingSummary.r2}")
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 6.67, "width" : 14.09} -->

Notes:

---

## Linear Regression in Spark (Python)

```python
import pandas as pd
from pyspark.ml.regression import LinearRegression
from pyspark.ml.feature import VectorAssembler

## Create a pandas df
tip_data = pd.DataFrame({     
     'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
     'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]    
     })

## Convert it to spark dataframe
spark_tips = spark.createDataFrame(tip_data)

## Create a feature vector
assembler = VectorAssembler(inputCols=["bill"], outputCol="features")
featureVector = assembler.transform(spark_tips)

##  Run Linear regression
lr = LinearRegression()
lrModel = lr.fit(featureVector)

## Print out coefficients!
intercept = lrModel.intercept    # This is the intercept  
slope = lrModel.coefficients[0]  # This is the slope

## Print out model metrics
print("RMSE: %f" % lrModel.summary.rootMeanSquaredError)  # RMSE: 1.413302
print("r2: %f" % lrModel.Summary.r2) # r2: 0.902517
```
<!-- {"left" : 0.85, "top" : 2.74, "height" : 3.61, "width" : 14.06} -->

---

## Lab: Linear Regressions

<img src="../../assets/images/icons/individual-labs.png" style="width:30%;float:right;" /><!-- {"left" : 12.68, "top" : 1.89, "height" : 5.68, "width" : 4.27} -->

* **Overview:**
    - Practice Linear Regressions

* **Approximate Time:**
    - 30 mins

* **Instructions:**
     - Instructor: Please demo this lab
     - LR-1: Bill and Tips data

Notes:

---

# Multiple Linear Regression

[../generic/Regressions-Linear-Multi.md](../generic/Regressions-Linear-Multi.md)

---

# Multiple Linear Regression in Spark

---

## Task: Calculate House Prices

| Sale Price $ | Bedrooms | Bathrooms | Sqft_Living | Sqft_Lot |
|--------------|----------|-----------|-------------|----------|
| 280,000      | 6        | 3         | 2,400       | 9,373    |
| 1,000,000    | 4        | 3.75      | 3,764       | 20,156   |
| 745,000      | 4        | 1.75      | 2.060       | 26,036   |
| 425,000      | 5        | 3.75      | 3,200       | 8,618    |
| 240,000      | 4        | 1.75      | 1,720       | 8,620    |
| 327,000      | 3        | 1.5       | 1,750       | 34,465   |
| 347,000      | 4        | 1.75      | 1,860       | 14,650   |

<!-- {"left" : 1.17, "top" : 2.5, "height" : 4.01, "width" : 15.15} -->

  * Multiple factors decide house prices

  * It is not a simple  Y ~ X any more

  * We will use **multiple linear regression**

Notes:



---


## Multiple Linear Regression in Spark


  * __spark.ml.LinearRegression__ supports MLR out of the box

  * When creating a featureVector, we will have multiple columns are input

     - ["Bedrooms", "Bathrooms", "SqFtTotLiving", "SqFtLot"]

     - Order doesn't matter

Notes:



---

## Multiple Linear Regression in Spark

```python
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from pyspark.ml.regression import LinearRegression
from pyspark.ml.feature import VectorAssembler

housePrices = spark.read.csv("/data/house-prices/house-sales-full.csv", header=True, inferSchema=True)
housePrices.show()
## too many attributes / columns

## select a few attributes
housePrices_compact = housePrices_compact.show()
housePrices.select("SalePrice", "Bedrooms", "Bathrooms", "SqFtTotLiving", "SqFtLot")

housePrices_compact.count() ## 27,063 observations

```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 4.17, "width" : 15.95} -->


Notes:



---

## Multiple Linear Regression in Spark


```text
Row count = 27063


+---------+--------+---------+-------------+-------+
|SalePrice|Bedrooms|Bathrooms|SqFtTotLiving|SqFtLot|
+---------+--------+---------+-------------+-------+
|   280000|       6|      3.0|         2400|   9373|
|  1000000|       4|     3.75|         3764|  20156|
|   745000|       4|     1.75|         2060|  26036|
|   425000|       5|     3.75|         3200|   8618|
|   240000|       4|     1.75|         1720|   8620|
|   349900|       2|      1.5|          930|   1012|
|   327500|       3|      1.5|         1750|  34465|
|   347000|       4|     1.75|         1860|  14659|
|   220400|       2|      1.0|          990|   5324|
|   437500|       4|      2.0|         1980|  10585|
|   150000|       2|      1.0|          840|  12750|
|   300000|       3|      1.0|         1750|   5200|
+---------+--------+---------+-------------+-------+

```
<!-- {"left" : 0.85, "top" : 2.43, "height" : 7.52, "width" : 12.2} -->

Notes:



---

## Multiple Linear Regression in Spark

```python
assembler = VectorAssembler(inputCols=["Bedrooms", "Bathrooms",
                    "SqFtTotLiving", "SqFtLot"],
                    outputCol="features")

featureVector = assembler.transform(housePrices_compact)
featureVector = featureVector.withColumnRenamed("SalePrice", "label")
# display 10 rows and all column data without truncating
featureVector.show(10,False)

```
<!-- {"left" : 0.85, "top" : 2.49, "height" : 2.98, "width" : 14.02} -->


```text
+-------+--------+---------+-------------+-------+-------------------------+
|label  |Bedrooms|Bathrooms|SqFtTotLiving|SqFtLot|features                 |
+-------+--------+---------+-------------+-------+-------------------------+
|280000 |6       |3.0      |2400         |9373   |[6.0,3.0,2400.0,9373.0]  |
|1000000|4       |3.75     |3764         |20156  |[4.0,3.75,3764.0,20156.0]|
|745000 |4       |1.75     |2060         |26036  |[4.0,1.75,2060.0,26036.0]|
|425000 |5       |3.75     |3200         |8618   |[5.0,3.75,3200.0,8618.0] |
|240000 |4       |1.75     |1720         |8620   |[4.0,1.75,1720.0,8620.0] |
|349900 |2       |1.5      |930          |1012   |[2.0,1.5,930.0,1012.0]   |
|327500 |3       |1.5      |1750         |34465  |[3.0,1.5,1750.0,34465.0] |
|347000 |4       |1.75     |1860         |14659  |[4.0,1.75,1860.0,14659.0]|
|220400 |2       |1.0      |990          |5324   |[2.0,1.0,990.0,5324.0]   |
|437500 |4       |2.0      |1980         |10585  |[4.0,2.0,1980.0,10585.0] |
+-------+--------+---------+-------------+-------+-------------------------+
only showing top 10 rows

```
<!-- {"left" : 0.85, "top" : 5.84, "height" : 4.51, "width" : 13.06} -->

Notes:



---

## Multiple Linear Regression in Spark


```python
lr = LinearRegression(maxIter=10, regParam=0.3, elasticNetParam=0.8)
lrModel = lr.fit(featureVector)
print("Coefficents:" + str(lrModel.coefficients))
print("Intercept: " + str(lrModel.intercept))
print("RMSE: %f" % lrModel.summary.rootMeanSquaredError)
print("r2: %f" % lrModel.summary.r2)
print("numIterations: %d" % lrModel.summary.totalIterations)
print("objectiveHistory: %s" % str(lrModel.summary.objectiveHistory))
```
<!-- {"left" : 0.85, "top" : 1.76, "height" : 2.53, "width" : 11.89} -->

```text
Coefficents:[-69405.457812,25714.1481078,274.458312769,-0.0]
Intercept: 105562.58117252712

RMSE: 246442.225880
r2: 0.483214

numIterations: 11
objectiveHistory: [0.5000000000000002, 0.4565457266170319, 0.3376986997173243,
0.30010335871879656, 0.2852977093323423, 0.27654782886180707, 0.2701349132960898,
0.26332624819112604, 0.26138384191458414, 0.25967594157902535, 0.25839392000729794]

```
<!-- {"left" : 0.85, "top" : 4.35, "height" : 3.05, "width" : 13.96} -->


<br/>

 *  **Question for the class:**
    - Is this model a good fit? Explain!

Notes:



---

### Multiple Linear Regression in Spark - Let's Do Some Predictions


```python
new_data = pd.DataFrame({'Bedrooms' : [5,3,2],
                         'Bathrooms' : [3,2,1.5],
                         'SqFtTotLiving' : [4400, 1800, 1550],
                         'SqFtLot' : [10000, 5000, 4000]
                        })
new_data_spark = spark.createDataFrame(new_data)
new_featureVector = assembler.transform(new_data_spark)
new_featureVector.show(10,False)

predicted_prices = lrModel.transform(new_featureVector)
predicted_prices.show(10, False)
```
<!-- {"left" : 0.85, "top" : 2.13, "height" : 3.89, "width" : 12.48} -->

```text
# output: new_feature_vector
+---------+--------+-------+-------------+------------------------+
|Bathrooms|Bedrooms|SqFtLot|SqFtTotLiving|features                |
+---------+--------+-------+-------------+------------------------+
|3.0      |5       |10000  |4400         |[5.0,3.0,4400.0,10000.0]|
|2.0      |3       |5000   |1800         |[3.0,2.0,1800.0,5000.0] |
|1.5      |2       |4000   |1550         |[2.0,1.5,1550.0,4000.0] |
+---------+--------+-------+-------------+------------------------+

```
<!-- {"left" : 0.85, "top" : 6.23, "height" : 2.75, "width" : 12.48} -->

```text
# output: predicted_prices
+---------+--------+-------+-------------+------------------------+------------------+
|Bathrooms|Bedrooms|SqFtLot|SqFtTotLiving|features                |prediction        |
+---------+--------+-------+-------------+------------------------+------------------+
|3.0      |5       |10000  |4400         |[5.0,3.0,4400.0,10000.0]|1043294.3126218329|
|2.0      |3       |5000   |1800         |[3.0,2.0,1800.0,5000.0] |442799.46693731495|
|1.5      |2       |4000   |1550         |[2.0,1.5,1550.0,4000.0] |430733.2725030012 |
+---------+--------+-------+-------------+------------------------+------------------+

```
<!-- {"left" : 0.85, "top" : 9.14, "height" : 2.15, "width" : 12.48} -->

Notes:



---

## Lab: Multiple Linear Regression

<img src="../../assets/images/icons/individual-labs.png" style="width:30%;float:right;" /><!-- {"left" : 12.47, "top" : 1.89, "height" : 5.97, "width" : 4.48} -->

 *  **Overview:**
    - Practice Multiple Linear Regressions

 *  **Approximate Time:**
    - 30 mins

 *  **Instructions:**
    - LR-2: House prices
    - BONUS Lab: LR-3: AIC

Notes:

---


# Regularization

[../generic/ML-Concepts-Regularization.md](../generic/ML-Concepts-Regularization.md)

---
## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.28, "top" : 1.89, "height" : 2.71, "width" : 3.67} -->


- Let's go over what we have covered so far

- Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.49, "top" : 4.71, "height" : 5.67, "width" : 8.51} -->
