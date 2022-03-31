# Naive Bayes Classifier in Spark

---

## Module Objectives

* Learn about Naive Bayes classifier

* Perform Naive Bayes in Spark

---

# Naïve Bayes

[../generic/Classification-Naive-Bayes.md](../generic/Classification-Naive-Bayes.md)

---

# Naive Bayes in Spark

---

## Naïve Bayes Support in Spark

* Implemented by  
    - **pyspark.ml.classification.NaïveBayes**  (python)
    - **org.apache.spark.ml.classification.NaïveBayes**  (Scala)

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

<!-- {"left" : 1.87, "top" : 2.88, "height" : 6.63, "width" : 13.77} -->
Notes:

---

## Naive Bayes in Spark ML (Python) - SPAM classification

```python
## Step 1 - Read Data

dataset = spark.read.format("csv").\
          option('header','true').\
          option('delimiter', '\t').\
          load("/data/spam/SMSSpamCollection.txt")

dataset.printSchema()
dataset.show()
```
<!-- {"left" : 0.85, "top" : 2.42, "height" : 3.5, "width" : 10.99} -->

```text
root
 |-- isspam: string (nullable = true)
 |-- text: string (nullable = true)

 +------+--------------------+
 |isspam|                text|
 +------+--------------------+
 |   ham|Go until jurong p...|
 |   ham|Ok lar... Joking ...|
 |  spam|Free entry in 2 a...|
 |   ham|U dun say so earl...|

```
<!-- {"left" : 0.85, "top" : 6.21, "height" : 4.68, "width" : 9.31} -->

---

## Naive Bayes in Spark ML (Python) - SPAM classification

```python
## Step 2 : Shape data

from pyspark.ml.feature import HashingTF, IDF, Tokenizer

tokenizer = Tokenizer(inputCol="text", outputCol="words")
wordsData = tokenizer.transform(dataset)

number_of_features = 2000

hashingTF = HashingTF(inputCol="words", outputCol="rawFeatures", numFeatures=number_of_features)
featurizedData = hashingTF.transform(wordsData)

idf = IDF(inputCol="rawFeatures", outputCol="features")
idfModel = idf.fit(featurizedData)
featureVector2 = idfModel.transform(featurizedData)
featureVector2.show()

```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 4.59, "width" : 15.58} -->

```text
+------+--------------------+--------------------+--------------------+--------------------+
|isspam|                text|               words|         rawFeatures|            features|
+------+--------------------+--------------------+--------------------+--------------------+
|   ham|Go until jurong p...|[go, until, juron...|(2000,[7,77,165,2...|(2000,[7,77,165,2...|
|   ham|Ok lar... Joking ...|[ok, lar..., joki...|(2000,[20,484,131...|(2000,[20,484,131...|
|  spam|Free entry in 2 a...|[free, entry, in,...|(2000,[30,128,140...|(2000,[30,128,140...|
```
<!-- {"left" : 0.85, "top" : 7.65, "height" : 1.96, "width" : 15.58} -->

---

## Naive Bayes in Spark ML (Python) - SPAM classification

```python

## Step 3: Shape / index data

from pyspark.ml.feature import StringIndexer

indexer = StringIndexer(inputCol="isspam", outputCol="label")
indexed = indexer.fit(rescaledData).transform(featureVector2)
indexed.select(['text', 'isspam', 'label', 'features']).show()

(train, test) = indexed.randomSplit([.8, .2])
```
<!-- {"left" : 0.85, "top" : 2.5, "height" : 3.83, "width" : 14.54} -->

```text
+--------------------+------+-----+--------------------+
|                text|isspam|label|            features|
+--------------------+------+-----+--------------------+
|Go until jurong p...|   ham|  0.0|(2000,[7,77,165,2...|
|Ok lar... Joking ...|   ham|  0.0|(2000,[20,484,131...|
|Free entry in 2 a...|  spam|  1.0|(2000,[30,128,140...|
|U dun say so earl...|   ham|  0.0|(2000,[57,372,381...|
```
<!-- {"left" : 0.85, "top" : 6.95, "height" : 3.35, "width" : 14.54} -->

---

## Naive Bayes in Spark ML (Python) - SPAM classification

```python
from pyspark.ml.classification import NaiveBayes
from pyspark.ml.evaluation import MulticlassClassificationEvaluator

nb = NaiveBayes(smoothing=1.0, modelType="multinomial")
model = nb.fit(train)

predictions = model.transform(test)


evaluator = MulticlassClassificationEvaluator(labelCol="label",
                        predictionCol="prediction",
                        metricName="accuracy")

print("Test set accuracy = " , evaluator.evaluate(predictions))
## 0.86
```
<!-- {"left" : 0.85, "top" : 2.56, "height" : 5.94, "width" : 15.27} -->

Notes:

---

## Lab: Naïve Bayes

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 12.86, "top" : 1.6, "height" : 5.45, "width" : 4.09} -->

* **Overview:** Use Naïve Bayes implementation

* **Approximate Time:** 20-30 min.

* **Instructions:**

    - NB1: Spam classification

    - BONUS: NB2: Income classification

Notes:

---
## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 13.07, "top" : 1.89, "height" : 2.69, "width" : 3.63} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 4.62, "top" : 4.8, "height" : 5.53, "width" : 8.31} -->


