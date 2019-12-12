# Learning To Rank

---

# Traditional Ranking

---

## About Ranking

 * Ranking is an important part of information retrieval problems.
 * Search needs to decide which document to return first.
 * Traditionally ranking is determined by term scoring algorithms:
   - like TFIDF
 * But TFIDF is not really an AI-based approach
   - Is it?
   - Debatable.
 * Is there an ML method of searching?

---

##  About Learning To Rank (LTR) 

 * Learning to Rank is not one algorithm
 * It simply means that we apply a supervised machine learning approach to the ranking problem.
 * We can look at it as a:
   - regression problem: trying to predict a "score" or a "rating"
   - classification problem: trying to predict a category such as "relevant" or "not relevant"
   - recommendation problem: trying to predict ranking using collborative filtering techiques such as **matrix factorization** or **k-nearest-neighbors**.

---

## Applications of LTR
  *  document retrieval
  *  collaborative filtering
  *  sentiment analysis
  *  online advertising.


---

## Features
 * All ML algorithms depend on **features.**
   - LTR is no exception!
   - Good features -> Good Results!
 * Here are a list of possible features that we can use for LTR:
 * **Query-independent** or **static** features — those features, which depend only on the document, but not on the query. For example, PageRank or document's length. Such features can be precomputed in off-line mode during indexing. They may be used to compute document's static quality score (or static rank), which is often used to speed up search query evaluation
 * **Query-dependent** or **dynamic** features — those features, which depend both on the contents of the document and the query, such as TF-IDF score or other non-machine-learned ranking functions.
 * **Query level** features or **query** features, which depend only on the query. For example, the number of words in a query


--- 


## How to Evaluate

 * Mean average precision (MAP);
 * DCG (Discounted Cumulative Gain) and NDCG;
 * Precision@n, NDCG@n, where "@n" denotes that the metrics are evaluated only on top n documents;
 * Mean reciprocal rank;
 * Kendall's tau;
 * Spearman's rho.


---

## Basic Approaches

  * Pointwise approach (regresssion)
    - assumes query-document pair as a score
    - regression problem: predict score
  * Pairwise approach (binary classification)
     - Compares two documents to determine the better of the two
     - binary classification
  * Listwise approach (model optimization)
    - average evaluation measure (MAP, DCG, Precision, etc) rover all queries
    - must normalize evaluation metrics 
    - requires continuous approximations or bounds  (tricky)
  * In general more modern approaches have used **listwise**  

---

## Example: Home Depot Data
  * Data has example search queries and a "relevance score"
  * Relevance Score was annotated by humans, therefore as supervised regression problem
  * pointwise approach would be appropriate here but we could use listwise or pairwise.
