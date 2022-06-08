# Functional Programming in Scala

<img src="../../assets/images/logos/scala-logo-1.png" style="width:35%;"/><!-- {"left" : 6.49, "top" : 7.66, "height" : 2.07, "width" : 4.52} -->
<img src="../../assets/images/scala/functional-programming-lambda-1.png" style="width:25%;"/><!-- {"left" : 6.49, "top" : 7.66, "height" : 2.07, "width" : 4.52} -->

---

## Lesson Objectives

* Understand the rise of functional programming

* Understand core functional programming concepts

* Use Scala to write functional programming code

---

# Evolution of Programming

---

## Evolution

<img src="../../assets/images/kafka/3rd-party/cpu-1.png"  style="width:20%;float:right;"/><!-- {"left" : 8.13, "top" : 1.11, "height" : 1.71, "width" : 1.85} -->

* Once Upon A Time... (pre 1990s)
    - we had single core processors
    - Programs ran in single 'thread' mode
    - Faster code required faster and faster clock speeds (200MHZ ! ...)

<img src="../../assets/images/kafka/3rd-party/cpu-2.png" style="width:30%;float:right;clear:both; "/><!-- {"left" : 7.67, "top" : 4.34, "height" : 1.84, "width" : 2.45} -->

* 2000s: multi core processors
    - Multiple threads / programs running in parallel
    - Number of cores mattered more than clock speed
    - We can spin up multiple threads and process tasks in parallel
    - Java made multi-threaded programming easier

---

## The Problem: Shared State

<img src="../../assets/images/scala/two-threads-accessing-the-same-memory.jpg" style="width:40%;float:right;clear:both; "/><!-- {"left" : 7.67, "top" : 4.34, "height" : 1.84, "width" : 2.45} -->

* What if two threads want to share a memory location?

* For example both want to increment a counter shared by both

* Shared access to variables has to be synchronized

* We can use programming constructs like **Locks, mutex, semaphores**

* This leads locking / blocking

---

## New Model: Distributed Computing

* Distributed systems with

    - Multiple nodes

    - Each with multiple cores

* Imagine every thread wants to increment a global counter

* How do we co-ordinate them all?

<img src="../../assets/images/kafka/distributed-computing-1.png" alt="distributed-computing-1.png" style="width:70%;"/><!-- {"left" : 0.52, "top" : 4.15, "height" : 3.08, "width" : 9.21} -->

---

# Functional Programming

---

## Functional Programming

* Functions are First Class Objects
    - Can be stored in variables
    - They can be passed as arguments

* Functions should be "pure functions" with no side-effects
    - Functions should **transform data rather than modify data**
    - No shared state --> **immutablility**
    - Immutability simplifies programming significantly, as we don't have worry about shared states changing underneath us
    - Also immutability allows a great deal of compiler optimizations

---

## Functional Programming Implementations

* LISP
    - LISP is an early functional-type language.
    - Used a lot in academia ("Common LISP")
    - Interpreted, and Slow

* Clojure
    - A JVM based LISP like language
    - Compiles and Runs on the JVM

* Many many more

---

## Multi-Paradigm Languages

* Languages like Scala are **multi-paradigm**
    - They are **functional**
    - and **object oriented**

* This makes Scala very practical and relevant (not just an academic exercise)

* Also Java has implemented some functional features (lambda functions ..etc)

---

# Functional Programming API

---

## Functional Programming API

* We will look at the following APIs

* **`filter`**

* **`map`**

* **`reduce`**

---

## Filter

<img src="../../assets/images/scala/filter-1.png" style="width:40%;float:right;"/><!-- {"left" : 0.52, "top" : 4.15, "height" : 3.08, "width" : 9.21} -->

* A ‘filter’ function is applied to each element in a collection

* Only elements that pass the filter function are kept in the new collection.

* Collection-1 (N elements)  => filter  => Collection-2 (M elements)  (usually  N > M)

* Original collection ('collection-1') does not change

```scala
// Let's find even numbers

> val x = List (1,2,3,4)
x: List[Int] = List(1, 2, 3, 4)

> val y = x.filter(a => a%2 == 0)
y: List[Int] = List(2, 4)

// x is unchanged
> x
x: List[Int] = List(1, 2, 3, 4)
```

* Go ahead and try it out!  🏋️

---

## Filter With Underscore Shorthand

* In this code below, the variable in filter() function 'a' is a temporary variable

```scala
> val x = List (1,2,3,4)
> val y = x.filter(a => a%2 == 0)
```

* So we don't even need to give it a name!  We will use and underscore (_) as a placeholder

```scala
> val x = List (1,2,3,4)
> val y = x.filter( _%2 == 0)
```

* As you get more familiar with Scala, you will start to use more and more underscore notation :-)

* Go ahead and try it out!  🏋️

---

## More Filter Examples

* Go ahead and try these out!  🏋️

```scala
> val x = List (1,-2,-3,4)
> val positive = x.filter ( _ > 0)
```

```scala
> val names = List ("John", "Jane", "Michael", "Jim")

> val jNames = names.filter (  _.toLowerCase.startsWith ("j"))
val jNames: List[String] = List(John, Jane, Jim)
```

```scala
// chaining filters

> val a = (1 to 100).toList

// only find numbers dividable by 4 and 5
> val b = a.filter (_ % 4 == 0)

> val c = b.filter ( _ % 5 == 0)

// one liner
> val c   = a.filter (_ % 4 == 0).filter( _ % 5 == 0)
```

---

## More Complex Filters

* We may need more complex filters than one-liners

* Filter functions:
    - take an input
    - and return a boolean true / false

```scala
// filter function
> def isShortName (name : String) : Boolean = {
    val trimmed = name.trim
    val length = trimmed.length
    length < 5  // returns true/false
}
> val names = List ("Jon", "Michael Scott", "    Jim   ", "Pamela")
> val shortNames = names.filter(isShortName) // "Jon", "    Jim   "
> val longNames = names.filterNot(isShortName)   // "Michael Scott", "Pamela"
```

```scala
// a complex fraud detection function
def isFraud (t : Transaction) : Boolean = {
    // query a db, query a ML model
    return true / false
}
val transactions = List (.....)
// filter fraudulent transactions
val fraud = transactions.filter (isFraud)
val notFraud = transactions.filterNot (isFraud)  // not condition
```

* Go ahead and try it out!  🏋️

---


