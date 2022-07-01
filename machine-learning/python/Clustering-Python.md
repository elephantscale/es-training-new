# Clustering in SciKit-Learn

---

## Lesson Objectives

* Learn about unsupervised algorithms in Scikit-Learn

* Learn Clustering

Notes:

---

# Unsupervised Intro

[../generic/Unsupervised-Intro.md](../generic/Unsupervised-Intro.md)

---

# Clustering

[../generic/Clustering.md](../generic/Clustering.md)

---

# Clustering in Python

<img src="../../assets/images/machine-learning/clustering-05.png" style="width:20%;"/><!-- {"left" : 2.3, "top" : 2.55, "height" : 8.61, "width" : 12.9} -->

---

## Clustering Algorithms in Python

* K-Means

* Bisecting K-Means

* LDA

* Power Iteration Clustering

* Gaussian Mixture

Notes:

---

## Let's Cluster Cars

* We will use `mtcars` dataset as below

* Cluster cars using **`mpg` and `cyl`** parameters

<img src="../../assets/images/machine-learning/3rd-party/kmeans-8-mtcars.png"  style="width:80%;"/><!-- {"left" : 4.34, "top" : 4.95, "height" : 5.16, "width" : 8.82} -->

---

## KMeans in Scikit

<img src="../../assets/images/machine-learning/3rd-party/kmeans-8-mtcars.png" style="width:50%;float:right;"/>

```python
from sklearn.cluster import KMeans 
import pandas as pd

dataset = pd.read_csv('mtcars_header.csv')

X = dataset[["mpg", "cyl"]]

# Start KMeans with 2 clusters
kmeans = Kmeans(n_clusters=2)
model = kmeans.fit(X)

wssse = model.inertia_
dataset['cluster'] = model.labels_
```
<!-- {"left" : 0.85, "top" : 2.48, "height" : 5.61, "width" : 13.58} -->

```text
# wssse =  416.48425120772947

# dataset
                  model   mpg  cyl  cluster
14   Cadillac Fleetwood  10.4    8        0
15  Lincoln Continental  10.4    8        0
23           Camaro Z28  13.3    8        0
...
18          Honda Civic  30.4    4        1
27         Lotus Europa  30.4    4        1
17             Fiat 128  32.4    4        1
19       Toyota Corolla  33.9    4        1
```

Notes:

---

## KMeans in Scikit

```python
sklearn.cluster.KMeans (self, n_clusters=8, init='k-means++',
                    max_iter=300, tol=0.0001)
```
<!-- {"left" : 0.85, "top" : 2.63, "height" : 1.11, "width" : 14.14} -->

| Parameter  | Description                                                                                                                                               | Default Value |
|------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| n_clusters | Number of clusters                                                                                                                                        | 8             |
| init       | How to initialize cluster centers.  Possible values:  -"random" : choose random points  -"k-means++ : Uses a well-known algorithm for quicker convergence | "k-means++"   |
| tol        | Threshold indicating the convergence o fclusters                                                                                                          | 1e-4          |
| maxIter    | How many iterations                                                                                                                                       | 20            |
| n_init     | Initial seed setting                                                                                                                                      |               |
<!-- {"left" : 0.94, "top" : 4.81, "height" : 1, "width" : 15.62} -->


Notes:

---

## Multiple Runs With K vs. WSSSE

* Let's iterate through a bunch of Ks

```python
for k in range(2, 32):
    kmeans = KMeans(n_clusters=k, random_state=0)
    model = kmeans.fit(x)
    wssse = model.inertia_
    print ("k={},  wssse={}".format(k,wssse))
```
<!-- {"left" : 0.85, "top" : 1.8, "height" : 3.75, "width" : 12.21} -->

```text
k=2,  wssse=416.48425120772936
k=3,  wssse=169.40535714285713
k=4,  wssse=107.64864285714285
...
k=30,  wssse=0.0
k=31,  wssse=0.0
```
<!-- {"left" : 0.85, "top" : 6.57, "height" : 2.47, "width" : 8.1} -->

<img src="../../assets/images/machine-learning/kmeans-11-wssse.png" alt="kmeans-11-wssse.png" style="width:76%;"/><!-- {"left" : 2.19, "top" : 3.4, "height" : 5.59, "width" : 13.12} -->

Notes:

---

## Evaluating K-Means With WSSSE

* WSSSE: Within Set Sum of Squared Errors
    - COST = sum of squared distances of points to cluster center.
* Goal is to **minimize WSSSE** with **reasonable effort**
* We look for elbows - that indicates a reasonable clustering
* After the elbow, the improvement is minimal
* **Question for class:** At **k=32** we have achieved **WSSSE=0**, as in perfect fit !How is that?

<img src="../../assets/images/machine-learning/kmeans-11-wssse.png" style="width:68%;"/><!-- {"left" : 4.01, "top" : 6.76, "height" : 4.04, "width" : 9.48} -->

Notes:

---

## Lab: K-Means in Python

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - K-Means in Python

* **Approximate time:**
    - 30-40 mins

* **Instructions:**
    - KMEANS-1: lab (mtcars)
    - KMEANS-2: Uber trips
    - Bonus Lab: KMEANS-3: Walmart shopping data

Notes:

---


## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?