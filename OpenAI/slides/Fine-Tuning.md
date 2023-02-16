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
