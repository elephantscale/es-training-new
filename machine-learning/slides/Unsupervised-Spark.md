# Session: Unsupervised Learning With Spark

---

## Lesson Objectives


  * Learn about unsupervised algorithms in Spark ML

  * Learn use cases

Notes:


---

# Clustering in Spark

---

## Clustering Algorithms in Spark


  * K-Means

  * Bisecting K-Means

  * LDA

  * Power Iteration Clustering

  * Streaming K-Means

  * Gaussian Mixture

Notes: 



---

# K-Means in Spark

---

## Spark ML Kmeans API - Scala


  * Class: org.apache.spark.mllib.clustering.Kmeans

  * Constructs a KMeans instance with default parameters: {k: 2, maxIterations: 20, initializationMode: "k-means||", initializationSteps: 2, epsilon: 1e-4, seed: random}.

```text
 import org.apache.spark.ml.clustering.KMeans   
 
 val kmeans = new KMeans().setK(2).setMaxIter(10)

 val model = kmeans.fit(featureVector) 
 val WSSSE = model.computeCost(featureVector) 
 val predicted = model.transform(featureVector)   
 
 println("Cluster Centers: ") 
 model.clusterCenters.foreach(println) 
```

Notes: 



---

## Spark ML Kmeans API - Scala

| Parameter 	| Method                                                 	| Description                                                                                                                                                          	| Default Value 	|
|-----------	|--------------------------------------------------------	|----------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------	|
| k         	| setK()                                                 	| Number of clusters                                                                                                                                                   	| 2             	|
| initMode  	| **setInitializationMode** (initializationMode: String) 	| How to initialize cluster centers.<br/> Possible values:<br/>- "random" : choose random points<br/>- "k-means II" : to use a parallel variant of k-means++'                            	| k-means II     	|
| initSteps 	| **setInitializationSteps** (initializationSteps: Int)  	| Set the number of steps for the "k-means II" initialization mode. This is an advanced setting -- the default of 2 is almost always enough                             	| 2             	|
| Epsilon   	| **setEpsilon** (epsilon: Double)                       	| Set the distance threshold within which we've considered centers to have converged. If all centers move less than this Euclidean distance, we stop iterating one run 	| 1e-4          	|
| maxIter   	| **setMaxIterations** (maxIterations: Int)              	| How many iterations                                                                                                                                                  	| 20            	|
| Seed      	| **setSeed** (seed: Long)                               	| Initial seed setting                                	|               	| |

Notes: 



---

## Spark ML Kmeans API - Scala

```
  import org.apache.spark.ml.clustering.KMeans 
  import org.apache.spark.ml.feature.VectorAssembler 
  import org.apache.spark.ml.linalg.Vectors    
  
  // Loads data.  
  val dataset = spark.read.option("header", "true").option("inferschema", "true").csv("mtcars_header.csv") 
  dataset.show(32)  // 32 data points, show all   
  // extract the columns we need  
  val dataset2 = dataset.select("model", "mpg", "cyl")   
  
  val assembler = new VectorAssembler().setInputCols(Array("mpg", "cyl")).setOutputCol("features")   
  
  val featureVector = assembler.transform(dataset2) 
  featureVector.show    
  
  // Trains a k-means model, k=2, iterations=10  
  val kmeans = new KMeans().setK(2).setMaxIter(10) 
  val model = kmeans.fit(featureVector) 

  println("Cluster Centers: ") 
  model.clusterCenters.foreach(println)    
  
  // Evaluate clustering by computing Within Set Sum of Squared Errors.  
  val WSSSE = model.computeCost(featureVector)  

  // Print results  
  val predicted = model.transform(featureVector)  
  // print sorted by 'prediction'  
  predicted.sort("prediction").show(32,false) 
  predicted.sort("prediction", "mpg").show(32,false) 
```
Notes: 



---

## Spark ML Kmeans API - Python


* **pyspark.ml.clustering.Kmeans** (self,     
    featuresCol="features",     
    predictionCol="prediction",     
    k=2,     
    initMode="k-means||",     
    initSteps=2,     
    tol=1e-4,     
    maxIter=20,     
    seed=None)

Notes: 



---

## Spark ML Kmeans API - Python
| Parameter     | Description                                                                                                                             	| Default Value 	|
|---------------|-----------------------------------------------------------------------------------------------------------------------------------------	|---------------	|
| featuresCol   | Features vectors to consider                                                                                                            	| "features"    	|
| predictionCol | Prediction column (where cluster assignment will appear)                                                                                	| "prediction"  	|
| k             | Number of clusters                                                                                                                      	| 2             	|
| initMode      | How to initialize cluster centers.<br/> Possible values: <br/>- "random" : choose random points<br/>- "k-means" : to use a parallel variant of k-means++' 	| k-means       	|
| initSteps     | TODO                                                                                                                                    	| 2             	|
| tol           | Threshold indicating   the convergence o fclusters                                                                                      	| 1e-4          	|
| maxIter       | How many iterations                                                                                                                     	| 20            	|
| seed          | Initial seed setting     	|               	|          |

Notes: 



---

## Spark K-Means Code (Python)


 ```
 from pyspark.ml.feature import VectorAssembler 
 from pyspark.ml.clustering import KMeans 

 dataset = spark.read.csv("mtcars_header.csv", header=True, inferSchema=True) mpg_cyl = dataset.select("model", "mpg", "cyl") 
 mpg_cyl.show(40)

 # select input / output 
 assembler = VectorAssembler(inputCols=["mpg", "cyl"], outputCol="features") featureVector = assembler.transform(mpg_cyl) 
 featureVector.show(40)

 # Start KMeans with 2 clusters 
 kmeans = KMeans().setK(2).setSeed(1) 
 model = kmeans.fit(featureVector) 
 wssse = model.computeCost(featureVector) 
 print(wssse) 
 model.transform(featureVector).show() 
 ```

Notes: 


---

## Running Spark K-Means Code

```
Scala 

    Interactive Mode 
      $ bin/spark-shell
      > # enter code

    Script Mode 
      $ bin/spark-shell  -i   kmeans-script.scala

Python 

    Interactive Mode 
      $ bin/pyspark
      > # enter code

    Script Mode 
      $ bin/pyspark   kmeans-script.py
```

Notes: 

 


---

## K-Means Run Output

```text
// for k=2
> model.clusterCenters.foreach(println)
[25.478571428571428,4.428571428571428]
[15.899999999999999,7.555555555555555]

```


```text
> predicted.sort("prediction", "mpg").show(32,false)

+-------------------+----+---+----------+----------+
|model              |mpg |cyl|features  |prediction|
+-------------------+----+---+----------+----------+
|Mazda RX4          |21.0|6  |[21.0,6.0]|0         |
|Mazda RX4 Wag      |21.0|6  |[21.0,6.0]|0         |
|Hornet 4 Drive     |21.4|6  |[21.4,6.0]|0         |
...  
|Cadillac Fleetwood |10.4|8  |[10.4,8.0]|1         |
|Lincoln Continental|10.4|8  |[10.4,8.0]|1         |
|Camaro Z28         |13.3|8  |[13.3,8.0]|1         |
|Duster 360         |14.3|8  |[14.3,8.0]|1         |
|Chrysler Imperial  |14.7|8  |[14.7,8.0]|1         |
+-------------------+----+---+----------+----------+

```

Notes: 



---

## Evaluating K-Means With WSSSE


  Goal is to  minimize WSSSE with  reasonable effort 

  We look for elbows - that indicates a reasonable clustering

  After the elbow, the improvement is minimal

   Question for class: At  k=32  we have achieved  WSSSE=0 , as in perfect fit !How is that?

<img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-Evaluating-K-Means-With-WSSSE-0.png" alt="Session-Unsupervised-Learning-Evaluating-K-Means-With-WSSSE-0.png" style="width:76%;"/><!-- {"left" : 1.02, "top" : 3.44, "height" : 3.5, "width" : 8.21} -->



Notes: 



---

## Multiple Runs With K vs. WSSSE

```
import pandas as pd   
  
k_wssse = pd.DataFrame(columns=('k', 'wssse'))    
  
# loop through K  
for k in range(2,17):     
    print ("k=", k)     
    kmeans = KMeans().setK(k).setSeed(1)     
    model = kmeans.fit(featureVector)     
    wssse = model.computeCost(featureVector)     
    print("k={}, wssse={}".format(k,wssse))     
    k_wssse = k_wssse.append( {'k': k, 'wssse': wssse}, ignore_index=True) 
  
k_wssse 
```
<!-- {"left" : 0, "top" : 1.3, "height" : 3.5, "width" : 10.25} -->


```text
k= 2
   k=2, wssse=425.39658730158885
k= 3
   k=3, wssse=169.40535714285784
k= 4
   k=4, wssse=140.88452380952572

```
<!-- {"left" : 0, "top" : 4.9, "height" : 1.86, "width" : 6.11} -->


Notes: 



---

## K - WSSSE

<img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-With-Python-K-WSSSE-0.png" alt="Session-Unsupervised-Learning-With-Spark-K-WSSSE-0.png" style="width:76%;"/><!-- {"left" : 1.02, "top" : 1.23, "height" : 5.51, "width" : 8.21} -->



Notes: 



---

## K-Means Run Output

* Question: How can we fix these warnings? 

```text
val dataset = spark.read.option(...) 
val dataset2 = dataset.select("model", "mpg", "cyl") 
val assembler = new VectorAssembler()... 
val featureVector = assembler.transform(dataset2) 
val kmeans = new KMeans()..... 
val model = kmeans.fit(featureVector) 
```

```
WARN KMeans: `The input data is not directly cached`, which may hurt performance if its parent RDDs are also uncached.

WARN BLAS: `Failed to load implementation from: com.github.fommil.netlib.NativeSystemBLAS`

WARN BLAS: Failed to load implementation from: com.github.fommil.netlib.NativeRefBLAS

WARN KMeans: The input data was not directly cached, which may hurt performance if its parent RDDs are also uncached.
```

Notes: 



---

## Spark K-Means - Best Practices


* Caching

     - Caching will help, because K-Means iterates over data multiple times

     - With new ML library and dataframes caching is very effective

     - Check the storage tab to understand caching storage

Notes: 



---

## Lab: K-Means in Spark


   * **Overview** : 
   
        K-Means in Spark

   * **Approximate time** : 
   
        30-40 mins

   * **Instructions** : 

     - KMEANS-1 lab (mtcars)

     - KMEANS-2 : Uber trips

     - Bonus Lab : KMEANS-3 : Walmart shopping data

   * **Answers** : 

     - Upload appropriate HTML files


Notes: 

 


---

# PCA in Spark


