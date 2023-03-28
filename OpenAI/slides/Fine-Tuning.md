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

## How do I fine-tune chatgpt?

* Fine-tuning ChatGPT involves training the model on a custom dataset to improve its performance on specific tasks or to adapt it to particular domains. 
* To fine-tune ChatGPT, follow these general steps:
* Collect and preprocess data: Gather a dataset that is relevant to the specific task or domain you want the model to excel in. 
  * Your dataset should consist of text in a format that suits the input-output structure of the model (e.g., prompt-response pairs). Preprocess the data by tokenizing it and converting it into tensors.

---


## Fine-tune continued

* Choose a base model: 
  * You'll need access to a pre-trained ChatGPT model or a similar language model. You can either use OpenAI's GPT-3 (if you have access) or find a suitable alternative, like GPT-2 or GPT-Neo from the EleutherAI.

* Set up the fine-tuning environment: 
  * To fine-tune the model, you'll need a suitable environment with the necessary software and hardware resources. You can use platforms like Google Colab, or set up your local environment with tools like PyTorch, TensorFlow, or Hugging Face Transformers library.

* Define training parameters: 
  * When fine-tuning, you'll need to set various hyperparameters, such as learning rate, batch size, and the number of training epochs. It's essential to strike a balance between overfitting and underfitting the model to the data.

---

## Fine-tuning - working steps

* Train the model: 
  * Train the ChatGPT model on your preprocessed dataset. Monitor the model's performance using appropriate evaluation metrics, such as perplexity or accuracy, depending on your task. Adjust the training parameters as needed to optimize the model's performance.

* Evaluate and test the model: 
  * After training is complete, evaluate the fine-tuned model on a separate dataset to ensure it generalizes well to new data. Perform tests to see if the model is performing as expected in the specific domain or task you fine-tuned it for.


---

## Deploy fine-tuning


* Iterate and improve: 
  * Fine-tuning often requires multiple iterations to achieve optimal performance. If the model isn't performing as desired, adjust the training parameters or dataset and repeat the process.

* Remember that fine-tuning large-scale language models like GPT-3 requires significant computational resources. It's crucial to consider the costs and feasibility of the process before starting.

---


## Lab: Fine-tuning

* Follow the steps in this lab
* [https://github.com/elephantscale/openai-cookbook/blob/main/examples/Fine-tuned_classification.ipynb](https://github.com/elephantscale/openai-cookbook/blob/main/examples/Fine-tuned_classification.ipynb)

---
