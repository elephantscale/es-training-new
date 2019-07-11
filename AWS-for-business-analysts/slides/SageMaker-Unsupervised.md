# Session: Unsupervised Learning

---

## Lesson Objectives


 * Learn about Unsupervised algorithms

 * Learn use cases

 ---

## Unsupervised Learning

 * Statistical methods that **extract meaning from data without training a model on labeled data**

 * Helpful for exploratory data analysis
  - Sift through large amount of data or large amount of variables
  - Identify specific pockets and analyze them independently

---
## Unsupervised Applications

 * Medicine / Genomics
     - Group cancer cells into sub groups

 * Customer Segmentation
     - Identify "similar" groups of customers for better targeting

 * Web
     - Prioritize search results based on other user's clicks.
       e.g. search results for 'eclipse'

     - Group news stories / articles e.g. Google News

---

## Unsupervised Algorithms

| Unsupervised        	| Meaning                                                                                                                           	| SageMaker Algorithms                          	|
|---------------------	|-------------------------------------------------------------------------------------------------------------------------------------	|-------------------------------------	|
| Clustering          	| -Find discrete groups of "similar" data 	| - K-means <br/>- Knn 	|
| Dimension Reduction 	| - Reduce number of features but maintain as much information                                                                	| - Principal Component Analysis(PCA) 	|

---

## Clustering

---

# Use Case: Articles Grouping

* Google News article grouping

<img src="../../assets/images/machine-learning/3rd-party/Google-News-1.png"  style="max-width:70%;"/>

---

# Use Case: Customer Segmentation

* Marketing / Sales
  - Segment users/customers for better targeting
    - (demographics, past purchases, interest, etc.)

* Politics
  - Group potential voters by issue
    - (healthcare, gun rights, jobs, etc.)

---

# K-Means Clustering

* Simple and elegant approach for partitioning a data set into K  **distinct, non-overlapping** clusters

* To start K-Means, specify the number of clusters (K)

* K-Means will assign each observation to  **exactly one cluster**

* Clusters are separated as distinctly as possible

---

## K-Means Clustering Walkthrough


 *  **Step 1** : Select k centroids (center of cluster).
 Example: 3 centroids (red, green, blue)
<p style="text-align:center">
  <img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-K-Means-Clustering-Walkthrough-1.png" alt="Session-Unsupervised-Learning-K-Means-Clustering-Walkthrough-1.png" style="width:350px;"/>
</p>

 *  **Step 2** : Each point in the dataset is associated with its nearest centroid, as determined by a distance measurement.
<p style="text-align:center">
 <img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-K-Means-Clustering-Walkthrough-0.png" alt="Session-Unsupervised-Learning-K-Means-Clustering-Walkthrough-0.png" style="width:300px;"/>
</p>


Notes:


---

## K-Means Clustering

 *  **Step 3** : The centroid (geometric center) of the clustered points becomes the new centroid of that cluster. Each centroid is updated.
<p style="text-align:center">
  <img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-K-Means-Clustering-0.png" alt="Session-Unsupervised-Learning-K-Means-Clustering-0.png" style="width:350px;"/>
</p>

 *  **Step 4** : Repeat steps 2 and 3 until convergence is reached (the points move less than the threshold amount).
<p style="text-align:center">
 <img src="../../assets/images/machine-learning/3rd-party/Session-Unsupervised-Learning-K-Means-Clustering-1.png" alt="Session-Unsupervised-Learning-K-Means-Clustering-1.png" style="width:350px;"/>
</p>


Notes:

Ways to Determine Distance between points
Euclidian distance - (most obvious) Euclidian, which takes the distance in Euclidian space
Cosine Distance - cosine of angle between vectors - ignores magnitude
Manhattan distance: Effectively counts the number of square blocks one would "walk" to get there without cutting corners.
Tanimoto distance  Take both angle and magnitude into account.

Most algorithms attempt to balance the
Magnitude
Angle

---

# K-Means Animations

* [https://www.naftaliharris.com/blog/visualizing-k-means-clustering/](https://www.naftaliharris.com/blog/visualizing-k-means-clustering/)

* [http://stanford.edu/class/ee103/visualizations/kmeans/kmeans.html](http://stanford.edu/class/ee103/visualizations/kmeans/kmeans.html)

* [http://www.bytemuse.com/post/k-means-clustering-visualization/](http://www.bytemuse.com/post/k-means-clustering-visualization/)

---

# Evaluating K-Means Performance

* SageMaker provides 2 metrics during training

* **test:msd** - Mean Squared Distances between each data point and its cluster center

* **test:ssd** - Sum of Squared Distances between each data point and its cluster center

---

## Lab: KMeans using SageMaker

*  **Overview** :

   Experiment with KMeans

*  **Approximate time** :

   20 - 40 mins

*  **Instructions** :

    - KMEANS-1 lab (??)

    - KMEANS-2 : Walmart shopping data??

---
