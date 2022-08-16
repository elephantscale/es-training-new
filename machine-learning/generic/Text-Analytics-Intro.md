# Text Analytics

---

## Lesson Objectives

- Understand text analytics tools, algorithms and use cases


Notes:




---

# Text Analytics Overview

---

## Text Analytics Has Become Very Prominent

<img src="../../assets/images/machine-learning/Text-Analytics-0.png" style="width:40%;float:right;"/><!-- {"left" : 5.36, "top" : 2.32, "height" : 3.8, "width" : 4.75} -->

 * Rise of social media (Twitter / Facebook) allows lots of text exchanges

 * Customer 'chat' interaction

 * Customer emails

 * Unstructured data exists in many forms

 * Mostly underutilized

 * Can use data to great effect given right tools




Notes:



---

## Use Case: Customer Service Via Social Media


<img src="../../assets/images/machine-learning/3rd-party/Text-Analytics-1.png" alt="Text-Analytics-1.png" style="width:55%"/><!-- {"left" : 0.27, "top" : 2.15, "height" : 5.35, "width" : 9.72} -->


Notes:



---

## Use Case: Sentiment Analysis

- What are customers saying about a brand / product


<img src="../../assets/images/machine-learning/Text-Analytics-2.png" alt="Text-Analytics-2.png" style="width:60%;"/><!-- {"left" : 1.24, "top" : 2.43, "height" : 4.79, "width" : 7.76} -->


Notes:

---

## Use Case - Sentiment Analytics

<img src="../../assets/images/data-analysis-python/3rd-party/twitter-sentiment-analysis.jpeg" style="width:75%;"/><!-- {"left" : 1.02, "top" : 2.17, "height" : 5.31, "width" : 8.21} -->



---

## Use Case : Support Tickets

- Automatic ticket routing
    - Parse the ticket / understand the context and send it to the right queue

- Assign priority (High, Medium, Low) based on ticket text

```
Ticket-123

When I try to save the document as PDF, it crashes
```

<!-- {"left" : 0, "top" : 3.3, "height" : 1.07, "width" : 9.11} -->

Notes:


---

# Text Analytics Tools and Algorithms

---

## Text Analytics Tools and Algorithms


 * Text visualizers: Word Cloud

 * 'Bag of Words'

 * Top-N words

 * Ngrams

 * Vectorizing
    - TF-IDF
    - Word2Vec

Notes:



---

## Visualizing Text - Word Clouds (State of the Union Speech 2014)

<img src="../../assets/images/machine-learning/3rd-party/text-analytics-word-cloud-1.png"  style="width:60%;float:right;"/><!-- {"left" : 5.45, "top" : 2.16, "height" : 2.9, "width" : 4.72} -->

- Word Clouds are really neat way to get a 'sense' of the text

- Most frequent words are the biggest
    - 'America',  'Cheers'




Notes:

---

# Bag of Words

---

## 'Bag of Words'


 * Split the document(s) into words

<img src="../../assets/images/machine-learning/text-analytics-bag-of-words-1.png"  style="width:79%"/><!-- {"left" : 1.02, "top" : 2.49, "height" : 4.66, "width" : 8.21} -->


Notes:





---

## Bag Words Example 1: 'Moby Dick' by Herman Melville

<img src="../../assets/images/machine-learning/text-analytics-bag-of-words-moby-dick-1.png" style="width:۶0%"/><!-- {"left" : 1.02, "top" : 2.12, "height" : 5.41, "width" : 8.21} -->




Notes:



---

## Bag Words Example2: 'Alice in Wonderland' by Lewis Carrol

<img src="../../assets/images/machine-learning/text-analytics-bag-of-words-alice-1.png"  style="width:60%"/><!-- {"left" : 1.02, "top" : 2.15, "height" : 5.35, "width" : 8.21} -->


Notes:


---

## Bag of Words Process


 *  **Cleanup**
     -  **Step 1: Lowercase text:**
        (The Sun was bright -> the sun was bright)

     -  **Step 2: Remove punctuations**
        (!  ,   .  #)

     -  **Step 3: Remove numbers (optional)**
        (1, 2, 3)

     -  **Step 4: Remove STOP words (and any other unnecessary words)**  
        ( the, is, in, and)*

 *  **Tokenize**

     - Break text into words  (bag of words)

 *  **Analyze**

Notes:



---


## Bag of Words Example: "Tale of Two Cities" by Charles Dickens


 * We are going to walk through processing some text(slightly modified version)

```text
It was the best of times. It was the worst of times! It was the age of wisdom!!
$123

```
<!-- {"left" : 0, "top" : 2.1, "height" : 0.59, "width" : 10.25} -->


Notes:



---


## Text Cleanup: Lowercase, Remove Punctuations


```text
It was the best of times. It was the worst of times! It was the age of wisdom!!
$123

```
<!-- {"left" : 0, "top" : 1.49, "height" : 0.59, "width" : 10.25} -->


<img src="../../assets/images/machine-learning/Text-Analytics-7.png" style="width:20%"/><!-- {"left" : 3.84, "top" : 2.69, "height" : 0.97, "width" : 1.91} -->


```text
it was the best of times. it was the worst of times! it was the age of wisdom!!
$123

```
<!-- {"left" : 0, "top" : 4.18, "height" : 0.59, "width" : 10.25} -->

<img src="../../assets/images/machine-learning/Text-Analytics-8.png" style="width:40%"/><!-- {"left" : 2.06, "top" : 5.44, "height" : 1.17, "width" : 6.13} -->


```text
it was the best of times it was the worst of times it was the age of wisdom

```
<!-- {"left" : 0, "top" : 6.88, "height" : 0.42, "width" : 10.25} -->


Notes:



---

## Dealing With Stop Words

<img src="../../assets/images/machine-learning/text-analytics-bag-of-words-alice-1.png"  style="width:50%;float:right;"/><!-- {"left" : 5.93, "top" : 1.62, "height" : 2.81, "width" : 4.31} -->

 * Sample stop words
     - English (total 153):  *'a', 'about', 'above', 'after', 'again', 'against',..*
     - Spanish (total 313): *'a', 'al', '*  *algo*  *', '*  *algunas*  *', '*  *algunos*  *',*  *...*
     - German (total 231):  *'*  *wie*  *', 'also', '*  *alle*  *', '*  *anderer*  *', 'des',*

 * However they don't contribute much to analytics
     - Here we see an example of 'Alice in Wonderland' analysis.  And there are lot of stop words

 * Most text mining packages has a built in stop words dictionaries for various languages

Notes:



---

## Text Cleanup: Remove stop words


```text
it was the best of times it was the worst of times it was the age of wisdom

```
<!-- {"left" : 0, "top" : 1.57, "height" : 0.42, "width" : 10.25} -->

<img src="../../assets/images/machine-learning/Text-Analytics-9.png" style="width:30%"/><!-- {"left" : 3.13, "top" : 2.65, "height" : 1.19, "width" : 3.99} -->



```text
English stopwords
 a, able, about, across, after, all, almost, also, am, among, an, and, any, are,
 as, at, be, because, been, but, by, can, cannot, could, dear, did, do, does,
 either, else, ever, every, for, from, get, got, had, has, have, he, her, hers,
 him, his, how, however, i, if, in, into, is, it, its, just, least, let, like,
 likely, may, me, might, most, must, my, neither, no, nor, not, of, off, often,
 on, only, or, other, our, own, rather, said, say, says, she, should, since,
 so, some, than, that, the, their, them, then, there, these, they, this, tis,
 to, too, twas, us, wants, was, we, were, what, when, where, which, while,
 who, whom, why, will, with, would, yet, you, your

```
<!-- {"left" : 0, "top" : 4.03, "height" : 2.12, "width" : 10.25} -->

<img src="../../assets/images/machine-learning/Text-Analytics-10.png" style="width:10%"/><!-- {"left" : 4.45, "top" : 6.47, "height" : 1.19, "width" : 1.36} -->


```text
best times worst times age wisdom

```
<!-- {"left" : 0, "top" : 7.99, "height" : 0.54, "width" : 6.28} -->



Notes:

---

## Tokenizing Text


 * Tokenizing is breaking the text into tokens (words / sentences)

 * Most text algorithms work on 'tokens'

 * Can you spot the differences in word-tokenization below?

<img src="../../assets/images/machine-learning/text-analytics-tokenizing-1.png" style="width:70%"/><!-- {"left" : 1.02, "top" : 3.64, "height" : 3.79, "width" : 8.21} -->


Notes:


---

## Text Analytic: Word Count


 * Finally we have cleaned up text to do a simple analytics - word count


```text
Original text
-------------

It was the best of times. It was the worst of times! It was the age of wisdom!!
$123

```
<!-- {"left" : 0, "top" : 2.15, "height" : 1.17, "width" : 10.25} -->



```text
Cleaned text
-------------

best times worst times age wisdom

```
<!-- {"left" : 0, "top" : 3.5, "height" : 1.33, "width" : 6.28} -->


```text

Word count
----------

Total number of words = 6

+-------+-----+
|   word|count|
+-------+-----+
|  best |    1|
|  times|    2|
|  worst|    1|
|    age|    1|
| wisdom|    1|
+-------+-----+

```
<!-- {"left" : 0, "top" : 4.99, "height" : 3.97, "width" : 4.94} -->




Notes:



---

## Bag of Words Review


 *  **Pros**

    * Easy to implement, well understood

 *  **Cons**

    * Context is lost.Both sentences below map to same 'bag of words'.But the meaning is very different.

<img src="../../assets/images/machine-learning/text-bag-of-words-2.png" style="width:70%"/><!-- {"left" : 0.29, "top" : 3.81, "height" : 1.45, "width" : 9.67} -->



Notes:

---

# N-gram Analysis

---

## N-gram Analysis

<img src="../../assets/images/machine-learning/text-ngrams-1.png" style="width:50%;float:right;" /><!-- {"left" : 5.53, "top" : 1.9, "height" : 2.61, "width" : 4.54} -->

 * N-gram: sequence of  'n' number of words
     - Words have to be sequential
     - Order matters

 * N = 1: unigram (single word)

 * N = 2: bigram
     - "American people"
     - "black cats"

 * N-gram applications:
     - Predict the next word
       "Please call me `back`"

Notes:



---

## N-gram(2) Analysis Results for 'Moby Dick'


 * Moby-dick novel from project Gutenberg
     - 22,108 lines
     - 215,136 words
     - 1,257,274 characters

 * Below the 'bigram' analysis
    - Lot's of filler words

```text
('of', 'the'): 1873,
('in', 'the'): 1129,
('to', 'the'): 725,
('from', 'the'): 432,
('and', 'the'): 358,
('of', 'his'): 357,
('of', 'a'): 331,
('on', 'the'): 327,
('with', 'the'): 324,
('at', 'the'): 318

```
<!-- {"left" : 0, "top" : 4.12, "height" : 2.92, "width" : 4.28} -->



Notes:



---

## N-gram(2) Analysis After Removing Stop Words


 * Here we show the results of top bigrams analysis on both
 * Moby-dick.txt

     - Before cleanup: 215,136  words
     - After 'stop word' cleanup: 115,093  words

 <img src="../../assets/images/machine-learning/text-ngrams-moby-dick-1.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 3.82, "height" : 3.8, "width" : 8.21} -->





Notes:



---

## Lab: Work With Raw Text


 *  **Overview*‫:‬*
     - Tokenize / Clean / Stem raw text.

 *  **Builds on previous labs‫:‬**
     - None

 *  **Approximate time‫:‬**
     - 15 mins

 *  **Instructions‫:‬**
     - R / Python  / Spark


Notes:




---

## Lab: Text Analytics: ngrams


 *  **Overview‫:‬**
     - N-gram analytics

 *  **Builds on previous labs‫:‬**
     - None

 *  **Approximate time‫:‬**
     -  15 mins

 *  **Instructions‫:‬**
     - R / Python  / Spark


Notes:
