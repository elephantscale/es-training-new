
* Estimators usually take Parameters

```python
est = BaseEstimator(param1=myparam1, param2=myparam2
```
<!-- {"left" : 0, "top" : 4.36, "height" : 0.54, "width" : 9.44} -->

 * Estimators must have a score (float)
  - bigger is better

---
## Cloning an Estimator
 * We can call a clone() on the estimator
 * Does a Deep copy

```python
import sklearn.base
sklearn.base.clone(estimator)
```
<!-- {"left" : 0, "top" : 1.86, "height" : 0.81, "width" : 5.61} -->

Notes:

---
