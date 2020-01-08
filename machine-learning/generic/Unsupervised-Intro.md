
# Unsupervised Learning

---

## Algorithm Summary

<img src="../../assets/images/machine-learning/algorithm-summary-unsupervised-1.png" style="max-width:80%;"/><!-- {"left" : 1.02, "top" : 1.48, "height" : 5.48, "width" : 8.21} -->


Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/


---

## Supervised & Unsupervised Learning


 * **Supervised Learning**

    * We train the model on 'training set'

    * And use the model to make predictions

    * Will validate predictions using testing set

    * E.g.: Predict house prices

 * **Unsupervised Learning**

    * There is NO training

    * Discover interesting  **patterns / groupings** of data

Notes:



---

## Unsupervised Learning


 * Unsupervised Learning refers to statistical methods that  **extract meaning from data without training a model on labeled data**

 * (In our supervised learning, we trained models and then used them for prediction)

 * Unsupervised learning also **builds models from data**, but **does not distinguish between response variable and predictor variable**

 * Big part of exploratory data analysis

     - Sift through large amount of data or large amount of variables

     -  **Cold-start:** when we start out a project, we may not have 'training data'.  So we can use Clustering to identify pockets and analyze them independently

Notes:

References
"Practical Statistics for Data Scientists", Chapter 7 - Oreilly


---

## Supervised Vs. Unsupervised

| Supervised                                                                                                                                         | Unsupervised                 |
|----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------|
| most algorithms are supervised                                                                                                                     |                              |
| Lots of tools and algorithms. <br/>(such as logistic regression, linear discriminant analysis, classification trees, support vector machines, and more) |                              |
| Assessing model performance is well defined (validation, cross-validation, independent test set)                                                   | Tends to be more subjective. |

<!-- {"left" : 0.25, "top" : 1.4, "height" : 3.25, "width" : 9.75} -->


Notes:



---

## Unsupervised Applications


 * Medicine / Genomics
     - Group cancer cells into sub groups

 * Online shopping
     - Group customer purchases ('grocery run' )

 * Web
     - Prioritize search results based on other user's clicks.  
       E.g. search results for 'eclipse'
     - Group news stories / articles  
       E.g. Google News

Notes:



---

## Unsupervised Algorithms and Use Cases


| Unsupervised        | Use Cases                                                                                                                                | Algorithms                               |
|---------------------|------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------|
| Clustering          | - Analyze web clicks and segment customers. And improve their web <br/>- Analyze network traffic and isolate anomalies (potential attacks) | - K-means <br/>- Hierarchical clustering |
| Dimension Reduction | - Par down the data to manageable set of variables (e.g Sensor data)                                                                     | - Principal Component Analysis(PCA)      |

<!-- {"left" : 0.25, "top" : 1.4, "height" : 3.34, "width" : 9.75} -->

Notes:
