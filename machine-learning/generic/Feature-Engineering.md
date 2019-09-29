# Feature Engineering
---

## Feature Engineering

 * **Feature Engineering:**   
    _"Using transformations of raw input data to create new features to be used in ML model"_

 * Feature Engineering examples
    - Join two database tables to have all data in one place
    - Convert to same units of measurements  (imperial to metric)
    - Enriching data by combining with other data sources e.g. combining house sales prices with census data


Notes:

---

## Features / Output

 * Features are inputs to the algorithm

 * Output is what are trying to predict

 * The following is an example
    - Inputs : Bedrooms, Bathrooms, Size
    - Output : Sale Price

| Bedrooms <br/>(input 1) | Bathrooms <br/>(input 2) | Size sqft <br/>(input 3) | Sale Price (in thousands) <br/>(we are trying to predict) |
|--------------------|---------------------|----------------|------------------------------------------------------|
| 3                  | 1                   | 1500           | 230                                                  |
| 3                  | 2                   | 1800           | 320                                                  |
| 5                  | 3                   | 2400           | 600                                                  |
| 4                  | 2                   | 2000           | 500                                                  |
| 4                  | 3.5                 | 2200           | 550                                                  |

---

# Feature Selection

---

## Feature Selection

- We could have a lot of features to choose from
- Let's say there are 100 features in our dataset
- Not all of them would be important in predicting the outcome
- We don't want to input all the possible features into the algorithm
    - More features will take more compute power / resources
    - Can result in more noise than signal
        - Can distort the results

Notes:
- https://www.quora.com/Is-having-a-very-large-number-of-features-in-Machine-Learning-ever-a-bad-thing

---

## 'Curse of Dimensionality'

- ['Curse of Dimensionality'](https://en.wikipedia.org/wiki/Curse_of_dimensionality) says more features, required more _observations_ (rows)
    - This is not a linear relationship;  
    More features --> **many** more rows


Notes:
- https://en.wikipedia.org/wiki/Curse_of_dimensionality

---

## Class Quiz: Feature Selection

<img src="../../assets/images/icons/quiz-icon.png" alt="Buildin-a-afair-marketplace.png" style="width:30%;float:right;"/><!-- {"left" : 6.95, "top" : 0.93, "height" : 2.12, "width" : 3.18} -->

  * Assume we are evaluating a credit card application
  * **Q: What features we might consider?**

<br clear="all"/>

| Customer_id | Name | Zipcode | Have Direct Deposit | Age | Income | Marital Status | Owns a Home |
|-------------|------|---------|---------------------|-----|--------|----------------|-------------|
| 1           | Joe  | 11111   | Yes                 | 24  | 45,000 | Single         | No          |
| 2           | Jane | 22222   | No                  | 34  | 84,000 | Married        | Yes         |
<!-- {"left" : 0.25, "top" : 4.72, "height" : 2.11, "width" : 9.75, "columnwidth" : [1.22, 1.22, 1.22, 1.22, 1.22, 1.22, 1.22, 1.22]} -->


Notes:

---

## Feature Extraction

 * Here is a sample data for credit card applications
 * Our algorithm only uses selected input (features) to determine credit worthiness
 * Here 'name' and 'zipcode' aren't considered


  | Customer_id | Name | Zipcode | Have Direct Deposit | Age | Income | Marital Status | Owns a Home |
  |-------------|------|---------|---------------------|-----|--------|----------------|-------------|
  | 1           | Joe  | 11111   | Yes                 | 24  | 45,000 | Single         | No          |
  | 2           | Jane | 22222   | No                  | 34  | 84,000 | Married        | Yes         |
<!-- {"left" : 0.26, "top" : 2.79, "height" : 2.39, "width" : 9.74, "columnwidth" : [1.32, 0.94, 1.29, 1.5, 0.75, 1.08, 1.29, 1.57]} -->


<img src="../../assets/images/machine-learning/Feature-Extraction.png" alt="Feature-Extraction" style="width:30%;"/> <!-- {"left" : 4.14, "top" : 5.32, "height" : 0.45, "width" : 1.97} -->


|             |      |         | Age | Income | Marital Status | Owns a Home |
|-------------|------|---------|-----|--------|----------------|-------------|
|             |      |         | 24  | 45,000 | Single         | No          |
|             |      |         | 34  | 84,000 | Married        | Yes         |

<!-- {"left" : 1.02, "top" : 5.87, "height" : 1.51, "width" : 8.2, "columnwidth" : [0.5, 0.5, 0.5, 1.09, 1.82, 1.82, 1.82]} -->




Notes:

---

## Incorporating Domain Knowledge

 * In the previous example how did we figure out the features to consider?
   - probably 'common sense' :-)

 * In practice we use our **domain knowledge** to identify important features

Notes:

---

## Categorical Variables

 * Some of the variables have string content
 * Example: Marital Status / Owns a Home
 * Feature vectors must be numeric.
 * We have to convert the variable to a numeric value.
 * Example:  
  `Owns A Home -> 0 = No, 1 = Yes`
 * Categorical Variables are essentially structured data, despite being strings.
 * Unstructured data would include things like: documents, emails, tweets

<img src="../../assets/images/machine-learning/Categorical-Variables.png" alt="Categorical-Variables" style="width:60%;"/> <!-- {"left" : 0.26, "top" : 5.16, "height" : 1.64, "width" : 9.74} -->





Notes:

---

## Encoding Categorical Variables

 * We have to convert our categorical variables into numbers
 * 3 Strategies:
    - Factorization / Indexing
    - One-Hot-Encoding/Dummy Variables
    - Quantization


Notes:

---

## Example of Factorization / Indexing

 * We can convert our string variables into factors / numbers
 * This means we assign a number to each unique value of the column
 * Added benefits
    - Numbers are more efficient to store
    - And compute!

<img src="../../assets/images/machine-learning/factorization-3.png" alt="factorization" style="max-width:70%"/>  


Notes:

---

## Potential Problems With Factorization / Indexing

 * Some ML algorithms can start interpreting the numbers!
 * In the example below, an ML algorithm can think
    - 2 (Divorced)  >  1 (Single)  > 0 (Married)

 * This can lead to surprising outcomes
 * We can fix this by 'one-hot-encoding' method



<img src="../../assets/images/machine-learning/factorization-3.png" alt="Factorization" style="max-width:60%;"/>


Notes:

---

## Dummy Variables / One-Hot-Encoding

 * Dummy variables can help us treat the different values separately
    - Without trying to infer some relationship between values.
 * 'dummy variables' assigns  true / false to each.
    - Note, only one bit is on
    - This is called **ONE-HOT-Encoding**

<img src="../../assets/images/machine-learning/one-hot-encoding-1.png" alt="Dummy-Variables" style="max-width:90%;"/><!-- {"left" : 0.52, "top" : 3.76, "height" : 2.9, "width" : 9.21} -->


Notes:

---

## Quantization

 * Sometimes we do want the ML model to interpret categorical variables
    - Grades :  A > B > C > D
    - Domain specific meaning
 * For example, colors in physics has a numeric meaning:
    - Red: 480 THz frequency of light
    - Green: 600 THz
 * This might allow our models to make inferences
    - e.g., Orange is close to red on the spectrum, but more distant from violet.

<img src="../../assets/images/machine-learning/3rd-party/Quantization.png" alt="Quantization" style="width:50%;"/><!-- {"left" : 2.76, "top" : 5.42, "height" : 2, "width" : 4.73} -->




Notes:

Image credit : https://study.com/academy/lesson/the-nature-of-light-origin-spectrum-color-frequency.html


---

## Generating New Dimensions

 * Problem: Comparing house prices
 * Can we say Mountain View is most expensive city?
 * On first table, there is no data point for 'size of the house'
 * May be an 'apples-to-apples' comparison would be 'price per sq. foot'



| City           | House Price   |
|--------        |----------     |
| San Jose       | 800k          |
| Mountain View  | 1,200 k (1.2M)|
| San Francisco  | 1,000 k (1 M) |
| Gilroy         | 700 k         |

<!-- {"left" : 0.49, "top" : 3.62, "height" : 2.01, "width" : 3.6, "columnwidth" : [1.82, 1.78]} -->

<img src="../../assets/images/machine-learning/feature-envgineering-1.png" alt="feature-envgineering" style="max-width:30%;"/> <!-- {"left" : 4.35, "top" : 3.59, "height" : 2.64, "width" : 5.47} -->



Notes:

---

## Converting Word to Vectors

<img src="../../assets/images/machine-learning/word-to-vectors-1.png" alt="word-to-vectors" style="max-width:100%;"/> <!-- {"left" : 0.3, "top" : 1.07, "height" : 5.36, "width" : 9.66} -->




Notes:

---

# Scaling and Normalization

---

## Scaling
 * Usually data needs to be cleaned up and transformed before creating features
 * In the data below, we see **age** and **income** are in two different scales
    - age : ranges from 33 - 60
    - income ranges from 32,000  to 120,000
 * Some algorithms will yield better results if these different ranges can be scaled to a uniform range
    - Remove high magnitude data

<img src="../../assets/images/machine-learning/scaling-1.png" style="width:50%;"/>

---
## Scaling Approaches

<!-- TODO: Shiva -->

<img src="../../assets/images/formulas/scaling-z-score-1.png" style="width:25%;float:right;"/><!-- {"left" : 4.2, "top" : 4.73, "height" : 0.34, "width" : 1.84} -->

* Z-Scoring:
    - Subtract mean and divide standard deviation

<br clear="all" />

<img src="../../assets/images/formulas/scaling-min-max-1.png" style="width:25%;float:right;"/>

* Min-Max Scaling
    - Scale between a range (0 to 1   or 1 to 100)



Notes:

---

## Scaling Example

```python
import pandas as pd

data = pd.DataFrame ( { 'age' : [33,45,42,35,60],
                        'income' : [40000,80000,120000,32000,110000]
                    })

## z-score scaling
data_scaled_z =  (data - data.mean()) / data.std()

## min-max scaling
data_scaled_mm = (data - data.min()) / (data.max() - data.min())
```

- Here our original data (left) , z-scaling (middle) is on a uniform distribution;   and min-max scale (right) is between 0 to 1.0

<img src="../../assets/images/machine-learning/scaling-3.png" style="width:20%;"/>
<img src="../../assets/images/machine-learning/scaling-3-z.png" style="width:25%;"/>
<img src="../../assets/images/machine-learning/scaling-3-min-max.png" style="width:25%;"/>

---
## Scaling Example 2

```python
import pandas as pd

data = pd.DataFrame ( { 'age' : [33,45,42,35,60],
                        'income' : [40000,80000,120000,32000,110000],
                        'home_owner' : ['no', 'yes', 'no', 'yes', 'yes' ],
                        'marital_status' : ['single', 'married', 'divorced', 'single', 'married'],
                        'approved' : ['no', 'yes', 'yes', 'no', 'yes']
                    })
data

data['age_z'] = (data['age'] - data['age'].mean()) / data['age'].std()
data['income_z'] = (data['income'] - data['income'].mean()) / data['income'].std()
data
```
<!-- TODO shiva -->

<img src="../../assets/images/machine-learning/scaling-1.png" style="width:35%;float:left;"/>
<img src="../../assets/images/machine-learning/scaling-2.png" style="width:50%;float:right;"/>


Notes:

---


## Lab : Exploratory Data Analysis (EDA)

 * **Overview:**
    - Analyze house sales data

 * **Approximate Time:**
    - 20 - 25 mins

 * **Instructions:**
    - **'exploration/explore-house-sales' lab for Python / R / Spark**



Notes:

---

## Bonus Lab : Feature Engineering

 * **Overview:**
    - Feature engineering exercises

 * **Approximate Time:**
    - 20 - 30 mins

 * **Instructions:**
    - **'feature-eng' lab for Python / R / Spark**


Notes:


---
