# Machine Learning Algorithm Overview

---

## Algorithm Summary


| Category            	| Sub Category             	| Example                                                                          	| Algorithms                                                         	|
|---------------------	|--------------------------	|----------------------------------------------------------------------------------	|--------------------------------------------------------------------	|
| **Supervised**      	| Regressions              	| - Predict house prices<br/>- Predict stock price                                       	| - Linear Regression <br/> - Polynomial <br/> - Stepwise <br/> - Ridge, Lasso, ElasticNet 	|
|                     	| Classifications          	| - Cancer or not <br/> - Spam or not                                                      	| - Logistic Regression <br/> - SVM <br/> - Naïve Bayes <br/> - K Nearest Neighbor (KNN)   	|
|                     	| Decision Trees           	| - Classification (credit card fraud detection) <br/> - Regression (predict stock prices) 	| - Decision Trees <br/> - Random Forests                                    	|
| **Unsupervised**    	| Clustering               	| - Group Uber trips <br/> - Cluster DNA data                                              	| - K-Means <br/> - Hierarchical clustering                                  	|
|                     	| Dimensionality reduction 	| - Reducing number of dimensions in data                                           	| - PCA                                                               	|
| **Recommendations** 	|                          	| - Recommend movies                                                                	| - Collaborative Filtering                                           	|

<!-- {"left" : 0.05, "top" : 0.81, "height" : 6.7, "width" : 10.25, "columnwidth" : [2.4, 1.69, 3.3, 2.85]} -->


Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/

---

## Cheat Sheet

<img src="../../assets/images/machine-learning/cheat-sheet.png" alt="cheat-sheet.png" style="width:85%;"/> <!-- {"left" : 0.17, "top" : 1.15, "height" : 5.93, "width" : 9.9} -->


Notes:

---

## Regression / Linear Regression

| Name              	| Type       	| Use                                                                                                                                                                    	| Linear / Non Linear 	| Normalize? 	|
|-------------------	|------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Linear Regression 	| Regression 	| Predicts a target based on one or more variables <br/><br/> -Home prices <br/><br/> **<u>Advantages:</u>** <br/>-Easy to understand <br/><br/>**<u>Disadvantages:</u>** <br/>- Can be too simple a model<br/>-Can 'overfit' data 	| Linear              	| Yes        	|      	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.45, "width" : 9.76, "columnwidth" : [2.19, 1.54, 3.22, 1.51, 1.3]} -->


Notes:

---

## Classification / Logistic Regression

| Name                	| Type           	| Use                                                                                                                                                                                                                                                      	| Linear / Non Linear 	| Normalize? 	|
|---------------------	|----------------	|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Logistic Regression 	| Classification 	| Categorize observation based on quantitative features. Predict target class or probability of target classes.<br/><br/>- Credit approval<br/>- Default or not <br/><br/>**<u>Advantages:</u>**<br/> - Easy to understand<br/><br/>**<u>Disadvantages:</u>**<br/> - Can be too simple a model<br/>- Can 'overfit' data 	| Linear              	| Yes        	|
                                                                                                                                                                                                                                                     

<!-- {"left" : 0.26, "top" : 0.9, "height" : 4.09, "width" : 9.75, "columnwidth" : [1.53, 1.75, 3.5, 1.5, 1.46]} -->


Notes:


---

## Classification / SVM

| Name            	| Type                       	| Use                                                                                                                            	| Linear /Non Linear 	| Norma lize? 	|
|-----------------	|----------------------------	|--------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| SVM             	| Classification/ Regression 	| Classification based on separation  on high dimensional space.<br/>Predictstarget classes<br/><br/>  -Credit card default<br/> -College admission 	| Linear             	| Yes         	|
| SVM with Kernel 	| Classification/ Regression 	| Supports non-linear models                                                                                                     	| Non Linear         	| Yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.53, "width" : 9.75, "columnwidth" : [1.95, 1.95, 3.23, 1.3, 1.32]} -->


Notes:


---

## Classification or Regression / KNN

| Name                       	| Type                       	| Use                                                                                                                                                                                     	| Linear /Non Linear 	| Norma lize? 	|
|----------------------------	|----------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| K-Nearest Neighbors  (KNN) 	| Classification/ Regression 	| Targets are computed based on training set that are "nearest" to the labeled data.<br/><br/> For classification, training targets 'vote' For regression an average of training targets is used. 	| Non Linear         	| Yes         	|


Notes:


---

## Decision Trees & Random Forests


| Name           	| Type                        	| Use                                                                                                                                                                                                                                                                                                                      	| Linear / Non Linear 	| Normalize? 	|
|----------------	|-----------------------------	|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Decision Trees 	| Classification / Regression 	| Training data is recursively split into subsets based on attributes.<br/><br/> **<u>Advantages:</u>**<br/> - Easy to understandable models<br/> <br/> **<u>Disadvantages:</u>**<br/> - Too simple                                                                                                                                                                       	| Non Linear          	| No         	|
| Random Forest  	| Classification / Regression 	| Ensemble of decision trees is used to produce a stronger prediction than a single decision tree. For classification multiple decision trees 'vote'. For regression their results are averaged. <br/><br/> **<u>Advantages:</u>**<br/> - Produces good quality models<br/>-Fast to train <br/> <br/> **<u>Disadvantages:</u>**<br/> - Slow to predict <br/>- Not easy to understand 	| Non Linear          	| No         	|


<!-- {"left" : 0.26, "top" : 0.9, "height" : 6.4, "width" : 9.75, "columnwidth" : [1.27, 1.78, 3.8, 1.55, 1.34]} -->


Notes:


---

## Boosting

| Name     	| Type                       	| Use                                                                                                                                                                                                                                                                                                                                                     	| Linear /Non Linear 	| Norma lize? 	|
|----------	|----------------------------	|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| Boosting 	| Classification /Regression 	| For multi-tree methods, boosting algorithms reduce generalization error by adjusting weights to give greater weight to examples that are mis -classified or (for regressions) those with larger residuals <br/><br/> **<u>Advantages:</u>**<br/> - High performing  <br/> <br/> **<u>Disadvantages:</u>**<br/> -Small change in training set can radically alter the model <br/>-Not easy to understand predictions 	| Non Linear         	| yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 5.17, "width" : 9.75, "columnwidth" : [1.14, 1.71, 4.01, 1.47, 1.42]} -->



Notes:


---

## Classification / Naïve Bayes

| Name        	| Type           	| Use                                                                                                                                                                                                                          	| Linear /Non Linear 	| Norma lize? 	|
|-------------	|----------------	|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|--------------------	|-------------	|
| Naïve Bayes 	| Classification 	| Simple scalable classification algorithm used specially in text classification (e.g.spam).  It utilizes Bayes theorem.   <br/><br/> **<u>Advantages:</u>**<br/> - Works surprisingly well for certain problems (spam identification)  <br/><br/> **<u>Disadvantages:</u>**<br/>  - TBD 	| Non Linear         	| yes         	|

<!-- {"left" : 0.26, "top" : 0.9, "height" : 3.71, "width" : 9.75, "columnwidth" : [1.63, 1.84, 3.23, 1.73, 1.32]} -->


Notes:


---

## Neural Networks


| Name           	| Type                        	| Use                                                                                                                                                                                                                                                                                                                                                                                           	| Linear / Non Linear 	| Normalize? 	|
|----------------	|-----------------------------	|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------	|------------	|
| Neural Network 	| Classification / Regression 	| Figures out target based on large number of inputs. Generally more complex and time consuming than other methods. The basis for many deep learning methods.<br/><br/> **<u>Advantages:</u>**<br/>- Produces amazingly good results when trained well<br/> - Scales well for large data sets<br/><br/> **<u>Disadvantages:</u>**<br/>- Models can get very complex, not very understandable <br/>- Computationally very expensive (need cluster level resources) 	| Non Linear          	| Yes        	|
<!-- {"left" : 0.26, "top" : 0.9, "height" : 5.17, "width" : 9.75, "columnwidth" : [1.66, 1.6, 3.72, 1.46, 1.3]} -->


Notes:


---