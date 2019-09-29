
# Logistic Regression in Spark

---

## Logistic Algorithms in Spark ML


 * Supports

     - Binomial Logistic Regression (binary outcomes, yes/no)

     - Multinomial Logistic Regression (predicts K possible outcomes)

 * Implementation (new ML package)

     - org.apache.spark.ml.classification.LogisticRegression

Notes:



---

## LogisticRegression Parameters

| Parameter | Function            | Description                                                                                                                                                                                                                                                                                       | Default Value |
|-----------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| maxIter   | setMaxIter(Int)     | Max number of iterations                                                                                                                                                                                                                                                                          | 100           |
| regParam  | setRegParam(Double) | Regulation parameter                                                                                                                                                                                                                                                                              | 0.0           |
| family    | setFamily(String)   | -binomial: Binary logistic regression with pivoting <br/>- multinomial: Multinomial logistic (softmax) regression without pivoting  <br/>- auto: Automatically select the family based on the number of classes: If numClasses == 1 OR numClasses == 2, set to binomial. Else, set to multinomial | "auto"        |


Notes:



---

## LogisticRegression Parameters

| Parameter        | Function                    | Description                                                                                                                                                                                                 | Default Value |
|------------------|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| elasticNetPa ram | setElasticNetParam (Double) | ElasticNet mixing parameter.  Range 0 to 1.<br/>- For alpha = 0, the penalty is an L2 penalty<br/>- For alpha = 1, it is an L1 penalty<br/>- For alpha in (0,1), the penalty is a combination of L1 and L2. | 0.0  (L2)     |
| featuresCol      | setFeaturesCol ()           | Which column as input features                                                                                                                                                                              | features      |
| predictionCol    | setPredictionCol ()         | Output prediction column                                                                                                                                                                                    | prediction    |

Notes:



---

### Example: Applying for Credit Card


 * Here is historical data on credit score and if the credit application is approved

 * What is the chance someone with score of  **700**  getting a credit card approved?

 | Credit Score | Approved? |
 |--------------|-----------|
 | 560          | No        |
 | 750          | Yes       |
 | 680          | Yes       |
 | 650          | No        |
 | 450          | No        |
 | 800          | Yes       |
 | 775          | Yes       |
 | 525          | No        |
 | 620          | No        |
 | 705          | No        |
 | 830          | Yes       |
 | 610          | Yes       |
 | 690          | No        |

Notes:

Image credit : (CC) : https://www.flickr.com/photos/cafecredit/27321078025


---

## Plotting Credit Approval Data

<img src="../../assets/images/machine-learning/credit-approval-1.png" style="max-width:70%"/>


Notes:



---

## Logistic Regression in Spark ML Code (Python) 1/4

```
import numpy as np
import pandas as pd
from pyspark.ml.classification import LogisticRegression
from pyspark.ml.feature import VectorAssembler

mydata = pd.DataFrame({
            'score' : [550, 750, 680, 650, 450, 800, 775, 525, 620, 705, 830, 610, 690],
            'approved' : [0,1,1,0,0,1,1,0,0,0,1,1,0]
            })
credit_data = spark.createDataFrame(mydata)
```

* Converting a Pandas dataframe into Spark dataframe

Notes:



---

## Logistic Regression in Spark ML Code (Python) 2/4


 ```
 assembler = VectorAssembler(inputCols=["score"], outputCol="features")
 featureVector = assembler.transform(credit_data)
 featureVector = featureVector.withColumn("label",featureVector.approved)
 featureVector.show()
```

```text
+--------+-----+--------+-----+
|approved|score|features|label|
+--------+-----+--------+-----+
|       0|550.0| [550.0]|    0|
|       1|750.0| [750.0]|    1|
|       1|680.0| [680.0]|    1|
|       0|650.0| [650.0]|    0|
|       0|450.0| [450.0]|    0|
|       1|800.0| [800.0]|    1|
|       1|775.0| [775.0]|    1|
|       0|525.0| [525.0]|    0|
|       0|620.0| [620.0]|    0|
|       0|705.0| [705.0]|    0|
|       1|830.0| [830.0]|    1|
|       1|610.0| [610.0]|    1|
|       0|690.0| [690.0]|    0|
+--------+-----+--------+-----+

```

Notes:



---

## Logistic Regression in Spark ML Code (Python) 3/4


```
lr = LogisticRegression(maxIter=50, regParam=0.3, elasticNetParam=0.8)

# Fit the model
lrModel = lr.fit(featureVector)

# Print the coefficients and intercept for logistic regression
print("Coefficients: " + str(lrModel.coefficients))
print("Intercept: " + str(lrModel.intercept))
```

```text
Coefficients: [0.00231936473739]
Intercept: -1.697546464447156

```

Notes:



---

## Logistic Regression in Spark ML Code (Python) 4/4

```
 lrModel.summary.predictions.show()
```

```text
+--------+-----+--------+-----+--------------------+--------------------+----------+
|approved|score|features|label|       rawPrediction|         probability|prediction|
+--------+-----+--------+-----+--------------------+--------------------+----------+
|       0|550.0| [550.0]|  0.0|[0.42189585888523...|[0.60393682312240...|       0.0|
|       1|750.0| [750.0]|  1.0|[-0.0419770885918...|[0.48950726855595...|       1.0|
|       1|680.0| [680.0]|  1.0|[0.12037844302514...|[0.53005832166779...|       0.0|
|       0|650.0| [650.0]|  0.0|[0.18995938514670...|[0.54734755549913...|       0.0|
|       0|450.0| [450.0]|  0.0|[0.65383233262376...|[0.65787354968202...|       0.0|
|       1|800.0| [800.0]|  1.0|[-0.1579453254610...|[0.46059555225819...|       1.0|
|       1|775.0| [775.0]|  1.0|[-0.0999612070264...|[0.47503048656856...|       1.0|
|       0|525.0| [525.0]|  0.0|[0.47987997731987...|[0.61771953276060...|       0.0|
|       0|620.0| [620.0]|  0.0|[0.25954032726826...|[0.56452329070847...|       0.0|
|       0|705.0| [705.0]|  0.0|[0.06239432459051...|[0.51559352260997...|       0.0|
|       1|830.0| [830.0]|  1.0|[-0.2275262675826...|[0.44336255743359...|       1.0|
|       1|610.0| [610.0]|  1.0|[0.28273397464212...|[0.57021636641005...|       0.0|
|       0|690.0| [690.0]|  0.0|[0.09718479565129...|[0.52427709405754...|       0.0|
+--------+-----+--------+-----+--------------------+--------------------+----------+

```

 *  **Question for the class:** Notice when the prediction differs from actual ('approved')

Notes:



---

## Evaluating Logistics Regression


 * We are going to use ROC curve / Area-Under-Curve measure to evaluate the logistic model

 *  **Note to instructor:** Jump off point to  **ML-Concepts.pptx**


<img src="../../assets/images/machine-learning/ROC-04-AUC-2.png" style="width:60%"/>

Notes:



---

## Logistic Regression in Spark ML Code (Python) 4/4

```
 trainingSummary = lrModel.summary
 print("areaUnderROC: " + str(trainingSummary.areaUnderROC))  
 ## 0.8571428571428571

 roc_df = trainingSummary.roc.toPandas()
 plt.plot(roc_df['FPR'], roc_df['TPR'])
 plt.xlabel("FPR")
 plt.ylabel("TPR")
 plt.title("ROC Curve")
 plt.plot([0.0, 1.0], [0.0, 1.0], 'r')
```


 * 0 <= AUC <= 1.0

 * Here AUC = 0.857

 * Pretty good !


 <img src="../../assets/images/machine-learning/3rd-party/Session-Regressions-in-Spark-Logistic-Regression-in-Spark-ML-Code-Python-4-4-0.png" style="width:40%;margin-top:-150px"/>



Notes:



---

## Prediction

```
newdata = pd.DataFrame({'score' : [600, 700, 810] })
print(newdata)

spark_newdata = spark.createDataFrame(newdata)
newfeatures = assembler.transform(spark_newdata)
predicted = lrModel.transform(newfeatures)
predicted.show(10, False)

```

```text
   score
0    600
1    700
2    810


+-----+--------+--------------------+--------------------+----------+
|score|features|       rawPrediction|         probability|prediction|
+-----+--------+--------------------+--------------------+----------+
|  600| [600.0]|[0.30592762201597...|[0.57589092990394...|       0.0|
|  700| [700.0]|[0.07399114827744...|[0.51848935254944...|       0.0|
|  810| [810.0]|[-0.1811389728349...|[0.45483867290735...|       1.0|
+-----+--------+--------------------+--------------------+----------+

```

 * TODO : verify thiscredit score 600 has only 14% (probability 0.14) chance of getting approved

 * credit score of 810 has 93% chance of approval

Notes:



---

## LogisticRegression Code (Python) - Full Code

```
import numpy as np
import pandas as pd
from pyspark.ml.classification import LogisticRegression
from pyspark.ml.feature import VectorAssembler

mydata = pd.DataFrame({
     'score' : [550, 750, 680, 650, 450, 800, 775, 525, 620, 705, 830, 610, 690],
     'approved' : [0,1,1,0,0,1,1,0,0,0,1,1,0]
    })

credit_data = spark.createDataFrame(mydata)
assembler = VectorAssembler(inputCols=["score"], outputCol="features") featureVector = assembler.transform(credit_data)
featureVector = featureVector.withColumn("label",featureVector.approved)

lr = LogisticRegression(maxIter=50, regParam=0.3, elasticNetParam=0.8)
lrModel = lr.fit(featureVector)

print("Coefficients: " + str(lrModel.coefficients))
print("Intercept: " + str(lrModel.intercept))
```

Notes:



---

## Lab: Logistic Regression


 *  **Overview**:

     - Learn Logistic Regression

 *  **Approximate time**:

     - 15-20 mins

 *  **Instructions**:

     - LOG-1: Credit card approval

Notes:




---

# Multiple Logistic Regression in Spark

---

## Multiple Logistic Regression


 * So far we have seen ONE predictor determining the outcome

     - Credit score determining  approval / denial

 * We can have multiple factors (independent variables) determining an outcome as well

     - This is called 'multiple logistic regression'

<img src="../../assets/images/machine-learning/Multiple-Logistic-Regression-0.png" style="width:60%"/>

Notes:



---

## Exercise: College Admission


 * Consider college application and admittance data

 *  **Inputs** :

     - GRE:  max 800

     - GPA: 1.0  to4.0

     - Rank: 1 (better) to 4

 *  **Output**

     - Admitted : Yes or No

 * We are going to use Multiple Logistic Regression to predict admission results


---


## Exercise: College Admission


| gre | gpa  | rank | admitted |
|-----|------|------|----------|
| 380 | 3.6  | 3    | No       |
| 660 | 3.67 | 3    | Yes      |
| 800 | 4    | 1    | Yes      |
| 640 | 3.19 | 4    | Yes      |
| 520 | 2.93 | 4    | No       |
| 760 | 3.0  | 2    | Yes      |
| 400 | 3.08 | 2    | No       |
| 700 | 4.0  | 1    | Yes      |
| 500 | 3.17 | 3    | No       |

Notes:



---

## Multiple Logistic Regression Code (Python)


 ```
admissions = spark.read.csv("/data/college-admissions/admission-data.csv",header=True, inferSchema=True)
admissions.show()
assembler = VectorAssembler(inputCols=["gre", "gpa","rank"], outputCol="features")
featureVector = assembler.transform(admissions)
featureVector = featureVector.withColumn("label",featureVector["admit"]) featureVector.show()
 ```

```text
# admissions

+-----+---+----+----+
|admit|gre| gpa|rank|
+-----+---+----+----+
|    0|380|3.61|   3|
|    1|660|3.67|   3|
|    1|800| 4.0|   1|
|    1|640|3.19|   4|
|    0|520|2.93|   4|

```

```text
# featureVector

+-----+---+----+----+----------------+-----+
|admit|gre| gpa|rank|        features|label|
+-----+---+----+----+----------------+-----+
|    0|380|3.61|   3|[380.0,3.61,3.0]|    0|
|    1|660|3.67|   3|[660.0,3.67,3.0]|    1|
|    1|800| 4.0|   1| [800.0,4.0,1.0]|    1|
|    1|640|3.19|   4|[640.0,3.19,4.0]|    1|
|    0|520|2.93|   4|[520.0,2.93,4.0]|    0|

```

Notes:



---

## Multiple Logistic Regression Code (Python)

```
lr = LogisticRegression(maxIter=50, regParam=0.3, elasticNetParam=0.8)
lrModel = lr.fit(featureVector)

# Print the coefficients and intercept for logistic regression
print("Coefficients: " + str(lrModel.coefficients))
print("Intercept: " + str(lrModel.intercept)
lrModel.summary.predictions.show()
```

```text
TODO output
```

Notes:



---

## Evaluating Multiple Logistic Regression  Model


```
trainingSummary = lrModel.summary
print("areaUnderROC: " + str(trainingSummary.areaUnderROC))

# ROC curve
roc_df = trainingSummary.roc.toPandas()
plt.plot(roc_df['FPR'], roc_df['TPR'])
plt.xlabel("FPR") plt.ylabel("TPR")
plt.title("ROC Curve")
plt.plot([0.0, 1.0], [0.0, 1.0], 'r')
```

```text
TODO output
```

Notes:



---

## Predict Outcomes Multiple Logistic Regression  Model


```
newdata = pd.DataFrame({'gre' : [600, 700, 800],
                        'gpa' : [4.0, 3.5, 3.2],
                        'rank': [1, 2, 3]}
                        })
print(newdata)

spark_newdata = spark.createDataFrame(newdata)
newfeatures = assembler.transform(spark_newdata)
lrModel.transform(newfeatures).show()
```

```text
TODO output
```

Notes:



---

## Lab: Multiple Logistic Regression


  *  **Overview**:

     - Learn Logistic Regression

  *  **Approximate time**:

     - 15-20 mins

  *  **Instructions**:

     - LOG-2: College Admissions


Notes:
