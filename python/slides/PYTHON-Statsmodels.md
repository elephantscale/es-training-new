# Python: Statsmodels

---

## Lesson Objectives

  * Introduction to Statsmodels

  * Brief introductions to various to sub-packages in Statsmodels

Notes:

---

## Introduction to Statsmodels

  * Statsmodels is a library for performing statistical analysis in Pythoni
   
  * Free Software and open-source
  
  * Functionality is very similar to R language.
    - Borrows R formula-style interface
    - Can perform most functions that base R can also do.

  * It depends on NumPy, Scipy, and Pandas, and is part of the PyData stack

  * Statsmodels website - https://www.statsmodels.org/


Notes:

---

## Why Statsmodels

  * **Key advantage**  - Provides a very user friendly API to write code for various statistics
  * Included Functions:
    - Linear Regression
    - Plotting
    - Discrete Choice Models
    - Nonparametric Statistics
    - Generalized Linear Models
    - Robust Regression
    - Statistics 
    - Time Series Analysis
    - State Space Models

Notes:

---


# Linear Regression
---

##  Ordinary Least Squares

 * Here is an example using Ordinary Least Squares: (OLS)

```python
import numpy as np

import statsmodels.api as sm

import statsmodels.formula.api as smf

# Load data
dat = sm.datasets.get_rdataset("Guerry",
       "HistData").data

# Fit regression model 
results = smf.ols('Lottery ~ Literacy + 
  np.log(Pop1831)', data=dat).fit()
```

---


### Results of Summary()
```text
                            OLS Regression Results
==============================================================================
Dep. Variable:                Lottery   R-squared:                       0.348
Model:                            OLS   Adj. R-squared:                  0.333
Method:                 Least Squares   F-statistic:                     22.20
Date:                Fri, 19 Jul 2019   Prob (F-statistic):           1.90e-08
Time:                        16:56:24   Log-Likelihood:                -379.82
No. Observations:                  86   AIC:                             765.6
Df Residuals:                      83   BIC:                             773.0
Df Model:                           2
Covariance Type:            nonrobust
===================================================================================
                      coef    std err          t      P>|t|      [0.025      0.975]
-----------------------------------------------------------------------------------
Intercept         246.4341     35.233      6.995      0.000     176.358     316.510
Literacy           -0.4889      0.128     -3.832      0.000      -0.743      -0.235
np.log(Pop1831)   -31.3114      5.977     -5.239      0.000     -43.199     -19.424
==============================================================================
Omnibus:                        3.713   Durbin-Watson:                   2.019
Prob(Omnibus):                  0.156   Jarque-Bera (JB):                3.394
Skew:                          -0.487   Prob(JB):                        0.183
Kurtosis:                       3.003   Cond. No.                         702.
==============================================================================
```

---

# Logistic Regression

## Logistic Regression in Statsmodels
