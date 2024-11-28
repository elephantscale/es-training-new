# Effective Prompting 

# Guidelines

---
## Introduction
* Topic: Effective Prompting Techniques for Language Models
* Focus:
  * Principles of clear communication with AI models
  * Tactics to improve AI interaction
  * Practical examples and structured outputs

---
## Principle 1: Write Clear and Specific Instructions
* Avoid short or vague prompts.
* Provide detailed and unambiguous instructions.
* Benefits:
  * Better context understanding.
  * More accurate and relevant responses.

---
## Principle 1 Tactic 1: Use Delimiters
* Delimiters clearly indicate distinct parts of the input.
* Examples:
  * Backticks: ```
  * Quotes: """ or ""
  * Tags: `<tag>` and `</tag>`
* Code Example:
  ```python
  text = """..."""
  prompt = "Summarize the text delimited by triple backticks..."
  ```

---
## Principle 1 Tactic 2: Ask for Structured Output
* Request output in formats like JSON or HTML.
* Code Example:
  ```python
  prompt = """
  Generate three book titles with authors and genres in JSON format.
  """
  ```
* Benefit:
  * Makes parsing and automation easier.

---
## Principle 1 Tactic 3: Check Conditions
* Ensure AI validates requirements.
* Example:
  * Rewriting a recipe into structured steps.
* Code Example:
  ```python
  prompt = """
  Rewrite instructions as Step 1, Step 2, ...
  """
  ```

---
## Principle 1 Tactic 4: Few-shot Prompting
* Provide examples in the prompt to guide the model.
* Example:
  ```python
  prompt = """
  <child>: Teach me about resilience.
  <grandparent>: Example response here.
  """
  ```

---
## Principle 2: Give the Model Time to “Think”
* Encourage multi-step problem-solving.
* Specify logical steps explicitly.
* Example Tasks:
  * Summarization.
  * Translation.
  * Counting items in text.

---
## Principle 2 Tactic 1: Multi-step Instructions
* Example:
  ```python
  prompt = """
  1. Summarize the text.
  2. Translate into French.
  3. List names in the summary.
  4. Provide output in JSON format.
  """
  ```
* Benefit:
  * Reduces errors in complex tasks.

---
## Principle 2 Tactic 2: Self-Verification
* Ask the model to solve the problem and compare.
* Example:
  ```python
  prompt = """
  Solve the problem yourself and compare with the student's solution.
  """
  ```
* Application:
  * Validation of reasoning and results.

---
## Model Limitations: Hallucinations
* Example:
  * "AeroGlide UltraSlim Smart Toothbrush by Boie" - invented product.
* Key Insight:
  * Cross-check AI outputs for factual accuracy.

---
## Experimentation
* Try new prompt
---

# Iterative

---
## Introduction
* Focus:
  * Generate effective product descriptions from technical fact sheets.
  * Address challenges such as length, relevance, and organization.
  * Tailor outputs for specific audiences like furniture retailers.

---
## Generate Product Descriptions
* Input: Fact sheet for a mid-century-inspired office chair.
* Task: Create a retail website description.
* Example prompt:
  ```python
  prompt = """
  Write a product description based on the technical specifications.
  Specifications: ```<fact_sheet>```
  """
  ```

---
## Issue 1: Text is Too Long
* Challenge:
  * Descriptions can exceed the desired word count or character limit.
* Solution:
  * Specify limits such as "50 words" or "3 sentences."
* Example:
  ```python
  prompt = """
  Write a description in at most 50 words.
  Specifications: ```<fact_sheet>```
  """
  ```

---
## Issue 2: Focus on Relevant Details
* Challenge:
  * Initial descriptions may emphasize less relevant aspects.
* Solution:
  * Instruct the model to focus on key materials or construction details.
* Example:
  ```python
  prompt = """
  Focus on materials and construction. Use at most 50 words.
  Specifications: ```<fact_sheet>```
  """
  ```

---
## Issue 3: Include a Table of Dimensions
* Challenge:
  * Audience requires clear dimensions in tabular format.
* Solution:
  * Generate descriptions with an appended HTML table.
* Example:
  ```python
  prompt = """
  Include dimensions in a two-column table titled 'Product Dimensions.'
  Specifications: ```<fact_sheet>```
  """
  ```

---
## Example HTML Output
* HTML for product descriptions:
  ```html
  <div>
    A detailed product description.
  </div>
  <table>
    <tr><th>Dimension</th><th>Measurement</th></tr>
    <tr><td>Width</td><td>20.87"</td></tr>
    <tr><td>Height</td><td>31.50"</td></tr>
  </table>
  ```

---
## Experimentation
* Test and refine prompts to align with audience needs.
* Incorporate specific requests like IDs or formatting styles.
* Adjust for tone, technical depth, and visual layout.

# Summarizing 

---
## Introduction
* Topic: Summarizing content effectively using AI.
* Purpose: Learn how to extract key insights from complex documents.
* Applications:
  * Quick comprehension.
  * Simplified communication.
  * Enhanced productivity.

---
## Principles of Summarization
* Focus on the main idea.
* Eliminate unnecessary details.
* Adapt summaries for specific audiences.
* Use structured formats like lists or tables.

---
## Use Case: Summarizing Technical Documents
* Example: Product fact sheets, research papers, or technical guides.
* Challenges:
  * Dense, detailed information.
  * Varying audience needs (technical vs. non-technical).
* AI Role:
  * Automates the summarization process.
  * Ensures clarity and conciseness.

---
## Techniques in AI Summarization
* Extractive Summarization:
  * Pulls key sentences or phrases from the original text.
* Abstractive Summarization:
  * Generates new sentences to convey the core message.
* Hybrid Models:
  * Combines extraction and abstraction for nuanced summaries.

---
## Practical Example
* Input: Technical fact sheet for an office chair.
* Task: Generate a concise product description.
* Key Features:
  * Material details.
  * Dimensions and specifications.
  * Adaptation to retailer or end-user needs.

---
## Addressing Common Issues
* Text is too long:
  * Limit output by words, sentences, or characters.
* Focus on the wrong details:
  * Specify important aspects (e.g., materials, features).
* Lack of clarity:
  * Use structured prompts for better results.

---
## Experimentation and Customization
* Test various prompts for optimal output.
* Adjust summarization based on:
  * Audience.
  * Context.
  * Desired output format (e.g., list, table, prose).
* Leverage AI’s flexibility for diverse use cases.

---
## Conclusion
* AI-powered summarization saves time and effort.
* Tailored techniques ensure relevance and clarity.
* Experiment with prompts to refine summaries.
* Applications span technical, creative, and general domains.

---

# Inferring 

---
## Introduction

* Focus:
  * Exploring sentiment, topics, and emotions from text data
  * Practical use cases like product reviews and news articles
  * Leveraging language models for inference tasks

---
## Imports and Configuration
* Import OpenAI and set up the environment using `dotenv`.
* Key Steps:
  * Configure API key and model parameters.
  * Establish communication with the OpenAI API through setup code.

---
## Text Example: Product Review
* Example Text:
  ```python
  lamp_review = """
  Needed a nice lamp for my bedroom, and this one had additional storage and not too high of a price point.
  Got it fast. The string to our lamp broke during the transit and the company happily sent over a new one.
  Came within a few days as well. It was easy to put together.
  I had a missing part, so I contacted their support and they very quickly got me the missing piece!
  Lumina seems to me to be a great company that cares about their customers and products!!
  """
  
---




