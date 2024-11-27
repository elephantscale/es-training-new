# Effective Prompting Techniques for Language Models

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

# Iterative Prompting for Marketing Content Creation

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

