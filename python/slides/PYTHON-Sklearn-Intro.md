# Python Scikit-Learn

<img src="../../assets/images/logos/scikit-learn-logo-1.png" style="width:40%;"/><!-- {"left" : 2.92, "top" : 6.17, "height" : 1.61, "width" : 2.99} -->



---

## Lesson Objectives

  * Understand Scikit-Learn in Python
  * Advantages and Disadvantages
  * Supervised Machine Learning
  * Unsupervised Machine Learning
  * Recommendations

Notes:

---
# SKLearn Intro

---

## What is Scikit-learn?

<img src="../../assets/images/logos/scikit-learn-logo-1.png" style="width:20%; float:right;"/><!-- {"left" : 7.2, "top" : 1.36, "height" : 1.69, "width" : 2.52} -->

* Scikit-Learn is a machine learning library written in Python

* Developed by David Cournapeau in 2007
  * Now most popular ML library after Tensorflow
  
* Why is Scikit-Learn popular?
  * Consistent API
  * Complete Documentation
  * Comprehensive - has lots of popular algorithms implemented
  * Fast (most code written in Cython - gives like C like performance)


Notes:
- https://scikit-learn.org/stable/
- https://en.wikipedia.org/wiki/Scikit-learn

---

## Version History
 * Current: July 2019: scikit-learn 0.21.3
 * July 2017. scikit-learn 0.19.0
 * September 2016. scikit-learn 0.18.0
 * November 2015. scikit-learn 0.17.0[9]
 * March 2015. scikit-learn 0.16.0[9]
 * July 2014. scikit-learn 0.15.0[9]
 * August 2013. scikit-learn 0.14[9]

Notes:

---

## Limitations

 * Single Node Only
   - No Parallelization (other than threads)
   - Can use multiple CPU cores in ONE machine (by using `n_jobs` parameter)
   - No Cluster Computing
   
 * Limited Data Size
   - Data Size should fit in memory
   
 * No Deep Learning
   - Limited neural network support
   - No Deep Learning

Notes:

---

## Scikit-learn vs Tensorflow

|                  | Scikit-learn                              | Tensorflow                      |
|------------------|-------------------------------------------|---------------------------------|
| Machine Learning | Comprehensive support with consistent API | Some support for traditional ML |
| Deep Learning    | No deep-learning support                  | Specializes in Deep Learning    |
| Scalability      | Single Node Only                          | Parallel Tensorflow             |
| GPU Support      | None                                      | Extensive                       |
| Data Size        | Data should fit in memory                 | Can integrate with Big Data     |

<!-- {"left" : 0.25, "top" : 1.3, "height" : 3.38, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

---

## Scikit-learn vs Spark ML

|                  | Scikit-learn                              | Spark MLLib                     |
|------------------|-------------------------------------------|---------------------------------|
| Machine Learning | Comprehensive support with consistent API | Some ML Algorithms supported    |
| Deep Learning    | No deep-learning support                  | No deep learning Support        |
| Scalability      | Single Node Only                          | Cluster Computing               |
| GPU Support      | None                                      | None                            |
| Data Size        | Data should fit in memory                 | Part of Big-Data Ecosystem      |

<!-- {"left" : 0.25, "top" : 1.3, "height" : 3.38, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

---
## Installing Scikit-Learn

- Using Conda

```bash
    conda install numpy
    conda install pandas
    conda install scipy
    conda install scikit-learn
```
<!-- {"left" : 0, "top" : 2.04, "height" : 1.44, "width" : 5.78} -->


<br/>

- Using Pip

```bash
    pip3 install numpy
    pip3 install pandas
    pip3 install scipy
    pip3 install scikit-learn
```
<!-- {"left" : 0, "top" : 4.43, "height" : 1.49, "width" : 5.78} -->


---


# SKLearn Classes and Utils

---

## SKLearn Classes

- **Estimators:** An estimator is any object that learns from data; it may be a classification, regression or clustering algorithm or a transformer that extracts/filters useful features from raw data.

- **Datasets:** built-in datasets for ease of use

---

# SKLearn Datasets

---

## SKLearn Datasets

- `scikit.datasets` package has some very popular datasets
    - __`load_iris`__ : popular IRIS dataset
    - __`load_boston`__ : Boston housing data

- It also has some **data generators** to dynamically generate data
    - __`make_blobs`__
    - __`make_classification`__

- For more information see [reference doc](https://scikit-learn.org/stable/modules/classes.html#module-sklearn.datasets)

Notes:
- https://scikit-learn.org/stable/modules/classes.html#module-sklearn.datasets

---

## SkLearn Datasets : IRIS

```python
import sklearn
from sklearn import datasets

iris = sklearn.datasets.load_iris()

## what is in
iris.keys()
# > dict_keys(['data', 'target', 'target_names', 'DESCR', 'feature_names', 'filename'])

## learn about data
print (iris.DESCR)
# > ...

## X / features
x = iris.data
x.shape
# > (150, 4)

## y / labels
y = iris.target
y.shape
# > (150, )

```
<!-- {"left" : 0, "top" : 1.54, "height" : 4.49, "width" : 10.25} -->

---

## SKLearn Datasets : Boston


```python
import sklearn
from sklearn import datasets

boston = sklearn.datasets.load_boston()

x = boston.data
x.shape
# (506, 13)

y = boston.target
y.shape
# (506, )

```
<!-- {"left" : 0, "top" : 1.54, "height" : 3.78, "width" : 7.28} -->

---

## SKLearn Datasets : make_blobs

<img src="../../assets/images/data-analysis-python/scikit-make-blobs-1.png" style="width:40%;float:right;"/><!-- {"left" : 3.34, "top" : 1.09, "height" : 2.44, "width" : 3.56} -->


```python
import sklearn
from sklearn import datasets
%matplotlib inline
import matplotlib.pyplot as plt

x,y  = sklearn.datasets.make_blobs(n_samples=1000,
                n_features=2, centers=2)

x.shape
# (1000,2)
y.shape
#(1000,)

print (x)
# [[-8.81854065  2.17578795]
#  [10.47105009 -1.49493095]
#  [10.88797932 -0.42258301]
#  ....

print(y)
# [0 1 1 0 1 0 1  ...

## plot
plt.scatter(x[:, 0], x[:, 1], c=y)

```
<!-- {"left" : 0, "top" : 3.62, "height" : 5.16, "width" : 6.46} -->

---

## SkLearn Datasets: make_classification


<img src="../../assets/images/data-analysis-python/scikit-make-classification-1.png" style="width:40%;float:right;"/><!-- {"left" : 2.56, "top" : 1.21, "height" : 3.44, "width" : 5.14} -->


```python
import sklearn
from sklearn import datasets
%matplotlib inline
import matplotlib.pyplot as plt

x, y = sklearn.datasets.make_classification(n_samples = 1000 ,
        n_features=2, n_redundant=0,
        n_informative=1, n_clusters_per_class=1)

plt.scatter(x[:, 0], x[:, 1], marker='o', c=y,
            s=25, edgecolor='k')
```
<!-- {"left" : 0, "top" : 4.96, "height" : 3.24, "width" : 10.25} -->

---

# Scikit Estimator

---

## Estimators

<img src="../../assets/images/data-analysis-python/scikit-estimator-1.png" style="width:40%;float:right;"/><!-- {"left" : 5.2, "top" : 3, "height" : 0.61, "width" : 4.9} -->

<img src="../../assets/images/data-analysis-python/scikit-estimator-2.png" style="width:40%;float:right;clear:both;"/><!-- {"left" : 5.15, "top" : 3.87, "height" : 0.93, "width" : 5} -->


 * Estimators are used to
    - transform data
    - and create models by training on data

 * Algorithms (Regressions / Classifications) are implemented as Estimator
   - training:  __`estimator.fit(data)`__

 * An example of transforming data
   - transforming data: 
   - __`transformed = estimator.transform(data)`__


Notes:

---

## estimator.transform()

- Used to transform data
    - for example scaling data

```python
from sklearn.preprocessing import MinMaxScaler

scaler = MinMaxScaler()
data = [....]
scaled_data = scaler.transform(data)

```
<!-- {"left" : 0, "top" : 2.3, "height" : 1.88, "width" : 9.15} -->

---

## estimator.fit()
* .fit(data) will fit the estimator to the data
* Can take 1 or 2 parameters
* 1 Parameter is just data
   - usually for unsupervised learning
   - __`estimator.fit(data)`__

* 2 parameters are data + labels
   - usually for supervised learning
   - __`estimator.fit(x_train, y_train)`__


Notes:

---

## estimator.predict() Method
 * Most estimators have a .predict() method
 
 * Designed for delivering labels on new data
 
 * For unsupervised learning, for example clustering, `predict()` will assign data to cluster
 
 * Training: __`estimator.fit(x_train, y_train)`__
 
 * Prediction: __`estimator.predict(x_test)`__

Notes:

---

## Estimator Example: SVM

```python
from sklearn import svm

# Instantiate SVM Classifier
clf = svm.SVC(gamma=0.001, C=100.)

# Fit model to data
clf.fit(x_train, y_train) #(notice 2 params)

# Make a prediction
y_pred = clf.predict(x_test)

```
<!-- {"left" : 0, "top" : 1.47, "height" : 2.65, "width" : 7.28} -->


Notes:

---


# SkLearn Algorithms

---


## Algorithms
  * Sklearn has many algorithms
    1. Preprocessing: Getting the data into shape for Machine Learning
    
    2. Dimensionality Reduction: Reducing redundancy in variables
    
    3. Classification: Predicting one of a finite set of classes for data.
    
    4. Regression: Predicting a response variable
    
    5. Clustering: Finding natural patterns in the data.
    
    6. Model Selection: Finding the best model for our data.


Notes:

---
## Algorithm Summary

| PreProcessing                    | Dimensionality Reduction           | Classification                | Regression              | Clustering              | Model Selection                                    |
|----------------------------------|------------------------------------|-------------------------------|-------------------------|-------------------------|----------------------------------------------------|
| Feature Scaling (Scaler Classes) | PCA (Principal Component Analysis) | Linear Models                 | Linear Models           | Kmeans                  | Cross-Validation                                   |
| Normalization                    | SVD (Singular Value Decomposition) | SVM (Support Vector Machines) | Decision Trees          | Spectral Clustering     | Hyperparmeter Tuning                               |
| Binarization                     | Linear Discriminant Analysis       | Nearest Neighbors             | Ensemble Decision Trees | Hierarchical Clustering | Model Persistence                                  |
| Categorical Encoding             | LDA (Latent Dirichlet Allocation)  | Naive Bayes                   |                         |                         | Metrics (Regressions, Classifications, Clustering) |
| Imputation                       |                                    | Decision Trees                |                         |                         |                                                    |
| FunctionTransformer              |                                    | Ensemble Decision Trees       |                         |                         |                                                    |
|                                  |                                    | Neural Networks               |                         |                         |                                                    

<!-- {"left" : 0, "top" : 0.93, "height" : 7.87, "width" : 10.25, "columnwidth" : [1.73, 1.77, 1.74, 1.62, 1.65, 1.74]} -->

---

## Scikit-Learn Algorithm Map

<img src="../../assets/images/data-analysis-python/3rd-party/scikit-learn-algorithm-cheatsheet-1.png" style="max-width:80%;" /><!-- {"left" : 1.02, "top" : 2.26, "height" : 5.12, "width" : 8.21} -->


---


# SkLearn Mixins

---

## Mix-ins

 * Not just for ice-cream!
 
 * Scikit-learn has several mix-ins for class
   - __`TransformerMixIn`__
   - __`ClassifierMixIn`__
   - __`ClusterMixIn`__
   - __`RegressorMixIn`__
   
 * Added to class with multiple-inheritance

Notes:

---

## Transformer Mix-In
  * Transformer mix-in adds 2 methods:
    - __`transform()`__
    - __`fit_transform()`__: calls fit, then transform
    
  * Transformers are used for transformations
    - like PCA
    
  * A trivial Example:

```python
transformer = FunctionTransformer(np.log1p)
transformer.transform(np.array[1,2])
[0.69314718, 1.09861229]
```
<!-- {"left" : 0, "top" : 4, "height" : 1.07, "width" : 7.94} -->

Notes:

---

## Classifier Mix-In
  * Designed to be used for classification
  * Has a score:
    - takes in X, y, weights
    - returns score: accuracy

Notes:

---

## Regressor Mix-In
  * Designed to be used for regression
  * Has a Score
    - Takes in X,y,weights
    - returns r-squared

Notes:

---

## Cluster Mix-In
  * __`fit_predict()`__
    - call __`fit()`__ then __`predict()`__
  * score: Too many!
    - a number of scoring options for clusters.
    - depends on type


Notes:


