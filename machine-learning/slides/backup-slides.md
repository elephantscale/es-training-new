# ML Terminology
---

## ML Terminology

| Algorithm                                             	| Example                                     	| Input                                              	| Output                                      |
|-------------------------------------------------	|-----------------------------------------	|----------------------------------------------------	|-------------------------------------	|
| Classification - produces 'discrete' or 'qualitative' 	| Spam or not                                 	|**Features**<br/>(email text, origin IP address)        	|**Label**<br/>(Spam / Not-Spam)                  |
| Regression - produces 'continuous' or 'quantitative'  	| Weather forecasting, predicting temperature 	|**Variables**<br/>(current temperature, pressure ..etc) 	|**Target**<br/>(predicted temperature -50.5 ' F) 	|


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

<img src="../../assets/images/machine-learning/3rd-party/Driver_free_car.png" style="width:40%;">&nbsp;&nbsp;&nbsp;&nbsp;<img src="../../assets/images/machine-learning/3rd-party/Face_detection.png" style="width:40%;">

Notes:


---


## Clustering VS PCA


 * Both Clustering and PCA seek to simplify the data via small number of summaries / attributes

 * PCA looks to find a low-dimensional representation of the observations that explain a good fraction of the variance

 * Clustering looks to find homogeneous subgroups among the observations

Notes:



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



