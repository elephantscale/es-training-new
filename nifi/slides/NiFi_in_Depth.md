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













