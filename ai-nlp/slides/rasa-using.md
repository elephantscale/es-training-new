# lntro to Rasa
---

# Rasa_core 

---

## What is Rasa-Core?

  * rasa-core defines the *domain* of our chatbot.

  * It does *not* definte the language model

  * NLU does that
Notes: 

---
## Domains

  * What is a *domain*?

  * Domain specifies:
    - intents
    - slots
    - actions 

  * Defined by a `.yaml` file.
Notes: 

---
## YAML file contents:

  * Intents

  * Entities

  * Slots

  * Templates

  * Actions


Notes: 

---

## Intents

  * What is an intent?
    - a string specifying:
    - what user meant to say.

  * Examples:
    - Greet
    - Location Search

  * Intent Classification
    - "Hello" -> Greet
    - "Where can I get Mexican food?" -> restaurant search
Notes: 

---
## Entities

  * Entities are classes or variables

  * Example: User's name

  * Example; Cuisine Type
   
Notes: 

---
## Slots
  * Slots store *state* of entities

  * Class = Entity, Object = Slot

  * accessible from `tracker` object.

  * Example: `tracker.get_slot("cuisine")` gets `Mexican`.

Notes: 

---
## Actions

  * Allows app to perform something
    - Print output
    - Database call
    - Web Service API call.
    - etc.

  * Utter actions
    - `utter_*` actions will print output to screen.
    

  * Custom Actions
    - Actions can be customized

Notes: 

---
## Utter actions
  * Actions should have a template
Notes: 

---
## Custom Action

  * Here is an example:

```python
from rasa_core.actions import Action
from rasa_core.events import SlotSet

class ActionCheckRestaurants(Action):
   def name(self):
      return "action_check_restaurants"

   def run(self, dispatcher, tracker, domain):
      cuisine = tracker.get_slot('cuisine')
      q = "select * from restaurants where \
           cuisine='{0}' limit 1".format(cuisine)
      result = db.query(q)

      return [SlotSet("matches", 
        result if result is not None else [])]
```

Notes: 

---
## Custom Action Definition

 * Custom Actions Defined in templates of yaml file

```yaml
templates:
  utter_greet:
  - text: "Hey! How are you?"
  utter_cheer_up:
  - text: "Here is something to cheer you up:"

```
Notes: 

---
## Intent Ranking

```json
"intent_ranking" : [
{
  "name":  "email_change",
  "confidence": .95
},
{
  "name": "greet",
  "confidence": 0.04
}
]
```

Notes: 

---
## Entities

```json
"text": "I am at tim@elephantscale.com",
"entities": [
    "name": "email",
    "value": "tim@elephantscale.com"
    "confidnence": 0.913]
]

```
Notes: 

---
# rasa_nlu

---
## Backends

 * SpaCy: best for most: install with rasa_nlu[spacy]

```bash 
pip install rasa_nlu[spacy]
```
 * MITIE: MIT Information Extraction

```bash
pip install git+https://github.com/mit-nlp/MITIE.git
pip install rasa_nlu[mitie]
```
Notes: 

---
## Backend: Sklearn + MITIE

 * Uses sklearn + MITIE

 * Need to install mitie

 * sklearn should already be installed


Notes: 

---
## Training files

 * There are 2 formats for training files:
   - json
   - markdown

 * Markdown is a little bit easier.

Notes: 

---
## Defining Markdown file

```text
## intent:check_balance
- what is my balance <!-- no entity -->
- how much do I have on my [savings](source_account) <!-- entity "source_account" has value "savings" -->
- how much do I have on my [my savings account](source_account:savings) <!-- synonyms, method 1-->
## intent:greet
- hey
- hello

## synonym:savings   <!-- synonyms, method 2 -->
- pink pig
## regex:zipcode

- [0-9]{5}
```

Notes: 

---
## Building an NLU model

```bash
python -m rasa_nlu.train \
  -c rasa_nlu_model_config.yml 
  --fixed_model_name current 
  --data rasa_training_data/order-status/nlu.json 
  --path ./models/nlu
```

Notes: 


---
## Testing a Model

  * There are 2 main ways to test
    - REST web interfae
    - python / CLI-based interface.

Notes: 

---
## Rest Web Service Interface
  * You can run the rest web interface like this:

```bash
python -m rasa_nlu.server --path projects
```
  * This will run the service and look in the path projects

Notes: 

---
## Python Interface (Training)
  * This is the python interface for Training


```python
from rasa_nlu.training_data import load_data
from rasa_nlu.config import RasaNLUModelConfig
from rasa_nlu.model import Trainer
from rasa_nlu import config

training_data = load_data('data/examples/rasa/demo-rasa.json')
trainer = Trainer(config.load("sample_configs/config_spacy.yml"))
trainer.train(training_data)
model_directory = trainer.persist('./projects/default/')  
```
Notes: 

---
## Python Interface (Prediction)
  * This is the python interface for prediction

```python
from rasa_nlu.model import Metadata, Interpreter

# where `model_directory points to the folder the model is persisted in
interpreter = Interpreter.load(model_directory)

interpreter.parse(u"The text I want to understand")
```
Notes: 

---
## Component Builder

  * This is the component builder: 

```python
from rasa_nlu.training_data import load_data
from rasa_nlu import config
from rasa_nlu.components import ComponentBuilder
from rasa_nlu.model import Trainer

builder = ComponentBuilder(use_cache=True)

training_data = load_data('data/examples/rasa/demo-rasa.json')
trainer = Trainer(config.load("sample_configs/config_spacy.yml"), builder)
trainer.train(training_data)
model_directory = trainer.persist('./projects/default/') 
```

Notes: 

---
## Component Builder

  * This is the component builder:


```python
from rasa_nlu.model import Metadata, Interpreter
from rasa_nlu import config

# For simplicity we will load the same model twice, usually you would want to use the metadata of
# different models

interpreter = Interpreter.load(model_directory, builder)     # to use the builder, pass it as an arg when loading the model
# the clone will share resources with the first model, as long as the same builder is passed!
interpreter_clone = Interpreter.load(model_directory, builder)
```
Notes: 

---
## Re-using the Component Builder

  * Notice that the builder is an argument to the constructor.


```python
from rasa_nlu.model import Metadata, Interpreter
from rasa_nlu import config

# For simplicity we will load the same model twice, 
# usually you would want to use the metadata of
# different models

# Pass the builder as an argument
interpreter = Interpreter.load(model_directory, builder)  
# the clone will share resources with the first model
# , as long as the same builder is passed!
interpreter_clone = Interpreter.load(model_directory, builder)
```
Notes: 

