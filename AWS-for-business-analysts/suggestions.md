SageMaker for BA suggestions

## [Python Notebook to run in SageMaker](https://github.com/elephantscale/ml-labs-sagemaker/tree/master/labs-to-upload)
* These run in SageMaker but are not part of AWS examples

## [Analytics on AWS using Athena and S3](https://docs.aws.amazon.com/athena/latest/ug/what-is.html)
* This is strictly not SageMaker. But I think it's okay to show how to do analytics on data in S3 using SQL. 
* We create a lab with some "business" data in S3 which we can wrap with a schema that is "natural" for analytics. Then show how to do various ad-hoc queries. This may take some work to ensure we learn enough about Athena's capabilities and make the material/lab relevant.

## ML using Sagemaker
* General intro to Sagemaker and the process. Boil down the API class to fit->transform, etc. 
* Various algorithms supported (what is typically of interest to analysts is this list below - we can refine based on feedback):
  - Logistic Regression (to identify relevant variables)
  - Decision Trees
  - Random Forests
  - Clustering using Unsupervised learning

## Logistic Regression using Sagemaker
* Hands-on example of LR. NOTE that goal is NOT to explain what ML or LR is. Just how to do this with Sagemaker.
* Lab can use fraud detection, loan approval or other use case that makes sense to this audience.

## Clustering using Sagemaker
* Customer Segmentation lab that should be relevant (public data available).


-------------------
**NOTE from Shanti:** 
*On more analysis, it appears that time series analysis may not be that interesting. We may want to hold off on this until we get a feel for the audience in the first 1 or 2 classes, question them and understand what/how they currently analyze.*

## Time Series Analysis
* Cover general topics of time series analysis (seasonality, trend, charting, etc.) using examples from business use case(s)
* Algorithms for forecasting (ARIMA, etc.) including lab in SageMaker
[Forecasting in SageMaker (open it in browser)](../linear_time_series_forecast.html)

* DeepAR Forecasting using SageMaker - theory and exercise using same data/use case as above
-----------------------------
