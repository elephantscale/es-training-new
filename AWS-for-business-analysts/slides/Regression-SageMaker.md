# Regressions in SageMaker
---

# Regressions

[Regressions-Generic.md](../../machine-learning/slides/Regressions-Generic.md)

---

# Regressions in SageMaker

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
