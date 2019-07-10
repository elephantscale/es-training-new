# Regression in Sagemaker

---

## Lesson Objectives
  * Learn about Regression algorithms
  * Learn how to implement them in SageMaker

---

# Regression Overview
  * Statistical models to estimate relationship between
    - One or more independent variables (X)

      AND

    - A dependent variable (Y)

---

## Regression Algorithms

| Algorithm           	| Description                                                                                                                                                        	| Use Case                                                	|
|---------------------	|--------------------------------------------------------------------------------------------------------------------------------------------------------------------	|---------------------------------------------------------	|
| Linear Regression   	| Establishes  a best fit 'straight line' <br/> <br/>     **Advantages:**    <br/>-  Simple, well understood    <br/>-  Scales to large datasets       <br/><br/>**Disadvantages**  <br/>-  Prone to outliers 	| -  House prices  <br/> -  Stock market 	|
| Logistic Regression 	| -  Calculates  the probability of outcome (success or failure)   <br/>-  Used for **'classification'**  ;)    <br/>-  Needs large sample sizes for accurate prediction       	| -  Loan approval   	|

---

# Linear Regression
  * Y is a linear combination of the coefficients of X
  * Single Linear Regression
    - Y = aX + b  (e.g. Tip = a * bill + b)

  <img src="../../assets/images/machine-learning/Session-Regressions-in-Spark-Tips-vs-Bill-0.png" alt="Session-Regressions-in-Spark-Tips-vs-Bill-0.png" style="width:50%;"/>

---

## Graph Review!


*  **Y = aX + b**

 * Y = 2X + 4

 * 2 - slope of line

 * 4 - intercept
<img src="../../assets/images/machine-learning/3rd-party/Session-Regressions-Graph-Review--0.png" alt="Session-Regressions-Graph-Review--0.png" style="width:50%;float:right"/>

<br/>


|   |                                   |
|---|-----------------------------------|
| Y | Dependent variable (depends on X) |
| X | Independent variable              |
| a | Slope of line                     |
| b | Intercept (line meets y-axis)     |

Notes:



---

## Linear Regression Vocabulary


### **Y = aX + b &nbsp;&nbsp;&nbsp;&nbsp; Y = b<sub>0</sub> + b<sub>1</sub>X**

| Term                   | Description                                                                   | Synonyms                                         |
|------------------------|-------------------------------------------------------------------------------|--------------------------------------------------|
| **Independent Variable**   | The variable used to predict the response.                                    | -X-variable <br/>-Feature <br/>-attribute                  |
| **Response**               | The variable we are trying to predict.                                        | -Y-variable <br/>-Dependent variable <br/>-Target <br/>-Outcome |
| **Intercept**              | The intercept of the regression line - that is, the predicted value when X= 0 | -b , b<sub>0</sub> , β<sub>0</sub>                                     |
| **Regression coefficient** | The slope of the regression line.                                             | -Slope <br/>-parameter estimates <br/>-Weights <br/>-a , b1     |

---

# Residuals / Errors

  * Let's say my algorithm predicted tip is $10

  *  **Residual**  = difference between  *actual tip* and  *predicted tip*

  * Sum of all residuals  =  **ZERO**

<img src="../../assets/images/machine-learning/tips-2-residuals.png" alt="tips-2-residuals.png" style="width:80%;"/>

---

# Sum of Squared Errors (SSE)

  * Squaring residuals
    - To make them positive
    - To amplify 'outliers' (large deviations)

  * Goal is to minimize SSE

  * SageMaker metric *test:objective_loss* reports SSE       


Notes:


---

# Multiple Linear Regression
## Problem: House Prices

| Sale Price $ | Bedrooms | Bathrooms | Sqft_Living | Sqft_Lot |
|--------------|----------|-----------|-------------|----------|
| 280,000      | 6        | 3         | 2,400       | 9,373    |
| 1,000,000    | 4        | 3.75      | 3,764       | 20,156   |
| 745,000      | 4        | 1.75      | 2.06        | 26,036   |
| 425,000      | 5        | 3.75      | 3,200       | 8,618    |
| 240,000      | 4        | 1.75      | 1,720       | 8,620    |
| 327,000      | 3        | 1.5       | 1,750       | 34,465   |
| 347,000      | 4        | 1.75      | 1,860       | 14,650   |


 * Multiple factors decide house prices

 * Y = b<sub>0</sub> + b<sub>1</sub>X<sub>1</sub> + b<sub>2</sub>X<sub>2</sub> + ...

---

# Logistic Regression
  * Linear Algorithm BUT used for classification
    - Credit card application approval: YES or NO?
  * Log-odds for label '1' is a *linear* combination of independent variables (X)

  * Credit Card Approval based on FICO score
<img src="../../assets/images/machine-learning/3rd-party/Session-Regressions-Applying-Logistic-Regression-To-Credit-Card-Application--0.png" style="width:50%"/>

---

## Multiple Logistic Regression

 * We can have multiple factors (independent variables) determining an outcome as well

     - This is called 'multiple logistic regression'

<img src="../../assets/images/machine-learning/Multiple-Logistic-Regression-0.png" style="width:70%"/>



Notes:

---

## Math Behind Multiple Logistic Regression


 * Let's say  
     - β represents parameters

     - X is independent variable (we have more than one)

 * Log(odds) = ln (y / (1-y)) = β<sub>0</sub> + β<sub>1</sub>* X<sub>1</sub> + β<sub>2</sub>* X<sub>2</sub> + .... + β<sub>n</sub>* X<sub>n</sub> <br/><br/>

 * Log (odds) or log-odds ration = <img src="../../assets/images/machine-learning/3rd-party/Session-Regressions-Math-Behind-Multiple-Logistic-Regression-0.png" style="width:10%;"/>

 * Where p is the probably the event will occur

---

# Preparing Data for Logistic Regression

*  **Binary Output Variable**

  Set the label column to 0 or 1 in training data

* **Remove Noise**

  Remove outliers from input data

* **Remove Correlated Output**

  Remove highly correlated inputs to avoid overfitting

* **Gaussian Distribution**

  Shaping the data into a Gaussian distribution (Logarithmic, etc.) will yield better results

---

## Regression in SageMaker: Linear Learner
  * Implements both Linear and Logistic regression

  * **Input data: (x, y)**
    - x: vector of features
    - y: label
      - For linear regression, y is a real Number
      - For logistic regression, y is 0 or 1 (binary classifier)

  * **Input formats**
     - recordIO wrapped protobuf 
     - CSV

  * **Self-tuning**
    - Tunes many models in parallel and picks best one!
    - No need for user tuning (unless you really want to)


Notes:
      https://docs.aws.amazon.com/sagemaker/latest/dg/linear-learner.html

---

## Hyper Parameters for Linear learner
| Parameter      | Meaning          | Value(s)              |
|----------------|------------------|-----------------------|
| feature_dim    | No. of features  |                       |
| predictor_type | regression or classifier| binary_classifier,   multiclass_classifier, regressor             |

  * [Hyper parameters documentation] (https://docs.aws.amazon.com/sagemaker/latest/dg/ll_hyperparameters.html)

---

## Lab: Predict Loan Defaults
  * **Overview**:
    - Learn to use Linear Learner for Logistic Regression

  * **Approximate Time**:
    - 30 mins.

  * **Instructions**:
    - Follow appropriate Sagemaker lab Instructions

---
