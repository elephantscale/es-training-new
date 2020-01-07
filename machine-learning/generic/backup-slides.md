# ML Backup slides
---
## How to do Machine Learning


 *  **Collect data**
    More data we have, the better the algorithms become.  This data can come from internal logs (clickstreams) or external sources (credit scores of customers)

 *  **Prepare Data**
    Raw data is hardly in a form to be used.  It needs to be cleansed, tagged and curated before ready to use

 *  **Train a model**
    Feed the training data to model so it can learn

 *  **Evaluate the model**
    Test the model accuracy

 *  **Improve the model**
    Either by adding more training data, choosing a different algorithm ..etc.

Notes:

---
## ML Terminology

| Algorithm                                             	| Example                                     	| Input                                              	| Output                                      |
|-------------------------------------------------	|-----------------------------------------	|----------------------------------------------------	|-------------------------------------	|
| Classification - produces 'discrete' or 'qualitative' 	| Spam or not                                 	|**Features**<br/>(email text, origin IP address)        	|**Label**<br/>(Spam / Not-Spam)                  |
| Regression - produces 'continuous' or 'quantitative'  	| Weather forecasting, predicting temperature 	|**Variables**<br/>(current temperature, pressure ..etc) 	|**Target**<br/>(predicted temperature -50.5 ' F) 	|

<!-- {"left" : 0.25, "top" : 1.55, "height" : 2.75, "width" : 9.75} -->


Notes:

---
## FE: Group Discussion

  * **Problem:**
    - A comment is left on the website.  Determine if it is a 'spam' comment or legitimate comment

  * **Data we have:**
    - Comment text
    - IP address of user

  * **Discuss:**
    - What other data you may need to determine if the comment is 'spam' ?
    - How can we acquire the data?


Notes:

---
## FE: Dealing With Time

  * Usually timestamps are stored in two formats:
    - Human readable format: '2017-02-01 14:10:45 PST'
    - Unix timestamp: 1489792175 (time elapsed since 1970-01-01 00:00:00)
  * Sometimes we need to 'slice / dice' timestamp

  * Hypothesis:  
  "On Facebook users click on photos more during lunch time"
    - Include 'time of day' on model calculation

  * Some other interesting attributes:
    - 'time of day'  (work hours,   after hours)
    - 'day of week'  (Mon / Tue / Wed ...   work day  / weekend)

  * **Question for class:**
    - Any other time based behavior?



Notes:

Use https://www.epochconverter.com/ to easily convert unix time and human readable time

---
## Bottom Up AI Success Stories


 * Image recognition

 * Translation

 * Self driving cars

<img src="../../assets/images/machine-learning/3rd-party/Driver_free_car.png" style="width:40%;"><!-- {"left" : 0.64, "top" : 4.31, "height" : 2.88, "width" : 4.33} -->
 &nbsp;&nbsp;&nbsp;&nbsp; <img src="../../assets/images/machine-learning/3rd-party/Face_detection.png" style="width:40%;"><!-- {"left" : 5.3, "top" : 4.31, "height" : 2.88, "width" : 4.31} -->


Notes:


---


## Clustering VS PCA


 * Both Clustering and PCA seek to simplify the data via small number of summaries / attributes

 * PCA looks to find a low-dimensional representation of the observations that explain a good fraction of the variance

 * Clustering looks to find homogeneous subgroups among the observations

Notes:


---

# Linear Regression

---

##  Linear Regression Code ( R )


```
> house.sales = read.csv("house-sales.csv")
27,000 entries

## run mlr
> house.lm = lm(SalePrice ~ Bedrooms + Bathrooms + SqFtTotLiving + SqFtLot,  
              data = house.prices, na.action = na.omit)

> summary(house.lm)

Call:lm(formula = SalePrice ~ Bedrooms + Bathrooms + SqFtTotLiving +     SqFtLot,

data = house.prices, na.action = na.omit)

Residuals:
     Min       1Q   Median       3Q      Max
 -1955089  -114575   -13670    81734  9081935

Coefficients:
                 Estimate   Std. Error t value             Pr(>|t|)
(Intercept)   106303.30612   6254.77558  16.996 < 0.0000000000000002 ***
Bedrooms      -65211.73613   2151.67471 -30.307 < 0.0000000000000002 ***
Bathrooms      16274.19139   2970.77108   5.478         0.0000000434 ***
SqFtTotLiving    277.84805      2.66890 104.106 < 0.0000000000000002 ***
SqFtLot           -0.07457      0.05472  -1.363                0.173    

---Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 246400 on 27058 degrees of freedom
Multiple R-squared:  0.4835,	Adjusted R-squared:  0.4834
F-statistic:  6332 on 4 and 27058 DF,  p-value: < 0.00000000000000022

```
<!-- {"left" : 0, "top" : 1.19, "height" : 3.69, "width" : 10.25} -->


Notes:



---

## Interpreting Results


```
> summary(house.lm)

Call:lm(formula = SalePrice ~ Bedrooms + Bathrooms + SqFtTotLiving +     SqFtLot,
          data = house.prices, na.action = na.omit)

Residuals:
    Min       1Q   Median       3Q      Max
-1955089  -114575   -13670    81734  9081935

Coefficients:
                  Estimate   Std. Error t value             Pr(>|t|)
(Intercept)   106303.30612   6254.77558  16.996 < 0.0000000000000002 ***
Bedrooms      -65211.73613   2151.67471 -30.307 < 0.0000000000000002 ***
Bathrooms      16274.19139   2970.77108   5.478         0.0000000434 ***
SqFtTotLiving    277.84805      2.66890 104.106 < 0.0000000000000002 ***
SqFtLot           -0.07457      0.05472  -1.363                0.173    

---Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
```
<!-- {"left" : 0, "top" : 4.1, "height" : 2.55, "width" : 10.25} -->


 * Adding one extra 'sqftTotLiving' space increases the house price by $277.85

     - While holding all other variables the same

Notes:



---

## Interpreting Results


```
> summary(house.lm)

Call:lm(formula = SalePrice ~ Bedrooms + Bathrooms + SqFtTotLiving +     SqFtLot,
         data = house.prices, na.action = na.omit)

Residuals:
    Min       1Q   Median       3Q      Max
-1955089  -114575   -13670    81734  9081935

Coefficients:
                 Estimate   Std. Error t value             Pr(>|t|)
(Intercept)   106303.30612   6254.77558  16.996 < 0.0000000000000002 ***
Bedrooms      -65211.73613   2151.67471 -30.307 < 0.0000000000000002 ***
Bathrooms      16274.19139   2970.77108   5.478         0.0000000434 ***
SqFtTotLiving    277.84805      2.66890 104.106 < 0.0000000000000002 ***
SqFtLot           -0.07457      0.05472  -1.363                0.173    

---Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

```
<!-- {"left" : 0, "top" : 4.1, "height" : 2.55, "width" : 10.25} -->

  * Question for class:
     - Interpret parameters for 'Bedrooms'


Notes:


---

## Calculating AIC - Sample Code ( R )


```R
options(scipen=999)
library(MASS)

house.prices = read.csv("house-sales-full.csv")

# using all attributes for LM
house.lm.full <- lm(SalePrice ~ SqFtTotLiving + SqFtLot + Bathrooms + Bedrooms +
                                BldgGrade + PropertyType + NbrLivingUnits + SqFtFinBasement +
                                YrBuilt + YrRenovated + NewConstruction,
                    data=house.prices, na.action=na.omit)

step <- stepAIC(house.lm.full, direction="both")

step
```
<!-- {"left" : 0, "top" : 1.27, "height" : 2.5, "width" : 10.25} -->

Notes:



---

## Calculating AIC Sample Code ( R )


```R
# original LM formula
house.lm.full <- lm(SalePrice ~ SqFtTotLiving + SqFtLot + Bathrooms + Bedrooms +
                                BldgGrade + PropertyType + NbrLivingUnits + SqFtFinBasement +
                                YrBuilt + YrRenovated + NewConstruction,
                    data=house.prices, na.action=na.omit)
```
<!-- {"left" : 0, "top" : 4.03, "height" : 1.01, "width" : 10.25} -->

```R

lm(formula = SalePrice ~ SqFtTotLiving + Bathrooms + Bedrooms +     
                         BldgGrade + PropertyType + SqFtFinBasement +
                         YrBuilt + NewConstruction,
            data = house.prices, na.action = na.omit)

Coefficients:
             (Intercept)              SqFtTotLiving                  Bathrooms
              5730856.779                    170.255                  37950.708
                   Bedrooms                  BldgGrade  PropertyTypeSingle Family
                -44124.897                 122498.089                  14862.934
    PropertyTypeTownhouse            SqFtFinBasement                    YrBuilt
                  77562.844                      8.153                  -3286.098
       NewConstructionTRUE                   7886.546  
```
<!-- {"left" : 0, "top" : 5.53s, "height" : 2.66, "width" : 10.25} -->

 *  **stepAIC**  has come up with a new formula

 * Dropped attributes : SqFtLot, NbrLivingUnits, YrRenovated, and NewConstruction.

Notes:



---

---

# PCA

---


## Step-1. Normalization



 * Normalized vector[ (30 - 22) / 48, (45 - 22) / 48, .... (22 - 22) / 48 ] [0.17, 0.48,  0.58, 1.00, 0.79, 0.06, 0.00]

 * Result

     - Our features (black) are all in the range of -1 to  1

 * Other possibility, mean based: (x - mean) / range

     - Mean = 43.14

     - [ (30 - 43.14) / 48, (45 - 43.14) / 48, .... (22 - 43.14) / 48 ] = [ -0.274,   0.039, 0.143, 0.560, 0.351, 0.378, 0.440 ]




Notes:
