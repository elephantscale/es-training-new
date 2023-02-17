# Fine-Tuning OpenAI Models

---

# What is fine-tuning

---

## Why?

* Learn how to customize a model for your application.

---

## Benefits of fine-tuning

* Higher quality results than prompt design
* Ability to train on more examples than can fit in a prompt
* Token savings due to shorter prompts
* Lower latency requests

---

## Pretraining

* GPT-3 has been pre-trained on a vast amount of text from the open internet. 
* When given a prompt with just a few examples, it can often intuit what task you are trying to perform and generate a plausible completion. 
* This is often called "few-shot learning."
  * Q: Why few-shot, why not zero-shot?
  
---

## Fine-tuning

* Fine-tuning improves on few-shot learning
* It trains on many more examples than can fit in the prompt
* Better results on a wide number of tasks
* Advantage:
  * Once a model has been fine-tuned, you won't need to provide examples in the prompt anymore. 
  * This saves costs and enables lower-latency requests.

---

## Fine-tuning steps

* Prepare and upload training data
* Train a new fine-tuned model
* Use your fine-tuned model

---

## Pricing per 1K tokens

| Ada (fastest) | Babbage | Curie   | Davinci (most powerful) |
|---------------|---------|---------|-------------------------|
| $0.0004       | $0.0005 | $0.0020 | $0.0200                 |

---

## Lab: Fine-tuning

* Follow the steps in this lab
* [https://github.com/elephantscale/openai-cookbook/blob/main/examples/Fine-tuned_classification.ipynb](https://github.com/elephantscale/openai-cookbook/blob/main/examples/Fine-tuned_classification.ipynb)

---
