# Python – Web Programming

---

## Lesson Objectives

  * Learn Python language OOP


Notes:

---
# OOP Intro

---
## What is OOP?

  * Most languages today follow the principles of Object-Oriented Programming.

  * What are the Principles of OOP?

    - Classes vs. Objects
    - Encapsulation
    - Inheritance
    - Polymorphism
    - Data Abstraction and Access Modifiers
    - Exception Handling

Notes:

---
# Classes/Objects
---

## Classes and Objects

  * Python allows Classes to be defined.

  * Classes are instantiated as objects.

  * Methods are defined inside the class.


```python
class Door:  # Note Class Names are usually CamelCase
    def __init__(self, number, status):  
 # Constructor method
        self.number = number  
        self.status = status

    def open(self):
        self.status = 'open'

    def close(self):
        self.status = 'closed'
```
<!-- {"left" : 0, "top" : 2.63, "height" : 3.29, "width" : 10.25} -->


Notes:

---
## Example: The Door Class


  * **CONSTRAINTS**

    - All Doors are brown
    - All Doors have unique number and a status (“open”/”closed”)
    - Normal Doors have double handles and can be “big”/”small”
    - Security Doors have a locked variable (True/False)



<img src="../../assets/images/python/Door-Class.png" style="width:50%;"/><!-- {"left" : 2, "top" : 3.72, "height" : 4.54, "width" : 6.24} -->



Notes:

---

## OOP in Python

<img src="../../assets/images/python/OOP-in-Python.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 2.15, "height" : 5.34, "width" : 8.21} -->



Notes:

---

## Class, Object, Instance Variable, Method

  * Python allows **Classes** to be defined
  * Classes are instantiated as **Objects**
  * Each object can have Instance **Variables**
  * **Methods** are defined inside the class
  * Class names are usually CamelCase


```python
class Door:
		def __init__(self, number, status):
				self.number = number
				self.status = status
		def open(self):
				self.status = “open“
		def close(self):
				self.status = “closed“
```
<!-- {"left" : 0, "top" : 3.65, "height" : 2.73, "width" : 9.09} -->


```python
door1 = Door(10, “open“)
```
<!-- {"left" : 0, "top" : 6.6, "height" : 0.76, "width" : 6.66} -->



Notes:

---

## Classes Variable

  * Python allows Class **Variables** to be defined

  * These variables are common to any object / instance of the class

  * Changing the class variable or class attribute will change the value of the variable for all instances of the class.


```python
class Door:
		color = “brown“
		def __init__(self, number, status):
				self.number = number
				self.status = status
		def open(self):
				self.status = “open“
		def close(self):
				self.status = “closed“

```
<!-- {"left" : 0, "top" : 3.44, "height" : 2.95, "width" : 8.83} -->


```python
door1 = Door(10, “open“)
```
<!-- {"left" : 0, "top" : 6.6, "height" : 0.76, "width" : 6.66} -->

Notes:

---
## Class Methods

  * Static methods are known as **Class Methods**

  * The decorator @classmethod is used to denote a static method that is common to all instances of the class

  * This will give us a reference to the static class (not the object)

  * Example:

```python
class A:
		def __init__(self, x, y):
				self.x = x
				self.y = y
		@classmethod
		def cMethod():
				print(“This is a class method“)

```
<!-- {"left" : 0, "top" : 3.78, "height" : 2.53, "width" : 10.25} -->


Notes:

---
## Attributes

  * Classes can have attributes called class attributes

    - These are static to the class (not to the object)

    - Changing one instance attribute will change it on entire class


```python
class Door:  # Note Class Names are usually CamelCase
    color = 'brown'  # static: 
    common to all instantiations    
    def __init__(self, number, status):   
    # Constructor method
        self.number = number  
        self.status = status

    def open(self):
        self.status = 'open'

    def close(self):
        self.status = 'closed'
```
<!-- {"left" : 0, "top" : 2.82, "height" : 3.8, "width" : 10.25} -->


Notes:

---

## Accessing Attributes


```python
class Door:
		color = “brown“
		def __init__(self, number, status):
				print(“Constructor Running!“)
				self.number = number
				self.status = status
		def open(self):
				self.status = “open“
		def close(self):
				self.status = “closed“
		def __del__(self):
				print(“Destructor Running!“)
```
<!-- {"left" : 0, "top" : 1.24, "height" : 4.15, "width" : 9.97} -->


```python
door1 = Door(10, “open“)
door1.status = “closed“ # will close the door
door1.open() # will open the door again
```
<!-- {"left" : 0, "top" : 5.58, "height" : 1.29, "width" : 9.97} -->

Notes:

---
## Members

  * Member variables are referred to by with reference to self


```python
class Door:  # Note Class Names are usually CamelCase
    color = 'brown'  # static: 
    common to all instantiations    
    def __init__(self, number, status):  
    # Constructor method
        self.number = number  
        self.status = status

    def open(self):
        self.status = 'open'

    def close(self):
        self.status = 'closed'
```
<!-- {"left" : 0, "top" : 1.86, "height" : 3.57, "width" : 10.25} -->

```python
door1.status = “closed“  # setting member
```
<!-- {"left" : 0, "top" : 5.89, "height" : 0.67, "width" : 9.42} -->


Notes:

---
## Access Modifiers

  * Unlike in C++/Java/C#, Access is not strictly enforced.

  * However, we can declare access in the following way;

    - public: MyClass.my_member  #public
    - Protected MyClass._my_member # protected
    - Private: MyClass.__my_member #private

  * This is a convention

    - But it is supported in the language
    - Protected members are renamed “behind the scenes” so a class knows the difference between an inherited member and a local member.
    - Protected and Private members are not shown in metadata to outside users, and an exception is throne if users attempt to use them.
      - But there are ways around this.


Notes:

---

## Constructors and Destructors

  * Classes can define a constructor and destructor

    - Strictly speaking, constructors are called after and not before the class is
instantiated.

  * Constructor

    - Name is __init__()  
    - Constructors should completely initialize all class members

  * Destructor

    - Called at GC time
    - Name is __del__()


```python
class Door
    def __init__(self, number, status):   
    # Constructor method
        self.number = number  
        self.status = status
    def __del__(self): #Destructor method
        print “Bye!“
```
<!-- {"left" : 0, "top" : 5.2, "height" : 2.2, "width" : 10.25} -->


Notes:

---
## Constructor and Destructor

  * Example:

```python
class Door:
		color = “brown“
		def __init__(self, number, status):
				print(“Constructor Running!“)
				self.number = number
				self.status = status
		def open(self):
				self.status = “open“
		def close(self):
				self.status = “closed“
		def __del__(self):
				print(“Destructor Running!“)
```
<!-- {"left" : 0, "top" : 1.74, "height" : 3.94, "width" : 9.48} -->


```python
door1 = Door(10, “open“)
```
<!-- {"left" : 0, "top" : 5.94, "height" : 0.72, "width" : 6.36} -->

Notes:

---

## Class Methods

  * Static methods are known as class methods
  * We can use a decorator @classmethod
  * This will give us a reference to the static class (not the object)
  * Example usage: Factory Method


```python
class Door:
   @classmethod
   def fromSourceData(cls, srcData):
       ...
```

<!-- {"left" : 0, "top" : 3.12, "height" : 2.02, "width" : 10.25} -->

Notes:

---
## Exception Handling

  * We can catch exceptions using try/except/raise/else

```python
for arg in sys.argv[1:]:
    try:
        f = open(arg, 'r')
    except OSError:  #Exception
        print('cannot open', arg)
    except:
        print(“Unexpected error:“, sys.exc_info()[0])
        raise
    else:  # Like Finally
        print(arg, 'has', len(f.readlines()), 'lines')
        f.close()
```
<!-- {"left" : 0, "top" : 1.6, "height" : 3.33, "width" : 10.25} -->

Notes:

---
## Inheritance

  * Python allows us to inherit from base classes

  * Super() refers to the superclass (or superclasses)


```python
class SecurityDoor(Door):
     def open(self):
        if self.locked:
            return
        super().open()
```
<!-- {"left" : 0, "top" : 2.14, "height" : 2.18, "width" : 6.75} -->


Notes:

---
## Multiple Inheritance

  * Python has multiple inheritance
  * Therefore, does not need interface contracts
  * What about the ”diamond problem”?
    - Use name resolution:
    - Specify the base class by name instead of super()


```python
class Lockable(Door, Lockable):
     def __init__(self, locked):
         self.locked = locked
```
<!-- {"left" : 0, "top" : 3.57, "height" : 1.28, "width" : 7.33} -->


```python
class SecurityDoor(Door, Lockable):
     def open(self):
        if self.locked:
            return
        super().open()
```
<!-- {"left" : 0, "top" : 5.05, "height" : 1.77, "width" : 7.33} -->


Notes:

---
## Inheritance


* Python allows us to inherit attributes from one or more base classes


```python
class SubClassName(ParentClass1[, ParentClass2, ...]):
	<class body>
```
<!-- {"left" : 0, "top" : 2.52, "height" : 0.84, "width" : 10.25} -->

<br/>

<img src="../../assets/images/python/Inheritance.png" style="width:15%;float:right;"/><!-- {"left" : 8.04, "top" : 5.18, "height" : 3.22, "width" : 1.87} -->

* Example:


```python
class SecurityDoor(Door):
		def __init__(self, locked):
				self.locked = locked
		def lock(self):
				self.locked = “locked“
		def unlock(self):
				self.locked = “unlocked“
```
<!-- {"left" : 0, "top" : 4.46, "height" : 2.19, "width" : 7.68} -->



```python
door2 = SecurityDoor()
```
<!-- {"left" : 0, "top" : 6.91, "height" : 0.66, "width" : 5.38} -->



Notes:

---

## Multiple Inheritance

  * Python has multiple inheritance (can inherit from multiple parent classes)
  * Example of the ”diamond problem”:

```python
class A:
		def m(self):
        print("m of A called")
class B(A):
    def m(self):
        print("m of B called")
class C(A):
    def m(self):
        print("m of C called")
class D(B,C):
    pass
```
<!-- {"left" : 0, "top" : 3.79, "height" : 3.18, "width" : 5.78} -->


<img src="../../assets/images/python/Multiple-Inheritance.png" style="width:30%;"/><!-- {"left" : 6.22, "top" : 3.59, "height" : 3.59, "width" : 3.84} -->


Notes:

---
## Multiple Inheritance – super()


  * Example usage of super()



```python
class A:
		def m(self)
				print("m of A called")
class B(A):
		def m(self):
				print("m of B called")
				super().m()
class C(A):
		def m(self):
				print("m of C called")
				super().m()
class D(B,C):
		def m(self):
				print("m of D called")
				super().m()
```

<!-- {"left" : 0, "top" : 1.73, "height" : 3.71, "width" : 6.22} -->


```python
>>> x = D()
>>> x.m()
m of D called
m of B called
m of C called
m of A called
```
<!-- {"left" : 0, "top" : 5.73, "height" : 1.86, "width" : 2.94} -->

Notes:

---

## Encapsulation

  * Encapsulation is the idea of wrapping data and operations that are performed on that data into one entity
  * This allows more secured access of data
  * The idea of writing <class object>.<instance variable> is itself encapsulation
  * Data Abstraction has a subtle difference from encapsulation


Notes:

---

## Data Abstraction and Access Modifiers

  * Abstraction is the process of separation of presentation details from implementation details
  * Unlike in C++/Java/C#, access is not strictly enforced and there are well defined access modifiers
  * Members are by default Public, and can be accessed from anywhere
  * Protected members can be accessed from within class or sub-classes (Preceded by single underscore)
  * Private members accessible only within class (Preceded by double underscore)
  * Protected and Private members are not shown in metadata to outside users
  * An exception is thrown if users attempt to use them
  * Methods have the same access modifier conventions as members


Notes:

---

## Data Abstraction and Access Modifiers

```python
class TeslaModelS:
	def __init__(self, updateVersion, keyFobModule):
		print("Parent Class Constructor Running!")
		self._updateVersion = updateVersion
		self.__keyFobModule = keyFobModule
	def checkModule(self):
		return self.__keyFobModule

class MyTesla(TeslaModelS):
	def __init__(self, updateVersion, keyFobModule, color):
		print("Child Class Constructor Running!")
		super().__init__(updateVersion, keyFobModule)
		# TeslaModelS.__init__(self, updateVersion, keyFobModule)
		self.color = color
	def checkVersion(self):
		return self._updateVersion
```
<!-- {"left" : 0, "top" : 1.32, "height" : 4.5, "width" : 10.25} -->




```python
myCar = MyTesla("v8.1.4", "VXC3542", "color")
print(myCar.color)
print(myCar.checkVersion())
print(myCar.checkModule())
```
<!-- {"left" : 0, "top" : 6.1, "height" : 1.39, "width" : 8.6} -->

Notes:

---

## Lab: OOP


  * Overview:

    - Learn Object Oriented Programming in Python

  * Approximate time:

    - 10 mins

  * Instructions:

    - `03__pythonLanguageBasics` | `3.7-oop.ipynb`

Notes:

