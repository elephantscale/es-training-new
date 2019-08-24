# Machine Learning Algorithms

---

## Algorithms Summary

[Algorithm-Summary.md](Algorithm-Summary.md)

---
## How to do Machine Learning


 *  **Collect data**
    More data we have, the better the algorithms become.  This data can come from internal logs (clickstreams) or external sources (credit scores of customers)

 *  **Prepare Data**
    Raw data is hardly in a form to be used.  It needs to be cleansed, tagged and curated before ready to use

 *  **Train a model**
    Feed the training data to model so it can learn

 *  **Evaluate the model**
    Test the model accuracy

 *  **Improve the model**
    Either by adding more training data, choosing a different algorithm ..etc.

Notes:




---

## Types of Machine Learning


 *  **Supervised Machine Learning:**
     - Algorithm learns from labeled training data
     - And predicts on new data

 *  **Unsupervised Machine Learning**
     - Algorithm tries to find natural patterns in the data

 *  **Semi-Supervised Learning**
     - Algorithm is trained with a training set which contains unlabeled (usually lot) and labeled (usually little) data
     - Example: Large images archive only a few of them are labeled (cat, dog, person) and majority are unlabelled

 *  **Reinforcement Learning**
     - Based on 'game play'  (rewards vs penalties)

Notes:


---

## Supervised Machine Learning

<img src="../../assets/images/machine-learning/3rd-party/Supervised.png" style="width:39%;float:right;" />

 * Algorithm learns from (training) data

 * Then predicts on 'unseen' data

<br clear="all" />

| Algorithms     | Description                                                            | Applications                                     |
|----------------|------------------------------------------------------------------------|--------------------------------------------------|
| Classification | Categorize things into groups                                          | -Spam classification <br/>-Fraud / no fraud      |
| Regression     | Dealing with numbers and calculate the probability something happening | -Predict house prices <br/>-Predict stock market |


Notes:

Image credit (Creative Commons) : Pexels.com

---


## Supervised Learning Example - Regression


 * Predicting stock market

 * Train the model using training data (already known)

 * Test performance using test data (already known)

 * Predict no new data (unseen)

<img src="../../assets/images/machine-learning/3rd-party/stock-market-1.png" style="width:59%;">

Notes:




---

## Supervised Learning Methodology


 * Split the data set into

     - **Training set**: Train the algorithm (training set should represent data well enough)

     - **Test set**: Validate the model

 * Start with 69% training, 29% test
    - Tweak the dials to increase or decrease the proportion

<img src="../../assets/images/machine-learning/Model-Validation-1.png" style="max-width:59%;">

Notes:

Facebook used 95%/5% `Understanding text from scratch`

---

## Supervised Learning - Classification


 * Classification is a model that predicts data into "buckets"
 * Examples:
     - Email is  **SPAM**  or  **HAM**  (not-SPAM)
     - A cell is  **cancerous**  or  **healthy**
     - Hand-written numbers -> any digits -1, 0, 1,..., 8
 * Classification algorithm learns from training data
     - Supervised learning
 * Also predicted classes are **discrete** or **qualitative**

<img src="../../assets/images/machine-learning/Classification-01.png" style="max-width:59%;">


Notes:




---

## Classification Applications


 * Web

     - Email is spam or not

     - Website is authentic or fraudulent

 * Medicine

     - Is this cell cancerous or not?

 * Finance

     - Credit card transaction fraudulent or not

 * OCR

     - Recognizing characters and symbols

Notes:




---

## Un Supervised Machine Learning

<img src="../../assets/images/machine-learning/3rd-party/Un-Supervised.png" style="width:29%;float:right;" />

 * No training needed

 * Algorithm tries to find patterns in data


<br clear="all"/>

| Algorithms               | Description                             | Applications                                                      |
|--------------------------|-----------------------------------------|-------------------------------------------------------------------|
| Clustering               | Find naturally present patterns in data | -Identify news stories (sports / business) <br/>-Gnome clustering |
| Association              | Find similar patterns                   | -people who buy A also buy B                                      |
| Dimensionality Reduction | Reduces number of features              | -Reducing 999s of variables into manageable size                 |


Notes:



---

## Clustering

<img src="../../assets/images/machine-learning/clustering-02.png" style="width:49%;float:right;">

 * Clustering finds natural groupings in data

 * Humans naturally cluster data we encounter
     - Categorizing, organizing, etc.
     - Our brains seek patterns

 * Why do we cluster?
     - To understand our data
     - To find "more like this"


Notes:

* Clustering allows us to group similar objects or events or data sets.
* This is a method of unsupervised learning.


---


## Clustering Use Cases: Fraud / Anomaly Detection


<img src="../../assets/images/machine-learning/Clustering-Use-Cases.png" style="width:29%;float:right;">

 * Anomaly detection

     - Find fraud

     - Detect network intrusion attack

     - Discover problems on servers



Notes:

* Image credit : Pixabay : Creative Commons Zero :
* https://pixabay.com/en/nuts-black-acorn-oak-animal-food-60813/





---

## Clustering Applications


 * Biology

     - Genomics grouping

 * Medicine

     - Xray/CAT image analysis

 * Marketing

     - Consumer grouping ("soccer mom"...etc.) and behavior analysis

 * Web

     - Search result grouping
     - News article grouping (Google news)

 * Computer Science : Image analysis

 * Climatology: Weather pattern analysis (high pressure/warm regions)

Notes:

* https://en.wikipedia.org/wiki/Cluster_analysis

---

## Unsupervised Example: Google News


 * Google News algorithm automatically groups **related news stories**  into sections

<img src="../../assets/images/machine-learning/3rd-party/Google-News-1.png" style="max-width:89%;">

Notes:


---

## Clustering Use Case: Customer Purchases @ Walmart

<img src="../../assets/images/deep-learning/3rd-party/Walmart-01.png" alt="Walmart-01.png" style="width:40%;float:right;"/>

 * Here is how Walmart is segmenting customer purchases
     * Pharmacy Runs
     * Strictly Grocery
     * Grocery and General Merchandise
     * Michaels Run
     * Party Trip
     * Toys
     * Electronics
     * Baby
     * Gallon of Milk
     * **Booze and Calories**
     * and more ...

 * **Question for class**: What is the use case for this?





Notes:

https://www.kaggle.com/c/walmart-recruiting-trip-type-classification



---

## Semi-Supervised


 * We are still learning, but not all data points are 'labelled'

 * But by grouping data points together, the algorithm can 'infer' information, even when labels are missing

<img src="../../assets/images/machine-learning/Semi-Supervised.png" style="max-width:49%;">

Notes:

---

## Semi-Supervised Learning Video



<img src="../../assets/images/deep-learning/3rd-party/Semi-Supervised-Learning-Video.png" alt="Semi-Supervised-Learning-Video.png" style="width:60%;"/>


[Link](https://www.youtube.com/watch?v=b-yhKUINb7o)

Notes:

https://www.youtube.com/watch?v=b-yhKUINb7o



---

## Reinforcement Learning


 * Imagine you are playing a new video game.  You have no idea how to play it.How will you learn?

 * Try a few things:
    - Open a door -> get more money / ammo
    - Jump from a cliff -> got hurt.. Loose health points .. Ouch!

 * This is how 'Reinforcement Learning' works.
     - Algorithm tries a few moves.. And learns automatically

Notes:



---

## Reinforcement Learning


 * Here the robot gets rewarded for 'food' and penalized for walking into fire

<img src="../../assets/images/machine-learning/Reinforcement-Learning.png" style="max-width:79%;">

Notes:



---

## Reinforcement Learning Demo: Atari Breakout


<img src="../../assets/images/deep-learning/3rd-party/Atari-Breakout.png" style="width:29%;">

[Link](https://www.youtube.com/watch?v=V0eYniJ-1Rnk)


Notes:

* [Video](https://www.youtube.com/watch?v=V0eYniJ-1Rnk)
* https://money.cnn.com/2016/8/28/technology/future/alphago-movie/index.html


---

## Reinforcement Learning Demo : Open AI Bots Playing Dota


<img src="../../assets/images/machine-learning/3rd-party/Open-AI-Bots-Playing-Dota.png" style="width:69%;">

<a href="https://www.youtube.com/watch?v=eHipy_j28Xw">Link</a>

Notes:

* https://www.youtube.com/watch?v=eHipy_j28Xw


---


## Reinforcement Learning Success Stories


 * [OpenAI trounces Dota-3 players](https://www.theinquirer.net/inquirer/news/3037135/openais-dota-3-playing-bots-trounce-semi-pro-players)

 * [Deep Mind's AI beats GO champion](https://www.theverge.com/2016/9/17/16495547/deepmind-ai-go-alphago-zero-self-taught)

    The company's latest AlphaGo AI learned superhuman skills by playing itself over and over

 * [Google's Alpha-GO defeats GO master](https://qz.com/639951/googles-ai-won-the-game-go-by-defying-millennia-of-basic-human-instinct/)

 * [OpenAI](https://openai.com/research/) is founded by Elon Musk.

     - To promote AI research for public bood

Notes:

* https://www.theinquirer.net/inquirer/news/3037135/openais-dota-3-playing-bots-trounce-semi-pro-players
* https://openai.com/research/
* https://www.theverge.com/2016/9/17/16495547/deepmind-ai-go-alphago-zero-self-taught
* https://qz.com/639951/googles-ai-won-the-game-go-by-defying-millennia-of-basic-human-instinct/


---

## Algorithm Summary

[Algorithm-Summary.md](Algorithm-Summary.md)

---

## ML Algorithm Cheat Sheet

<img src="../../assets/images/machine-learning/cheat-sheet.png" style="width:79%;">

Notes:
