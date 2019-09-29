
# Regression Intro

---

## Algorithm Summary

<img src="../../assets/images/machine-learning/Regressions-Generic-01.png" alt="Regressions-Generic-01.png" style="width:76%;"/><!-- {"left" : 1.02, "top" : 1.24, "height" : 5.48, "width" : 8.21} -->



Notes:

http://machinelearningmastery.com/supervised-and-unsupervised-machine-learning-algorithms/

---

## What Is Regression Analysis


* Regression models relationship between  **independent variable(s) (predictor)** and  **dependent variable (target)**

* Regressions are used to predict 'numeric' data
     - House prices
     - Stock price

* In this example given 'Bedrooms', 'Bathrooms', 'Size', we are trying to predict the 'Sale Price' (basically a number)


| Bedrooms (input 1) | Bathrooms (input 2) | Size (input 3) | Sale Price (in thousands) (we are trying to predict) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 2                  | 0                   | 1499           | 229                                                  |
| 2                  | 1                   | 1799           | 319                                                  |
| 4                  | 2                   | 2399           | 599                                                  |
| 3                  | 1                   | 1999           | 499                                                  |
| 3                  | 2.4                 | 2199           | 549                                                  |


Notes:

---

## Regression Algorithms

| Algorithm             | Description                                                                                                                                                            | Use Case                               |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------|
| Linear Regression     | Establishes  a best fit 'straight line'                                                                                                                                | -  House prices  <br/> -  Stock market |
| Logistic Regression   | -  Calculates  the probability of outcome (success or failure)   <br/>-  Used for **'classification'**  ;)    <br/>-  Needs large sample sizes for accurate prediction | -  Mortgage application approval       |
| Polynomial Regression | If power of independent variable is more than 1. <br/>  Y = a * X + b * X<sup>2</sup>   <br/>- Can be prone to overfitting  <br/>- Results can be hard to explain      |                                        |
| Stepwise Regression   | -When we have multiple independent variables, automatically selects significant variables  <br/>- No human intervention  <br/>- AIC                                    | - House price predictor                |

Notes:

https://www.analyticsvidhya.com/blog/2015/08/comprehensive-guide-regression/




---

## Regression Algorithms

| Algorithm             | Description                                                                         | Use Case |
|-----------------------|-------------------------------------------------------------------------------------|----------|
| Ridge Regression      | -used when independent variables are highly correlated <br/>-Uses L2 regularization |          |
| Lasso Regression      | -Uses L1 regularization                                                             |          |
| ElasticNet Regression | -Hybrid of Lasso and Ridge regressions                                              |          |

Notes:
