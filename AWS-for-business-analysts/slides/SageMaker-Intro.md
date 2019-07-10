# SageMaker Introduction

---

## Lesson Objectives
  * Learn about SageMaker features
  * Learn SageMaker algorithms

---

# SageMaker Overview

---

## Typical Machine Learning Workflow
  * Data Scientists typically work on small datasets on their laptops
     - They work on a model
  * Once the model is decided, it is deployed in production
     - Usually on a cluster
     - Tested on large amount of data
  * Going from development to deployment isn't always easy

<img src="../../../assets/images/machine-learning/SageMaker-Workflow.png" alt="SageMaker-Workflow.png" style="width:76%;"/>

---

## What is Amazon SageMaker?

* Fully managed machine learning service

* Build and train machine learning models

* Deploy models into production cloud environment

<img src="../../../assets/images/machine-learning/3rd-party/Machine-Learning-SageMaker-Amazon.png" style="width:50%"/>

---

## What Does SageMaker Provide?

  * **Development**: Jupyter authoring notebook instance
     - For data sources exploration and analysis
     - Dynamically created instances for training

  * **Deployment**: Easy deployment at production scale

  * Common machine learning algorithms
     - Optimized for large data sets in distributed mode

  * Optional bring-your-own algorithm

  * Billing: by the minute

---

## How Does SageMaker Work?

<img src="../../../assets/images/machine-learning/Machine-Learning-SageMaker-Works.png" style="width:70%"/>

Notes:
Source: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works-mlconcepts.html

---

## SageMaker Machine Learning Steps

  * Explore the data
     - SageMaker managed instance with Jupyter Notebook

  * Train the model
     - On small sample set using Jupyter notebook instance
     - On large dataset using cluster

  * Validate the model
     - Offline testing on small subset of data
     - Online testing with % of live data

  * Deploy to production

---

## Step 1: Data Wrangling

  * Data Wrangling involves
     - Obtaining data
     - Cleaning data
     - Transforming data (for ML)

  * Obtaining Data
     - In-house (e.g. user click behavior, transaction history)
     - Purchase (e.g. credit history/score, demographics)
     - Public data (e.g. census, economy, weather)

---

## Step 1: Data Wrangling (contd.)

  * Cleaning data
     - Invalid data (e.g. incorrect codes)
     - Inconsistent data (e.g. country=US vs.  country='USA')
     - Missing data (e.g. no product code)

  * Transforming data
     - Join multiple data sets (e.g. credit history with customer data)
     - Convert categorical data to numeric

---

## Step 1: Data Wrangling (contd.)

  * More time spent in this step than in ML

  * In Sagemaker, done using Python/Jupyter notebook

  * Data stored in S3 - can support upto TBs, PBs of data

<img src="../../../assets/images/AI/AI-Workflow-02.png" style="width:40%;"/>

<img src="../../../assets/images/machine-learning/3rd-party/Machine-Learning-SageMaker-Data-Wrangling2.png" style="width:20%;"/>

---

## Step 2: Training the Model

<img src="../../assets/images//AI/AI-Workflow-05.png" style="width:50%;float:right;"/>

  * Choose an algorithm
     - Depends on data and what needs to be predicted
     - Sagemaker API or custom

  * Can be resource intensive
     - SageMaker provides elastic scalability

  * Evaluate the Model
     - SageMaker API or custom



---

## Scalable Training in SageMaker

  * SageMaker can automatically spin up many instances to scale training jobs

<img src="../../../assets/images/machine-learning/Machine-Learning-SageMaker-Scalable-Training.png" style="width:90%"/>

---

## Kernels Supported by SageMaker

  * **SageMaker native algorithms**
  * Spark
     - PySpark, PySpark3, SparkR
  * Anaconda Python
     - python2, python3 (scipy, sklearn)
  * Deep Learning using
     - TensorFlow (conda_tensorflow)
     - Apache MXNet (conda_mxnet)
  * Anything else
     - Provided as Docker images

---

## Validating a Model in SageMaker

  * Evaluate model performance
     - metrics based on algorithm
  * Validate with
     - "Hold out" sets (20-30%)
     - K-fold validation (5-10)
  * Deploy to test system for online prediction
    - Evaluate, tweak model until satisfied

Notes:
TODO

---

## Step 3: Deploying a Model


<img src="../../assets/images/AI/AI-Workflow-06.png" style="width:50%;float:right;"/>

  * Once the evaluation goes well, we can deploy the model to production

  * Continuous cycle:
     - Monitor performance of model
     - Train it with more data
     - Deploy again

  * SageMaker makes this process easy


---

## SageMaker Workflow

<img src="../../../assets/images/machine-learning/3rd-party/Machine-Learning-SageMaker-Deploying.png" style="width:60%"/>

Notes:
Source: https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works-hosting.html

---

## Getting Started With SageMaker

  * Start by using the SageMaker Console
  * Find an example Jupyter notebook and adapt it
  * Create new training models
  * Use Python or AWS SDK


---

## Cleanup Check List

  * In the console
     - Endpoint, configuration, model
     - Notebook instances
  * S3
     - Your buckets
  * IAM
     - Your role
  * Cloudwatch
     - Logs from /aws/sagemaker

---

## SageMaker Lab

  * Use: ml-labs-sagemaker/README.html
  * Runtime: 1hr – 1hr 30 mins
  * Instructor: Explain the workflow

<img src="../../../assets/images/machine-learning/Machine-Learning-SageMaker-Lab.png" style="width:50%; position:absolute;"/>

---

# SageMaker Algorithms

---

## Built-in Algorithms (Difficulty = 1)

| Example                      	| Sagemaker Name        	| Algorithm                                        	|
|------------------------------	|------------------------	|-----------------------------------------------------	|
| factorization_machines_mnist 	| factorization-machines 	| SVM, improved with FM                               	|
| imageclassification_caltech  	| image-classification   	| Neural network full training or  transfer knowledge 	|
| lda_topic_modeling           	| lda                    	| LDA                                                 	|
| linear_learner_mnist         	| linear-learner         	| Logistic regression Linear regression               	|
| ntm_synthetic                	| ntm                    	| NTM – Neural Topic Modeling, cf. LDA                	|

---

## Built-in Algorithms (Difficulty = 1)

| Example                            	| Sagemaker Name    	| Algorithm                                                            	|
|------------------------------------	|-------------------	|-------------------------------------------------------------------------	|
| pca_mnist3                         	| pca               	| PCA                                                                     	|
| seq2seq_translation                	| seq2seg           	| Machine translation Based on MXNet                                      	|
| xgboost_abalone (continuous valus) 	| xgboost           	| Gradient Boosting Improved Random Forests Learns from previous mistakes 	|
| xgboost_mnist (classifier)         	| Same              	| Same                                                                    	|

---

## Built-in Algorithms (Difficulty = 2)

| Example                            	| Sagemaker Name        	| Algorithm                                                                   	|
|------------------------------------	|------------------------	|--------------------------------------------------------------------------------	|
| breast_cancer_prediction           	| linear-learner         	| Multi-model                                                                    	|
| ensemble_modeling                  	| linear-learner XGBoost 	| Ensemble                                                                       	|
| linear_time_series_forecast        	| linear-learner         	| Adjusted for seasonality                                                       	|
| video_games_sales_xgboost          	| XGBoost                	| Combine data from different review sources                                     	|
| xgboost_direct_marketing_sagemaker 	| XGBoost                	| Dealing with unbalanced classes Cleaning the data to improve model performance 	|

---

## SageMaker Advanced (Difficulty = 3)

| Example                      	| Name              	            | What it does                                           	|
|------------------------------	|--------------------------------	|--------------------------------------------------------	|
| data_distribution_types      	| linear-learner                 	| Scaling out Multiple buckets                           	|
| handling_kms_encrypted_data  	| XGBoost                        	| Data is encrypted KMS = Key Management Service         	|
| kmeans_bring_your_own_model  	| Kmeans in Python               	| Model conversion and Deployment                        	|
| scikit_bring_your_own        	| A Python algorithm             	| Creates a Docker container Registers it with SageMaker 	|
| tensorflow_distributed_mnist 	| TensorFlow In Distributed Mode 	| Creating a job that is running a  TensorFlow model     	|

---

# SageMaker API

---

## SageMaker APIs / SDKs

  * Main (RESTful)
     - [https://docs.aws.amazon.com/sagemaker/latest/dg/API_Reference.html](https://docs.aws.amazon.com/sagemaker/latest/dg/API_Reference.html)

  * Python – High Level Python SDK
     - [https://github.com/aws/sagemaker-python-sdk](https://github.com/aws/sagemaker-python-sdk)

  * SparkScala
    - [https://github.com/aws/sagemaker-spark](https://github.com/aws/sagemaker-spark)

  * Amazon SageMaker Apache Spark Library
    - [https://github.com/aws/sagemaker-spark](https://github.com/aws/sagemaker-spark)

---

## Review Questions

* What is SageMaker

* What languages does SageMaker support?

* SageMaker billing is by

    - Second? Minute? Hour?

* What do you need to cleanup?

---

## References

* Official documentation:<br/>
[https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html](https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html)
