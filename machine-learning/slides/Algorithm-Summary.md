# Machine Learning Algorithm Overview

---

## Algorithm Summary


| Category            	| Sub Category             	| Example                                                                          	| Algorithms                                                         	|
|---------------------	|--------------------------	|----------------------------------------------------------------------------------	|--------------------------------------------------------------------	|
| **Supervised**      	| Regressions              	| -Predict house prices,-Predict stock price                                       	| -Linear Regression,-Polynomial,-Stepwise,-Ridge, Lasso, ElasticNet 	|
|                     	| Classifications          	| -Cancer or not,-Spam or not                                                      	| -Logistic Regression,-SVM,-Naïve Bayes,-K Nearest Neighbor (KNN)   	|
|                     	| Decision Trees           	| -Classification (credit card fraud detection),-Regression (predict stock prices) 	| -Decision Trees,-Random Forests                                    	|
| **Unsupervised**    	| Clustering               	| -Group Uber trips,-Cluster DNA data                                              	| -K-Means,-Hierarchical clustering                                  	|
|                     	| Dimensionality reduction 	| -Reducing number of dimensions in data                                           	| -PCA                                                               	|
| **Recommendations** 	|                          	| -Recommend movies                                                                	| -Collaborative Filtering                                           	|

<!-- {"left" : 0.05, "top" : 0.81, "height" : 6.7, "width" : 10.25, "columnwidth" : [2.4, 1.69, 3.3, 2.85]} -->


Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/

---

## Cheat Sheet

<img src="../../assets/images/machine-learning/cheat-sheet.png" alt="cheat-sheet.png" style="width:90%;"/> <!-- {"left" : 0.17, "top" : 1.15, "height" : 5.93, "width" : 9.9} -->


Notes:

---

## Regression / Linear Regression

| Name              	| Type       	| Use                                                                                                                                                                    	| Linear / Non Linear 	| Normalize? 	|
|-------------------	|------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Linear Regression 	| Regression 	| Predicts a target based on one or more variables,-Home prices, Advantages: -Easy to understand, Disadvantages: - Can be too simple a model,-Can 'overfit' data 	| Linear              	| Yes        	|      	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.45, "width" : 9.76, "columnwidth" : [2.19, 1.54, 3.22, 1.51, 1.3]} -->


Notes:

---

## Classification / Logistic Regression

| Name                	| Type           	| Use                                                                                                                                                                                                                                                      	| Linear / Non Linear 	| Normalize? 	|
|---------------------	|----------------	|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Logistic Regression 	| Classification 	| Categorize observation based on quantitative features.,Predict target class or probability of target classes.,-Credit approval,-Default or not,Advantages: - Easy to understand, Disadvantages: - Can be too simple a model,- Can 'overfit' data 	| Linear              	| Yes        	|
                                                                                                                                                                                                                                                     

<!-- {"left" : 0.26, "top" : 0.9, "height" : 4.09, "width" : 9.75, "columnwidth" : [1.53, 1.75, 3.5, 1.5, 1.46]} -->


Notes:


---

## Classification / SVM

| Name            	| Type                       	| Use                                                                                                                            	| Linear /Non Linear 	| Norma lize? 	|
|-----------------	|----------------------------	|--------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| SVM             	| Classification/ Regression 	| Classification based on separation  on high dimensional space. Predictstarget classes  -Credit card default -College admission 	| Linear             	| Yes         	|
| SVM with Kernel 	| Classification/ Regression 	| Supports non-linear models                                                                                                     	| Non Linear         	| Yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.53, "width" : 9.75, "columnwidth" : [1.95, 1.95, 3.23, 1.3, 1.32]} -->


Notes:


---

## Classification or Regression / KNN

| Name                       	| Type                       	| Use                                                                                                                                                                                     	| Linear /Non Linear 	| Norma lize? 	|
|----------------------------	|----------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| K-Nearest Neighbors  (KNN) 	| Classification/ Regression 	| Targets are computed based on training set that are "nearest" to the labeled data.   For classification, training targets 'vote' For regression an average of training targets is used. 	| Non Linear         	| Yes         	|


Notes:


---

## Decision Trees & Random Forests

| Name           	| Type                        	| Use                                                                                                                                                                                                                                                                                                                      	| Linear / Non Linear 	| Normalize? 	|
|----------------	|-----------------------------	|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Decision Trees 	| Classification / Regression 	| Training data is recursively split into subsets based on attributes.,Advantages: - Easy to understandable models,Disadvantages: - Too simple                                                                                                                                                                       	| Non Linear          	| No         	|
| Random Forest  	| Classification / Regression 	| Ensemble of decision trees is used to produce a stronger prediction than a single decision tree.,For classification multiple decision trees 'vote'.,For regression their results are averaged., Advantages: - Produces good quality models,-Fast to train,-, Disadvantages: - Slow to predict,Not easy to understand 	| Non Linear          	| No         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 6.4, "width" : 9.75, "columnwidth" : [1.27, 1.78, 3.8, 1.55, 1.34]} -->


Notes:


---

## Boosting

| Name     	| Type                       	| Use                                                                                                                                                                                                                                                                                                                                                     	| Linear /Non Linear 	| Norma lize? 	|
|----------	|----------------------------	|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| Boosting 	| Classification /Regression 	| For multi-tree methods, boosting algorithms reduce generalization error by adjusting weights to give greater weight to examples that are mis -classified or (for regressions) those with larger residuals  Advantages: - High performing  Disadvantages: -Small change in training set can radically alter the model -Not easy to understand predictions 	| Non Linear         	| yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 5.17, "width" : 9.75, "columnwidth" : [1.14, 1.71, 4.01, 1.47, 1.42]} -->



Notes:


---

## Classification / Naïve Bayes

| Name        	| Type           	| Use                                                                                                                                                                                                                          	| Linear /Non Linear 	| Norma lize? 	|
|-------------	|----------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| Naïve Bayes 	| Classification 	| Simple scalable classification algorithm used specially in text classification (e.g.spam).  It utilizes Bayes theorem.  Advantages: - Works surprisingly well for certain problems (spam identification)  Disadvantages:  - TBD 	| Non Linear         	| yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.71, "width" : 9.75, "columnwidth" : [1.63, 1.84, 3.23, 1.73, 1.32]} -->


Notes:


---

## Neural Networks

| Name           	| Type                        	| Use                                                                                                                                                                                                                                                                                                                                                                                           	| Linear / Non Linear 	| Normalize? 	|
|----------------	|-----------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Neural Network 	| Classification / Regression 	| Figures out target based on large number of inputs.,Generally more complex and time consuming than other methods.,The basis for many deep learning methods.,Advantages,Produces amazingly good results when trained well,Scales well for large data sets,Disadvantages,Models can get very complex, not very understandable,Computationally very expensive (need cluster level resources) 	| Non Linear          	| Yes        	|
<!-- {"left" : 0.26, "top" : 0.9, "height" : 5.17, "width" : 9.75, "columnwidth" : [1.66, 1.6, 3.72, 1.46, 1.3]} -->



Notes:


---