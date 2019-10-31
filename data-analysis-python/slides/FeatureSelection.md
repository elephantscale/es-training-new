# Feature Selection
---

## Feature Selection 

 * There's an unlimited number of features we *could* select.
 * Even if we have data in our dataset, we can transform it a million differnet ways.
 * We need to find the the *right* set of features.

Notes:

---

## Less is More

 * More Features is not necessarily better
 * The **Curse of Dimensionality** says that more *features* requires more *observations* (rows)
   - And this relationship is **not** linear:
   - More features --> **Many** more rows.
 * So, what we want is the *right* set of features.
 * But how do we know how to select the right number of features?

Notes:

---

## Correlation
 * One way is to look at the correlation of features to target/label
 * If the feature is correlated, it might be 

Notes:


---

## How to find correlation in python

 * Pandas makes finding the correlation easy
 * This is the Pearson Correlation Coefficient

```python

import pandas as pd

df.corr()[['label']]

          label
0      0.981981
1      0.866025
2     -1.000000
label  1.000000

```

* Here, we see that all 3 features 0,1,2 are very highly correlated with the output label

Notes:
---

## Correlation Can Lie!

 * Highly correlated with outcome is generally a good thing.
 * But, correlation can lie to you!
   - High correlation isn't necessarily signifiant
   - Need to look at p-value and f-value
 * Low correlation features can still be *empirically* predictive
  - It means that including the feature gives you better results than not including it.

Notes:


---

## Random Forest
 
 * Random Forests can be powerful feature selection tool
 * Random Forests run many times with different feature combinations
 * Can estimate which are the most important features.

```python
from sklearn.ensemble import RandomForestClassifier
clf = RandomForestClassifier(
  n_estimators=400, n_jobs=-1)
clf.fit(X, y)
top_features = utils.feature_importances(
  clf, top_features, n=20)

```

Notes:

---

## Forward and Reverse Selection
 * We can try running the model with different combinations of features
   - Choose the best combination of features
   - Forward Selection: Start with no features and add
   - Reverse Seleection: Start with all features and subtract
 * However, all other things being equal, we should *not* just choose the combination with the highest accuracy
 * We need to apply a penalty for having too many fatures.
 * Some useful metrics:
   - AIC: Aikake Information Criterion:  Useful for feature selection
   - BIC: Bayes Information Criterion


Notes:

