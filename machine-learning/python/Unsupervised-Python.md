# Unsupervised Learning in Python SciKit

---

# Unsupervised Generic

[../../machine-learning/generic/Unsupervised-Generic.md](../../machine-learning/generic/Unsupervised-Generic.md)

---

# Clustering in Scikit-learn

---

## K-Means in Scikit-learn

  * Scikit-learn has good support for k-means
  * How to perform k-means clustering in Scikit-learn

    - Put data in ndarray
    - Perform clustering with a specified number of iterations
    - Evaluate the “fit” of the cluster. Is it a good run?
    - If not, change the number of clusters (value of k)
    - Once we have a good clustering run:
       - Map each vector to its nearest cluster
       - Group original data by its corresponding cluster
       - Assign (predict) new vectors to their nearest cluster

Notes:

---

## K-Means in Scikit-learn


  * k-means clustering
  * Must do import:
    -  `from sklearn import kmeans`
  * Default values: just provide `KMeans(n_clusters=value-of-k)`
    - `kmeans = kmeans.KMeans(n_clusters=2. random_state=0).fit(X)`

Notes:

---

## Evaluating Cluster Performance

  * WSSSE: Within Set Sum of Squared Errors

  * WSSSSE = `kmeans._inertia`

    - COST = sum of squared distances of points to cluster center.

  * What does this mean?

    - WSSSE will decrease with increasing values of k.
    - “Law of Diminishing Returns”
      - High values of k give marginal gain.

  * We can iterate across k until we get good results.

Notes:

---

## The Elbow Method

* Identify the “elbow” on the curve

* Example: What value of K to select in this case?

<img src="../../assets/images/machine-learning/kmeans-13-wssse.png" alt="kmeans-13-wssse.png" style="width:50%;"/><!-- {"left" : 1.01, "top" : 2.26, "height" : 4.69, "width" : 8.03} -->


Notes:

Elbow method is basically plotting “variance” % of a data against number of clusters and find the point after which  adding more clusters will not make a huge difference. That is called Elbow method.

---

## Using Scikit-Learn KMeans Model

  * How to apply the model to data?

  * Use predict:

    - `clusterIds = kmeans.predict(Vector)`

  * Predict returns an integer

    - Cluster number, i.e., `0, 1, 2, 3… (k-1)`.


Notes:

  * KMeans is a clustering model for K-means. Each point belongs to the cluster with the closest center.
    - Method Predict maps given points to their cluster indices. Returns the cluster index that a given point belongs to.

---

## Handling New Data

* New Data be assigned on the existing model:

- Make a Vector out of the new Data
- Call `KMeans.predict(vector)`, to get cluster membership as a number (integer)

* The new data will not affect the existing cluster locations.


Notes:

---


# PCA in Scikit-learn

---

## PCA Example

 * This will reduce the dimensionality down to 2 dimensions:
 * Good for Plotting!

```python
from sklearn.decomposition import PCA

pca = PCA(n_components=2)
X_r = pca.fit_transform(df)
```
