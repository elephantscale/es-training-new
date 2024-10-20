# Spring Cloud

(C)Copyright Elephant Scale

October 20, 2024

## Course Description

* Today, Deep Learning can accomplish results that are nothing short of miraculous. 
In this course, we assume that you do not want to re-invent wheels. Rather, you want to know what is
available as low-hanging fruit. In other words, you are looking for magic but you don't want to compete with
teams who create this magic. You want to partner with them and achieve the same quality results but
with a practical reasonable expense of time and resources.

  
## Course objectives
* By the end of this course, students will know...
* How to understand the current state of the art in Deep Learning and AI
* How to put the claims of AI to the test
* How to utilize the existing results through transfer learning, pre-training, and fine-tuning.
* How to package your models for deployment.
* How to create machine learning pipelines and improve them in production.

## Audience
* Developers, data scientists, team leads, project managers

## Skill Level

* Intermediate

## Duration
* Two days

## Prerequisites
* General familiarity with machine learning


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

### Introduction to Deep Learning
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

* Transformers
* Encoders
* Decoders
* Sequence to sequence
* Bias and limitations
* Pipeline
* Models
* Tokenizers
* Putting it all together


### Fine tuning a pretrained model
* Processing the data
* Fine-tuning a model with the Trainer API or Keras
* A full training

### Sharing models and tokenizers 
* The Hugging Face Hub
* Using pretrained models
* Sharing pretrained models

### Main NLP tasks
* Token classification
* Fine-tuning a masked language model
* Translation
* Summarization
* Training a causal language model from scratch
* Question answering
* Mastering NLP

# Spring Cloud

## Course outline

* Components of Spring Cloud
  * Configuration
  * Spring Cloud Config
    Centralized configuration management
    External configuration properties
    Environment-specific configurations
    Integration with Git, SVN, and other repositories
    Spring Cloud Vault
    Secure secret management
    Integration with HashiCorp Vault
    Dynamic reloading of secrets
2) Service Discovery
   Eureka
   Service registry and discovery
   Self-preservation mode
   Client-side load balancing
   Consul
   Service discovery
   Key-value store
   Health checking
   Zookeeper
   Distributed configuration service
   Synchronization
   Group services
3) Circuit Breaker
   Hystrix
   Latency and fault tolerance
   Fallback mechanisms
   Metrics and monitoring
   Resilience4j
   Lightweight and easy to use
   Multiple resilience patterns
   Bulkhead, rate limiter, retry, and time limiter
4) Routing and Messaging
   Spring Cloud Gateway
   API Gateway functionality
   Routing and filtering
   Predicates and filters
   Spring Cloud Bus
   Distributed messaging system
   Event-based communication
   Synchronization of configuration changes
   Spring Cloud Stream
   Event-driven microservices
   Binder abstraction
   Integration with messaging systems like Kafka and RabbitMQ
5) API Gateway
   Spring Cloud Gateway
   Reactive API gateway
   Routing and filtering
   Load balancing
   Path rewriting
6) Tracing
   Spring Cloud Sleuth
   Distributed tracing
   Integration with Zipkin and other tracing systems
   Correlation of logs
   Zipkin
   Distributed tracing system
   Dependency graph
   Trace collection and visualization
7) CI pipelines and Testing
   Continuous Integration (CI) Tools
   Jenkins
   GitLab CI
   Travis CI
   Testing Strategies
   Unit testing
   Integration testing
   Contract testing
   End-to-end testing
   Spring Cloud Contract
   Consumer-driven contract testing
   Contract verification
   Stub generation
8) Roles of Dockers/ Kubernetes
   Docker
   Containerization of microservices
   Isolation and consistency
   Image creation and management
   Kubernetes
   Container orchestration
   Automated deployment, scaling, and management
   Service discovery and load balancing
   Configuration management and secret handling