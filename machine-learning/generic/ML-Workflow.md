# Machine Learning Workflow / Process

---

## Machine Learning Process

<img src="../../assets/images/machine-learning/ML-Process.png"  style="max-width:90%;"/><!-- {"left" : 1.02, "top" : 2.47, "height" : 4.13, "width" : 8.21} -->



---

## Machine Learning Process

 * Step 1: Get Data

 * Step 2: Explore Data and build model

 * Step 3: Evaluate model

 * Step 4: Optimize model

 * Step 5: Deploy and monitor

---

## Machine Learning Process: Step 1: Data Exploration

<img src="../../assets/images/machine-learning/ML-Process-02.png" style="max-width:90%;"/><!-- {"left" : 0.53, "top" : 2.22, "height" : 4.62, "width" : 9.19} -->


---

# Developing A Model
---

## Machine Learning Process: Step 2: Developing a Model

<img src="../../assets/images/machine-learning/ML-Process-03.png"  style="max-width:90%;"/><!-- {"left" : 0.81, "top" : 2.36, "height" : 4.35, "width" : 8.64} -->


---

## Sample Dataset:  Cars

* We want to predict MPG of a car
* What attributes to consider?

<img src="../../assets/images/machine-learning/Sample-Cars.png" alt="Sample-Cars" style="width:70%;"/> <!-- {"left" : 0.39, "top" : 2.47, "height" : 4.71, "width" : 9.48} -->



Notes:

---

## Sample Model for Predicting MPG

<img src="../../assets/images/machine-learning/Predicting-MPG.png" alt="Predicting-MPG" style="width:60%;float:right;"/> <!-- {"left" : 0.49, "top" : 1.66, "height" : 5.74, "width" : 9.26} -->

* Designate inputs as X
  - X<sub>1</sub>: first input  (e.g.  number of cylinders)
  - X<sub>2</sub>: second input  (e.g. weight of car)
  - X<sub>i</sub>: ith input  (e.g. horsepower)
* Output  / target variable is denoted as Y
* **`Y = f(X) + E`**
  - Y: Target:
  - Inputs (X<sub>1</sub>, X<sub>2</sub> ..etc)
  - E: error / noise


Notes:

---

## Let's Play a Guessing Game!

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Look at the data below.  Come up with a formula linking X and Y

<br/>

| X | Y |
|---|---|
| 1 | 2 |
| 2 | 5 |

* So what is the formula?

* `Y = ???`

* Answer next slide

---

## Guessing Game

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

| X | Y |
|---|---|
| 1 | 2 |
| 2 | 5 |

* I have 2 possible formulas (there may be more)

* **`Y = 3X - 1`**

* **`Y = X^2 + 1`**

---

## Guessing Game

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let me provide more data

| X | Y  |
|---|----|
| 1 | 2  |
| 2 | 5  |
| 3 | 10 |
| 4 | 17 |

* Now, what would be the formula?

* Answer next slide

---
## Guessing Game

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->


| X | Y  |
|---|----|
| 1 | 2  |
| 2 | 5  |
| 3 | 10 |
| 4 | 17 |

* With more data, we can finalize on a formula

* **`Y = X^2 + 1`**

* Lesson:  More (quality) data we have, we can come up with a more precise formula

* **This is the essense of machine learning!**

---

## Modeling Techniques (Little Math!)

 * ML model has two types: Parametric / Non-Parametric
 * Parametric models assume a strong 'f'
    - Tend to be simple models
    - May not be very accurate

 * Non-parametric models don't assume a rigid 'f'
    - Adopt to data very well
    - More accurate
    - More difficult to understand than parametric models


Notes:

---

## Parametric vs. Non Parametric

|               | Parametric                                                                                  | Non Parametric                                                                                                                                          |
|---------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| Advantages    | - Simpler <br/>- Very fast to learn from data <br/>- Don't required, a lot of training data | - Flexible: can adopt to complex data, <br/>- No assumptions about underlying function, <br/>- good prediction performance                                 |
| Disadvantages | - limited by function <br/>- Can not adopt to complex data <br/>- Can underfit                   | - Complex to understand and explain, <br/>- Require more data for learning,<br/>- Slower to train as they have more parameters to tweak, <br/>- Canover-fit |
| Algorithms    | - Linear Regression <br/>- Logistic Regression <br/>- Linear Discriminant Analysis          | - Decision Trees, <br/>- Support Vector Machines, <br/>- Naïve Bayes                                                                                       |
| Best for      | - small size data with previous knowledge of features                                       | when having lots of data and no prior knowledge of features                                                                                             |

<!-- {"left" : 0.25, "top" : 1.06, "height" : 4.43, "width" : 9.75, "columnwidth" : [1.65, 3.57, 4.54]} -->


Notes:

---

## Parametric vs. Non Parametric

|                         | Parametric         | Non Parametric    |
|-------------------------|--------------------|-------------------|
| Model complexity        | Simple             | More complex      |
| Training speed          | Fast               | Slow              |
| Amount of training data | Doesn't need a lot | Needs more data   |
| Explainability          | Simple to explain  | Harder to explain |
| Fit                     | under-fit          | over-fit          |
| Adopting to data        | simple data        | complex data      |
| Prediction accuracy     | good               | better            |

<!-- {"left" : 0.25, "top" : 1.4, "height" : 4, "width" : 9.75} -->

Notes:

---
# Evaluating A Model

[ML-Concepts-Model-Validation.md](ML-Concepts-Model-Validation.md)
