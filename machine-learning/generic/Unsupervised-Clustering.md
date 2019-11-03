# Clustering

---

## Algorithm Map

<img src="../../assets/images/machine-learning/algorithm-summary-unsupervised-clustering-1.png" style="max-width:80%;"/><!-- {"left" : 1.02, "top" : 1.56, "height" : 5.48, "width" : 8.21} -->

---

## What is Clustering?

<img src="../../assets/images/machine-learning/clustering-02.png" style="width:40%;float:right;" /><!-- {"left" : 5.13, "top" : 1.95, "height" : 1.89, "width" : 4.98} -->

 * Clustering finds natural **groupings / clusters**  in data
     - Each group shares similar traits with elements in its own group
     - and is different from elements in other groups

 * Humans naturally cluster data we encounter
     - Categorizing, organizing, etc.
     - Our brains seek patterns

 * Why do we cluster?
     - To understand our data
     - To find "more like this"

Notes:




---

## Clustering Use Cases: Fraud / Anomaly Detection

<img src="../../assets/images/machine-learning/clustering-anomaly-detection-1.png"  style="width:40%;float:right;"/><!--  {"left" : 6.25, "top" : 1.43, "height" : 3.09, "width" : 3.81} -->

 * Anomaly detection
     - Find fraud
     - Detect network intrusion attack
     - Discover problems on servers

 * Clustering does not necessarily detects fraud
     - But it points to unusual data
     - And the need for further investigation





Notes:



---

## Clustering Use Cases: Google News

<img src="../../assets/images/machine-learning/3rd-party/Google-News-1.png" style="width:50%;float:right;"/><!--  {"left" : 5.08, "top" : 1.25, "height" : 4.94, "width" : 4.92} -->

- Google News groups similar articles together.  This has to be done dynamically, as news stories change all the time




Notes:

---

## Clustering Use Case: Uber Trips

 * Figure out where demand is so more cars can be sent to that area  
 (we will do this lab!)

<img src="../../assets/images/machine-learning/Uber-Trips-0.png" alt="Uber-Trips-0.png" style="width:50%;"/><!-- {"left" : 1.79, "top" : 2.72, "height" : 4.97, "width" : 6.67} -->


Notes:



---

## Clustering Use Cases: Segmenting


 * Marketing / Sales
     - Segment the customer base; for promotion / advertisement
     - Soccer mom  / new parents

 * Politics
     - Group potential voters for ad targeting
     - Farmers / Christians

 * See next slide

Notes:

TODO : add pictures


---

## Clustering Use Case: Customer Purchases @ Walmart

<img src="../../assets/images/deep-learning/3rd-party/Walmart-01.png"  style="width:40%;float:right;"/><!--  {"left" : 5.58, "top" : 1.22, "height" : 2.63, "width" : 4.38} -->

* Here is how Walmart is segmenting customer purchases
    - Pharmacy Runs
    - Strictly Grocery
    - Grocery and General Merchandise
    - Michaels Run
    - Party Trip
    - Toys
    - Electronics
    - Baby
    - Gallon of Milk
    - *Booze and Calories*

* **Question for class:What is the use case for this?**



Notes:

https://www.kaggle.com/c/walmart-recruiting-trip-type-classification


---

## Clustering Algorithms


*  **K-Means**
    * we seek to partition the observations into a pre-specified number of clusters

* **Hierarchical clustering**
    * We do not know in advance how many clusters we want
    * We end up with a tree-like visual representation of the observations, called a  **dendrogram**
    * View the clusterings obtained for each possible number of clusters, from 1 to n

Notes:



---

# K-Means

---

## Algorithm Summary

<img src="../../assets/images/machine-learning/algorithm-summary-unsupervised-clustering-kmeans-1.png"  style="max-width:70%;"/><!-- {"left" : 1.02, "top" : 1.49, "height" : 5.48, "width" : 8.21} -->



Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/


---

## K-Means Clustering


 * K-means clustering is a simple and elegant approach for partitioning a data set into K  **distinct, non-overlapping** clusters

 * To start K-Means, we need to specify the number of clusters (K)

 * Then the algorithm will assign each observation to  **exactly one cluster (no overlapping)**

 * Not all clusters will have the same size,  but the clusters are best separated

Notes:



---

## K-Means Visualized

<img src="../../assets/images/machine-learning/3rd-party/kmeans-1.png" style="max-width:80%;"/><!-- {"left" : 1.27, "top" : 1.08, "height" : 3.86, "width" : 7.71} -->


 * Animations
     - [http://stanford.edu/class/ee103/visualizations/kmeans/kmeans.html](http://stanford.edu/class/ee103/visualizations/kmeans/kmeans.html)
     - [https://www.naftaliharris.com/blog/visualizing-k-means-clustering/](https://www.naftaliharris.com/blog/visualizing-k-means-clustering/)
     - [http://www.bytemuse.com/post/k-means-clustering-visualization/](http://www.bytemuse.com/post/k-means-clustering-visualization/)



Notes:



---

## K-Means Clustering Walkthrough

*  **Step 1:** Centroids are randomly seeded in the data.  
Example: 3 centroids (red, green, blue)
*  **Step 2:** Each point in the dataset is associated with its nearest centroid, as determined by a distance measurement.
*  **Step 3:** The centroid (geometric center) of the clustered points becomes the new centroid of that cluster. Each centroid  updated.
*  **Step 4:** Repeat steps 2 and 3 until convergence is reached (the points move less than the threshold amount).


<img src="../../assets/images/machine-learning/3rd-party/kmeans-3a.png"  style="width:20%;"/>  &nbsp; &nbsp; <!--  {"left" : 0.19, "top" : 6.01, "height" : 2.39, "width" : 2.48} --><img src="../../assets/images/machine-learning/3rd-party/kmeans-3b.png"  style="width:20%;"/><!--  {"left" : 2.88, "top" : 6.32, "height" : 1.76, "width" : 2.04} --> &nbsp; &nbsp; <img src="../../assets/images/machine-learning/3rd-party/kmeans-3c.png"  style="width:20%;"/><!--  {"left" : 4.68, "top" : 6.01, "height" : 2.39, "width" : 2.77} --> &nbsp; &nbsp; <img src="../../assets/images/machine-learning/3rd-party/kmeans-3d.png"  style="width:20%;"/><!--  {"left" : 7.6, "top" : 6.32, "height" : 1.76, "width" : 2.04} -->


Notes:




---

## K-Means Visualization


<img src="../../assets/images/machine-learning/3rd-party/kmeans-4.png" style="max-width:50%;"/><!--  {"left" : 1.49, "top" : 1.19, "height" : 7.27, "width" : 7.28} -->




Notes:

Image credit : "Introduction to Statistical Learning", used with author's permission (http://www-bcf.usc.edu/~gareth/ISL/)



---

## Math Behind K-Means


 * Cluster into K-cluster, such that total inter-cluster variation is as small as possible

 * For example

     - For cluster Ck

     - Variations within this cluster is W(Ck)

<img src="../../assets/images/machine-learning/3rd-party/kmeans-6-math.png"  style="width:40%;"/><!--  {"left" : 0.4, "top" : 4.84, "height" : 1.09, "width" : 3.58} -->

<img src="../../assets/images/machine-learning/3rd-party/kmeans-7-math.png" style="width:40%;"/><!--  {"left" : 4.69, "top" : 4.75, "height" : 1.25, "width" : 5.16} -->





Notes:

Formulate images : "Introduction to Statistical Learning", used with author's permission (http://www-bcf.usc.edu/~gareth/ISL/)



---

## Evaluating K-means Performance


 * We use a method called **WSSSE - Within cluster sum of squares by cluster  / Within-Cluster-SS**

 * Remember K-Means works like this

     - Each observation is allocated to closest cluster

     - Measure distance between observation and cluster center

     - Keep iterating until max-K is reached  or change in successive WSSSE is less than the threshold value

 * Goal is to minimize WSSSE

Notes:




---

## MTCars Clustering

 <img src="../../assets/images/machine-learning/3rd-party/kmeans-8-mtcars.png" style="width:60%;float:right;"/><!--  {"left" : 5.18, "top" : 2.72, "height" : 2.47, "width" : 4.97} -->

 * We are going to cluster cars using two attributes: MPG & CYL
 * This is `mtcars` dataset
    - has 32 data points
 * Attributes
    - name - name of the car
    - mpg - Miles/(US) gallon
    - cyl - Number of cylinders
    - disp - Displacement (cu.in.)
    - hp - Gross horsepower
    - drat - Rear axle ratio





Notes:



---

## Starting With K = 2  (Find 2 clusters)

<img src="../../assets/images/machine-learning/kmeans-9.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 2.29, "height" : 4.48, "width" : 8.21} -->


Notes:



---

## Starting With K = 4  (Find 4 clusters)

<img src="../../assets/images/machine-learning/kmeans-10.png"  style="width:80%;"/><!-- {"left" : 1.02, "top" : 1.89, "height" : 5.28, "width" : 8.21} -->



Notes:



---

## Evaluating K-Means With WSSSE


 * Goal is to  **minimize WSSSE** with  **reasonable effort**

 * We look for elbows - that indicates a reasonable clustering

 * After the elbow, the improvement is minimal

 *  **Question for class:** At  **k=32**  we have achieved  **WSSSE=0** , as in perfect fit !How is that?

<img src="../../assets/images/machine-learning/kmeans-11-wssse.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 4.1, "height" : 3.5, "width" : 8.21} -->



Notes:



---

## K-Means Complexity


 * Finding optimal solution in K-means is NP-hard

 * For K=clusters and d=dimensions and n=observations

<img src="../../assets/images/machine-learning/kmeans-12.png" /><!-- {"left" : 3.72, "top" : 2.18, "height" : 1, "width" : 2.81} -->



 * Heuristic algorithms like Lloyd's can helpComplexity - linear (best case)

<img src="../../assets/images/machine-learning/kmeans-13.png"/><!-- {"left" : 3.75, "top" : 4.45, "height" : 0.95, "width" : 2.75} -->


- i = iterations

- worst case can be superpolynomial


Notes:

Source : https://en.wikipedia.org/wiki/K-means_clustering



---

## K-Means Drawbacks


 * Initial centroid positions are very important
     - Badly initialized centroids can lead to
        * sub-optimal solution ("local minima" phenomenon)
        * Can take too long to converge

 * No deterministic way to guarantee the clustering is optimal (NP hard)
     - Choose centroid randomly
     - Do several runs
     - Compare WSSSE score

 * `Lloyd's algorithm` can be used overcome some of these issues (outside the scope of this course)

Notes:

https://en.wikipedia.org/wiki/Lloyd%27s_algorithm


---

## K-Means Centroid Positioning DEMO


<img src="../../assets/images/machine-learning/3rd-party/kmeans-2.png" style="width:30%;float:right;"/><!-- {"left" : 6.49, "top" : 1.22, "height" : 3.33, "width" : 3.46} -->

 * Go to: https://www.naftaliharris.com/blog/visualizing-k-means-clustering/
 * Demo 1
     - Centroid positions: "I will pick"
     - Data: "smiley face"
     - Place centroid off center at the top
     - Step through
 * Demo 2:
     - Centroid positions: "I will pick"
     - Data: "smiley face"
     - Place centroids evenly
     - Step through

Notes:

https://www.naftaliharris.com/blog/visualizing-k-means-clustering/


---

## How to Find the Best K?

<img src="../../assets/images/machine-learning/kmeans-13-wssse.png" style="width:50%;float:right;"/><!-- {"left" : 5.21, "top" : 2.1, "height" : 2.87, "width" : 4.93} -->

-  No single standard to find 'best' number of clusters
-  **Elbow method**  is commonly used
- Increasing K beyond the elbow doesn't produce noticeable improvements in clustering

- Practical approach
    -  Number of Clusters (K) is usually determined by the application need
    - See Walmart data on shopping-cart grouping
        - 'grocery run',  'milk run'
        - ~37 categories






Notes:

---

## K-Means Revision

 * **Cluster**

    - A group of records that are similar

 * **K**

    - The number of clusters

 * **WSSSE**

    - Within-Cluster-Sum-of-Squares   /  Within-cluster-SS

Notes:



---

## K-Means Strengths & Weaknesses


 * **Strengths**
    * K-Means is simple, well-understood
    * Verification straightforward
    * Easy to parallelize, scales to large datasets

 * **Weaknesses:**
    * Value of k must be known in advance, which may mean running the exercise many times to get optimum results.
    * Initial centroid positions are important; may cause long convergence.
    * Outliers may bias results.
    * Clusters not broadly (hyper)spherical don't work well for k-means.
        - Use hierarchical clustering for these situations.

Notes:

Hierarchical Clustering is a cluster analysis that seeks to build a hierarchy of clusters.



---

# Hierarchical Clustering

---

## Algorithm Summary

<img src="../../assets/images/machine-learning/algorithm-summary-unsupervised-clustering-hiearchical-1.png" style="max-width:70%;"/><!-- {"left" : 1.02, "top" : 1.79, "height" : 5.48, "width" : 8.21} -->



Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/


---

## Hierarchical Clustering


 * One potential disadvantage of K-means clustering is that it requires us to pre-specify the number of clusters K

 *  **Hierarchical clustering** is an alternative approach which does not require that we commit to a particular choice of K

 * It has an added advantage over K-means clustering in that it results in an attractive tree-based representation of the observations, called a  **dendrogram**

Notes:




---

## Visualizing Hierarchical Clustering


 * Input

<img src="../../assets/images/machine-learning/3rd-party/hiearchical-clustering-1.png"  style="max-width:60%;"/><!-- {"left" : 2.16, "top" : 1.9, "height" : 5.27, "width" : 5.93} -->



Notes:



---

## Visualizing Hierarchical Clustering

 * Output:  **Dendogram**  (upside down tree)

<img src="../../assets/images/machine-learning/3rd-party/hiearchical-clustering-2.png" style="max-width:70%;"/><!-- {"left" : 1.02, "top" : 2.35, "height" : 4.94, "width" : 8.21} -->



Notes:



---

## Lab: KMeans

 *  **Instructor:**
     - Recommended to do the Uber lab as the last lab for the class

 *  **Overview:**
    - Experiment with KMeans

 *  **Approximate time:**
    - 20 - 40 mins

 *  **Instructions:**
     - See next few slides for sample code in Python / R / Spark instructions
     - KMEANS-1: mtcars
     - KMEANS-2: Uber trips
     - Bonus Lab: KMEANS-3: Walmart shopping data


Notes:




---

## K-Means: Further Reading

 * "**Practical Statistics for Data Scientists**"  - O'Reilly Chapter 7

 * "**An Introduction to Statistical Learning**" - SpringerChapter 10

 * Wikipedia: [https://en.wikipedia.org/wiki/K-means_clustering](https://en.wikipedia.org/wiki/K-means_clustering)

Notes:
