# Topic Modeling


---

## Creating Models for Topics
 * Not all terms / n-grams in a document are equally important!
 * Some are very common terms: (so not useful for information retrieval)
 * Others may be frequently used but not particularly insightful.
 * How do we find the most important/insightful terms in a document?
 * What is a topic?
    - a topic is a collection of (sometimes weighted) terms
    - the terms are what "brings" the group of documents together.
    - topics are **inferred** not specified!

--- 

## Some Assumptions
 * We assume that documents are primarily about one general "topic"
   - This may not always be the case
   - But in many cases it is
 * Could we help to infer topics by looking at the relationships between documents?
   - We assume that within a group of documents there are related.
   - We can gain more insight by the way documents relate to each other than by the documents alone. 
   - "show me who your friends are and I will tell you who you are."
   - By reading a variety of documents on a given topic we understand the topic as a whole better
   
---
  


## Example: News Clustering:
  * Google News automatically clusters news stories by **topic**.
  * THis is the canonical use case for topic modeling.
  * Consider that on a given day news stories are not randomly distributed!
    - They cluster
    - whatever are the large news stories of the day will have a lot of of news stories
    - These news stories will have things in common for sure
    - because they are the same topic.
  * This is an **unsupervised** machine learning problem
    - I can't pre-define topics for news
    - the big news story tomorrow is inherently unpredictable.
    - I have to infer the topics from the data
    - using a clustering approach.
  * Can we use k-means or an ordinary clustering model?
    - we could!
    - But k-means is likely to get confused.
    - there are many terms that are present in every document. 
    - We want to cluster on the terms that really bring the topci togheter.

---

## Demo:

  * Here is a demo of news clustering in action:
  * [Demo](https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Topic_model_scheme.webm/600px-seek%3D17.6-Topic_model_scheme.webm.jpg)
 
Notes: 

https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Topic_model_scheme.webm/600px-seek%3D17.6-Topic_model_scheme.webm.jpg
---


## LDA (Latent Dirichlet Allocation)
  * LDA (Latent Dirichlet Allocation) is the most common way of doing topic modeling
  * It is a dimensionality reduction technique somewhat like LSI
  * But it also contains elements of clustering as well somewhat like K-Means.
    - For example, like K-means we define a pre-set number of clusters (topics) that we see
  * [Paper Link](http://www.jmlr.org/papers/volume3/blei03a/blei03a.pdf)


Notes:
http://www.jmlr.org/papers/volume3/blei03a/blei03a.pdf

---
