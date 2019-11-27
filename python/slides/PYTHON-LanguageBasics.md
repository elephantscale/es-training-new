# Python Language Basics

---


## Lesson Objectives

  * Operators and Data Types
  * Control Flow – Conditionals and Loops
  * List Comprehensions
  * Functions and Modular Programming
  * Strings
  * Files and Exception Handling
  * Multithreaded Programming
  * Object Oriented Programming Concepts


Notes:

---

# Operators

---

## Python Operators (Assignments / Boolean)


| Operation      | Operator | Example   |
|----------------|----------|-----------|
| **Assignment** | `=`      | `a = 10`  |
|                |          |           |
| **Logical**    |          |           |
| And            | `and`    | `a and b` |
| Or             | `or`     | `a or b`  |
| Not            | `not`    | `not a`   |

<!-- {"left" : 0.25, "top" : 1.11, "height" : 3.5, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->



Notes:

---

## Python Operators: Arithmetic



| Operation        | operator | Example       |
|------------------|----------|---------------|
| Addition         | `+`      | `a + b`       |
| Subtraction      | `-`      | `a - b`       |
| Multiply         | `*`      | `a * b`       |
| Division         | `/`      | `a / b`       |
| Exponent         | `**`     | `a ** 2`      |
| Modulus          | `%`      | `5 % 2 is 1`  |
| Integer Division | `//`       | `5 // 2 is 2` |

<!-- {"left" : 0.25, "top" : 1.11, "height" : 3.5, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

---

## Python Operators: Bitwise

| Operation              | operator | Example   |
|------------------------|----------|-----------|
| Bitwise And            | `&`      | `a & b`   |
| Bitwise Or             | `｜`     | `a ｜ b`  |
| Bitwise Xor            | `^`      | `a ^ b`   |
| Bitwise 1's complement | `~`      | `~a`      |
| Logical shift left     | `<< n`   | `a << 2`  |
| Logical Shift Right    | `>> n`   | `a >> 2`  |

<!-- {"left" : 0.25, "top" : 1.22, "height" : 4, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

---

## Python Operators: Comparison

| Comparison         | operator | Example  |
|--------------------|----------|----------|
| less               | `<`      | `a < b`  |
| Greater            | `>`      | `a > b`  |
| Less than equal    | `<=`     | `a <= b` |
| Greater than equal | `>=`     | `a >=b`  |
| Equal              | `==`     | `a == b` |
| Notequal           | `!=`     | `a != b` |

<!-- {"left" : 0.25, "top" : 1.22, "height" : 4, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->


Notes:

---
# Data Types

---

## Python Data Types

  * Python has no value types or primitive types

  * Everything is an object.

    - Objects are referred to by reference.
    - Even simple integers are references.

  * Variables are always references

    - References are untyped. (loose typing)
    - References can point to anything.

  * Some types are immutable (can't be changed)

    - most numeric types
    - Strings
    - tuples


Notes:

---

## Python Data Types

  * Scalar
    - float (3.1)
    - int (10)
    - long (10L)
    - complex (1+3j)
    - bool  (True / False)
    - str ("hello world")

  * Complex
    - list: `[1, 2, 2, 3]`
    - set `{1, 2, 3}  #No dups`
    - tuple `(1,"hello")`
    - dict `{"cat": 3, "dog", 4}`

Notes:

---

## Converting types

  * Some types can be auto-converted without a warning

  * There is a hierarchy:

    - bool -> int -> long -> float -> complex
    - Upcasting is never a problem.
    - Downcasting requires loss of information.

  * Explicit conversion / casting

    - Casting is accomplished by passing the value to the constructor
    - Example: int(3.1) # float is passed into the constructor of int
    - Casting always copies the data and makes a new object.

Notes:

---

## Lists

  * Lists are mutable ordered collection of objects

  * Can mix and match types (unlike NumPy Arrays)

```python
>>> a = [1, "abc", 3.1]
>>> a[0]
1
>>> a.append("appended element")
>>> a
[1, 'abc', 3.1, 'appended element']
```
<!-- {"left" : 0.0, "top" : 2.16, "height" : 2.46, "width" : 8.73} -->


---

## More About Lists

  * Lists are stored as **references** to objects
  * Not the objects themselves!
  * Remember **EVERYTHING** in Python is an object!
    - no value or primitive types.
  * If the objects pointed to change,
    the values in the list will change too!

---

## Slicing Lists


  * Slicing - [m:n] returns copy of sub-list from m to n-1 (zero based index)

```python
>>> a[1:3]
['abc', 3.1]
>>> a[:]
[1, 'abc', 3.1]
>>> a[-3:-1]
[1, 'abc']
```
<!-- {"left" : 0.0, "top" : 2.4, "height" : 2.4, "width" : 4.24} -->

Notes:

---

## Sets

  * Sets are an unordered collection of objects, with no dupes

  * Can mix and match types, just like lists

```python
>>> a = {1, "abc", 3.1, "abc", 2, 1, 10, 1}
>>> a
{1, 2, 3.1, 10, 'abc'}
```
<!-- {"left" : 0.0, "top" : 2.09, "height" : 1.38, "width" : 10.22} -->

---


## Sets

  * Sets can be used to de-dup a list

```python
>>> a = [1, "abc", 3.1, "abc", 2, 1, 10, 1]
>>> a
[1, 'abc', 3.1, 'abc', 2, 1, 10, 1]
>>> a = list(set(a))
>>> a
[1, 2, 3.1, 10, 'abc']
```
<!-- {"left" : 0.0, "top" : 1.93, "height" : 2.25, "width" : 9.6} -->


  * Frozen Sets

```python
>>> a = frozenset({"a", "b", "c"})
```
<!-- {"left" : 0.0, "top" : 5.8, "height" : 0.7, "width" : 8.37} -->

Notes:

---

## Dictionaries

  * Dictionaries are groups of key-value pairs

  * Objects can be of ANY type (mix and match)

```python
>>> a = {"cats": 8, "dogs": 3, "tigers" : 2}
>>> a["dogs"]
3
>>> a["cats"]
8
```
<!-- {"left" : 0.0, "top" : 2.08, "height" : 1.96, "width" : 9.97} -->

```python
>>> stock = {"symbol" : "aapl", "ask" : 190.1, "sell" : 196.5}
>>> stock
{'symbol': 'aapl', 'ask': 190.1, 'sell': 196.5}
>>> stock["ask"]
100.1
```
<!-- {"left" : 0.0, "top" : 4.25, "height" : 1.46, "width" : 10.13} -->

Notes:

---

## Dictionaries: Adding New Attributes


  * New attributes or key/value pairs can be added as follows

```python
>>> stock = {"symbol" : "aapl", "ask" : 190.1, "sell" : 196.5}
>>> stock
{'symbol': 'aapl', 'ask': 190.1, 'sell': 196.5}
>>> stock["company"] = "apple"
>>> stock["stock"] = "nasdaq"
>>> stock
{'symbol': 'aapl', 'ask': 190.1, 'sell': 196.5, 
'company': 'apple', 'stock': 'nasdaq'}
```
<!-- {"left" : 0.0, "top" : 1.74, "height" : 2.2, "width" : 10.25} -->


  * Dictionaries are **important** in Python


Notes:

---

## Tuples

  * Tuples are groups of data

  * How is a tuple different from a list?

    - Tuples are immutable (can't be changed in any way)
    - Tuples aren't able to be iterated over.
    - Tuples are fixed length

  * Used for:

     - Returning more than one thing from a function

```python
lambda x : (x, x*2) # returns 2 arguments
```
<!-- {"left" : 0.0, "top" : 4.85, "height" : 0.72, "width" : 10.25} -->


     - Forcing mutable data to be immutable


```python
a = [1,2,3] # Mutable list of size 3
b = tuple(a) #Immutable tuple of size 3
```
<!-- {"left" : 0.0, "top" : 5.81, "height" : 1.09, "width" : 9.89} -->


Notes:

---
## Tuples

  * Example – To convert 2D to 3D coordinates

```python
>>> coordinates = (5.3, 4.8)
>>> coordinates
(5.3, 4.8)
>>> coordinates.append(3.4)
<error>
```
<!-- {"left" : 0.0, "top" : 1.46, "height" : 2.17, "width" : 7.41} -->

```python
>>> p = list(coordinates)
>>> p
[5.3, 4.8]
>>> p.append(3.4)
>>> p
[5.3, 4.8, 3.4]
>>> coordinates = tuple(p)
>>> coordinates
(5.3, 4.8, 3.4)
```
<!-- {"left" : 0.0, "top" : 3.86, "height" : 3.22, "width" : 6.21} -->

Notes:

---
## Arrays

  * Python has no native array functionality
  * List will serve in a pinch, but is very S-L-O-W
  * The package numpy introduces a native array,
  * We will discuss shortly.

Notes:

---
## Lab: Python datatypes

  * Overview:
     - Quick intro lab to Python

  * Approximate time: 
    - 10 mins
 
  * Instructions:
    - **03-languageintro / types**



Notes:

---

## Lab: Python Data Types

  * Overview:
    - Introduction Python Data Types

  * Approximate time:
    - 10 mins

  * Instructions:

    - **03__pythonLanguageBasics | 3.1-types.ipynb**


Notes:

---
## Ranges

  * range(5) creates a sequence from 0 to 4

  * **range(start, stop step)** function is more flexible

    - **range**(1,10, 2) => 1,3,5,7,9
    - **range**(0, 0.1, 0.01) =>  0.0, 0.01, …,  0.10

  * More options: **?range**



Notes:

---

# Control Flow and Comprehensions

---
## Blocks in Python

  * Python does not have curly braces (like Java)

  * Blocks are delimited by indentation

```python
statement:   
   indented block
   indented block
statement: 
   statements
```
<!-- {"left" : 0.0, "top" : 1.93, "height" : 2.49, "width" : 5.62} -->


  * Whitespace matters! But why?

    - Because it's good style to use indentation (in Java too!)
    - Why not have it do meaning too, instead of just ignored.
    - Curly braces are redundant, and can cause unexpected errors.

Notes:

---
## Control Flow: IF-Else


```python
if (condition or expression):   
  statements
elif:  #else if (note the syntax)
  statements
else: 
  statements
```
<!-- {"left" : 0.0, "top" : 1.12, "height" : 3.04, "width" : 10.25} -->

Notes:

---

## Control Flow – Conditionals - One Liners

  * It is possible to condense code from an if-else statement into just one line

  * This is similar to the c++/Java ternary operator, but arguably more readable.


```python
>>> fruit = "Apple"
>>> isAppleFlag = True if fruit == "Apple" else False
>>> isAppleFlag
True
>>> fruit = "Orange"
>>> isAppleFlag = True if fruit == "Apple" else False
>>> isAppleFlag
False
```
<!-- {"left" : 0.0, "top" : 2.99, "height" : 2.55, "width" : 10.25} -->

Notes:

---
## Lab: Conditionals

  * Overview:

     - Conditional Statements in Python lab

  * Approximate time: 
    - 10 mins

  * Instructions:
    - **03-languageintro / Conditionals**




Notes:

---
## Lab: Python Control Flow - Conditionals

  * Overview:
    - Write conditionals in Python

  * Approximate time:
    - 10 mins

  * Instructions:

    - **03__pythonLanguageBasics | 3.2-conditionals.ipynb**


Notes:

---

## For loops and lists

  * For loops are designed to operate over lists

```python
 squares = [1, 4, 9, 16]
  sum = 0
  for num in squares:
    sum += num
  print sum  ## 30
```
<!-- {"left" : 0.0, "top" : 1.41, "height" : 1.94, "width" : 5.59} -->

  * Can also operate over strings

```python
 list = ['Tim', 'Mark', 'Sujee']
  if 'Sujee' in list:
    print 'Present!'
```
<!-- {"left" : 0.0, "top" : 4.91, "height" : 1.51, "width" : 8.4} -->

  * In by itself tests membership in a list


Notes:

---
## Control Flow – Loops – for and while loops

  * The following is the syntax for loops in Python


```python
# for loop
for (x in range(10)):
		print(x)
```
<!-- {"left" : 0.0, "top" : 1.39, "height" : 1.6, "width" : 6.39} -->

```python
# while loop
x = 10
while (x >= 0):
		print(x)
		x = x - 1
```
<!-- {"left" : 0.0, "top" : 3.08, "height" : 1.69, "width" : 3.83} -->

```python
# while loop with break and continue
x = 100
while (x >= 0):
		if x%17 == 0:
				print(x)
				break
		else
				x -= 1
				continue
```
<!-- {"left" : 0.0, "top" : 4.86, "height" : 2.58, "width" : 6.6} -->





Notes:

---

## Comprehensions

  * Python allows an elegant way to iterate through ranges and lists called comprehensions.

  * The example below is a list comprehension


<img src="../../assets/images/python/Comprehensions.png" style="width:60%;"/>

 ```python
>>> a_list = [1, "4", 9, "a", 0, 4]
>>> squared_ints = [e**2 
for e in a_list if "int" in str(type(e))]
>>> print(squared_ints)
[1, 81, 0, 16]
```
<!-- {"left" : 0, "top" : 5.1, "height" : 1.97, "width" : 10.25} -->

Notes:

---
## Lab: Control Loops

  * Overview: 
    - Quick intro lab to Python

  * Approximate time: 
    - 10 mins

  * Instructions:
    - **03-languageintro / control loops**


Notes:

---
## Lab: Python Control Flow - Loops

  * Overview:
    - Write loops in Python

  * Approximate time:
    - 10 mins
 
  * Instructions:

    - **03__pythonLanguageBasics | 3.3-loops.ipynb**



Notes:

---

# Functions

---

## User Functions

  * Easy to write custom user functions and extend Python.

  * Return type can by any type : scalar / object / NULL

  * If end of function is reached without explicit return, 

  * The value of last evaluated expression is returned.



```python
def function (arg1, arg2, .... ):
	statements
	return(result)  
#don't need to say return
```
<!-- {"left" : 0, "top" : 3.04, "height" : 2.33, "width" : 10.1} -->


Notes:

---

## User Functions

  * Concept of modular programming

<img src="../../assets/images/python/User-Functions.png" style="width:20%;"/>


  * Easy to write custom user functions and extend Python

  * "return" statements are optional


```python
def function (arg1, arg2, … ):
		statements
		return(result) # don't need to say return

```
<!-- {"left" : 0, "top" : 6.18, "height" : 1.13, "width" : 9.48} -->


Notes:

---
## User Function Example

```python
def my_max(x,y): 
   if (x > y) 
       return x
    else 
       return y
```
<!-- {"left" : 0, "top" : 1.41, "height" : 3, "width" : 6.47} -->

Notes:

---
## User Functions

  * Return type can be any type - scalar/complex data type or user defined object / `None`

  * If end of function is reached without explicit return, the value of last evaluated expression is returned.

```python
def my_max(x,y):
if (x > y):
  return x
else:
  return y
```
<!-- {"left" : 0, "top" : 2.82, "height" : 2.24, "width" : 6.7} -->



```python
>>> val = my_max(5,8)
>>> print(val)
8
```
<!-- {"left" : 0, "top" : 5.32, "height" : 1.68, "width" : 6.7} -->

Notes:

---

## DocStrings

  * Functions can (and should) define a docstring to help understand the inputs and outputs of the function


```python
def my_max(x,y):
'''
This function re-implements the max function
Inputs: Two numbers x, y
Outputs: The maximum of the two numbers
'''
if (x > y):
  return x
else:
  return y
```
<!-- {"left" : 0, "top" : 1.86, "height" : 3.37, "width" : 9.37} -->



```python
print(my_max.__doc__)
This function re-implements the max function
Inputs: Two numbers x, y
Outputs: The maximum of the two numbers
```
<!-- {"left" : 0, "top" : 5.46, "height" : 1.54, "width" : 9.37} -->


Notes:

---

## Lambda

  * "Lambda Function" is an anonymous function.
  * Usually used as an argument to another function
  * The syntax is as follows:

```python
lambda <inputs> : <output>
```
<!-- {"left" : 0, "top" : 2.34, "height" : 0.77, "width" : 7.29} -->

  * Many functions require other functions as parameters. For example, sorting a list of tuples by the second element in the tuple


```python
>>> people = [(2, "Sara"), (1, "Bob"), (3, "Mary")]
>>> people.sort()
>>> print(people)
[(1, 'Bob'), (2, 'Sara'), (3, 'Mary')]
>>> people.sort(key = lambda x: x[1])
>>> print(people)
[(1, 'Bob'), (3, 'Mary'), (2, 'Sara')]
```
<!-- {"left" : 0, "top" : 4.74, "height" : 2.35, "width" : 10.25} -->


Notes:

---
## Map


  * Performs an operation on any list type for each element
  * The syntax is as follows:


```python
map(<function>, <sequence>)
```
<!-- {"left" : 0, "top" : 1.86, "height" : 0.78, "width" : 7.57} -->

  * Example:


```python
>>> a = [1, 2, 3, 4, 5]
>>> a_square = list(map(lambda x : x*x, a))
>>> print(a_square)
[1, 4, 9, 16, 25]
```
<!-- {"left" : 0, "top" : 3.43, "height" : 1.72, "width" : 10.25} -->

  * Note that map returns a map-object that is converted to a list, set, etc.



Notes:

---
## Filter

  * Performs a filter operation on any list type and returns an object, that can be converted to a sub-list

  * The syntax is as follows:

```python
filter(<function>, <sequence>)
```
<!-- {"left" : 0, "top" : 2.34, "height" : 0.76, "width" : 8.06} -->


  * Example:


```python
>>> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
>>> a_even = list(filter(lambda x : x%2==0, a))
>>> a_odd = list(filter(lambda x : x%2!=0, a))
>>> print(a_even)
[1, 4, 9, 16, 25]
>>> print(a_odd)
[1, 4, 9, 16, 25]
```
<!-- {"left" : 0, "top" : 3.78, "height" : 2.53, "width" : 10.25} -->

Notes:

---
## Reduce


* Performs a reduce operation on any list type. It continually applies a function to the input sequence and returns a single result.


<img src="../../assets/images/python/Reduce.png" style="width:30%;"/>


* Example: One line statement to find the maximum number from a sequence

```python
from functools import reduce
reduce(lambda a,b: a if (a>b) else b, [47,11,42,102,13])
102
```
<!-- {"left" : 0, "top" : 5.09, "height" : 1.08, "width" : 10.25} -->

Notes:

---

## Lab: Functions

  * Overview: 
    - Quick intro lab to Python

  * Approximate time:
     - 10 mins

  * Instructions:
    - **03-languagebasics / functions**


Notes:

---

## Lab: Functions

  * Overview:
    - Write functions in Python

  * Approximate time:
    - 10 mins

  * Instructions:

    - **03__pythonLanguageBasics | 3.4-functions.ipynb**


Notes:

---
# Strings
---


## Strings

  * Class str()

  * Immutable arrays of variable length

  * All strings Unicode in Python 3

  * No separate "char" type – just single length string

  * Examples of literal strings:

    - `'single quotes'`
    - `"double quotes"`
    - `"""triple quotes"""` `# allows multi-line`
    - `b'\xea'` # binary escaped characters
    - `u'नमस्ते '` # Unicode characters
    - `r'\d\d'` # Raw string, good for regexes



Notes:

---
## Formatted strings

  * Uses C (not C++) style printf syntax


```python
text = ("Hi %s! You are the %dth 
visitor here today" % ("Mary", 56))
```
<!-- {"left" : 0, "top" : 1.42, "height" : 1.25, "width" : 10.25} -->

  * Use parenthesis for longer formatted strings (as shown above)


Notes:

---
## Formatted strings

  * Python uses C style formatting syntax – `printf(x)`
  * Python doesn't use C++ style formatting syntax – `cout << x`

 ```python
>>> text = ("Hi %s! You are 
visitor %d today" % ("Mary", 56))
>>> print(text)
'Hi Mary! You are visitor 56 today'
```
<!-- {"left" : 0, "top" : 1.99, "height" : 1.6, "width" : 10.25} -->

  * Use parenthesis for longer formatted strings (as shown above)


Notes:

---

## Referencing Strings

  * String slicing is similar to lists:

    - `'Hello'[1:3]` gives `el`         # start from 1 up to but not including 3
    - `'Hello'[1:-1]` gives `ell`       # start from 1 up to but not including last


```python
>>> text = "Hello world!"
>>> print(text)
'Hello world!'
>>> print(text[:])
'Hello world!'
>>> print(text[:5])
'Hello'
>>> print(text[6:11])
'world'
>>> print(text[6:-1])
'world'
```
<!-- {"left" : 0, "top" : 2.95, "height" : 4.14, "width" : 6.44} -->

Notes:

---
## String Methods


| Method                                    | Description                                                                                      |
|-------------------------------------------|--------------------------------------------------------------------------------------------------|
| `.lower(), .upper()`                      | Changes to lower/upper case                                                                      |
| `.strip()`                                | Removes whitespace from beginning and end.                                                       |
| `.startswith('abc'), .endswith('abc')`    | Tests whether string starts with or ends with the given string.                                  |
| `.isalpha('abc'), .isdigit(), .isspace()` | Tests if all charcatersin string are alpha/digit/whitespace                                      |
| `.find('abc')`                            | Will find index of substring `'abc'` and return index, or `-1` if not found (NOT a regex)        |
| `.replace('old','new')`                   | Will replace string with another string (NOT regex)                                              |
| `.split(',')`                             | Returns a list of strings given by delimiter (comma in this case),"a,b,c,d" => ['a','b','c','d'] |
| `.join(['a','b','c',d']`                  | Will join the list using the string itself as delimiter: ",".join(['a','b','c','d'])             |

<!-- {"left" : 0.26, "top" : 0.83, "height" : 6.11, "width" : 9.75, "columnwidth" : [4.88, 4.88]} -->

Notes:

---
## Regular Expressions


  * Python has very powerful (and fast) regex engine

```python
import re
p = re.compile(r'ab*', re.IGNORECASE)
p.match('abbb')

<_sre.SRE_Match object; span=(0, 4), match='abbb'>
```
<!-- {"left" : 0, "top" : 1.59, "height" : 1.8, "width" : 10.25} -->


```python
m = p.match('abbb').group(0)   #returns string
```
<!-- {"left" : 0, "top" : 3.66, "height" : 0.66, "width" : 10.25} -->

Notes:

---
## Regex 

  * re.match('pattern') – matches regex at beginning of sring
  * re.search('pattern') – matches regex anywhere in string
  * re.findall('pattern') – matches regex 
  * re.sub('pattern', 'replace') – does regex substtitution

Notes:

---
## Lab: String

  * Overview: 
    - Quick intro lab to Python

  * Approximate time: 
    - 10 mins

  * Instructions:
    - **03-languagebasics / strings**



Notes:

---

## Lab: Strings

  * Overview:
    - Play with strings in Python

  * Approximate time:
    - 10 mins

  * Instructions:

    - **03__pythonLanguageBasics | 3.5-strings.ipynb**

Notes:

---

# Exceptions

---
# Files and Exception Handling
---

## Files


  * Syntax to open a file – txt

```python
filename = "../data/files/file.txt"
with open(filename, 'r') as myfile:
		for line in myfile:
				print(line)
```
<!-- {"left" : 0, "top" : 1.53, "height" : 1.96, "width" : 9.74} -->


  * Syntax to open a file – csv


```python
filename = "../data/files/file.csv"
with open(filename) as myfile:
		myfilereader = csv.reader
(myfile, delimiter=',')
				for row in myfilereader:
						print(' '.join(row))
```
<!-- {"left" : 0, "top" : 4.33, "height" : 1.62, "width" : 10.25} -->


Notes:

---
## Python Exceptions

  * Python can throw exceptions.

  * We should catch Exceptions


```python
try:
    f = open(filename, 'rU')
    text = f.read()
    f.close()
  except IOError:
    ## If exception, comes here.
    sys.stderr.write('problem reading:' + filename)

 ## In any case, the code then continues with the 
line after the try/except
```
<!-- {"left" : 0, "top" : 1.96, "height" : 3.34, "width" : 10.25} -->

Notes:

---
## Python Exception Handling

  * Python can throw exceptions


```python
try:
		with open(filename, 'r') as myfile:
        for line in myfile:
            print(line)
except IOError:
		sys.stderr.write('problem reading:' + filename)

```
<!-- {"left" : 0, "top" : 1.55, "height" : 1.92, "width" : 10.25} -->


  * Exception handling helps in attempts to open non-existent files, corrupt files etc

```python
try:
		with open(filename, 'r') as myfile:
        for line in myfile:
            print(line)
except:
    print("Sorry! The file either doesn't exist or is corrupt!")
```
<!-- {"left" : 0, "top" : 5.7, "height" : 1.68, "width" : 10.25} -->

Notes:

---

## Lab: Files

  * Overview:
    - Play with files in Python

  * Approximate time:
    - 10 mins

  * Instructions:

    - **03__pythonLanguageBasics | 3.6-files.ipynb**


Notes:

---
# Multithreaded Programming

---

## Multithreaded programming

  * Python supports multithreaded programming

  * Works very similar to Java (identical interface)
  
  * The `threading` class is used



<img src="../../assets/images/python/Multithreaded2.png" style="width:33%;"/> <img src="../../assets/images/python/Multithreaded1.png" style="width:29.6%;"/>


Notes:

---

## Threads

  * Python supports multithreaded programming
  * Works very similar to Java (identical interface)

```python
import threading

def dowork():
   # Do something

threading.Thread(target=dowork).start()
```
<!-- {"left" : 0, "top" : 2.09, "height" : 2.42, "width" : 9.48} -->



  * Can also inherit from Thread class


```python
class MyThread(threading.Thread);
   def run(self):  #override this
      #Do Something
```
<!-- {"left" : 0, "top" : 5.7, "height" : 1.45, "width" : 8.49} -->

Notes:

---
## Thread Safety

* Immutability is very nice when we have threads!

* tuple/frozenset are a thread-safe collection type.

* Strings and numerics (ints, floats) are thread-safe.

* Otherwise, we need to use lock, semaphore, etc.



```python
class MyThread(threading.Thread):
   l = threading.Lock()
   def run(self):
      with l: # auto acquires/closes the lock.
         #Do Something while locking
      # Do something else after lock
```
<!-- {"left" : 0, "top" : 3.14, "height" : 2.26, "width" : 10.25} -->


Notes:

---

# Multithreaded programming

---

## Events / Callbacks

  * Event handling is multiple threads of another type
  * Code in event handlers will be run on different thread
  * Need to keep thread safety in mind in callbacks.
  * Python provides the signal class to handle messaging.


<img src="../../assets/images/python/Callbacks.png" style="width:50%;"/>


Notes:




