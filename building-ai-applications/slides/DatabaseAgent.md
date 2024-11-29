# Database Agent

---

# Your First AI Agent

---
## Introduction
* Learn how to build and interact with an AI agent using LangChain.
* Key steps covered:
  * Connecting to the Azure OpenAI endpoint.
  * Preparing prompts for interaction.
  * Receiving and processing model responses.

---
## Setup
* Import necessary libraries:
  ```python
  import os
  from dotenv import load_dotenv
  from langchain.schema import HumanMessage
  from langchain_openai import AzureChatOpenAI
---

## Environment
* Load environment variables securely using dotenv:

```python
  load_dotenv()
```

---

## Connecting to Azure OpenAI

```python
model = AzureChatOpenAI(
  openai_api_version=os.getenv('OPENAI_API_VERSION'),
  azure_deployment=os.getenv('AZURE_DEPLOYMENT'),
  openai_api_key=os.getenv('OPENAI_API_KEY'),
  azure_endpoint=os.getenv('AZURE_ENDPOINT')
)
```
## Preparing your prompt
```Text
message = HumanMessage(
    content="Translate this sentence from English "
    "to French and Spanish. I like red cars and "
    "blue houses, but my dog is yellow."
)
```
---

## Engaging the model to receive a response

```python
model.invoke([message])
```

* Outputs:
  * Translated content in both French and Spanish.
---

## Next Steps

* Experiment with different prompts:
  * Translation
  * Summarization
  * Creative writing
* Extend the agent’s functionality:
  * Connect to APIs for real-world applications.
  * Incorporate context-based interactions using LangChain tools.

---

