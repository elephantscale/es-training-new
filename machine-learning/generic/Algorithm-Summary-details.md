# Machine Learning Algorithm Overview

---

[Algorithm-Summary.md](Algorithm-Summary.md)

---

## Cheat Sheet

<img src="../../assets/images/machine-learning/cheat-sheet.png" alt="cheat-sheet.png" style="width:85%;"/> <!-- {"left" : 0.17, "top" : 1.15, "height" : 5.93, "width" : 9.9} -->


Notes:

---

## Regression / Linear Regression

| Name| Type| Use | Linear / Non Linear | Normalize? |
|-------------------|------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Linear Regression | Regression | Predicts a target based on one or more variables <br/><br/> -Home prices <br/><br/> **<u>Advantages:</u>** <br/>-Easy to understand <br/><br/>**<u>Disadvantages:</u>** <br/>- Can be too simple a model<br/>-Can 'overfit' data | Linear              | Yes        |

<!-- {"left" : 0.15, "top" : 1.48, "height" : 2.49, "width" : 9.94, "columnwidth" : [2.19, 1.54, 3, 1.6, 1.62]} -->


Notes:

---

## Classification / Logistic Regression

| Name | Type | Use | Linear / Non Linear | Normalize? |
|---------------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Logistic Regression | Classification | Categorize observation based on quantitative features. Predict target class or probability of target classes.<br/><br/>- Credit approval<br/>- Default or not <br/><br/>**<u>Advantages:</u>**<br/> - Easy to understand<br/><br/>**<u>Disadvantages:</u>**<br/> - Can be too simple a model<br/>- Can 'overfit' data | Linear              | Yes        |


<!-- {"left" : 0.15, "top" : 1.48, "height" : 2.15, "width" : 9.95, "columnwidth" : [1.56, 1.79, 3.57, 1.53, 1.49]} -->


Notes:


---

## Classification / SVM

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|-----------------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| SVM             | Classification/ Regression | Classification based on separation  on high dimensional space.<br/>Predicts target classes<br/><br/>  -Credit card default<br/> -College admission | Linear             | Yes         |
| SVM with Kernel | Classification/ Regression | Supports non-linear models                                                                                                                        | Non Linear         | Yes         |

<!-- {"left" : 0.1, "top" : 1.48, "height" : 2.5, "width" : 10.06, "columnwidth" : [1.57, 1.95, 3.54, 1.52, 1.48]} -->


Notes:


---

## Classification or Regression / KNN

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|----------------------------|----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| K-Nearest Neighbors  (KNN) | Classification/ Regression | Targets are computed based on training set that are "nearest" to the labeled data.<br/><br/> For classification, training targets 'vote'<br/>For regression an average of training targets is used. | Non Linear         | Yes         |

<!-- {"left" : 0.25, "top" : 1.48, "height" : 2.46, "width" : 9.75} -->

Notes:


---

## Decision Trees & Random Forests

| Name | Type | Use | Linear / Non Linear | Normalize? |
|----------------|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Decision Trees | Classification / Regression | Training data is recursively split into subsets based on attributes.<br/><br/> **<u>Advantages:</u>**<br/> - Easy to understandable models<br/> <br/> **<u>Disadvantages:</u>**<br/> - Too simple                                                                                                                                                                                  | Non Linear          | No         |
| Random Forest  | Classification / Regression | Ensemble of decision trees is used to produce a stronger prediction than a single decision tree. For classification multiple decision trees 'vote'. For regression their results are averaged. <br/><br/> **<u>Advantages:</u>**<br/> - Produces good quality models<br/>-Fast to train <br/> <br/> **<u>Disadvantages:</u>**<br/> - Slow to predict <br/>- Not easy to understand | Non Linear          | No         |


<!-- {"left" : 0.16, "top" : 1.07, "height" : 2.71, "width" : 9.93, "columnwidth" : [1.15, 1.62, 4.14, 1.49, 1.51]} -->


Notes:


---

## Boosting

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|----------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| Boosting | Classification /Regression | For multi-tree methods, boosting algorithms reduce generalization error by adjusting weights to give greater weight to examples that are misclassified or (for regressions) those with larger residuals <br/><br/> **<u>Advantages:</u>**<br/> - High performing  <br/> <br/> **<u>Disadvantages:</u>**<br/> -Small change in training set can radically alter the model <br/>-Not easy to understand predictions | Non Linear         | yes         |

<!-- {"left" : 0.13, "top" : 1.48, "height" : 2.91, "width" : 9.99, "columnwidth" : [1.24, 1.62, 3.99, 1.61, 1.53]} -->



Notes:


---

## Classification / Naïve Bayes

| Name | Type | Use | Linear /Non-Linear | Normalize? |
|-------------|----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|-------------|
| Naïve Bayes | Classification | Simple scalable classification algorithm used specially in text classification (e.g.spam).  It utilizes Bayes theorem.   <br/><br/> **<u>Advantages:</u>**<br/> - Works surprisingly well for certain problems (spam identification)  <br/><br/> **<u>Disadvantages:</u>**<br/>  - TBD | Non Linear         | yes         |

<!-- {"left" : 0.12, "top" : 1.48, "height" : 2.26, "width" : 10.01, "columnwidth" : [1.61, 1.72, 3.23, 1.83, 1.63]} -->


Notes:


---

## Neural Networks

| Name | Type | Use | Linear / Non Linear | Normalize? |
|----------------|-----------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------|------------|
| Neural Network | Classification / Regression | Figures out target based on large number of inputs. Generally more complex and time consuming than other methods. The basis for many deep learning methods.<br/><br/> **<u>Advantages:</u>**<br/>- Produces amazingly good results when trained well<br/> - Scales well for large data sets<br/><br/> **<u>Disadvantages:</u>**<br/>- Models can get very complex, not very understandable <br/>- Computationally very expensive (need cluster level resources) | Non Linear          | Yes        |

<!-- {"left" : 0.14, "top" : 1.48, "height" : 2, "width" : 9.96, "columnwidth" : [1.25, 1.66, 3.82, 1.65, 1.59]} -->


Notes:
