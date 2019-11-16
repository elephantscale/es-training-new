# Rasa Pipelines
---
# Pipelines
---

## About Rasa pipelines

  * Rasa has a number of configurable pipelines
  

Notes: 

---
## Creating a Custom Pipeline

  *  Here is an example pipeline

```yaml
language: "en"

pipeline:
- name: "nlp_spacy"
- name: "tokenizer_spacy"
- name: "intent_entity_featurizer_regex"
- name: "intent_featurizer_spacy"
- name: "ner_crf"
- name: "ner_synonyms"
- name: "intent_classifier_sklearn"
```
<!-- {"left" : 0, "top" : 1.89, "height" : 3.19, "width" : 7.44} -->

Notes: 

---
## spacy-sklearn

  * Combination of:
    - python sckit-learn
    - spacy

```yaml
language: "en"

pipeline:
- name: "nlp_spacy"
- name: "tokenizer_spacy"
- name: "intent_entity_featurizer_regex"
- name: "intent_featurizer_spacy"
- name: "ner_crf"
- name: "ner_synonyms"
- name: "intent_classifier_sklearn"
```
<!-- {"left" : 0, "top" : 2.79, "height" : 3.19, "width" : 7.44} -->




Notes: 

---
## MITIE: MIT Information Extraction

  * https://github.com/mit-nlp/MITIE

  * Tools for extracting information

  * Features
    - Named Entity Extraction
    - Binary Relation Detection

Notes: 

---
## MITIE: Pipeline

```yaml
language: "en"

pipeline:
- name: "nlp_mitie"
  model: "data/total_word_feature_extractor.dat"
- name: "tokenizer_mitie"
- name: "ner_mitie"
- name: "ner_synonyms"
- name: "intent_entity_featurizer_regex"
- name: "intent_classifier_mitie"
```
<!-- {"left" : 0, "top" : 1.61, "height" : 3.19, "width" : 8.78} -->


Notes: 

---
## MITIE + Sklearn:

```yaml
language: "en"

pipeline:
- name: "nlp_mitie"
  model: "data/total_word_feature_extractor.dat"
- name: "tokenizer_mitie"
- name: "ner_mitie"
- name: "ner_synonyms"
- name: "intent_entity_featurizer_regex"
- name: "intent_featurizer_mitie"
- name: "intent_classifier_sklearn"
```
<!-- {"left" : 0, "top" : 1.54, "height" : 3.49, "width" : 8.78} -->

Notes: 

---
## Tensorflow Embedding

 * Tensorflow requires a tokenizer as an additional stage

```yaml
language: "en"

pipeline:
- name: "intent_featurizer_count_vectors"
- name: "intent_classifier_tensorflow_embedding"
  intent_tokenization_flag: true
  intent_split_symbol: "_"
```
<!-- {"left" : 0, "top" : 2.02, "height" : 2.32, "width" : 8.78} -->

Notes: 

---
# Built-in Components
---
## Spacy Initializer (nlp_spacy)

  * nlp_spacy should be used as an initial phase.

  * pass language model (e.g. `en_core_web_md`)

```yaml
pipeline:
- name: "nlp_spacy"
  # language model to load
  model: "en_core_web_md"
  case_sensitive: false
```
<!-- {"left" : 0, "top" : 2.4, "height" : 1.74, "width" : 5.11} -->

Notes: 

---
## MITIE Intializer (nlp_mitie)

  * nlp_mitie is an intial phase for mitie

  * pass language model (e.g., `data/total_word_feature_extractor.dat`)
  
Notes: 

---
## MITIE Intent Featurizer

  * intent_featurizer_mitie

  * Creates feature for intent classification using the MITIE featurizer.

  * NOT used by the intent_classifier_mitie component. Currently, only intent_classifier_sklearn is able to use precomputed features.

Notes: 

---
## Spacy Intent Featurizer

  * intent_featurizer_spacy

Notes: 

---
## Intent Featurizer Ngrams

 * intent_featurizer_ngrams

 * Appends char-ngram features to feature vector

 * There needs to be another intent featurizer previous to this one in the pipeline!

 * This featurizer appends character ngram features to a feature vector. 

```yaml
- name: "intent_featurizer_ngrams"
  # Maximum number of ngrams to use when augmenting
  # feature vectors with character ngrams
  max_number_of_ngrams: 10
```
<!-- {"left" : 0, "top" : 4.1, "height" : 1.44, "width" : 9.28} -->

Notes: 

---
## Intent Featurizer Count Vectors

 * intent_featurizer_count_vectors

 * Creates bag-of-words representation of intent features

 * Use sklearn CountVectorizer

```yaml
- name: "intent_featurizer_count_vectors"
  "token_pattern": r'(?u)\b\w\w+\b'
  "strip_accents": None  # {'ascii', 'unicode', None}
  "stop_words": None  # string {'english'}, list, or None (default)
  "min_df": 1  # float in range [0.0, 1.0] or int
  "max_df": 1.0  # float in range [0.0, 1.0] or int
  "min_ngram": 1
  "max_ngram": 1
  "max_features": None
```
<!-- {"left" : 0, "top" : 2.91, "height" : 2.49, "width" : 10.25} -->

Notes: 

---
## Intent classifier Keyword

    * intent_classifier_keyword

```json
{
    "intent": {"name": "greet", "confidence": 0.98343}
}
```
<!-- {"left" : 0, "top" : 1.48, "height" : 1.15, "width" : 9.78} -->

Notes: 

---

## Intent Classifier: MITIE

 * Name: intent_classifier_mitie

```json
{
    "intent": {"name": "greet", "confidence": 0.98343}
}
```
<!-- {"left" : 0, "top" : 1.88, "height" : 1.15, "width" : 9.78} -->

Notes: 

---
## Sklearn Intent classifier

 * intent_classifier_sklearn

 * SVM

```json
{
    "intent": {"name": "greet", "confidence": 0.78343},
    "intent_ranking": [
        {
            "confidence": 0.1485910906220309,
            "name": "goodbye"
        },
        {
            "confidence": 0.08161531595656784,
            "name": "restaurant_search"
        }
    ]
}
```
<!-- {"left" : 0, "top" : 2.29, "height" : 4.07, "width" : 9.94} -->

Notes: 

---
## Sklearn intent yaml

```yaml
- name: "intent_classifier_sklearn"
  C: [1, 2, 5, 10, 20, 100]
  kernels: ["linear"]
```
<!-- {"left" : 0, "top" : 1.57, "height" : 1.37, "width" : 7.87} -->

Notes: 

---
## Intent Classifier Tensorflow 
 
   * name: intent_classifier_tensorflow_embedding

```json
{
    "intent": {"name": "greet", "confidence": 0.8343},
    "intent_ranking": [
        {
            "confidence": 0.385910906220309,
            "name": "goodbye"
        },
        {
            "confidence": 0.28161531595656784,
            "name": "restaurant_search"
        }
    ]
}
```
<!-- {"left" : 0, "top" : 1.88, "height" : 4.07, "width" : 9.78} -->

Notes: 

---
## INtent Classifier tensorflow yaml

```yaml
- name: "intent_classifier_tensorflow_embedding"
  "num_hidden_layers_a": 2
  "hidden_layer_size_a": [256, 128]
  "num_hidden_layers_b": 0
  "hidden_layer_size_b": []
  "batch_size": 32
  "epochs": 300
  "embed_dim": 10
  "mu_pos": 0.8  # should be 0.0 < ... < 1.0 for 'cosine'
  "mu_neg": -0.4  # should be -1.0 < ... < 1.0 for 'cosine'
  "similarity_type": "cosine"  # string 'cosine' or 'inner'
  "num_neg": 10
  "use_max_sim_neg": true  # flag which loss function to use
  "C2": 0.002
  "C_emb": 0.8
  "droprate": 0.2
  "intent_tokenization_flag": false
  "intent_split_symbol": "_"
```
<!-- {"left" : 0, "top" : 1.43, "height" : 5.26, "width" : 10.25} -->

Notes: 

---
## Intent Classifier Regex

  * Name: intent_entity_featurizer_regex

Notes: 

---
## Tokenizer Whitespace

  * tokenizer_whitespace

Notes: 

---
## Tokenzier Jieba

  * tokenizer_jiebIa

  * Tokenizer using Jieba for Chinese language

  * Run `pip install jeiba`

Notes: 

---
## Tokenize MITIE 

   * tokenizer_mitie

   * Tokenizer using MITIE

```yaml
pipeline:
- name: "tokenizer_mitie"
```
<!-- {"left" : 0, "top" : 2.29, "height" : 1, "width" : 5.77} -->

Notes: 

---
## Tokenizer Spacy

   * tokenizer_spacy

   * Short:Tokenizer using spacy

   * Creates tokens using the spacy tokenizer. Can be used to define tokens for the MITIE entity extractor.

Notes: 

---
## Named Entity Recognition MITIE

  * ner_mitie

  * MITIE entity extraction (using a mitie ner trainer)

  * MITIE entitiy extraction
 
  * The underlying classifier is using a multi class linear SVM with a sparse linear kernel and custom features. 

```json
{
    "entities": [{"value": "New York City",
                  "start": 20,
                  "end": 33,
                  "confidence": null,
                  "entity": "city",
                  "extractor": "ner_mitie"}]
}
```
<!-- {"left" : 0, "top" : 3.56, "height" : 2.61, "width" : 8.11} -->

Notes: 

---
## Named Entity Recognition; Spacy

 * ner_spacy

 * spacy entity extraction

```json
{
    "entities": [{"value": "New York City",
                  "start": 20,
                  "end": 33,
                  "entity": "city",
                  "confidence": null,
                  "extractor": "ner_spacy"}]
}
```
<!-- {"left" : 0, "top" : 2.33, "height" : 2.61, "width" : 8.11} -->

Notes: 

---
## NER Synonymps

  * ner_synonyms

```json
[{
  "text": "I moved to New York City",
  "intent": "inform_relocation",
  "entities": [{"value": "nyc",
                "start": 11,
                "end": 24,
                "entity": "city",
               }]
},
{
  "text": "I got a new flat in NYC.",
  "intent": "inform_relocation",
  "entities": [{"value": "nyc",
                "start": 20,
                "end": 23,
                "entity": "city",
               }]
}]
```
<!-- {"left" : 0, "top" : 1.77, "height" : 5.53, "width" : 6.94} -->

Notes: 

---
## CRF Named REntity Recognition

 * ner_crf

 * conditional random field entity extraction

 * conditional random fields to do named entity recognition. CRFs can be thought of as an undirected Markov chain where the time steps are words and the states are entity classes. Features of the words (capitalisation, POS tagging, etc.) give probabilities to certain entity classes, as are transitions between neighbouring entity tags: the most likely set of tags is then calculated and returned.

```json
{
    "entities": [{"value":"New York City",
                  "start": 20,
                  "end": 33,
                  "entity": "city",
                  "confidence": 0.874,
                  "extractor": "ner_crf"}]
}
```
<!-- {"left" : 0, "top" : 5.07, "height" : 2.61, "width" : 7.78} -->

Notes: 

---
## CRF Configuration

```yaml
pipeline:
- name: "ner_crf"
  features: [["low", "title"], ["bias", "word3"], ["upper", "pos", "pos2"]]
  BILOU_flag: true
  max_iterations: 50
  L1_c: 1.0
  L2_c: 1e-3
```
<!-- {"left" : 0, "top" : 1.57, "height" : 1.79, "width" : 10.25} -->

Notes: 

---
## Duckling named entity recognition

   * name: `ner_duckling`

   * Adds duckling support to the pipeline to unify entity types (e.g. to retrieve common date / number formats)

   * outputs entities

```json
{
    "entities": [{"end": 53,
                  "entity": "time",
                  "start": 48,
                  "value": "2017-04-10T00:00:00.000+02:00",
                  "confidence": 1.0,
                  "extractor": "ner_duckling"}]
}
```
<!-- {"left" : 0, "top" : 3.27, "height" : 2.52, "width" : 10.25} -->

Notes: 

---
## Duckling pipeline

```yaml
pipeline:
- name: "ner_duckling"
  # dimensions to extract
  dimensions: ["time", "number", "amount-of-money", "distance"]
```
<!-- {"left" : 0, "top" : 1.5, "height" : 1.31, "width" : 10.25} -->

Notes: 

---
## Creating new Components

  * You can create a custom Component to perform a specific task which NLU doesn’t currently offer (e.g. sentiment analysis).

```yaml
pipeline:
- name: "sentiment.SentimentAnalyzer"
```
<!-- {"left" : 0, "top" : 2.77, "height" : 0.94, "width" : 7.56} -->

Notes: 

