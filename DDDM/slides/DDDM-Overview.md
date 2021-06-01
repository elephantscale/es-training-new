# Data Driven Decision Making
---

# DDDM Intro
---


## What is DDDM?

* Data Driven Decision Making
* "DDDM is the process of making decisions based on actual data rather than observations or intuition alone."

---

## Questions of DDDM
* Two Basic Questions
* What is it that we *actually* do?
  - versus what it is that we *think* we do.
* How well do we do it?
  - versus how well does our customers and partners think we do it.

---

## Research Studies

* According to McKinsey, companies that use DDDM outsmart their competitors in terms of profit.
* According to a survey conducted by the Business Application Research Center (BARC) on the BI trends, DDDM and Data Quality Management are the most important trend in 2020.

---


## Decision Making

* Companies use business analytics to enable faster and facts-based decision making.

* Data-driven organizations make better strategic decisions.

* Companies enjoy high operational efficiency, improved customer satisfaction, robust profit and revenue level.



---


## Culture Versus Activity
* DDDM is not primarily an activity
  - It certainly can influence our activities
  - But alone it's not enough.
* DDDM requires a *Cultural* change
  - Training should be provided for all stakeholders involved
  - Failure is often that not on "the same page

---

## Hypothesis
* DDDM starts with a hypothesis
* What is a Hypothesis?
  - A Hypothesis is a "proposed explanation made as a starting point for further investigation"
* A Hypothesis is:
  - Testable
  - Measurable
  - Understable
  - Contain one or more Independent (X) and Dependent (Y) variables.

---


## Data
* Above all, DDDM should be about confirming the *hypothesis* with data
* It's really about applying the scientific method.
* Does our hypothesis better fit the data, or the null hypothesis better fir the data.

---

## DDDM Lifecycle

1. Discovery: Learn about business domain and assess available resources
2. Data Preparation: Prepare and make data available
3. Perform Analysis: Identify Techniques and Data to Understand Variables' relationship
4. Modeling: Develop Analytical Models
5. Communicate Results: Identify Key findings, Business Values, and develop narratives for Stakeholders.
6. Operationalize: Deliver Final Reports, briefs, code, and techincal docuemtns.

---


# Doing DDDM
---

## Doing DDDM

* Problem Definition
  - e.g., better ad targeting to improve click-through-rate

* Identify appropriate data sources

  - e.g., impression data and social data

* Collect data

* Prepare data

  - ETL, Clean, Filter, Aggregate, etc.
  - Summary statistics and descriptive analytics

* Build/Train/Test model

* Show results

  - e.g., a dashboard
  - Or, a set of charts and graphs with query capability

Notes:

---

## Problem Definitions


* This may not be as easy as it seems

* Known Knowns
  - Daily web traffic

* Known Unknowns
  - What are most popular pages?
  - Do big connectors matter in a social graph?

* Unknown Unknowns
  - Is there a connection between ??? and ????

Notes:

---

## Collecting Data


* Data Sources can be
  - External: government data, public data, ...
  - Internal: collected data (clickstream etc.)

* External Data challenges
  - Compliance, security concerns, ...
  - How much can we get? API throttling.
  - Is the data in useable format?

* May need to bring data from different systems and in usually in different formats.
  - Clicklogs are text files.
  - Customer data can be from a database.

Notes:

---

## Data Pipelines

* Once the 'one time' analysis is successful, you may want to do analysis on new data routinely.

* Need a data pipeline to
  - Gather data from multiple sources
  - Bring them in to a central place (Hadoop, NoSQL, ... ) where analysis can happen
  - Can handle failures in data flow
  - Setup governance policies (masking, expiration, ... )

Notes:

---

## Data Preparation / Cleaning

* Problems with raw data sets
  - Non-usable format (say in Excel spreadsheet format)
  - Contains errors & wrong values
  - Missing values
  - Data is spread across multiple silos

* Data scientists spend a lot of time cleaning and massaging raw data, to get them ready for analysis.

* Crucial part of data science

* Can consume a lot of time (50% - 80%  of the project!!!)

* Least sexy



Notes:

---

## Understanding Data

<img src="../../assets/images/data-analysis-python/3rd-party/Understanding-Data.png" alt="Understanding-Data.png" style="width:30%;float:right;"/><!-- {"left" : 6.15, "top" : 1.16, "height" : 2.67, "width" : 3.9} -->

* Before doing 'deep learning' of data, understand the data.

* Basic questions
  - Is there a pattern?
  - Are there a lot of outliers?  (May skew analysis. Should we keep these or throw them away?)

* **Visualizations** can help greatly!
  - Just do some quick & dirty graphs.

* Identify 'interesting segments'

* Need to sample?  Or process entire data set?



Notes:

---

## Model Building

* Don't do this until you have a good understanding of data.(See previous section.)

* Pick right modeling technique
  - Clustering
  - Classifications
  - Etc.

* Pick the right model for data
  - Don't get 'hung up' on one model.
  - Try a few to identify the best fitting model.
  - Experience counts!

Notes:

---

## Model Validation

* Models need to be 'verified'  / 'validated.'
* Split the data set into
  - Training set: build / train model
  - Test set: validate the model
* Initially 70% training, 30% validation.
* Tweak the dials to decrease training and increase validation.
* Training set should represent data well enough.



<img src="../../assets/images/machine-learning/model-testing-5.png" style="width:40%;"/><!-- {"left" : 2.38, "top" : 5.39, "height" : 2.41, "width" : 5.49} -->

Notes:

---

## Visualizations

* How you tell the results

* Very very important part!!

* Good visualizations convey the point to the audience.

* A good data decision maker must learn good visualization techniques.

* Standard graphs: line, bar, pie, ...

* Modern visualizations

  - Heat maps
  - Animations (D3JS etc.)

Notes:

---

## DDDM Applications

* Risk analysis

* Predictive modeling
  - Stock market, home prices, ...

* Recommendations
  - Movies, books, shopping, ...

* Fraud detection
  - Credit card transactions, ...

* Social media
  - Network effects, connections, recommendations, ...


Notes:

---

## DDDM Methodology: Iterative Learning Process


<img src="../../assets/images/data-analysis-python/Methodology.png" alt="Methodology.png" style="width:55%;"/><!-- {"left" : 0.55, "top" : 1.84, "height" : 5.38, "width" : 9.14} -->

Notes:

---

## Data Analytics Tools

* Traditional tools have good traction.
  - Easy to use UI
  - Commercial support

* Open source is catching up pretty fast!
  - Very big eco system
  - New libraries
  - Almost free


<img src="../../assets/images/data-analysis-python/Analytics.png" alt="Analytics.png" style="width:30%;"/><!-- {"left" : 5.22, "top" : 3.41, "height" : 2.82, "width" : 4.6} -->

Notes:

---

## Open Source Tools


|                                  | R                            | Python                                           | Java                                                                     |
|----------------------------------|------------------------------|--------------------------------------------------|--------------------------------------------------------------------------|
| Popularity                       | Academicroots,  very popular | Very popular for  generic and data  science work | Very popular  generalpurposelanguage,  decent data science  capabilities |
| Opensource  libraries / routines | huge                         | Pretty good                                      | average                                                                  |
| Specific Libraries               | all                          | Scikit, SciPy, NumPy, Panda                      | Weka                                                                     |
| Big Data  Integration            | YES (spark)                  | YES (spark)                                      | YES (spark)                                                              |

<!-- {"left" : 0.26, "top" : 1.22, "height" : 3.65, "width" : 9.75, "columnwidth" : [2.44, 2.44, 2.44, 2.44]} -->

Notes:

---

## DDDM: The Future


* We are going to have more data

- Sensors, sensors everywhere
- Connected devices driving a deluge of data
- Most of our current devices will get "smarter" thanks to data

* Real-time data processing
- Able to process, analyze, and learn data in real-time
- Amazing applications in robotics and automated expert systems ("Google car")

* AI will dominate


Notes:

---
