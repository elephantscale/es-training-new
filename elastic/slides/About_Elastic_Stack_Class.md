# Elastic Stack


---


## Class Outline

| Session | Agenda                                                                              |
|---------|-------------------------------------------------------------------------------------|
| 1       | Search Fundamentals. Lucene. Elasticsearch                                          |
| 2       | Advanced Elasticsearch: <br/> Relevancy, Document Relations, Analytics              |
| 3       | Developing with Elasticsearch API, Developing with Lucene API<br/> Logstash, Kibana |


<!-- {"left" : 0.75, "top" : 2.14, "height" : 2.78, "width" : 8.75, "columnwidth" : [1.02, 7.72]} -->


Notes: 



---

## Prerequisites & Expectations


 * Familiarity with either Java or another language

     - Need to be comfortable with software—there are many labs

 * Basic understanding of Linux development environment

     - Command line navigation 

     - Editing files (e.g. using VI or nano)

 * This is an **Elastic** class 

     - You may be missing some pre-requisites, that’s OK

     - You should be willing to work hard, that is a must

Notes: 




---

## Our Teaching Philosophy


 * Emphasis on concepts & fundamentals

 * No need to learn APIs by heart

 * Highly interactive (questions, discussions, etc. are welcome)

 * Hands-on (learn by doing)

 * Build solid fundamentals of understanding and design

Notes: 




---


## Analogy: Learning to Fly...

<img src="../../assets/images/generic/3rd-party/learn-to-fly.png" style="width:80%;"/> <!-- {"left" : 0.26, "top" : 1.45, "height" : 6.17, "width" : 9.74} -->



Notes:

---

## Instruction

<img src="../../assets/images/generic/3rd-party/classroom-instruction.png" style="width:80%;"/> <!-- {"left" : 0.26, "top" : 1.45, "height" : 6.17, "width" : 9.74} -->





Notes:

---

## + Flight Time

<img src="../../assets/images/generic/3rd-party/cockpit.png" style="width:70%;"/> <!-- {"left" : 0.26, "top" : 1.45, "height" : 6.17, "width" : 9.74} -->


Notes:

---

## After the Class...

<img src="../../assets/images/elastic/3rd-party/Elastic-01.png" alt="Elastic-01.png" style="width:60%;"/><!-- {"left" : 1.29, "top" : 1.89, "height" : 5.28, "width" : 7.67} -->


Notes:

---


## About You and Me

* About Instructor
* About you
  - Your Name
  - Your background (developer, admin, manager, ...)
  - Technologies you are familiar with
  - Familiarity with Elastic Stack (scale of 1 - 4 ;  1 - new,   4 - expert)
  - Something non-technical about you!(favorite ice cream flavor / hobby...)

<img src="../../assets/images/generic/3rd-party/hiking-3.jpg" style="width:18%;"/> &nbsp; <!-- {"left" : 1.55, "top" : 6.43, "height" : 1.76, "width" : 1.99} --><img src="../../assets/images/generic/3rd-party/ice-cream-3.png" style="width:25%;"/> &nbsp; <!-- {"left" : 3.56, "top" : 6.45, "height" : 1.7, "width" : 3.13} --><img src="../../assets/images/generic/3rd-party/biking-1.jpg" style="width:18%;"/> &nbsp; <!-- {"left" : 6.71, "top" : 6.43, "height" : 1.76, "width" : 1.99} -->


Notes:

---

## Class Logistics

* Instructor's contact information
* Slides
  - For each session, slides will be emailed out or delivered via virtual classroom
* Server nodes
  - Provided in the cloud
* Labs
  - Provided in the cloud
  - Will be delivered in a ZIP file for your future reference


Notes:

---

## Typographic Conventions

* Software code in the text uses a fixed-width code font:
  - catalog: Catalog = new CatalogImpl
  - Code fragments are the same, e.g., catalog.speakTruth
  - We use **bold/color** text for emphasis
  - Filenames are in italics, e.g., `Catalog.scala`
  - Longer code examples appear in a separate code box:

```text
object TestApp {  // Basic Spark App (Scala)
  def main(args: Array[String]) {
		val sc = new SparkContext(
      new SparkConf().setMaster("local").setAppName("TestApp")
		val totalWords = sc.textFile("file")
               .flatMap(l => l.split(" ")).count()
		println ("# lines : " + totalWords)
	}
}


```
<!-- {"left" : 0, "top" : 3.99, "height" : 2.68, "width" : 10.25} -->


Notes:

---
## Questions?

* Any questions?


Notes:













