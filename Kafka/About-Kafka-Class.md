# Kafka For Developers


---


## Workshop Overview


 * Day 1

     -  **Streaming Overview** 
     -  **Kafka Overview** 

 * Day 2

     -  **Using Kafka API** 

 * Day 3

     -  **Kafka Streams, KSQL, Schema** 
     -  **Workshop** 

 * Day 4

     -  **Workshop – continued** 
     -  **Best Practices** 

 

Notes: 




---

## Prerequisites & Expectations


 * Familiarity with either Java language

     - Need to be comfortable programming - there are many labs
     - Our labs are in Java

 * Basic understanding of Linux development environment

     - Command line navigation 
     - Running commands

 * This is a Kafka Introductory class. 

     - No previous **Kafka knowledge** is assumed
     - Class will be paced based on the pace of majority of the students. 



Notes: 




---

## Our Teaching Philosophy


 * Emphasis on concepts & fundamentals

 * API

 * Highly interactive (questions, discussions, etc.  are welcome)

 * Hands-on (learn by doing)

 * Work on latest version of Kafka! 


Notes: 

All the labs are verified at 1.3 even though latest is 1.4


---

## Lots of Labs: Learn By Doing

<img src="../../assets/images/kafka/3rd-party/learn-by-doing.png" alt="learn-by-doing.png" style="width:70%;"/>

Notes: 




---

## Analogy: Learning To Fly...

<img src="../../assets/images/kafka/3rd-party/Learning-to-fly.png" alt="Learning-to-fly.png" style="width:80%;"/>

Notes: 

Image: http://aviation-schools.regionaldirectory.us/learn-to-fly-720.jpg


---

## Instruction

<img src="../../assets/images/kafka/3rd-party/Instruction.png" alt="Instruction.png" style="width:80%;"/>


Notes: 

Image: http://www.wikihow.com/Become-a-Certified-Flight-Instructor


---

## + Flight Time


<img src="../../assets/images/kafka/3rd-party/Flight-Time.png" alt="Flight-Time.png" style="width:80%;"/>

Notes: 




---

## After The Class...


<img src="../../assets/images/kafka/3rd-party/AFTER_THE_CLASS-kafka.png" alt="AFTER_THE_CLASS-kafka.png" style="width:60%;"/>


Notes: 

By the end of the class... .


---

## About You And Me


 * About you

     - Your Name

     - Your background (developer, admin, manager, etc.)

     - Technologies you are familiar with

     - Familiarity with Kafka (scale of 1 – 4 ,  1 – new,   4 – expert)

     -  **Something non-technical about you!**  **(favorite ice cream flavor / hobby, etc.)** 


<img src="../../assets/images/kafka/3rd-party/icecream.jpg" alt="icecream.jpg" style="width:26%;"/>&nbsp;&nbsp;&nbsp;<img src="../../assets/images/kafka/3rd-party/climbing.jpg" alt="climbing.jpg" style="width:30%;"/>

Notes: 




---

## Recommended Books


 * Kafka – The Definitive Guide

<img src="../../assets/images/kafka/3rd-party/Recommended-Books-7.png" alt="Recommended-Books-7.png" style="width:25%;"/>

Notes: 

Image credit : http://shop.oreilly.com/


---

## Class Logistics


 * Instructor’s contact

 * Slides

     - For each session, slides will be emailed out or delivered via virtual classroom 

 * Labs

     - On Kafka nodes

     - Will be delivered in a zip file for your future reference. 

 * Kafka nodes

     - Provided in the cloud


Notes: 




---

## Typographic Conventions


 * Code in the text uses a fixed-width code font, e.g.: 

     - catalog: Catalog = new CatalogImpl

     - Code fragments are the same, e.g. catalog.speakTruth

     - We  **bold/color**  text for emphasis

     - Filenames are in italics, e.g.  *Catalog.scala* 

     - Notes are indicated with a superscript number (1) or a  **star *** 

     - Longer code examples appear in a separate code box - e.g.

```text
object TestApp {  // Basic Spark App (Scala)
  def main(args: Array[String]) {
		val sc = new SparkContext(
      new SparkConf().setMaster("local").setAppName(”TestApp")
		val totalWords = sc.textFile(“file”)
               .flatMap(l => l.split(" ")).count()
		println (“# lines : “ + totalWords)
	}
}

```


Notes: 

(1) If we had additional information about a particular item in the slide, it would appear here in the notes

We might also put related information that generally pertains to the material covered in the slide


---

## Questions?


 * Any Questions? 

Notes: 





