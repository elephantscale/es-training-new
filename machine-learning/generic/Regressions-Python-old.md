# Supervised Learning in Python

---

## Lesson Objectives


Notes:


---

# Linear Regression

---

## Linear Regression Background


 * Reference : ML-03__Supervised.pptx

Notes:


---

## Tip Calculation Using Linear Regression


 * We will use Linear Regression to predict tips

<img src="../../assets/images/machine-learning/Data-Exploration-Scatter-Plot-Python--0.png" alt="Data-Exploration-Scatter-Plot-Python--0.png" style="width:80%;"/><!-- {"left" : 1.02, "top" : 2.48, "height" : 4.11, "width" : 8.21} -->


Notes:




---

## Linear Regression in SciPy


 * SciPy has a simple linear regression

```text
gradient,intercept,r_value,p_value,std_err = stats.linregress**  **(X array, Y array)

X array: numpy array with X variable

Y array: numpy array with Y Varibale
```
<!-- {"left" : 0, "top" : 1.94, "height" : 1.2, "width" : 10.25} -->

```text
# sample usage:
tip_data = pd.DataFrame({
            'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
            'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]
         })

# calculate linear model
from scipy import stats
gradient,intercept,r_value,p_value,std_err=stats.linregress(X array, Y array)
```
<!-- {"left" : 0, "top" : 3.66, "height" : 1.85, "width" : 10.25} -->

Notes:




---

## Understanding stats.linregress Output


 * Scipy passes a tuple of the following:

     - Gradient (slope/coefficient)

     - Intercept (Y Intercept)

     - R<sup>2</sup> value (r-squared)

        * determines how well the model fits data

        * 0 <= r<sup>2</sup> <= 1  ,  close to 1 meaning strong fit

        * Here 0.9067 or  **90.67** % of 'tip' can be explained by 'bill amount'

     - P-value (p-value)

        *  **Pr(>|t|)** should be very small, in our case it is very close to zero

Notes:



---

## Understanding stats.linregress output


```text
Gradient and intercept 0.242857142857 -1.4
R-squared 0.906714076553
p-value 2.15282168529e-05
```
<!-- {"left" : 0, "top" : 1.38, "height" : 1.37, "width" : 9.28} -->

Notes:

http://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R


---

## Linear Regression in statsmodels.ols


 * Statsmodels package has linear regression

 * Use statsmodels.ols

```text
result = sm.ols(formula="tip ~ bill", data=tip_data).fit()
result.summary()

Formula : usually in   'Y  ~ X'  format
X array: numpy array with X variable
Y array: numpy array with Y Varibale

```
<!-- {"left" : 0, "top" : 2.46, "height" : 1.83, "width" : 10.25} -->

```text
# sample usage:
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
# calculate linear model
from scipy import stats
gradient,intercept,r_value,p_value,std_err=stats.linregress(X array, Y array)

```
<!-- {"left" : 0, "top" : 4.9, "height" : 1.14, "width" : 10.25} -->

Notes:




---

## Understanding the Summary

```text
> result.summary()
OLS Regression Results
Dep. Variable:	tip				R-squared:	0.907
Model:	OLS								Adj. R-squared:	0.895
Method:	Least Squares		F-statistic:	77.76
Date:	Mon, 04 Jun 2018		Prob (F-statistic):	2.15e-05
Time:	16:50:18						Log-Likelihood:	-17.429
No. Observations:	10			AIC:	38.86
Df Residuals:	8					BIC:	39.46
Df Model:	1		
Covariance Type:	nonrobust		
						Coef			std err		t			P>|t|	[0.025		0.975]
Intercept		-1.4000	1.081		-1.295		0.231	-3.892	1.092
Bill					0.2429		0.028		8.818		0.000	0.179	0.306

Omnibus:	3.785	Durbin-Watson:	0.487
Prob(Omnibus):	0.151			Jarque-Bera (JB):	1.654
Skew:	-0.996							Prob(JB):	0.437
Kurtosis:	3.036					Cond. No.	86.8

```
<!-- {"left" : 0, "top" : 1.28, "height" : 3.78, "width" : 10.25} -->


Notes:

http://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R


---

## Understanding Summary


<img src="../../assets/images/machine-learning/3rd-party/01.png" style="width:80%"/><!-- {"left" : 1.02, "top" : 1.89, "height" : 5.29, "width" : 8.21} -->



Notes:




---

## Understanding Statsmodel output

<img src="../../assets/images/machine-learning/3rd-party/02.png" style="width:70%"/><!-- {"left" : 1.02, "top" : 1.55, "height" : 3.27, "width" : 8.21} -->

 * Residuals : Difference between 'actual' and 'predicted'

 * Ideally should fit 'standard distribution'-> mean value is zero.

    Not the case here (close enough)


Notes:




---

## Understanding Statsmodel output


<img src="../../assets/images/machine-learning/3rd-party/03.png" style="width:80%"/><!-- {"left" : 1.02, "top" : 1.42, "height" : 2.24, "width" : 8.21} -->


 * Coefficients

     - Slope of line: bill: **0.2429**

     - Intercept: where line meets Y-axis: **-1.4** (below zero line (X axis))


Notes:




---

## Understanding Statsmodel Output

<img src="../../assets/images/machine-learning/3rd-party/04.png" style="width:80%"/><!-- {"left" : 1.02, "top" : 1.52, "height" : 2.19, "width" : 8.21} -->



 *  **Pr**  **(>|t|)** should be very small, in our case it is very close to zero



Notes:

http://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R


---

## Understanding Statsmodel output


<img src="../../assets/images/machine-learning/3rd-party/05.png" style="width:70%"/><!-- {"left" : 1.29, "top" : 5.9, "height" : 2.04, "width" : 7.66} -->


 *  **Coefficient of Determination (r**  **2**  **)** determines how well the model fits data

 * 0 <= r<sup>2</sup> <= 1  ,  close to 1 meaning strong fit

 * Here 0.9067 or  **90.67** % of 'tip' can be explained by 'bill amount'

     - Very strong predictor!

 * (**Adjusted r<sup>2</sup>**   corrects  **r<sup>2</sup>**  for number of variables considered)


Notes:

http://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R


---

## Plotting Regression


```text
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
ax = plt.scatter(tip_data.bill, tip_data.tip)
result = sm.ols(formula="tip ~ bill", data=tip_data).fit()
abline_plot(model_results=result, ax=ax)

```
<!-- {"left" : 0, "top" : 1.18, "height" : 0.9, "width" : 10.25} -->

<img src="../../assets/images/machine-learning/Supervised-Learning-in-Python-Plotting-Regression-0.png" style="width:60%"/><!-- {"left" : 2.18, "top" : 3.11, "height" : 4.07, "width" : 5.9} -->


Notes:




---

## Calculating Coefficients


<br/>
<br/>

```text
# formula : tip = a * bill + b
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
result = sm.ols(formula="tip ~ bill", data=tip_data).fit()

a = result.params[1]  # 0.2428571
b = result.params[0] #  -1.4

# for a $100 bill what is the tip?
tip.for.100 = a * 100 + b   
# 22.88571
```
<!-- {"left" : 0, "top" : 1.18, "height" : 1.95, "width" : 10.25} -->


  * Once we figure the  **coefficients a & b** , we can predict tip amount for any bill amount


Notes:




---

## Predicting Tips


 * predict ( regression_model,   new_data)

```text
# formula : tip = a * bill + b
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
result = sm.ols(formula="tip ~ bill", data=tip_data).fit()
test_data_pd = pd.DataFrame({'bill' : [45., 55., 65.,]
             })
test_data_pd['predicted_tip'] = result.predict(test_data_pd)


# results

	bill		predicted_tip
0	45.0		9.528571
1	55.0		11.957143
2	65.0		14.385714

```
<!-- {"left" : 0, "top" : 1.93, "height" : 2.61, "width" : 10.25} -->

Notes:




---

## Linear Regression Sample Code in Python


```text
# tip = a * amount + b
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})

result = sm.ols(formula="tip ~ bill", data=tip_data).fit()

# plot
ax = plt.scatter(tip_data.bill, tip_data.tip)
abline_plot(model_results=result, ax=ax)


# determine coefficients
result.summary()
a = coefficients(tip.lm)[[2]]  # 0.2428571
b = coefficients(tip.lm)[[1]]  #  -1.4

# correlation.coefficient (r)
from scipy.stats.stats import pearsonr   
print(pearsonr(tip_data.bill, tip_data.tip)[0])  # 0.952

# coefficient.of.determination (r^2)
rsquared = summary(tip.lm)$r.squared   # 0.9067141

# for a $100 bill what is the tip?
Tip_for_100 = a * 100 + b   # 22.88571

# calculate estimated tip using regression
tip_data['est_tip'] = tip_data.bill * a + b
test_data_pd = pd.DataFrame({'bill' : [45., 55., 65.,] })
test_data_pd['predicted_tip'] = result.predict(test_data_pd)
```
<!-- {"left" : 0, "top" : 1.25, "height" : 5.04, "width" : 10.25} -->

Notes:




---

## Linear Regression in Scikit-learn


 * Scikit-learn allows us to integrate with other ML models

```text
From sklearn.linear_model import LinearRegression

tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
model = LinearRegression(tip_data.bill, tip_data.tip).fit()
test_data_pd['predicted_tip'] = model.predict(test_data_pd)


# results

	bill		predicted_tip
0	45.0		9.528571
1	55.0		11.957143
2	65.0		14.385714

```
<!-- {"left" : 0, "top" : 1.86, "height" : 2.45, "width" : 10.25} -->

Notes:



---

## Lab: LIR-1: Demo


  *  **Overview:**
     - Predicting tips using Linear Regression.

  *  **Instructor will demo this lab**

  *  **Run time:**
     - 10-15 mins


Notes:




---

## Lab: LIR-2: Pollution Estimate


  *  **Overview:**
      - Predicting pollution level using Linear Regression.

  *  **Run time:**
     - 10-15 mins

Notes:


---

## [Optional] Lab: LIR-3: Building Height


  *  **Overview:**
     - Predicting building height using Linear Regression.

  *  **Run time:**
     - 10-15 mins


Notes:




---

## [Optional  /Bonus] Lab: LIR-4: Tips


 *  **Overview:**
     - Predicting using some real world tips data (reshape2 package)

 *  **Run time:**
     - 10-15 mins

 *  **Answer these questions:**

      - Estimate relationship between  *'bill amount'* and *'tip'*

      - How about *'party-size'*  and *'tip'*

      - Which attribute (*'bill-amount'*  or *'party-size'* ) is a better indicator of tip  (Use  *'coefficient of determination'*)

Notes:




---

## Linear Regression in Python - Wrap Up


 * Linear Regression is very well supported in Python

 * Very easy to use (one liner) !

 * Basic coefficients are easy to calculate

     - Slope

     - Intercept

     - r / r<sup>2</sup>

 * Use 'predict' to estimate new tips

Notes:




---

# Logistic Regression

---

## Logistic Regression in Statsmodel


 * Statsmodel has a Logit function for calculating logistic regression

 * Logit API is    

    sm.Logit(X, Y)

| Family           | Variance         | Link                   |
|------------------|------------------|------------------------|
| binomial         | binomia          | Logit, probit, cloglog |
| gaussian         | gaussian         | indentity              |
| gamma            | gamma            | inverse, identity, log |
| possion          | possion          | log, identity, sqrt    |
| inverse.gaussian | inverse.gaussian | 1/mu^2                 |
| quasi            | user-defined     | user-defined           |

<!-- {"left" : 0.25, "top" : 3.8, "height" : 3.5, "width" : 9.75} -->

Notes:

* http://www.statmethods.net/advstats/glm.html
* http://data.princeton.edu/R/glms.html


---

## Logisitic Regression in Scikit-learn


 * Statsmodel gives us a good idea about variable fit

 * We may want to use scikit-learn to have a deployable model.

Notes:



---

## Lab: LOG-1: Credit Approval (DEMO)


 *  **Overview:**
    - Estimating credit approval using Logistic Regression.

 * ‌ **Instructor to demo this lab**

 *  **Run time:**
    - 10-15 mins

 *  **Solution (Instructor):**
    - /data-science/solutions/R/logistic-regression/1-credit-approval-solution.R


Notes:




---

## Multiple Logistic Regression


```text
import statsmodels.formula.api as sm

mortgage = pd.read_csv("mortgage-data.csv")

mylogit = sm.Logit(mortgage['approved'], mortgage[0:3])

Mylogit.summary()

```
<!-- {"left" : 0, "top" : 1.25, "height" : 1.63, "width" : 7.63} -->

| fico | salary | debt | approved |
|------|--------|------|----------|
| 500  | 32000  | 0    | 0        |
| 760  | 50000  | 5000 | 1        |
| 700  | 80000  | 5000 | 1        |

<!-- {"left" : 2.51, "top" : 3.53, "height" : 2, "width" : 4.99, "columnwidth" : [1, 1.41, 1.41, 1.41]} -->

<img src="../../assets/images/machine-learning/Multiple-Logistic-Regression-0.png" style="width:50%"/><!-- {"left" : 2.16, "top" : 5.88, "height" : 2.47, "width" : 5.94} -->


Notes:




---

## Understanding Multiple Logistic Regression


<img src="../../assets/images/machine-learning/3rd-party/06.png" style="width:70%"/><!-- {"left" : 1.02, "top" : 1.29, "height" : 3.07, "width" : 8.21} -->



* ln(y/(1-y)) = β0 + β1 * fico +  β2 * salary + β3 * debt

	β1 (fico) = - 0.269

	β2 (salary) = 0.0005

	β3 (debt) = - 0.0004



Notes:



---

## Understanding Multiple Logistic Regression

<img src="../../assets/images/machine-learning/3rd-party/07.png" style="width:70%"/><!-- {"left" : 0.3, "top" : 1.48, "height" : 1.74, "width" : 9.64} -->


 * When fico score goes up by ONE unit, it increases the odd by 0.45

     - Pretty significant

 * When debt goes up ONE unit, it decreases the odd by 0.0057

     - Negative

     - Weak correlation


Notes:



---

## Multiple Logistic Regression With Factor Data


 * Let's look at admission data

 * Here **'gre'** and  **'gpa'** and numeric (behave like numbers)

 * How ever  **'rank'** can only be 1,2,3,4

     - Can not be 1.5 (does not behave like a number)

     - So we need to turn it into a  **'category'**  , so statsmodel treats it properly


<img src="../../assets/images/machine-learning/college-admission-2.png" style="width:55%"/><!-- {"left" : 1.89, "top" : 4.22, "height" : 2.69, "width" : 6.47} -->



Notes:



---

## Multiple Logistic Regression With Category

<img src="../../assets/images/machine-learning/3rd-party/09.png" style="width:80%"/><!-- {"left" : 0.47, "top" : 1.36, "height" : 5.26, "width" : 9.31} -->


Notes:



---

## Multiple Logistic Regression With Factors

```text
# formula : tip = a * bill + b
tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
result = sm.ols(formula="tip ~ bill", data=tip_data).fit()
test_data_pd = pd.DataFrame({'bill' : [45., 55., 65.,]
             })
test_data_pd['predicted_tip'] = result.predict(test_data_pd)


# results

	bill		predicted_tip
0	45.0		9.528571
1	55.0		11.957143
2	65.0		14.385714

```
<!-- {"left" : 0, "top" : 1.25, "height" : 2.61, "width" : 10.25} -->

Notes:



---

## Lab: LOG-2: Mortgage Approval


  *  **Overview:**
      - Estimating mortgage approval using Multiple Logistic Regression.

  *  **Run time:**
      - 10-15 mins

  *  **Solution (Instructor):**
      - /data-science/solutions/R/logistic-regression/2-mortgage-approval-solution.R


Notes:




---

## Lab: LOG-3: College Admission


  *  **Overview:**
     - Using Multiple Logistic Regression with factored data.

  *  **Run time:**
     - 10-15 mins

  *  **Solution (Instructor):**
     - /data-science/solutions/R/logistic-regression/3-college-admission-solution.R


Notes:




---



  * Regular text
  * Pay  **special attention** to this

Notes:




---

## Review Questions


Notes:




---

## Lesson Summary


 * S

Notes:
