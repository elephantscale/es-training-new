# Dimensionality Reduction in Python

---

## Lesson Objectives

* Learn Dimensionality Reduction algorithms in Python

---

# Dimensionality Reduction

[../generic/Dimensionality-Reduction.md](../generic/Dimensionality-Reduction.md)

---

# PCA in Scikit-learn

---

## PCA in Scikit-learn

```python
from sklearn.datasets import make_classification
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA

# Generate high dimensional data (200 columns!)
X, y = make_classification( n_samples=10000, n_features=200, n_classes=2, random_state=123)
print ("X.shape :", X.shape)  # X.shape : (10000, 200)

# Scale data
scaler = StandardScaler ()
X_scaled = scaler.fit_transform(X)


# we are doing 2 PC
pca = PCA(n_components = 2)
pca_data = pca.fit_transform(X_scaled)
pca_df = pd.DataFrame(pca_data, columns = ['pc1', 'pc2'])
pca_df.head(10)
```

```text

# original data  (200 columns)
X  = [ 0.06402486 -0.98061593 -1.18883537 -0.51764847 -0.82179227  0.0739652
  1.44180342  0.19518421 -0.29517086  1.47912689 -0.71346016  2.27275175 ...]

# PCA data (2 columns)
     pc1   pc2
0   0.65  1.71
1   0.62  1.53
2   2.74 -0.14
```

---

## Python sklearn PCA Parameters

```python
class sklearn.decomposition.PCA(n_components=None, *, copy=True,
                                whiten=False, svd_solver='auto',
                                tol=0.0, iterated_power='auto',
                                random_state=None)
 ```
<!-- {"left" : 0.85, "top" : 2.57, "height" : 1.82, "width" : 14.43} -->

| Parameter    | Description                                                                                                                                                                                                                   | Default Value |
|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| n_components | Number of principal components                                                                                                                                                                                                |               |
| svd_solver   | How to use SVD to get PCA  - Possible values: - "full" : calculate exact SVD - "arpack": truncated SVD for speed  - "randomized": uses Halko method for speed  - "auto": "full" for small data, "randomized" for larger data. | "auto"        |
| whiten       | scale output to unit variance                                                                                                                                                                                                 | False         |
| tol          | Threshold indicating the convergence o fclusters                                                                                                                                                                              | 1e-4          |
| maxIter      | How many iterations                                                                                                                                                                                                           | 20            |
| random_state | Initial seed setting                                                                                                                                                                                                          |               |

<!-- {"left" : 0.78, "top" : 4.84, "height" : 1, "width" : 15.95, "columnwidth" : [3.71, 8.56, 3.68]} -->

Notes:

---

## Lab: PCA

<img src="../../assets/images/icons/individual-labs.png" style="width:30%;float:right;" /><!-- {"left" : 12.65, "top" : 1.89, "height" : 5.83, "width" : 4.37} -->

* **Overview:**
    - Reduce data dimension with PCA

* **Approximate Time:**
    - 30 mins

* **Instructions:**
    - **PCA-1: Intro**
    - **PCA-2: Wine quality data**

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
