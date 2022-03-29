# Machine Learning Algorithm Overview

---
## 

[Algorithm-Summary.md](Algorithm-Summary.md)

---

## Cheat Sheet

<img src="../../assets/images/machine-learning/cheat-sheet.png" alt="cheat-sheet.png" style="width:85%;"/> <!-- {"left" : 1.01, "top" : 2.22, "height" : 9.27, "width" : 15.48} -->


Notes:

---

## Regression / Linear Regression

| Name| Type| Use | Linear / Non Linear | Normalize? |
|-------------------|------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Linear Regression | Regression | Predicts a target based on one or more variables <br/><br/> -Home prices <br/><br/> **<u>Advantages:</u>** <br/>-Easy to understand <br/><br/>**<u>Disadvantages:</u>** <br/>- Can be too simple a model<br/>-Can 'overfit' data | Linear              | Yes        |

<!-- {"left" : 0.75, "top" : 2.75, "height" : 1, "width" : 16, "columnwidth" : [3.33, 2.37, 4.19, 3.3, 2.82]} -->


Notes:

---

## Classification / Logistic Regression

| Name | Type | Use | Linear / Non Linear | Normalize? |
|---------------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Logistic Regression | Classification | Categorize observation based on quantitative features. Predict target class or probability of target classes.<br/><br/>- Credit approval<br/>- Default or not <br/><br/>**<u>Advantages:</u>**<br/> - Easy to understand<br/><br/>**<u>Disadvantages:</u>**<br/> - Can be too simple a model<br/>- Can 'overfit' data | Linear              | Yes        |


<!-- {"left" : 0.24, "top" : 2.75, "height" : 1, "width" : 17.01, "columnwidth" : [2.16, 2.44, 6.17, 3.84, 2.41]} -->


Notes:


---

## Classification / SVM

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|-----------------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| SVM             | Classification/ Regression | Classification based on separation  on high dimensional space.<br/>Predicts target classes<br/><br/>  -Credit card default<br/> -College admission | Linear             | Yes         |
| SVM with Kernel | Classification/ Regression | Supports non-linear models                                                                                                                        | Non Linear         | Yes         |

<!-- {"left" : 0.34, "top" : 2.75, "height" : 1, "width" : 16.81, "columnwidth" : [2.62, 3.26, 4.94, 3.52, 2.47]} -->


Notes:


---

## Classification or Regression / KNN

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|----------------------------|----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| K-Nearest Neighbors  (KNN) | Classification/ Regression | Targets are computed based on training set that are "nearest" to the labeled data.<br/><br/> For classification, training targets 'vote'<br/>For regression an average of training targets is used. | Non Linear         | Yes         |

<!-- {"left" : 0.46, "top" : 2.75, "height" : 1, "width" : 16.58,  "columnwidth" : [3.32, 3.32, 3.32, 3.32, 3.32]} -->

Notes:


---

## Decision Trees & Random Forests

| Name | Type | Use | Linear / Non Linear | Normalize? |
|----------------|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Decision Trees | Classification / Regression | Training data is recursively split into subsets based on attributes.<br/><br/> **<u>Advantages:</u>**<br/> - Easy to understandable models<br/> <br/> **<u>Disadvantages:</u>**<br/> - Too simple                                                                                                                                                                                  | Non Linear          | No         |
| Random Forest  | Classification / Regression | Ensemble of decision trees is used to produce a stronger prediction than a single decision tree. For classification multiple decision trees 'vote'. For regression their results are averaged. <br/><br/> **<u>Advantages:</u>**<br/> - Produces good quality models<br/>-Fast to train <br/> <br/> **<u>Disadvantages:</u>**<br/> - Slow to predict <br/>- Not easy to understand | Non Linear          | No         |


<!-- {"left" : 0.25, "top" : 2, "height" : 1, "width" : 16.99, "columnwidth" : [1.8, 2.58, 6.94, 3.53, 2.14]} -->


Notes:


---

## Boosting

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|----------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| Boosting | Classification /Regression | For multi-tree methods, boosting algorithms reduce generalization error by adjusting weights to give greater weight to examples that are misclassified or (for regressions) those with larger residuals <br/><br/> **<u>Advantages:</u>**<br/> - High performing  <br/> <br/> **<u>Disadvantages:</u>**<br/> -Small change in training set can radically alter the model <br/>-Not easy to understand predictions | Non Linear         | yes         |

<!-- {"left" : 0.46, "top" : 2.75, "height" : 1, "width" : 16.59, "columnwidth" : [1.91, 2.6, 6.06, 3.52, 2.5]} -->



Notes:


---

## Classification / Naïve Bayes

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|-------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| Naïve Bayes | Classification | Simple scalable classification algorithm used specially in text classification (e.g.spam).  It utilizes Bayes theorem.   <br/><br/> **<u>Advantages:</u>**<br/> - Works surprisingly well for certain problems (spam identification)  <br/><br/> **<u>Disadvantages:</u>**<br/>  - TBD | Non Linear         | yes         |

<!-- {"left" : 0.36, "top" : 2.75, "height" : 1, "width" : 16.78, "columnwidth" : [2.7, 2.88, 5.41, 3.06, 2.73]} -->


Notes:


---

## Neural Networks

| Name | Type | Use | Linear / Non Linear | Normalize? |
|----------------|-----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Neural Network | Classification / Regression | Figures out target based on large number of inputs. Generally more complex and time consuming than other methods. The basis for many deep learning methods.<br/><br/> **<u>Advantages:</u>**<br/>- Produces amazingly good results when trained well<br/> - Scales well for large data sets<br/><br/> **<u>Disadvantages:</u>**<br/>- Models can get very complex, not very understandable <br/>- Computationally very expensive (need cluster level resources) | Non Linear          | Yes        |

<!-- {"left" : 0.19, "top" : 2.75, "height" : 1, "width" : 17.11, "columnwidth" : [2.15, 2.85, 6.56, 3.32, 2.25]} -->


Notes:
