# Building AI Applications for Social Scientists

(C) Copyright Elephant Scale

March 27, 2025

## Course Description

* AI opens ways to building smart applications as never before. 
* However, many use cases require implementing AI in a secure, responsible manner, including but not limited to:
  * Not sending your data to third-party online AI services
  * Keeping control over the data used for training
  * Controlling actions taken by AI
  * Security
  * Data governance
  * AI in Social sciences: Use Cases & Challenges
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
* Five days

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
* Introduction to AI
* Iterative development
  * How to iteratively analyze and refine your prompts to generate marketing copy from a product fact sheet.
* Summarizing 
  * How to make an AI summarize a document with different requirements and in different formats
* Inferring
  * How to make an AI infer sentiment and topics from product reviews and news articles.
* Transforming
  * How to use Large Language Models for text transformation tasks such as language translation, spelling and grammar checking, tone adjustment, and format conversion.
* Expanding
  * How to generate customer service emails that are tailored to each customer's review.
* Chatbot
  * How to use an AI to have extended conversations with chatbots personalized or specialized for specific tasks or behaviors.
* Lab: Prompt-Engineering


### Semantic Search 

* Organize your private documents for the implementation and break them into meaningful fragments for storing in the semantic search engine
* Semantic search
* Retrieval Augmented Generation (RAG)
* Recommender systems
* Hybrid search
* Facial similarity search
* Anomaly detection
* Lab: LLM with Semantic Search

### LangChain, glue to put it together
* Models, prompts, and parsers
* Memory
* Chains
* Q&A
* Evaluation
* Conversational bot
  * Lab: Langchain
  * Lab: Functions-Tool-Agents-Langchain


### Architecture, testing, and continuous improvements
* Overview of Amazon, Azure, and Google clouds 
* Evaluating and debugging Generative AI
* Practical examples and demos

### Practical use cases
* How to make sure your data stays private and under your control
* Preparing reports for executives
  * Lab: Build-database-agents
* Customer service implementation with AI
  * Lab: Serverless-LLM-Bedrock
  * Lab: Agentic-on-Bedroc

### AI for Social Scientists
- **Introduction to AI for Social Science Research**
  - Overview of NLP for analyzing social media, survey data, and public discourse.
- **Sentiment Analysis for Public Opinion**
  - Using AI to extract and quantify sentiments from large-scale public opinion data.
- **Topic Modeling and Trend Analysis**
  - Analyzing research papers, policy documents, and news articles to identify emerging themes.
- **Bias Detection and Fairness Auditing**
  - Ensuring models used in public policy and law enforcement are free from harmful biases.
- **Ethics and Governance in AI Applications**
  - How to apply ethical frameworks when using AI for sensitive or impactful research.
- **Lab: AI Models for Social Science Data Analysis**

### Social science use cases and workshop
- **RAP sheet processing**
  - RAP sheets are a police arrest record especially for an individual
  - Processing such forms is a challenge for standard technologies like Regex that can be efficiently resolved with AI
- **Race Blind Charging (RBC)**
  - RBC is a California law intended to eliminate racial bias by redacting police records and removing racial hints
  - The implementation of RBC can benefit modern AI
  - It can also serve as a model for implementing similar editing tasks
- **Auditing fairness of decisions**
  - Multiple situations can be monitored through crawling of related websites, then extracting statistics
  - In this workshop, we will go through crawling and statistics collection
