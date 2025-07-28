# Building AI Applications RAG with Local LLM

(C) Copyright Elephant Scale

July 27, 2025

## Course Description

* AI opens ways to building smart applications as never before. 
* However, many use cases require implementing AI in a secure, responsible manner, including but not limited to:
  * Not sending your data to third-party online AI services
  * Keeping control over the data used for training
  * Controlling actions taken by AI
* In this course, the students learn how build the AI systems. 
  * Prepare your data and store it in the semantic search databases
  * Rules of sending questions to AI
  * Secure AI implementations using local models or networked local copy of the model
  * Best practices for cloud architecture 

## After the course, you will be able to do the following tasks

* Talk to an AI in a correct way.
* Script talking to AI for a programmatic implementation.
* Organize your private documents for the implementation and break them into meaningful fragments for storing in the semantic search engine
* Structure the flow of conversation with AI about your private documents.
* Implement the system in production.
* Architect testing, and continuous improvements.

## Audience
* Developers, data scientists, team leads, project managers

## Skill Level

* Intermediate to advanced.

## Duration
* Three days (or five half-day sessions)

## Prerequisites
* General familiarity with machine learning
* Exposure to coding in any language
* Familiarity with Python helpful


## Format
* Lectures and hands on labs. (50% - 50%)

## Lab environment
* Zero Install: There is no need to install software on students' machines!
* A lab environment in the cloud will be provided for students.

### Students will need the following
* A reasonably modern laptop with unrestricted connection to the Internet. Laptops with overly restrictive VPNs or firewalls may not work properly.
    * A checklist to verify connectivity will be provided
* Chrome browser

## Detailed outline

### Prompt Engineering
* Good rules of prompt engineering
* Lab

### Day 1: Foundations of RAG and Prompting
* Introduction to Retrieval-Augmented Generation (RAG)
  * Why local LLMs? Privacy, control, and compliance
  * Prompt Engineering: Techniques & Guidelines
  * Designing structured vs. unstructured prompts
* Lab
  * Try effective prompts and templates
  * Compare prompt results on different tasks
  * Hands-on with a basic LLM interface

### Day 2: Semantic Search and Vector Databases
*  Organizing private documents for AI
  * Chunking and embedding content
  * Introduction to semantic search and vector databases (ChromaDB, Pinecone, Weaviate)
* Lab
  * Prepare and embed sample document corpus
  * Load into vector DB (ChromaDB or Pinecone)
  * Perform similarity-based retrieval

### Day 3: Building RAG Pipelines with LangChain
* LangChain overview: models, chains, memory, agents
* Tool use, function calling, and prompt orchestration
* Lab
  * Create a Q&A agent using LangChain
  * Integrate memory and basic tool usage
  * Chain prompts to build a more dynamic experience

### Day 4: Advanced LangChain & Local Model Integration
* Vector DB deep dive: performance and tradeoffs
* Deploying LLaMA/Ollama and local LLM options
* Conversational agent architecture
* Lab
  * Connect LangChain with vector DB + local LLM (LLaMA)
  * Test chatbot with memory and tool usage
  * Evaluate accuracy and hallucination reduction

### Day 5: Multimodal Search, Evaluation & APIs
* Multimodal RAG: Image, audio, and structured data
* Evaluation techniques for LLM pipelines
* Building RESTful APIs for deployment
* Lab
  * Build a simple multimodal RAG pipeline
  * Wrap your app in a REST API
  * Final showcase: test, evaluate, and share what you built