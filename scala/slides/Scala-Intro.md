# Scala Intro

<img src="../../assets/images/logos/scala-logo-1.png" style="width:35%;"/><!-- {"left" : 6.49, "top" : 7.66, "height" : 2.07, "width" : 4.52} -->

---

## Module Objectives

* A quick intro to Scala
* Learn Scala ecosystem

---

# Scala Introduction

---

## Scala Features

<img src="../../assets/images/logos/scala-logo-1.png" style="width:30%;float:right;"/><!-- {"left" : 13.18, "top" : 1.89, "height" : 1.66, "width" : 3.63} -->

<img src="../../assets/images/logos/java-logo-1.png" style="width:30%;float:right;clear:both;"/> <!-- {"left" : 13.28, "top" : 3.4, "height" : 3.43, "width" : 3.43} -->

* Scala is **JVM based** language. It builds on Java / JVM.

* **Fully object oriented**
    - Every thing in Scala is an object!
    - Even primitive types like numbers and functions

* **Fully functional:** Scala supports and encourages functional programming style

* **Statically typed:**  Checks types during compile time

* **Very concise:** You will see examples of this soon enough

Notes:

This is a quick overview of Scala features. We will deep-dive into these features in the next few sections.

---

## A Better Java!

<img src="../../assets/images/logos/sun-logo-2.png" style="width:23%;float:right;"/> <!-- {"left" : 13.71, "top" : 1.89, "height" : 1.14, "width" : 2.63} -->

<img src="../../assets/images/people/martin-odersky-1.jpg" style="width:20%;float:right;clear:both;"/><!-- {"left" : 13.38, "top" : 3.32, "height" : 5.06, "width" : 3.28} -->

* Sun released Java in 1996

* In late 1990s and 2000s Java took off.
    - Lot of enterprises adopted Java
    - Huge ecosystem developed around Java
    - And it attracted a lot of developers

* Oracle acquired Sun in 2009

* After Java 8 (2014) the Java evolution slowed down
    - Developers wanted modern features to keep up with modern development needs

* [Martin Odersky](https://en.wikipedia.org/wiki/Martin_Odersky), who worked in Java team at Sun, thought Java made too many compromises.
    - He designed Scala to include better features he wanted in Java
    - Scala was released to public in 2004

Notes:

Martin Odersky  worked at Sun Java.  He worked on Java Generics and javac compiler.  In 2007 he became a fellow at ACM (Association of Computing Machinery)

On 12 May 2011, Odersky and collaborators launched Typesafe Inc. (renamed Lightbend Inc., February 2016), a company to provide commercial support, training, and services for Scala.

Source : https://en.wikipedia.org/wiki/Martin_Odersky

---

## Scala Version History

| Date       | Scala version | Description            |
|------------|---------------|------------------------|
| 2001       |               | Work starts on Scala   |
| 2004       | v 1.0         | Initial public release |
| 2006 March | v 2.0         |                        |
| 2021       | V 3           | Big update!            |

<!-- {"left" : 1.89, "top" : 2.71, "height" : 2.5, "width" : 13.78} -->
Notes:

---

## Scala is a JVM Language

<img src="../../assets/images/scala/scala-and-jvm-2.png" style="width:40%;float:right;"/> <!-- {"left" : 11.3, "top" : 2.16, "height" : 5.42, "width" : 5.9} -->

* Scala source code compiles into a byte code

* `A.scala --> scalac compiler --> A.class`

* Then the byte code is executed by Java Virtual Machine (JVM)

* Why JVM is great
    - Cross platform.  JVM can run on multiple platforms and operating systems (Windows, Mac, Linux)
    - Byte code is portable across platforms (write-once-run-anywhere)
    - JVM can manage memory automatically
    - JVM is one of the best run-times, evolved over the years of research and experiment
    - Sports really good optimizers like Just in Time (JIT) compilers

---

## Scala Features: Pure OO

* Scala is a **purely object oriented language**

* Every thing is an object, including numbers and functions!

```java
// in java, i is a primitive, not an object
int i = 10;

// in Scala, i is an object
val i : Int = 10
```
<!-- {"left" : 0.9, "top" : 3.12, "height" : 1.26, "width" : 5.77} -->

* Classes

```scala
class Point(var x: Int, var y: Int) {
    // class methods
}
```
<!-- {"left" : 0.9, "top" : 4.97, "height" : 1.15, "width" : 6.93} -->

* Traits

```scala
trait Printable{  
    def print()  {
        println ("Default")
    }
}  
  
class A4 extends Printable{  
    def print(){  
        println("A4 paper")  
    }  
}  
```
<!-- {"left" : 0.9, "top" : 6.98, "height" : 3.18, "width" : 5.12} -->

---

## Scala Features: Functional

* **Scala is a functional language**

* Every function is a value; It supports anonymous functions, and higher order functions

```scala
val square = (x: Int) => x * x
```
<!-- {"left" : 0.9, "top" : 3.96, "height" : 0.82, "width" : 8.32} -->

<br/>

* Higher order functions allow concise programming

```scala
val salaries = Seq(20000, 70000, 40000)
val newSalaries = salaries.map(x => x * 2) // List(40000, 140000, 80000)
// another option
val doubleSalary = (x: Int) => x * 2
val newSalaries2 = salaries.map(doubleSalary) // List(40000, 140000, 80000)
```
<!-- {"left" : 0.9, "top" : 6.3, "height" : 2.13, "width" : 16.29} -->

---

## Scala Features: Statically Typed

* Scala has **static typing**.  It's expressive type system enforces **compile-time type checking**.  This catches type mis-matches early on, and avoids costly run-time bugs

* **Type inference** facilitates cleaner, concise code

```scala
val i = 10  // i is automatically inferred as Int
val name = "John" // name is String

// types can be explicitly defined, but not necessary
val point: Point = Point (10, 20)
```
<!-- {"left" : 0.9, "top" : 4.5, "height" : 1.74, "width" : 9.63} -->

---

## Scala Features: Singleton Classes

* **Singleton classes** are supported at language level, no need for kludegy fixes

```scala
object Singleton{  
    def main(args:Array[String]){  
        println ("Hi from main")
    }  
} 
```
<!-- {"left" : 0.9, "top" : 3.03, "height" : 1.64, "width" : 6.25} -->


```scala
package logging
object Logger {
  def info(message: String): Unit = println(s"INFO: $message")
}
// ----
import logging.Logger.info
object Run{  
    def main(args:Array[String]){  
        info("hi from main")  // -->  INFO: hi from main
    }  
} 
```
<!-- {"left" : 0.9, "top" : 4.79, "height" : 2.49, "width" : 7.94} -->

<br/>

* Compare with Java singleton

```java

public class Elvis {  // one and only
    public static final Elvis INSTANCE = new Elvis ();
    private Elvis(){} // must make constructor private, so no one can create new
}

// access it like this:
Elvis elvis = Elvis.INSTANCE;
```
<!-- {"left" : 0.9, "top" : 8.13, "height" : 2.32, "width" : 14.13} -->

---

## Scala Features: Case Classes

* **Case classes** compact representation of classes, that are **immutable** and support **pattern matching**


```scala
case class Fruit (name:String, color:String, price:Int)

val orange = Fruit ("Naval Orange", "Orange", 1)
val greenApple = Fruit ("Apple", "Green", 2)
val redApple  = Fruit ("Apple", "Red", 3)
val banana = Fruit ("Yellow Banana", "Yellow", 4)

// TODO: Write a match expression to select Apples

```
<!-- {"left" : 0.9, "top" : 3.28, "height" : 2.61, "width" : 9.94} -->

---

## Scala Features: JVM Language

* Since Scala runtime is JVM, it benefits from extensive Java eco system

* Scala can interoperate relatively seamlessly with Java libraries

* Here is an example of using the popular [Joda time](https://www.joda.org/joda-time/) Java library in Scala

```scala
import  org.joda.time.format.DateTimeFormat
import org.joda.time.DateTime

val dateStr = "2021-06-13"
val formatter = DateTimeFormat.forPattern("yyyy-MM-dd")
val dateTime:DateTime = formatter.parseDateTime(dateStr)
println(dateTime.dayOfWeek().getAsText(Locale.getDefault()))  // Prints "Sunday"
```
<!-- {"left" : 0.9, "top" : 4.27, "height" : 2.62, "width" : 15.95} -->

---

## Scala Use Cases

* Scala is a general purpose language (like Java) so can be used in wide variety of projects.  How ever there are some areas it really excels in.   Here are few:

* High performance, highly concurrent Web services

* Large scale distributed applications, like Spark applications

* Distributed, Cloud-native apps

* References:
    - [What is Scala good for](https://news.ycombinator.com/item?id=25043915)

---

## Scala Adoption

* Scala enjoyed a good uptake among Java and Functional programmers

* Some popular Big data and distributed systems were developed in Scala, boosting popularity!
    - [Apache Spark](https://spark.apache.org/) was written in Scala and caused a good deal of interest in Scala language
    - [Apache Kafka](https://kafka.apache.org/) is another popular messaging system, written in Scala

* The New York Times'  internal content management system Blackbeard is built using Scala, Akka and Play Framework. (2014, [Source](https://open.nytimes.com/building-blackbeard-a-syndication-system-powered-by-play-scala-and-akka-9ae867d47da6))

* Twitter uses Scala for its backend code

* References: [1](https://www.javatpoint.com/history-of-scala)

Notes:

---

## Scala 3.0

<img src="../../assets/images/logos/scala-logo-3.png" style="width:20%;float:right;"/> <!-- {"left" : 14.33, "top" : 1.6, "height" : 2.16, "width" : 2.87} -->


* This is a big release for Scala, eight years in the making with 28,000 commits, 7,400 pull requests, and 4,100 closed issues

* New 'quiet' syntax, no brackets around conditions, and loops


```scala
if x < 0 then
  "negative"
else if x == 0 then
  "zero"
```
<!-- {"left" : 0.9, "top" : 5.2, "height" : 1.24, "width" : 3.39} -->

* Type system improvements. [Union types](https://dotty.epfl.ch/docs/reference/new-types/union-types.html)

* Language simplified;  dropped some features like [Delayed Init](https://dotty.epfl.ch/docs/reference/dropped-features/delayed-init.html).  See [more dropped features](https://dotty.epfl.ch/docs/Dropped%20Features/index.html)

* Metaprogramming.  [more details](https://docs.scala-lang.org/scala3/guides/macros/index.html)

* References:
    - [What's new in Scala 3.0](https://docs.scala-lang.org/scala3/new-in-scala3.html)
    - [Scala 3 new features](https://www.infoq.com/news/2021/06/scala-3-overhaul/)
    - [Martin Odersky goes over Scala 3 and beyond](https://www.youtube.com/watch?v=NXTjnowBx-c)

---

## Scala Criticisms

<img src="../../assets/images/generic/pushing-boulder-on-hill-2.png" style="width:30%;float:right;"/> <!-- {"left" : 11.02, "top" : 1.89, "height" : 4.29, "width" : 6.1} -->


* Scala can be a steep learning curve

* The 'different thinking and concepts' might take some getting used to

* Functional programming requires a different way of thinking

* Good tooling (IDEs, fast compilers) lacked in early years,  that was a hinderance for new developers

* Java is adding some functional programming constructs, that may encourage Java developers to stick with Java, instead of moving to Scala

* References:
    - [Kotlin vs Scala](https://medium.com/digitalfrontiers/why-did-kotlin-succeed-and-scala-not-1a8e279d2077)

---

## Scala EcoSystem

* **Build:** sbt, maven, gradle

* **IDEs:** IntelliJ,  Eclipse with Scala plugin, Netbeans, [Metals](https://scalameta.org/metals/)

* **Target JVM:** Java 8 is most popular, followed by Java 11

* **Unit Testing:** ScalaTest, JUnit, specs2

* **Web development:** Akka-http, Play

* **Misc tools:** Scalafmt, Scalastyle, Scoverage

* References:
    - [Scala ecosystem in 2021 by JetBrains](https://www.jetbrains.com/lp/devecosystem-2021/scala/)
    - [What is missing in scala ecosystem?](https://www.reddit.com/r/scala/comments/ir8ygb/what_is_missing_in_scala_ecosystem/)

---

## Group Discussion: Scala Use Cases

<img src="../../assets/images/icons/group-labs.png" style="width:25%;float:right;"/><!-- {"left" : 11.99, "top" : 2.62, "height" : 3.81, "width" : 5.25} -->

* Let's discuss some of your project needs and where Scala would be applicable

Notes:

---

# Getting Scala

---

## Getting Scala Setup

* Recommended stack:
    - Scala 2.13
    - Java SDK 11

* IDEs / Editors
    - [IntelliJ](https://www.jetbrains.com/idea/) - highly recommended
    - [VSCode](https://code.visualstudio.com/) - modern editor

* Optional tools, that would improve your Scala experience
    - [Ammonite](https://ammonite.io/) - a modern Scala REPL environment, with syntax highlighting and lets you run scripts
    - [Mill](https://com-lihaoyi.github.io/mill/mill/Intro_to_Mill.html) - a modern build tool for Scala

---

## Scala Setup 1 - JDK

* First thing, is to get JDK 11 setup

* Check your Java version

```bash
$   java -version

# Output:
Openjdk version "11.0.11" 2021-04-20
OpenJDK Runtime Environment (build 11.0.11+9-Ubuntu-0ubuntu2)
OpenJDK 64-Bit Server VM (build 11.0.11+9-Ubuntu-0ubuntu2, mixed mode, sharing)
```
<!-- {"left" : 0.9, "top" : 3.21, "height" : 2.24, "width" : 15.38} -->

<br/>
* If you don't have JDK-11, follow instructions to your platform to setup JDK for your system

---

## Scala Setup 2 - Scala

* The most straight-forward way to get Scala is download the Scala binary bundle (zip or tgz) for your platform.  This way you can control what version of Scala you would be using

* [Scala 2 download page](https://www.scala-lang.org/download/scala2.html)

* At this time of writing, the latest version of Scala is 2.13.7

* Here is how to set it up on command line system

```bash
$   wget https://downloads.lightbend.com/scala/2.13.7/scala-2.13.7.tgz
$   tar xvf scala-2.13.7.tgz

# Setup PATH variable
$    export PATH=$(pwd)/scala-2.13.7/bin:$PATH

# invoke scala
$   scala

# Sample output:
#   Welcome to Scala 2.13.7 (OpenJDK 64-Bit Server VM, Java 11.0.11).
#   Type in expressions for evaluation. Or try :help.

#   scala> 
```
<!-- {"left" : 0.9, "top" : 5.78, "height" : 4.36, "width" : 12.44} -->

---

## Scala Setup 3 - Install IDEs

* A good IDE will tremendously help with Scala coding.  We heartily recommend [IntelliJ](https://www.jetbrains.com/idea/)

* Also a a decent editor like [VSCode](https://code.visualstudio.com/) is highly recommended

<img src="../../assets/images/logos/intellij-idea-logo-1.png" style="width:30%;"/><!-- {"left" : 2.24, "top" : 5.36, "height" : 2.15, "width" : 6.71} --> <img src="../../assets/images/logos/vscode-logo-1.png" style="width:30%;"/><!-- {"left" : 8.81, "top" : 4.8, "height" : 2.62, "width" : 6.24} -->

---

## Good References

<img src="../../assets/images/books/programming-scala-3rd-edition-9781492077886.jpeg" style="width:20%;float:right;"/> <!-- {"left" : 12.58, "top" : 1.89, "height" : 5.86, "width" : 4.47} -->

* Books
    - [Programming Scala, 3rd edition](https://learning.oreilly.com/library/view/programming-scala-3rd/9781492077886/) - Learn the language
    - [Hands on Scala](https://www.handsonscala.com/) - Practical approach to Scala and [code on github](https://github.com/handsonscala/handsonscala)

* Online
    - [#ThisWeekInScala!](https://medium.com/disney-streaming/tagged/thisweekinscala) - great blog to keep up with Scala news
    - [Should I learn Scala](https://www.toptal.com/scala/why-should-i-learn-scala)

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /> <!-- {"left" : 13.05, "top" : 2.09, "height" : 2.68, "width" : 3.63} -->


* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 4.9, "top" : 6.11, "height" : 5.14, "width" : 7.7} -->
