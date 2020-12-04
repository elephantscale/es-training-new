# NLTK
---

## Lesson Objectives

  * Learn Python libraries for text analytics


Notes:

---

##  Text Analytics / NLP Libraries for Python

| Library | Pros | Cons |
|-------------------------------------------------------------------------|-----------------------------------------------|--------------------------------------------------------------------|
| **NLTK** | * 'the' library <br/> * modular | * Can be steep learning curve <br/> * Might not be high performant |
| **TextBlob** <br/>   * Built on top of NLTK <br/> |  * Easily accessible <br/> * Fast prototyping | * Performance may not be high |
| **Stanford Core** <br /> *Core java library with python wrapper **NLP** | * Fast <br/> * Lot of use in production |  |
| **SpaCy**  <br/>  * New |  |  |
| **Gensim** <br/>  * Topic modeling |  |  |


<!-- {"left" : 0.26, "top" : 1.14, "height" : 4.15, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->


Notes:

---

# NLTK
---

## Python Libraries

  * NLTK – Natural Language Tool Kit

    - Very popular and versatile library
    - http://www.nltk.org/
    - https://github.com/nltk

  * NLTK Features:

    - Supports multiple algorithms

      - Lexical analysis: tokenization of text
      - Ngram analytics
      - Named entity recognition

    - Comes with data (50+ corpora / lexicons)


Notes:

---

## Installing NLTK

  * NLTK is part of modern python stacks (like 'anaconda')

  * Installing NLTK


```python
// using pip tool
$  pip install nltk

// to install nltk dataset
$  python3
>   nltk.download()
# This will pop up a UI, select a directory to
# download data.  This directory will be referred
# as 'nltk_data_dir'. be sure to add this as follows

> nltk.data.path.append("/Users/sujee/data/nltk_data")
```
<!-- {"left" : 0.0, "top" : 2.22, "height" : 3.18, "width" : 9.78} -->

Notes:

---

## NLTK Dataset / Corpus

  * NLTK (data) comes with pretty interesting datasets / corpus

  * This is part of 'nltk.corpus' package

```python
import nltk
# from os.path import expanduser
# nltk.data.path.append( expanduser("~") + "/data/nltk_data")
from nltk.corpus import words

print (words.readme())
words_en_basic = words.words('en-basic')
print ("words_en_basic : ", len(words_en_basic))
print (words_en_basic[:10])
#  words_en_basic : 850
# ['I', 'a', 'able', 'about', 'account', 'acid', 'across', 'act', 'addition', 'adjustment']

words_en = words.words('en')
print ("words_en : ", len(words_en))
print(words_en[:10])
# words_en :  235886
# ['A', 'a', 'aa', 'aal', 'aalii', 'aam', 'Aani', 'aardvark', 'aardwolf', 'Aaron']
```
<!-- {"left" : 0.0, "top" : 2.34, "height" : 2.91, "width" : 9.75} -->

Notes:

---

## NLTK Corpus: State of the Union

  * Each corpus has a 'readme()' function
  * State of the Union addresses from 1945 to 2006

```python
from nltk.corpus import state_union

print(state_union.readme())
print(state_union.fileids())
# ['1945-Truman.txt', '1963-Kennedy.txt',... '1964-Johnson.txt',
# '1974-Nixon.txt',... '1981-Reagan.txt',... '2000-Clinton.txt',
#  '2001-GWBush-1.txt', '2001-GWBush-2.txt', ... '2006-GWBush.txt']

# see all words in entier state of the union corpus
print (len(state_union.words()))
# 399822

# get one particular state of the union
gw2006 = state_union.raw('2006-GWBush.txt')
print (len(gw2006))
# 33411

# get only words for one SOTU
gw2006_words = state_union.words('2006-GWBush.txt')
print (len(gw2006_words))
# 6515

gw2006_sentences = state_union.sents('2006-GWBush.txt')
print(gw2006_sentences[:10])
```
<!-- {"left" : 0.0, "top" : 2.17, "height" : 5.47, "width" : 10.25} -->

Notes:

---

## NLTK Corpus: Novels

  * These are public domain novels from Gutenberg project

```python
from nltk.corpus import gutenberg

print (gutenberg.readme())

# Let's see what we have
print (gutenberg.fileids())
# ['austen-emma.txt', 'austen-persuasion.txt', 'austen-sense.txt',...]

# get Moby Dick novel
moby_dick = gutenberg.raw('melville-moby_dick.txt')
print (moby_dick[1:1000])

# get the words for Moby Dick
moby_dick_words = gutenberg.words('melville-moby_dick.txt')
print (len(moby_dick_words))
# 260819
```
<!-- {"left" : 0.0, "top" : 1.74, "height" : 4.5, "width" : 10.25} -->

Notes:

---

## NLTK Tokenizing Text

  * First step in analyzing text is splitting raw text into words
    - Called tokenizing
  * Nltk.tokenize package offers few handy ones
    - `word_tokenize`: gives out words
    - `wordpunct_tokenize`: numbers and punctuations in their own words
    - `sent_tokenize`: splits into sentences

```python
import nltk
from nltk.tokenize import word_tokenize
from nltk.tokenize import wordpunct_tokenize
from nltk.tokenize import sent_tokenize

text = """I went to Starbucks. And bought a latte for $4.50!
Yum :)"""

print(sent_tokenize(text))
# ['I went to Starbucks.',     'And bought a latte for $4.50!',   'Yum :-)']

print(word_tokenize(text))
# ['I', 'went', 'to', 'Starbucks', '.', 'And', 'bought', 'a',
# 'latte', 'for', '$', '4.50', '!', 'Yum', ':', '-', ')']

print(wordpunct_tokenize(text))
# ['I', 'went', 'to', 'Starbucks', '.', 'And', 'bought', 'a',
# 'latte', 'for', '$', '4', '.', '50', '!', 'Yum', ':-)']
```
<!-- {"left" : 0.0, "top" : 4.34, "height" : 3.26, "width" : 8.71} -->


Notes:

---

## Lab: NLTK-1: NLTK Intro

  * Overview:

    - Get to know NLTK library


  * Builds on previous labs:

    - None


  * Approximate time:

    - 15 mins

  * Instructions:

    - NLTK-1-Intro


Notes:

---

## Lab: NLTK-2: Bag of Words

  * Overview:

    - Analyzing raw text with NLTK library

  * Builds on previous labs:

    - TEXT-1: NLTK intro

  * Approximate time:

    - 15 mins

  * Instructions:

    - 2-analyzing-text-with-nltk


Notes:

---
## Lab: Text-3 : Ngrams


  * Overview:

    - Analyzing text for Ngrams

  * Builds on previous labs:

    - TEXT-2: NLTK

  * Approximate time:

    - 15 mins

  * Instructions:

    - 3-ngrams


Notes:

---

# TextBlob

---

## TextBlob

  * Simplified library for text processing in Python

  * Built on NLTK & Pattern

  * Features

    - Tokenization
    - Word / Phrase frequencies (ngrams)
    - Noun phrase extraction
    - Sentiment analysis
    - Classification

  * https://textblob.readthedocs.io/en/dev/

  * https://github.com/sloria/TextBlob/


Notes:

---

## Installing TextBlob

```python
// using pip tool
$  pip install –U textblob

// to get dataset (same as NLTK)
$ python -m textblob.download_corpora

# This will pop up a UI, select a directory to
# download data.  This directory will be referred
# as 'nltk_data_dir'. be sure to add this as follows

> nltk.data.path.append("/Users/sujee/data/nltk_data")
```
<!-- {"left" : 0.0, "top" : 1.37, "height" : 3.18, "width" : 9.78} -->


Notes:

---

## TextBlob Usage


```python
from textblob import TextBlob

import nltk
# setup nltk data
from os.path import expanduser
nltk.data.path.append( expanduser("~") + "/data/nltk_data")

text = """TextBlob aims to provide access to common text-processing
operations through a familiar interface. You can treat TextBlob objects
as if they were Python strings that learned how to do Natural Language
Processing."""

tb = TextBlob(text)
print(tb)
```
<!-- {"left" : 0.0, "top" : 1.26, "height" : 3.97, "width" : 10.25} -->

Notes:

---

## TextBlob Usage: Tokenizing


```python
from textblob import TextBlob

...

text = """TextBlob aims to provide access to common text-processing operations
 through a familiar interface. You can treat TextBlob objects as if they were
 Python strings that learned how to do Natural Language Processing."""

tb = TextBlob(text)

print(tb.words)
# ['TextBlob', 'aims', 'to', 'provide', 'access', 'to', 'common',
# 'text-processing', 'operations', 'through', 'a', 'familiar',
# 'interface', 'You', 'can', 'treat', 'TextBlob', 'objects',
# 'as', 'if', 'they', 'were', 'Python', 'strings', 'that',
# 'learned', 'how', 'to', 'do', 'Natural', 'Language', 'Processing']

print(tb.sentences)
# [Sentence("TextBlob aims to provide access to common text-processing
# operations through a familiar interface."),
# Sentence("You can treat TextBlob objects as if they were Python strings that
# learned how to do Natural Language Processing.")]
```
<!-- {"left" : 0.0, "top" : 1.19, "height" : 5.18, "width" : 10.25} -->


Notes:

---

## TextBlob Usage: Sentiment Analysis

* 'sentiment' returns a tuple (polarity, subjectivity)

* Polarity ranges from  -1.0 (very negative)  to +1.0 (very positive)

* Subjectivity ranges from 0.0 (very objective)  to  +1.0 (very subjective)

```python
from textblob import TextBlob

tweets = ["I love bigmacs",
          "I hate this traffic!",
          "American Idol is awesome!",
          "this song is lame",
          "Let's go to beach"]

for tweet in tweets:
    tb = TextBlob(tweet)
    print("{} ==> {}".format(tweet, tb.sentiment))
```
<!-- {"left" : 0.0, "top" : 3.3, "height" : 3.49, "width" : 9.11} -->

```text
I love bigmacs ==> Sentiment(polarity=0.5, subjectivity=0.6)
I hate this traffic! ==> Sentiment(polarity=-1.0, subjectivity=0.9)
American Idol is awesome! ==> Sentiment(polarity=0.5, subjectivity=0.5)
this song is lame ==> Sentiment(polarity=-0.5, subjectivity=0.75)
Let's go to beach ==> Sentiment(polarity=0.0, subjectivity=0.0)
```
<!-- {"left" : 0.0, "top" : 7.09, "height" : 1.42, "width" : 10.25} -->

Notes:

---

## TextBlob Usage : Word Counts


```python
from textblob import TextBlob

text = """It was a sunny day! We went to the dog park.  Lots of dogs were
running around.  My dog likes to run too; so he had a great time.  
I bought ice cream from the ice cream truck. Yummy!It was a perfect
sunny day!"""

tb = TextBlob(text)

print(tb.word_counts)
#defaultdict(<class 'int'>, {'it': 2, 'was': 2, 'a': 3, 'sunny': 2, 'day': 2,
#'we': 1, 'went': 1, 'to': 2, 'the': 2, 'dog': 2, 'park': 1, 'lots': 1,
# 'of': 1, 'dogs': 1, 'were': 1, 'running': 1, 'around': 1, 'my': 1,
# 'likes': 1, 'run': 1, 'too': 1, 'so': 1, 'he': 1, 'had': 1,
# 'great': 1, 'time': 1, 'i': 1, 'bought': 1, 'ice': 2, 'cream': 2,
# 'from': 1, 'truck': 1, 'yummy': 1, 'perfect': 1})

print(tb.word_counts['sunny'])
# 2
```
<!-- {"left" : 0.0, "top" : 1.33, "height" : 4.04, "width" : 10.25} -->


Notes:

---

## TextBlob Usage : Ngrams


```python
text = """It was a sunny day! We went to the dog park.  Lots of dogs were
running around.  My dog likes to run too; so he had a great time.  
I bought ice cream from the ice cream truck. Yummy!It was a perfect sunny day!"""

tb = TextBlob(text)

print(tb.ngrams(n=2))

# [WordList(['It', 'was']), WordList(['was', 'a']),
#  WordList(['a', 'sunny']),
#  WordList(['sunny', 'day']), WordList(['day', 'We']),
#  WordList(['We','went']), WordList(['went', 'to']),
#  WordList(['to', 'the']), WordList(['the', 'dog']),
#  WordList(['dog', 'park']),
#  WordList(['park', 'Lots']), WordList(['Lots', 'of']),
#  WordList(['of', 'dogs']), WordList(['dogs', 'were']),
#  WordList(['were', 'running'])
# ...
# ...]
```
<!-- {"left" : 0.0, "top" : 1.25, "height" : 4.23, "width" : 10.25} -->


Notes:

---

## TextBlob Usage: Language Detection and Translation

  * Detect languages and even translate!

  * Translation is powered by **Google Translate API**

```python
text_en = "I just had dinner"

TextBlob(text_en).translate(to='es')
# Acabo de cenar

TextBlob(text_en).translate(to='ja')
# 私はちょうど夕食

text_jp = u"私はちょうど夕食"
TextBlob(text_jp).detect_language()
# ja
```
<!-- {"left" : 0.0, "top" : 2.16, "height" : 3.18, "width" : 6.78} -->

Notes:

---

## Lab: Text-4: TextBlob

  * Overview:

    - Get familiar with TextBlob API

  * Builds on previous labs:

    - None

  * Approximate time:

    - 15 mins

  * Instructions:

    - 4-ngrams


Notes:

---


## Lesson Summary

  * Learned Python libraries: NLTK, TextBlob

  * Implemented text analytics algorithms in Python
