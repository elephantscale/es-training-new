# AI for Developers in the Pharmaceutical Industry  
## Focus: Industrial Operations & Quality Control

(C) Copyright Elephant Scale

April 22, 2025

### Course Description

- AI opens ways to building smart applications as never before.  
- However, many use cases require implementing AI in a secure, responsible manner, including but not limited to:
  - Not sending your data to third-party online AI services
  - Keeping control over the data used for training
  - Controlling actions taken by AI
  - Security
  - Data governance
  - AI in Pharma: Use Cases & Challenges
- In this course, the students learn how to build AI systems:
  - Prepare your data and store it in semantic search databases
  - Rules of sending questions to AI
  - Secure AI implementations using local models or a networked local copy of the model
  - Best practices for cloud architecture

### After the Course, You Will Be Able To

- Talk to an AI in a correct way
- Script talking to AI for a programmatic implementation
- Organize your private documents and break them into meaningful fragments for storing in a semantic search engine
- Structure the flow of conversation with AI about your private documents
- Implement the system in production
- Architect testing and continuous improvements

### Audience

- Developers, data scientists, team leads, project managers

### Skill Level

- Intermediate to advanced

### Duration

- Five days

### Prerequisites

- General familiarity with machine learning
- Exposure to coding in any language
- Familiarity with Python helpful

### Format

- Lectures and hands-on labs (50% - 50%)

### Lab Environment

- **Zero Install**: No need to install software on students' machines!
- Cloud-based lab environment provided

#### Students Will Need

- A modern laptop with unrestricted internet connection
- Chrome browser
- VPN/firewall test checklist will be provided

## Detailed Outline

### Introduction to Machine Learning and Deep Learning
- Understanding Deep Learning use cases
- Understanding AI / Machine Learning / Deep Learning
- Data and AI
- AI vocabulary
- Hardware and software ecosystem
- Understanding types of Machine Learning (Supervised / Unsupervised / Reinforcement)

### Computer Vision
- Introducing Convolutional Neural Networks (CNN)
- CNN architecture
- CNN concepts
- Lab: Image recognition using CNNs

### Recurrent Neural Networks
- Introducing RNNs
- RNN architecture
- RNN concepts
- LSTM (Long Short Term Memory) networks
- LSTM architecture
- Lab: RNNs for text and sequence prediction

### HuggingFace 

* Transformers - next step after NN, CNN, RNN.
* Uses cases: 
  * All NLP tasks
  * Image processing
  * Predictions
* Models
* Fine-tuning a model 
* The Hugging Face Hub
* Sharing pretrained models
* Vision with Transformers

### Mamba and Jamba architecture
* Theory behind Mamba and Jamba
* Lab: Build Long-Context AI Apps with Jamba

### Prompt Engineering

- Introduction to AI
- Iterative development  
  - Generate marketing copy from a product fact sheet
- Summarizing  
  - Summarize documents with different requirements/formats
- Inferring  
  - Sentiment/topic extraction from product reviews
- Transforming  
  - Translation, tone adjustment, format conversion
- Expanding  
  - Tailored customer service responses
- Chatbot development  
- **Lab: Prompt Engineering**

### Semantic Search

- Organize documents and create fragments
- Semantic search
- Retrieval Augmented Generation (RAG)
- Recommender systems
- Hybrid search
- Facial similarity search
- Anomaly detection
- **Lab: LLM with Semantic Search**

### LangChain, Glue to Put It Together

- Models, prompts, and parsers
- Memory
- Chains
- Q&A
- Evaluation
- Conversational bot
- **Lab: Langchain**
- **Lab: Functions-Tool-Agents-Langchain**


### AI in Pharma QC — Practical Applications & Pipelines

#### Pharma Use Cases Deep Dive**
- AI in industrial operations:
  - Batch/sample tracking
  - QC test data management
  - Predictive maintenance
  - LIMS enhancements
- Case study: Anomaly detection in lab test results

#### Afternoon: Building Intelligent Pipelines**
- Parsing lab reports using AI
- Integrating AI into MES/LIMS systems
- Visual QA: Image-based inspection using vision models
- Time-series equipment monitoring

**Hands-on Lab:**
- Extract and classify lab report data using AI
- Embed lab reports for semantic search and anomaly detection


### Compliance, Validation, and AI Governance in Pharma

#### Regulatory Considerations**
- GxP, 21 CFR Part 11, and AI
- ALCOA+ principles for AI outputs
- Audit trails and traceability
- Validating AI models for production

#### Secure Deployment and Governance**
- Secure AI: local vs cloud models
- Version control of prompts and AI logic
- SOPs for AI in regulated environments
- Human-in-the-loop design

**Hands-on Lab:**
- Build a compliant AI workflow for QC reports
- Track prompt versions and outputs
- AI-assisted deviation analysis with logging

## Additional Materials

- Regulatory quick reference: AI & GxP cheat sheet
- SOP template for AI governance
- Prompt library tailored to pharma QC use cases

## Customer comments

* Comment 1
  * I think the Computer Vision component might be useful, as CNNs are more explainable than transformers (but, CNNs are largely being replaced by transformers, but still have some use cases especially in controlled environments), but I would definitely replace the RNN section with a transformer section. 
  * Currently, there are some hybrid architectures that researchers are trying to get off the ground (e.g., the Mamba state space model) that include recurrent and transformer-like parallelizable model components, but these are so far not commonly used and/or have shown to be a sufficient replacement for transformers. 
  * The transformer architecture is the architecture that is used for all frontier LLM models.

* Comment 2
  * Instead of the CNN section, it might be useful for them to focus on transformers. 
  * After talking about the architecture, they could talk about transformers and how modern LLMs are made and how they can be deployed (e.g., quantization, hardware requirements, and efficient inference). 
  * This training could include sections on pre-training and post-training (generally- fine-tuning and reinforcement learning). 
  * How models are trained/used for multi-modality, how they are trained/used for function calling, and how they are being trained/used for agentic tasks. 
  * The last topic could be on how scaling test (inference) time compute has helped improved model performance.

* Comment 3
  * Traditional machine learning: 
    * linear regression, 
    * logistic regression, 
    * decision trees
    * KMeans clustering
    * 
  * Understanding of CNN
  * How Transformers work, image recognition with Transforms

## Additional references

AI Insights from Big Pharma
 

The world’s biggest pharmaceutical company by revenue shed light on its AI strategy.

 

What’s new: Johnson & Johnson, after experimenting broadly with generative AI, settled on a short list of projects that aid in sales, drug development, supply-chain management, and internal communications. A company executive described the process and results to the venture-capital firm Greylock and The Wall Street Journal.

 

How it works: The 140-year-old medical company spent roughly a year experimenting with various AI applications throughout the company, according to Chief Information Officer Jim Swanson. A centralized governing board oversaw as many as 900 experiments. After finding that 10 percent to 15 percent of use cases drove about 80 percent of the value, the company shifted responsibility for AI projects to specific departments to focus on high-value applications. In the end, the criteria for choosing a project was threefold: (i) how readily it could be implemented, (ii) how useful it would be throughout the company, and (iii) how much it would benefit the business.

A division that develops cancer treatments integrated a sales copilot into its customer relationship management system. The system supplies medically validated, legally reviewed information about products and information about particular customers. The application is being adapted for salespeople who sell hardware such as robotics and artificial hip joints.
AI systems are accelerating drug development. One system helps design chemical processes, such as determining the optimal moment to add a compound that will turn a liquid into a solid. An image-analytics model helps identify compounds that are safe and effective.
The company developed a system that monitors and predicts risks to supply chains, such as a fire that may affect supplier locations, materials, or products. The system provides early warnings that helps managers anticipate and mitigate disruptions.
AI tools are helping to organize and execute clinical trials more efficiently. Models that identify patients who qualify for trials help ensure that trial populations are sufficiently diverse. A model that helps enroll patients in trials more than doubled enrollment in some cases.
The Global Services department implemented a chatbot to answer employees’ questions about benefits, policies, and procedures and sends links to relevant documents.
Separate organizations that oversee AI development and data management help keep projects moving forward, meet ethical standards, and scale appropriately. Meanwhile, employees undergo “digital boot camp” training (including a course in generative AI).
Behind the news: Generative AI is expected to bring in up to $110 billion in annual revenue across the pharmaceutical industry, according to McKinsey. The consultancy breaks down this number into the following categories, in order of their contribution to the total: commercial (AI for sales and marketing), research (AI for designing, screening, and manufacturing molecules), clinical (AI to facilitate trials), enterprise, operations, and medical (processing medical literature).

 

Why it matters: Johnson & Johnson’s experience offers a peek into AI development at a major legacy company in a key sector. The company has identified high-value opportunities in enterprise-wide operations, departmental priorities, and core products. It’s pursuing all three.

 

We’re thinking: Notably, this medical stalwart is building AI applications for human resources, sales, and supply-chain management. Similar opportunities exist at companies old and new, big and small, far and wide.

[Source](https://info.deeplearning.ai/chatgpt-grovels-qwen3-takes-on-deepseek-r1-johnson-jonson-reveals-ai-strategy-easy-reasoning-hack)