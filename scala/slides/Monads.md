# Monads

---

## What are Monads?

* Monads are nothing more than a mechanism to sequence computations around values augmented with some additional feature

*  The concept of monads comes directly from mathematics, precisely from category theory. For this reason, it’s often considered a tough topic

---

## Monad for Functional Programming in Scala

* In Scala, Monads is a construction which performs successive calculations  

* It is an object which covers the other object

* The output of an operation at some step is an input to another computations

---

## Examples of Monads you already know

* Option
* Either
* List
* Future
* Map
* Set
* Stream
* Vector
* Try

---

## Enticement

* Monad and Monad transformers are useful abstractions in every day life of functional programmer.
* Write programs based on the Laws
* Fewer logical errors in the code
* Better structured programs
* Change programs in the without breaking

---

## What makes thing a Monad?

* flatMap
  * also known as bind
* unit
  * also known as pure in Cats library or apply in pure Scala
  
* Why do we need Monads?
  * These two functions implemented for some type bring powerful abstraction 
    to **write complex programs easy.**
    
---

## Make your Monad

<img src="../images/03_monad.png"  style="width:30%;float:right;" /> <!-- {"left" : 5.92, "top" : 1.1, "height" : 3.72, "width" : 4.15} -->

* **Monad** reminds a container 
  * to work with its values using special interface. 
    
* If we model Monad ourselves
  * then it may look like a box with a thing inside, which we access using flatMap and one more useful function map:


---

## Monad code

* map - is implemented in terms of flatMap + unit (i.e. Box class constructor). So we can implement map for any kind of Monads, as we will see that later.

<img src="../images/04_monad_code.png"  style="width:50%;" /><!-- {"left" : 0.6, "top" : 2.9, "height" : 1.94, "width" : 9.05} -->

---

## Box Monad

* Now let's use Box Monad to show some usage example

<img src="../images/05_monad_impl.png"  style="width:50%;" /> <!-- {"left" : 1.64, "top" : 2.23, "height" : 2.77, "width" : 6.97} -->


Notes:

* Box contains single integer value and allows us to manipulate it without leaving Box context, i.e. our result is always a Box[T]. We can also make variable v as public and read it when needed. Box behaves similarly to non-empty single element list. It is hard to say when this particular Box Monad will be useful looking at above example. However, it should give you an idea how Monad implementation may look like.

---

## Scala Examples

* List

  * List operates on collection of values.

```java
scala> val l = List(1,2,3) // <-- unit
l: List[Int] = List(1, 2, 3)

scala> l.map(_ + 1)
res0: List[Int] = List(2, 3, 4)

scala> l.flatMap(i => List(i + 1))
res1: List[Int] = List(2, 3, 4)
```
<!-- {"left" : 0, "top" : 2.96, "height" : 2.61, "width" : 7.11} -->


  
---

## Option example

* Option has two sub-types: Some and None.

```java
val isOn = Some(1) // <-- unit
val isBlack = None // <-- unit without any argument

def makeCoffee: Option[String] = Some(1)

scala> isOn
         .flatMap(_ => isBlack
         .flatMap(_ => makeCoffee))

res0: Option[String] = None
```
<!-- {"left" : 0, "top" : 1.74, "height" : 3.19, "width" : 9.28} -->


Notes: 

* Some is like non-empty single element list, similar to Box Monad example above. None ignores application of lambda function in flatMap or map.

* Example above won't return value of isOn variable because the first flatMap call returns None because of isBlack, so that second flatMap even won't be called.

---

## Generic Monad

* Detach definition of Monad from its concrete implementation like List or Option

```java
  trait Monad[F[_]] extends Functor[F] {
    def unit[A](a: => A): F[A]

    def flatMap[A,B](ma: F[A])(f: A => F[B]): F[B]

    def map[A,B](ma: F[A])(f: A => B): F[B] = 
      flatMap(ma)(a => unit(f(a))) 
  }

  trait Functor[F[_]] {
    def map[A,B](fa: F[A])(f: A => B): F[B]
  }
```
<!-- {"left" : 0, "top" : 2.22, "height" : 3.78, "width" : 9.11} -->

Notes:

* We have already seen example of at least 3 Monads above. In order to detach definition of Monad from its concrete implementation like List or Option, let us define abstract Monad interface using Scala high-order types feature:

* Functor is one more abstraction which is more simpler than Monad. It requires only map implementation. We can say that every Monad also a Functor. Functor is also coming from the Category Theory. I decided to mention it here, because you will frequently find it in the context of Monads, when learning functional programming in general. Abstract Monad interface can also implement map in terms of flatMap and unit functions, so that map is implemented automatically for any concrete implementation of some Monad.


---

## Function application in flatMap

* An application of f function in flatMap and map depends on the concrete Monad instance. 
* "f" applied when:
  * Option[A]: is Some(A)
  * Either[A, B]: is Right(B)
  * List[A]: is non-empty
  * Future[A]: is ready
  
Notes:

* An application of f function in flatMap and map depends on the concrete Monad instance. In one case the lambda function we pass to the flatMap is always executed, in another cases not. Examples:

* Even though flatMap behaves differently on concrete Monad instance, there is still great benefits to use them in any ordinary program. In order to classify some type as a Monad, it needs to comply with Monad Laws and that is closing the definition of Monads. Let's look at Monad laws before we move further to practical examples.

---

## Monad Laws

* Identity
  * Left identity
  * Right identity
* Associative

---

## Identity

```java
def f(x: Int): Option[Int] = Some(x)

scala> Some(1).flatMap(f) == f(1)
res0: Boolean = true

scala> f(1) == Some(1).flatMap(f)
res1: Boolean = true
```
<!-- {"left" : 0, "top" : 1.26, "height" : 2.32, "width" : 6.78} -->

Notes:

* Result of a function which creates Monad instance using unit is equal to application of this function over already created Monad instance.

---

## Left identity

```java
def f[A](x: A): Monad[A] = unit(x)

flatMap(unit(x))(f) == f(x)
```
<!-- {"left" : 0, "top" : 1.23, "height" : 1.15, "width" : 6.44} -->

---

## Right identity

```java
f(x) == flatMap(unit(x))(f)
```
<!-- {"left" : 0, "top" : 1.44, "height" : 0.66, "width" : 6.16} -->

---

## Associative

* Application of f1 and f2 functions one after another yields the same result as applying them within the first flatMap.

```java
def f1(a: Int): Option[Int] = Some(a + 1)
def f2(a: Int): Option[Int] = Some(a * 2)

scala> Some(1).flatMap(f1).flatMap(f2)
res0: Option[Int] = Some(4)

scala> Some(1).flatMap(a => f1(a).flatMap(f2))
res1: Option[Int] = Some(4)
```
<!-- {"left" : 0, "top" : 2.13, "height" : 2.78, "width" : 9} -->

---

## Functor Laws

* Identity

```java
map(Some(1))(a => a) == Some(1)

```
<!-- {"left" : 0, "top" : 1.48, "height" : 0.57, "width" : 5.94} -->

* Associative

```java
val f1 = (n: Int) => n + 1
val f2 = (n: Int) => n * 2

map(map(Some(1))(f1))(f2) // Some(4)
            == 
map(Some(1))(f2 compose f1) // Some(4)
```
<!-- {"left" : 0, "top" : 2.44, "height" : 2.23, "width" : 7.83} -->

Notes: 

* Standard Scala function compose return a function which applies f1 and then f2 taking the result of the first f1 function.

---

## Application of Monads

```java
final case class Coffee(name: String)

val isOn = Some(1)
val coffeeName = Some("black")
val makeCoffee = (name: String) => Some(Coffee(name))

for {
  _ <- isOn
  name <- coffeeName
  coffee <- makeCoffee(name)
} yield coffee

scala> Option[Coffee] = Some(Coffee(black))
```
<!-- {"left" : 0, "top" : 1.23, "height" : 4.34, "width" : 10.25} -->

Notes:

* Using Monads we can do sequential composition. If we have several values in form of Option, we can sequence them into logic program, which evaluates next value based on the flatMap behaviour of the previous value.
* Final result of this program is Some(..) value. However, it could result into None, if one these three values is None.
---

## Compose Either

```java
case class Cluster(pods: Int)

def validateNamespace(ns: String): Either[String, Unit] = Right(())
def clusterExists(ns: String): Either[Cluster, Unit] = Right(())
def createCluster(ns: String, cluster: Cluster): Either[String, Cluster] = 
  Right(Cluster(cluster.pods))
```
<!-- {"left" : 0, "top" : 1.28, "height" : 1.57, "width" : 10.25} -->

---

## Same as Option

```java
val ns = "my-cluster"
for {
   _ <- validateNamespace(ns)
   _ <- clusterExists(ns).left.map(c => 
           s"Cluster with ${c.pods} pods already exists")
   newCluster <- createCluster(ns, Cluster(4))
} yield newCluster
```
<!-- {"left" : 0, "top" : 1.28, "height" : 2.32, "width" : 10.25} -->

Notes:

* From business logic perspective we want to create some hypothetical cluster if namespace is valid and cluster for the given namespace does not exist. We implemented errors as Either.Left and normal result as Either.Right. Interface like Either is a popular approach not only in Scala to have some sort of result wrapper for normal and error results.

* Final result value is based on the return values we hardcoded in the given functions:
---

## Benefits of Monads

```java
scala> Either[String,Cluster] = Right(Cluster(4))
```
<!-- {"left" : 0, "top" : 1.28, "height" : 0.57, "width" : 8.94} -->

```java
def validNamespace(ns: String): Either[String, Unit] = 
   if (ns == "my-cluster") 
   Left(
     “Cluster namespace is not valid name, choose another name”
   ) else Right(())
```
<!-- {"left" : 0, "top" : 1.97, "height" : 1.6, "width" : 8.94} -->


```java
scala> Either[String,Cluster] = Left(
              Cluster namespace is not valid name, choose another name
            )
```
<!-- {"left" : 0, "top" : 3.84, "height" : 0.95, "width" : 8.94} -->

Notes:

* Benefits of using Monads is that we do not need to use if/else control flow, since we have Monads Laws working when we compose Monad instances.

* In case some of the given function returns Either.Left, for example:

* Then it turns the whole result of the composition into error state, i.e. into Either.Left:

---

## For comprehension

* Scala offers special syntax for the sequence of nested flatMap calls and one map at the end, which is called "for-comprehension".

* for {…} yield is a syntactic sugar for a sequence of calls:

```java
flatMap1(… + flatMapN(.. + map(…)))
```
<!-- {"left" : 0, "top" : 3.18, "height" : 0.57, "width" : 6.61} -->

---

## Desugared version:

* Behind the scene, Scala compiler desugars the for-comprehension into the following code:

```java
validNamespace("my-cluster")
  .flatMap(_ =>
     clusterExists(ns)
       .left
       .map(c => s"Cluster with ${c.pods} pods already exists")
       .flatMap(_ =>
            createCluster(ns, Cluster(4))
               .map(newCluster => newCluster)
        )
  )
```
<!-- {"left" : 0, "top" : 2.11, "height" : 2.9, "width" : 10.25} -->

---

## Sugared version of the same code snippet

```java
for {
  _ <- validNamespace("my-cluster")
  _ <- clusterExists(ns).left.map(c => 
          s"Cluster with ${c.pods} pods already exists")
  newCluster <- createCluster(ns, Cluster(4))
} yield newCluster
```
<!-- {"left" : 0, "top" : 1.22, "height" : 2.08, "width" : 10.25} -->

Notes:

For-comprehension of this program is much more readable and thus recommended to be used when composing monadic values in particular programs.


---
## Gotcha with Monads

* We can easily compose Monads of the same types, like we have seen in examples, all values were options or eithers and so on. However, it is not straightforward to compose different Monad stacks, like Option and Either values in one sequence. Let's look at the example of such problem below.

---

## Problem

<img src="../images/07_problem.png"  style="width:50%;" /><!-- {"left" : 1.48, "top" : 1.35, "height" : 6.94, "width" : 7.29} -->




Notes:

* Let's make one of the value in the for-comprehension to be different type, so that we will try to compose different Monads:

---

## First Monadic value rules them all

* Once we put first value such as validateNamespace, which returns Either[_, _], it starts to drive the return type of the flatMap function. Second nested value is not Either type, but Option[_]. Here it starts to brake the Monad interface and eventually won't let it compile the code. What we need is to align monadic values to common ground.

---

## Monad Transformer

* OptionT to compose Option + Any other Monad
* EitherT to compose Either + Any other Monad
* ReaderT to compose Reader + Any other Monad
* WriterT to compose Writer + Any other Monad
... others
  
Notes:

* In order to compose different Monad types, we can use one more pattern called Monad Transformer.

* Monad Transformer is a custom-written Monad designed specifically for composition. Of course we could tackle above problem by unboxing Option, then checking what is in the Either, return Either again to make for-comprehension to be compiled. However, this would be clumsy and not scalable solution in terms of code maintenance. Monad Transformers example:

* If we want to compose Option Monad with other monadic values of type Either, then we need to use EitherT monad for Option. EitherT instance knows how to unbox and box Option to operate on nested Either and thus guide the flatMap function.

---

## EitherT

```java
// takes 3 type parameters: 
// 1. high-order type of the outer Monad 
// 2. left type of Either
// 3. right type of Either
final case class EitherT[F[_], A, B](value: F[Either[A, B]]) {

 def flatMap[AA >: A, D](f: B => EitherT[F, AA, D])(implicit F: Monad[F])
   : EitherT[F, AA, D] =
   // Attention: there is one more "flatMap" to unwrap first Monad layer,
   // which is F[_] 
   EitherT(F.flatMap(value) { 
     case l @ Left(_) => F.pure(l.rightCast)
     case Right(b)    => f(b).value
   })
}
```
<!-- {"left" : 0, "top" : 1.41, "height" : 3.68, "width" : 10.25} -->

Notes:

* See inline comments above. One more important point is that we expect an implicit Monad instance for that outer Monad F[_]. We use it to unwrap first Monad, by convention this variable is also named F. So Monad Transformer does not do any magic, but it is just a type constructor, which returns a Monad as result.

---

## Apply Monad Transformer

```java
case class Cluster(pods: Int, updated: Long)

def validateNamespace(ns: String): Either[String, Unit] = 
  Right(())

def clusterExists(ns: String): Option[Either[String, Cluster]] =
  Some(Right(Cluster(3, System.currentTimeMillis())))

def updateCluster(ns: String, cluster: Cluster): 
  Either[String, Cluster] =
  Right(Cluster(cluster.pods, System.currentTimeMillis()))
```
<!-- {"left" : 0, "top" : 1.18, "height" : 3.12, "width" : 10.25} -->

---

## EitherT instance from Cats library

```java
import cats.implicits._
import cats.data.EitherT

val cluster = for {
    _ <- validateNamespace(ns).toEitherT[Option]
    cluster<- EitherT(clusterExists(ns))
    updated <- updateCluster(ns, cluster).toEitherT[Option]
} yield  updated
```
<!-- {"left" : 0, "top" : 1.43, "height" : 2.52, "width" : 10.25} -->

Notes:

* Since we introduced Monad transformer into composition, we have to use it for all the monadic values in the same sequence of flatMaps. So, we have to wrap first value and third value into EitherT as well using extension method to EitherT.

* In the result we have two layers of Monads too. First Option, then Either:

---

## Result

<img src="../images/08_solution.png"  style="width:60%;" /><!-- {"left" : 0.21, "top" : 1.85, "height" : 1.76, "width" : 9.83} -->




Notes:

In the result, our composition stopped on the second statement. clusterExists returns Some(Left(...)), so that EitherT could detect that Either.Left is end of the journey and entire composition ended on Left even it is wrapped into Some. Basically, Monad transformer looks into two layers one by one, when chaining monadic values. This was our goal to get a concise program and handle nested monadic value on composition in the same time.

---

## Summary

<img src="../images/06_pexels-rodnae-productions-7020828.jpg" style="width:30%;float:right;" /><!-- {"left" : 7, "top" : 1.16, "height" : 4.46, "width" : 2.97} -->

* Monad and Monad transformers are useful abstractions in every day life of functional programmer.
* Write programs based on the Laws
* Fewer logical errors in the code
* Better structured programs
* Change programs in the without breaking


Notes:

* Monad and Monad transformers are useful abstractions in everyday life of functional programmer. Although it may seems like Monad is programming language on its own, it allows us to write programs based on the Laws!!! We can compose different monadic values without using much a control flow. In the result, we get fewer logical errors in the code, better structured programs and what is more important we get possibility to change programs in future much easier without breaking the entire world.

