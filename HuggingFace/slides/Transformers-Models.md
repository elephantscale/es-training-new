# How Transformers Work

---

## Chapter tutorial

* [How Transformers Work](https://huggingface.co/course/chapter1/4?fw=pt)

---

## Encoder models


---

### Decoder models

---


## Sequence-to-sequence models

# Quizzes

---

## Quiz 1: 
* Explore the Hub and look for the roberta-large-mnli checkpoint. What task does it perform?
  * A. Summarization
  * B. Text classification
  * C. Text generation

Notes:
* B. Correct! More precisely, it classifies if two sentences are logically linked across three labels (contradiction, neutral, entailment) — a task also called natural language inference.

---

## Quiz 2:

* What will the following code return?

```python
from transformers import pipeline

ner = pipeline("ner", grouped_entities=True)
ner("My name is Sylvain and I work at Hugging Face in Brooklyn.")
```
* A. It will return classification scores for this sentence, with labels "positive" or "negative".
* B. It will return a generated text completing this sentence.
* C. It will return the words representing persons, organizations or locations.

Notes:

* C. Correct! The model will return the words representing persons, organizations or locations. Furthermore, with grouped_entities=True, it will group together the words belonging to the same entity, like "Hugging Face".

---

## Quiz 3: What was the generated text?

* What should replace … in this code sample?

```python
from transformers import pipeline

filler = pipeline("fill-mask", model="bert-base-cased")
result = filler("...")
```

* A. This <mask> has been waiting for you.
* B. This [MASK] has been waiting for you.
* C. This man has been waiting for you.

Notes:

* B. This model's mask token is [MASK].

---

## Quiz 4
* Why will this code fail?
```python
from transformers import pipeline
classifier = pipeline("zero-shot-classification")
result = classifier("This is a course about the Transformers library")
```
* A. This pipeline requires that labels be given to classify this text.
* B. This pipeline requires several sentences, not just one.
* C. The Transformers library is broken, as usual.
* D. This pipeline requires longer inputs; this one is too short.

Notes:
* A. The correct code needs to include candidate_labels=[...].

---

## Quiz 5

* What does “transfer learning” mean?
  * A. Transferring the knowledge of a pretrained model to a new model by training it on the same dataset.
  * B. Transferring the knowledge of a pretrained model to a new model by initializing the second model with the first model's weights.
  * C. Transferring the knowledge of a pretrained model to a new model by building the second model with the same architecture as the first model.

Notes:

* B. When the second model is trained on a new task, it *transfers* the knowledge of the first model.

---

## Quiz 6

* A language model usually does not need labels for its pretraining.
  * A. True
  * B. False

Notes:
* A. The pretraining is usually self-supervised, which means the labels are created automatically from the inputs (like predicting the next word or filling in some masked words).

---

## Quiz 7
* Select the sentence that best describes the terms “model,” “architecture,” and “weights.”
  * A. If a model is a building, its architecture is the blueprint and the weights are the people living inside.
  * B. An architecture is a map to build a model and its weights are the cities represented on the map.
  * C. An architecture is a succession of mathematical functions to build a model and its weights are those functions parameters.

Notes:
* C. The same set of mathematical functions (architecture) can be used to build different models by using different parameters (weights).

---


## Quiz 8
* Which of these types of models would you use for completing prompts with generated text?
  * A. An encoder model
  * B. A decoder model
  * C. A sequence-to-sequence model 

Notes:
* B. Decoder models are perfectly suited for text generation from a prompt.

---

## Quiz 9

* Which of those types of models would you use for summarizing texts?
  * A. An encoder model
  * B. A decoder model
  * C. A sequence-to-sequence model

Notes:

* C. Sequence-to-sequence models are perfectly suited for a summarization task.

---

## Quiz 10

* Which of these types of models would you use for classifying text inputs according to certain labels?
  * A. An encoder model
  * B. A decoder model
  * C. A sequence-to-sequence model

Notes:
* A. An encoder model generates a representation of the whole sentence which is perfectly suited for a task like classification.

---

## Quiz 11

* What possible source can the bias observed in a model have?
  * A. The model is a fine-tuned version of a pretrained model and it picked up its bias from it.
  * B. The data the model was trained on is biased.
  * C. The metric the model was optimizing for is biased.

Notes:

* B. This is the most obvious source of bias, but not the only one.
* A. The model is a fine-tuned version of a pretrained model and it picked up its bias from it.
* C. A less obvious source of bias is the way the model is trained. Your model will blindly optimize for whatever metric you chose, without any second thoughts.

---

