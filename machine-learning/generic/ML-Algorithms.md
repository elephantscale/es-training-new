# Machine Learning Algorithms

---

## Algorithms Summary

[Algorithm-Summary.md](Algorithm-Summary.md)

---

## Types of Machine Learning


 *  **Supervised Machine Learning:**
     - Algorithm learns from labeled training data
     - And predicts on new data

 *  **Unsupervised Machine Learning**
     - Algorithm tries to find natural patterns in the data

 *  **Semi-Supervised Learning**
     - Algorithm is trained with a training set which contains unlabeled (usually lot) and labeled (usually little) data

 *  **Reinforcement Learning**
     - Based on 'game play'  (rewards vs penalties)

Notes:


---

## Supervised Machine Learning

<img src="../../assets/images/machine-learning/3rd-party/Supervised.png" style="width:39%;float:right;" /><!-- {"left" : 9.54, "top" : 1.89, "height" : 4.98, "width" : 7.49} -->

 * Algorithm learns from (training) data

 * Then predicts on 'unseen' data

<br clear="all" />

| Algorithms     | Description                                                            | Applications                                     |
|----------------|------------------------------------------------------------------------|--------------------------------------------------|
| Classification | Categorize things into groups                                          | -Spam classification <br/>-Fraud / no fraud      |
| Regression     | Dealing with numbers and calculate the probability something happening | -Predict house prices <br/>-Predict stock market |

<!-- {"left" : 1.48, "top" : 7.56, "height" :1, "width" : 14.54} -->

Notes:

Image credit (Creative Commons): Pexels.com

---


## Supervised Learning Example - Regression


 * Predicting stock market

 * Train the model using training data (past data; already known)

 * Test performance using test data (past data; already known)

 * If performance is statisfactory, predict on new data (unseen)

<img src="../../assets/images/machine-learning/3rd-party/stock-market-1.png" style="width:59%;"><!-- {"left" : 2.56, "top" : 5.61, "height" : 5.19, "width" : 12.37} -->


Notes:




---


## Supervised Learning - Classification


 * Classification is a model that predicts data into "buckets"
     - Email is  **SPAM**  or  **HAM**  (not-SPAM)
     - A cell is  **cancerous**  or  **healthy**
     - Hand-written numbers -> any digits -1, 0, 1,..., 8

 * Classification algorithm learns from training data (Supervised learning) and predicts on new data

 * In the example below, we input mixed data to the model, and the model classifies them into A or B

<img src="../../assets/images/machine-learning/Classification-01.png" style="max-width:59%;"><!-- {"left" : 2.81, "top" : 7.19, "height" : 4.37, "width" : 11.87} -->



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

<img src="../../assets/images/machine-learning/3rd-party/Un-Supervised.png" style="width:29%;float:right;" /><!-- {"left" : 9.82, "top" : 1.89, "height" : 4.06, "width" : 7.2} -->


 * No training needed

 * Algorithm tries to find patterns in data


 <br clear="all" />

| Algorithms               | Description                             | Applications                                                      |
|--------------------------|-----------------------------------------|-------------------------------------------------------------------|
| Clustering               | Find naturally present patterns in data | -Identify news stories (sports / business) <br/>-Gnome clustering |
| Association              | Find similar patterns                   | -people who buy A also buy B                                      |
| Dimensionality Reduction | Reduces number of features              | -Reducing 999s of variables into manageable size                 |

<!-- {"left" : 0.42, "top" : 7.23, "height" : 1, "width" : 16.72, "columnwidth" : [5.33, 5.09, 6.29]} -->

Notes:



---

## Clustering

* Clustering finds natural groupings in data

* Here we are grouping alcohol beverages according to 2 dimensions (alcohol %, fizziness); And we see similar drinks fall into natural groups

* In real world applications, we could be clustering by many dimensions (10s or 100s)

<img src="../../assets/images/machine-learning/clustering-04.png" style="width:60%;"><!-- {"left" : 3.46, "top" : 6.49, "height" : 4.02, "width" : 10.59} -->


---


## Clustering Use Cases: Fraud / Anomaly Detection

<img src="../../assets/images/machine-learning/clustering-anomaly-detection-1.png" style="width:40%;float:right;"><!-- {"left" : 11.4, "top" : 1.89, "height" : 4.52, "width" : 5.57} -->

 * Anomaly detection is used to:

     - Find fraud

     - Detect network intrusion attack

     - Discover problems on servers

 * Here we see an anomaly (top left) that doesn't fall into the usual pattern (bottom right)


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

     - Consumer grouping ("new parents", "gardeners"...etc.) and behavior analysis

 * Web

     - Search result grouping
     - News article grouping (Google news)

 * Computer Science: Image analysis

 * Climatology: Weather pattern analysis (high pressure/warm regions)

Notes:

* https://en.wikipedia.org/wiki/Cluster_analysis

---

## Unsupervised Example: Google News

<img src="../../assets/images/machine-learning/3rd-party/Google-News-1.png" style="width:50%;float:right;"><!-- {"left" : 10.43, "top" : 2.77, "height" : 6.59, "width" : 6.56} -->

 * Google News algorithm automatically groups **related news stories**  into sections




Notes:


---

## Clustering Use Case: Customer Purchases @ Walmart

<img src="../../assets/images/deep-learning/3rd-party/Walmart-01.png" alt="Walmart-01.png" style="width:40%;float:right;"/><!-- {"left" : 10.66, "top" : 2.31, "height" : 3.79, "width" : 6.3} -->

 * Here is how Walmart is segmenting customer purchases ([link](https://www.kaggle.com/c/walmart-recruiting-trip-type-classification))
     * Pharmacy Runs
     * Strictly Grocery
     * Grocery and General Merchandise
     * Toys
     * Electronics
     * Baby
     * Gallon of Milk
     * **Booze and Calories**
     * and more ...

 * **Question for class:** What is the use case for this?


Notes:

---

## Semi-Supervised


 * We are still learning, but not all data points are 'labelled'

 * But by grouping data points together, the algorithm can 'infer' information, even when labels are missing

<img src="../../assets/images/machine-learning/Semi-Supervised.png" style="max-width:49%;"><!-- {"left" : 4.29, "top" : 4.63, "height" : 6.57, "width" : 8.91} -->


Notes:

---

## Semi-Supervised Learning Video

<img src="../../assets/images/deep-learning/3rd-party/Semi-Supervised-Learning-Video.png" alt="Semi-Supervised-Learning-Video.png" style="width:60%;"/><!-- {"left" : 3.28, "top" : 1.89, "height" : 6.12, "width" : 10.95} -->


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

<img src="../../assets/images/machine-learning/Reinforcement-Learning.png" style="max-width:79%;"><!-- {"left" : 3.13, "top" : 4.19, "height" : 6.49, "width" : 11.23} -->


Notes:



---

## Reinforcement Learning Demo: Atari Breakout


<img src="../../assets/images/deep-learning/3rd-party/Atari-Breakout.png" style="width:29%;"><!-- {"left" : 5.55, "top" : 1.89, "height" : 7.3, "width" : 6.4} -->



[Link](https://www.youtube.com/watch?v=V1eYniJ0Rnk)


Notes:

* [Video](https://www.youtube.com/watch?v=V1eYniJ0Rnk)
* https://money.cnn.com/2016/8/28/technology/future/alphago-movie/index.html


---

## Reinforcement Learning Demo: AI Learning to Play 'Hide and Seek'
<img src="../../assets/images/AI/3rd-party/openai-hide-and-seek-1.jpg" style="width:70%;float:right;"/><!-- {"left" : 4.25, "top" : 1.89, "height" : 5.07, "width" : 9.01} -->


* [Open AI blog](https://openai.com/blog/emergent-tool-use/)
* [Watch video 1](https://openai.com/blog/emergent-tool-use/)
* [Watch video 2](https://www.youtube.com/watch?v=Lu56xVlZ40M)

---

## Reinforcement Learning Demo: Open AI Bots Playing Dota


<img src="../../assets/images/machine-learning/3rd-party/Open-AI-Bots-Playing-Dota.png" style="width:69%;"><!-- {"left" : 3.54, "top" : 1.89, "height" : 5.87, "width" : 10.42} -->

[Link](https://www.youtube.com/watch?v=eHipy_j29Xw)


Notes:

* https://www.youtube.com/watch?v=eHipy_j29Xw


---

## Reinforcement Learning: Further Reading


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


<img src="../../assets/images/machine-learning/cheat-sheet.png" style="width:79%;"><!-- {"left" : 1.24, "top" : 2.34, "height" : 9.03, "width" : 15.01} -->


Notes:
