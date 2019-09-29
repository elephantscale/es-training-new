# Regressions in Python

---

## Regressions Intro

[../generic/Regressions-Intro.md](../generic/Regressions-Intro.md)

---

## Linear Regression

[../generic/Regressions-Linear.md](../generic/Regressions-Linear.md)

---

# Linear Regression in Python

---

## Linear Regression in Python

| Algorithm         | Class / Package                       | Description   |
|-------------------|---------------------------------------|---------------|
| Linear Regression | sklearn.linear_model.LinearRegression | SKlearn       |
| Linear Regression | scipy.stats.linregress                | SciPy package |

- [sklearn.linear_model  docs](https://scikit-learn.org/stable/modules/classes.html#module-sklearn.linear_model)
- [scipy.stats.linregres](https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.stats.linregress.html)

---

##  Linear Regression in Scikit-Learn

- Let's do a simple bill/tip regression

<img src="../../assets/images/machine-learning/3rd-party/Session-Regressions-in-Spark-Example-Tip-Calculation-0.png" alt="Session-Regressions-in-Spark-Example-Tip-Calculation-0" style="width:75%;"/><!-- {"left" : 1.02, "top" : 2.31, "height" : 4.23, "width" : 8.21} -->


---

## Linear Regression in SciKit-Learn


```python
from sklearn.linear_model import LinearRegression

tip_data = pd.DataFrame({'bill' : [50.00, 30.00, 60.00, 40.00, 65.00, 20.00, 10.00, 15.00, 25.00, 35.00],
                        'tip' : [12.00, 7.00, 13.00, 8.00, 15.00, 5.00, 2.00, 2.00, 3.00, 4.00]})
x = tip_data[['bill']]
y = tip_data[['tip']]
# train
model = LinearRegression(x,y).fit()

# predict
test_data_pd['predicted_tip'] = model.predict(y)
test_data
```

```text

   bill   tip  predicted_tip
0  50.0  12.0      10.742857
1  30.0   7.0       5.885714
2  60.0  13.0      13.171429
3  40.0   8.0       8.314286
4  65.0  15.0      14.385714
5  20.0   5.0       3.457143
6  10.0   2.0       1.028571
7  15.0   2.0       2.242857
8  25.0   3.0       4.671429
9  35.0   4.0       7.100000
```
---

## Evaluate the Model

```python
# evaluate
from sklearn.metrics import mean_squared_error, r2_score

print ("R2 : " , r2_score(y, predictions))
# R2 :  0.9067140765530224
print ("MSE : ", mean_squared_error(y, predictions))
# MSE :  1.9114285714285715
```

```python
import matplotlib.pyplot as plt

plt.scatter(x,y , color="black")
plt.plot(x, predictions, color='blue')
```

<!-- todo shiva -->
<img src="../../assets/images/machine-learning/linear-regression-plot-1.png" style="width:40%;"/><!-- {"left" : 1.02, "top" : 2.31, "height" : 4.23, "width" : 8.21} -->

---

# Multiple Linear Regression

[../generic/Regressions-Linear-Multi.md](../generic/Regressions-Linear-Multi.md)

---

# Multiple Linear Regression in Scikit-Learn

---

## Multiple Linear Regression in Scikit-Learn

```python
import pandas as pd
from sklearn.metrics import r2_score

house_prices = pd.read_csv("/data/house-prices/house-sales-full.csv")

input_columns= ['Bedrooms', 'Bathrooms', 'SqFtTotLiving', 'SqFtLot']
label_column = ['SalePrice']

x = house_prices2[input_columns]
y = house_prices2[label_column]

# train
model = LinearRegression ().fit(x,y)

# predict
predictions = model.predict(x)

print ("R2 : " , r2_score(y, predictions))
# R2 = 0.48
```

---

## Evaluate the Model

```python
from sklearn.metrics import mean_squared_error, r2_score
from math import sqrt

## print each feature and it's coefficients
coef = pd.DataFrame({"input_column" : input_columns,  
                     "coefficient": model.coef_[0]})
print(coef)

print ("R2 : " , r2_score(y, predictions))
print ("MSE : ", mean_squared_error(y, predictions))
print ("RMSE : ", sqrt(mean_squared_error(y, predictions)) )
```

```text
# output

input_column  coefficient
0       Bedrooms   -65,211.74
1      Bathrooms    16,274.19
2  SqFtTotLiving       277.85
3        SqFtLot        -0.07

R2 :  0.483482252362197
MSE :  60702204448.745056
RMSE :  246378.1736452015

```

---

## Regularization

[../generic/Regularization.md](../generic/Regularization.md)

---
## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" />

- Let's go over what we have covered so far

- Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" />
