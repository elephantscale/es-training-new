# Featuretools Package
---

## Introducing Featuretools

<img src="../../assets/images/logos/featuretools-logo-1.png" alt="featuretools-logo-1.png" style="width:30%;"/><!-- {"left" : 0.63, "top" : 2.08, "height" : 1.64, "width" : 7.05} -->


 * Featuretools is a package to help in feature engineering in python




Notes:

---

## About Featuretools

 * Feature Engineering Automated!
 * Deep Feature Synthesis
 * Read the paper:  
   - http://www.jmaxkanter.com/static/papers/DSAA_DSM_2015.pdf

Notes:

---

## Types of Data Transformations
 * DateTime
 * Categorical
 * Aggregrations
 * Transforms

Notes:

---

## Dependencies

 * Pandas
 * Numpy
 * That's it!

Notes:

---

## Framework Independent
 * Scikit-learn
 * Tensorflow
 * Keras
 * Can be used with any ML pipeline
 * Not specific

Notes:

---

## Making Labels
 * Featuretools helps us make labels (targets)
 * Example: Did a user make a purchase in target time? (true/false)

```python
label_times = utils.make_labels(es=es,
   product_name = "Banana",
   cutoff_time = pd.Timestamp('March 15, 2015'),
   prediction_window = ft.Timedelta("4 weeks"),
   training_window = ft.Timedelta("60 days"))
label_times.head(5)

```
Notes:

---

## Deep Feature Synthesis

 * Automatatically Generates Engineered Features
 * Stacks primitives to create more complex data
 * Two use cases
   - Temporal and time series data
   - structured relational data
 * Generally does "more is better"
   - One can always filter out undesired engineered features

Notes:

---

## What kinds of Features?
 * Aggregates (mean, sum, mode)
 * Combinations (feature 1 and feature 2)
 * Transformations (log, ln, power)
 * Kernel transformations (polynomial, radial)

Notes:

---

## DateTime
 * DateTimes are a special case
 * Extract: Month, Day, Year, Hour, Day of Week, etc (separate features)
 * Relate to other datetimes.

Notes:

---

## Example:

```python

feature_matrix, features = ft.dfs(target_entity="users",
   cutoff_time=label_times,
   training_window=ft.Timedelta("60 days"),
   entityset=es,
   verbose=True)

# encode categorical values
fm_encoded, features_encoded = ft.encode_features(feature_matrix,
                                                  features)

print("Number of features %s" % len(features_encoded))

```
Notes:

---

## Results

 * The Previous example builds 76 features
   - More than you need!
   - But it's a start
 * Example Features:
   - COUNT(order_products WHERE product_name = Banana)
   - MODE(order_products.product_name) = Banana
   - MODE(orders.MODE(order_products.product_name)) = Banana
   - STD(orders.PERCENT_TRUE(order_products.reordered))
   - STD(orders.NUM_UNIQUE(order_products.product_name))
   - SUM(orders.NUM_UNIQUE(order_products.product_name))
   - SUM(orders.NUM_UNIQUE(order_products.aisle_id))


Notes:
