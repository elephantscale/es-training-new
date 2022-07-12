# Apache NiFi in Depth

---

## NiFi: Templates

* Templates are a way to export your NiFi flow to other computers and to your colleagues
* They are also a way to try other people's work
* Here's how you get to Templates
  * Go to top right corner of the screen
  * Click on the three bars

---

## Template menu

![](../images/02-templates.png)

---

## Fresh install - no templates

![](../images/03-no-templates.png)

---

## Find some templates

![](../images/05-example-templates.png)

---

## CVS to JSON template

![](../images/06-cvs-to-json.png)

---

## Upload template

![](../images/08-upload-template.png)

---
## Here is the template

![](../images/09-template.png)

---

## Let us use the template: select it

![](../images/11-use-template.png)

---

## Let us use the template: use it

![](../images/12-use-template.png)

---

## Lab - import template

* Let us import the template
* First, the CVS to JSON template
* Now, let us go through this template and analyze it
* Then, import a template of your choice and present its analysis

---

## Process groups


![](../images/13-process-groups.png)

---

## Drag process group


![](../images/14.png)

---

## Use the SHIFT key

![](../images/15.png)


---

## Note number of components


![](../images/16.png)

---
## Cleaner look using process groups

![](../images/17.png)

---

## Lab - process groups
* Process groups and template exports
* Please do the following lab
* https://github.com/elephantscale/NiFi-labs/blob/main/lab_04.md

---

## FlowFile Review

* We have processors
* They get connected
* Going deeper - FlowFile has two components
  * Attributes (Metadata)
    * Create date
    * Name
    * What does the data represent, etc.
  * Content
    * `myfile.txt`
    * Actual data, perhaps binary content
* So, this is similar to a file on the computer. But - it is a **Flow**File

---

## Processor

* Processor is working with the FlowFile
  * Update, add, or remove attributes (working on attributes)
  * Change content (working on content)
* This so far is theory
* Now, let's go and see how it works in practice

---

## Let's go back to our FlowFile

![](../images/18.png)

## Process Group

* Our Process Group is made of five processors
* Let's analyze the processors from the top to the bottom
* The first processor is a **GenerateFlowFile**
* Let us analyze the GenerateFlowFile processor
* Let us go through the properties tabs
* And let us start it
* Right click, investigate the menus

## Go through the five processors
* The first processor enhances the content but does not change the attributes
* The second processor is a **ReplaceText**
* Look at the last line

![](../images/19.png)

---

## Here is our RegEx expression

![](../images/20.png)

---

## RegEx in detail

```shell
(.+),(.+),(.+),(.+)
a,b,c,d
```

## Here are changed attributes

![](../images/21.png)


* We have added csv.1, csv.2, csv.3, csv.4

---

## Use attributes with the expression language


![](../images/22.png)

---

## Replace text processor

![](../images/23.png)

---

## Creating JSON

![](../images/24.png)

---
## Forming JSON

![](../images/25.png)

---

## View the content

![](../images/26.png)

---

## First use of Expression Language

* We will be talking about the Expression Language
* It is much more than this simple example
![](../images/27.png)

---

## We will use the Expression Language
* To create attribute
* To manipulate content
* Let us quickly look at some examples

---

## One more example

![](../images/28.png)

---

## One more property

![](../images/29.png)

---

## And the new property was generated

![](../images/30.png)

---

## Lab - Expression Language

* Follow the steps in the slides above

---

## Monitoring NiFI

* Here is the basic monitoring

![](../images/31.png)

---

## Each processor has its own stats

![](../images/32.png)

---

## Let's analyze the stats

![](../images/33.png)

---

## Change the size

![](../images/34.png)

---

## Status history

![](../images/35.png)

---

## Stats for your queue

![](../images/36.png)

* Queue should not be too big
* Queue should not be too small
* Consider the back pressure

---

## Monitor summary

![](../images/37.png)

---

## Summary display

![](../images/38.png)

---

## Process groups stats

![](../images/39.png)

---


## System diagnostics

![](../images/40.png)

---

## 5-min stats

![](../images/41.png)

---

## Data Provenance

* We can list what is the connector
* 
![](../images/42.png)

---

## Data Provenance

* For that, we click on "List Queue"

![](../images/43.png)

---

## Queue

* Let's look at the queue

![](../images/44.png)

---

## View detail

* Click on the Information button
* View the details

![](../images/45.png)

---

## FlowFile attribute

* Chose the tab "Attributes"
* View the details

![](../images/46.png)

---

## Now, let's look at ReplaceText

* Right-click on ReplaceText
* Click on Configure

![](../images/47.png)

---

## It will take anything 

* And replace it with `a, b, c, d`

![](../images/48.png)

---

## Now, let's run it
* We will see that the attributes did not change
* But the content is replaced with `a, b, c, d`

![](../images/49.png)

---

## Let's analyze ExtractText

![](../images/50.png)

---

## Data Provenance and Event Search

* As above, data goes from step to step
* But something does not work and you need to debug it
* You can see the event connections
* This is called data provenance

![](../images/51.png)

---

## Click on Data provenance

![](../images/52.png)

---

## Show lineage

![](../images/53.png)

---

## Here's lineage

![](../images/54.png)

---

## Slider on the bottom left


![](../images/55.png)

---

## Processor relationships

* ExtractText is not guaranteed to work
* The CSV may be broken
* You need to be able to handle errors

![](../images/56.png)

---

## Configuration of ExtractText

![](../images/58.png)

---

## Matched and unmatched

![](../images/59.png)

---


## Add a processor for non-matched

![](../images/60.png)

---

## Routing processor

![](../images/61.png)

---

## Three routes

![](../images/62.png)

---

## Quiz
* How can I export a subset of my flow as a template?
  * A. By selecting many of them while pressing shift and clicking on the export button
  * B. By selecting a process group, entering it, and then exporting the content of the group as a template
  * C. By clicking on the export button and then choosing which processors to export

Notes:

* B is the best practice

---

## Quiz

* Processors can change both Attributes and Content of FlowFiles at the same time
  * A. True
  * B. False

Notes:

* A
---

## Quiz

* You can reference the attribute `my_attribute` using the following Expression Language expression:
  * `%my_attribute`
  * `${my_attribute}`
  * `attributes[my_attribute]`

Notes

* B.

---

---
