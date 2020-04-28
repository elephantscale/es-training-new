# Python Intro
---

## Lesson Objectives

  * Get a brief introduction to Python, it’s history, differences
    from other languages and use cases
  * Install Python
  * Learn about Python Integrated Development Environments (IDEs)
  * Learn, Install and Use Jupyter Notebooks

---

There are many Python books, here are some that we recommend

* [Introducing Python: Modern Computing in Simple Packages 2nd Edition](https://www.amazon.com/Introducing-Python-Modern-Computing-Packages/dp/1492051365/ref=redir_mobile_desktop?ie=UTF8&aaxitk=UTnB2uOmm2k0KdP7Qh.a0Q&hsa_cr_id=1275498690801&ref_=sb_s_sparkle)
* [Python Pocket Reference: Python In Your Pocket (Pocket Reference (O'Reilly)) Fifth Edition](https://www.amazon.com/Python-Pocket-Reference-Your-OReilly/dp/1449357016/ref=redir_mobile_desktop?ie=UTF8&aaxitk=6ISCj8jS3Qx-fnlizPfhBA&hsa_cr_id=1275498690801&ref_=sb_s_sparkle)
* [Learn Python 3 the Hard Way: A Very Simple Introduction to the Terrifyingly Beautiful World of Computers and Code (Zed Shaw's Hard Way Series)](https://www.amazon.com/Learn-Python-Hard-Way-Introduction-ebook/dp/B07378P8W6/ref=sr_1_3?crid=3Q8YB2LHWLXM1&dchild=1&keywords=learning+python+the+hard+way&qid=1588090877&sprefix=learning+python%2Caps%2C193&sr=8-3)

# Introduction
---

## About Python

  * Python is a general-purpose, object-oriented, dynamic programming language
  * Python is also **language & environment** for data science computing
    and graphics
  * Open source
  * Rich ecosystem (lots of libraries)
  * Great for modeling, machine learning, ad-hoc analytics
  * Used by app developers, web developers, but also popular among scientists
    and now data scientists
  * Python Website - https://www.python.org/


Notes:

* [Python Website](https://www.python.org/)

---

## Why Python

  * Comprehensive

    - Pretty much any development can be done in Python

  * State-of-the-art graphics capabilities

    - Because picture IS worth a thousands words

  * Designed for interactive analysis

    - Most analysis is done this way
    - No time consuming  edit / compile / run cycle
    - Can support scripting too

  * Open source

    - Commercial packages costs thousands

---

## Why Python

  * Python can import from variety of formats (csv, excel, db, …)

  * Python is extensible

    - Thousands of libraries in PyPI (open source)

  * Python usually gets ‘bleeding edge’ routines before other commercial packages!!

    - Power of open source

  * Free IDEs (Spyder, Pycharm) are available

    - Easy to use / program

  * Runs on multiple platforms (Mac, Windows, Linux)


Notes:

---

## The Zen of Python

  * Beautiful is better than ugly.
  * Explicit is better than implicit.
  * Simple is better than complex.
  * Complex is better than complicated.
  * Flat is better than nested.
  * Sparse is better than dense.
  * Readability counts.
  * Special cases aren't special enough to break the rules.
  * Although practicality beats purity.
  * Errors should never pass silently.
  * Unless explicitly silenced.
  * In the face of ambiguity, refuse the temptation to guess.

Notes:

Source: https://www.python.org/dev/peps/pep-0020/

* Long time Pythoneer Tim Peters succinctly channels the BDFL's guiding principles for Python's design into 20 aphorisms, only 19 of which have been written down.

---

## The Zen of Python

  * There should be one -- and preferably only one -- obvious way to do it.
  * Although that way may not be obvious at first unless you're Dutch.
  * Now is better than never.
  * Although never is often better than *right* now.
  * If the implementation is hard to explain, it's a bad idea.
  * If the implementation is easy to explain, it may be a good idea.
  * Namespaces are one honking great idea -- let's do more of those!

Notes:

Source: https://www.python.org/dev/peps/pep-0020/

---

## Python History

  * Created By Guido Von Rossom in 1991

  * Designed as an alternative to ”scripting languages” like Perl

    - Fully OOP (Object Oriented Programming)

  * Dynamically Typed Language

    - “Duck Typing” – if it walks like a duck..
    - Automatic type conversion

  * JIT (Just in Time)

    - Code compiles and runs in real time
    - No compile – package – deploy – cycle

  * REPL Shell

    - Real time shell for analysis.
    - Read-Evaluate-Print-Loop Shell

Notes:

The language was called Python because of Guido’s fascination with the Monty Python TV show. Python’s association with snakes gave rise to snake-like names, such as Anaconda.

Study source on [Python](https://en.wikipedia.org/wiki/Python_(programming_language))
---

## Python Versions

  * Python v1.x: Not used, (1994-2000)

  * Python v.2.x: Still Used! (2000-2007+)

    - Still some older libraries are Python 2.x only
    - Lots of older legacy code
    - Most new features back-ported into Python 2.x

  * Python x.3.x: Current Version(2007-Present)

    - Most new features
    - Most libraries support python 3 now


Notes:

[Python history](https://en.wikipedia.org/wiki/Python_(programming_language))
---

## Python 2 vs Python 3 Incompatibilities


|                                      | Python 2                                                             | Python 3                                                                                 |
|----------------------------------    |----------------------------------------------------------------------|------------------------------------------------------------------------------------------|
| print semantics      (important)     | Statement print x # no parenthesis                                   | Built-in function: print(x) #note parenthesis                                            |
| input vs raw_input() (important)     | input() evaluates input as code. `raw_input` returns data as `str`   | input() returns data as `str`; There is no `raw_input`.                                  |
| reduce                               | Statement                                                            | Built-in function in functools namespace                                                 |
| Annotations                          | Specified annotation only                                            | User-defined annotations                                                                 |
| Unicode                              | separate `str` (ascii) vs  `unicode` types                           | All strings are internally stored as Unicode                                             |
| Integer Division,    (important)     | `5 / 2` is `2`                                                       | `5 / 2` is `2.5` # int to float auto-conversion                                          |
|                                      |                                                                      | `5 // 2` is `2`  # note the // for integer division                                      |


<!-- {"left" : 0.25, "top" : 1.24, "height" : 5.03, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

*Latest announcement
* January 1st 2020
Python 2 End of Life Announced as January 1st 2020. After spreading the news at conferences, on the Python announcement list, and on countless blog posts and books, the Python Software Foundation has finally taken the step to formally announce Python 2 will reach end of life (EOL) on January 1st, 2020.
---

## Should you use Python 2 or Python 3?

  * You should use python 2 **only** if you have the following:

    - You inherit a large codebase of legacy python 2 code
    - You need a python package that only supports python 2
      - (These are becoming increasingly rare)
    - The community will continue to support Python 2 indefinitely
      - But new features will always show up in Python 3 first

  * Python 3 is the future (and present) of Python
    - New development done here


Notes:

---

## Python Versus R

| Python                                                         | R                                                                                       |
|----------------------------------------------------------------|---------------------------------------------------------------------------------------- |
| General Purpose Language                                       | Specialized for Statistics and Analytics                                                |
| Object-Oriented Approach                                       | Mixed Paradigm: Procedural/Functional                                                   |
| Large Package Repository: PyPI                                 | Huge Package Repository; CRAN                                                           |
| Dynamic Language                                               | Dynamic Language                                                                        |
| Uses various editors, IDEs                                     | Rstudio is highly integrated IDE for R                                                  |
| Favored by Computer Scientists                                 | Favored By Statisticians                                                                |
|Summary:  General Purpose Language now used widely in analytics |  Summary:  Specialized Language for Statistical Programming now used widely in analytics|

<!-- {"left" : 0.25, "top" : 1.24, "height" : 4.48, "width" : 9.75, "columnwidth" : [4.88, 4.88] } -->

Notes:

---

## Python Versus Java

| Python                               	| Java                                     |
|--------------------------------------	|------------------------------------------|
| Dynamically Typed Language           	| Statically Typed Language                |
| Interactive REPL Shell               	| No REPL                                  |
| Can’t build dependencies into object 	| Can build dependencies into a FAT JAR.   |
| Good for interactive analytics       	| Good for “productionizing” analytics.    |
| Relatively slow                      	| Faster (but not as fast as native code). |
| Interpreted (from bytecode)          	| Usually JIT compiled.                    |

<!-- {"left" : 0.25, "top" : 1.24, "height" : 3.5, "width" : 9.75, "columnwidth" : [4.88, 4.88] } -->

Notes:

---

## Python vs Javascript/Node

|                                   | Python                                                            | Javascript                                              |
|-----------------------------------|-------------------------------------------------------------------|---------------------------------------------------------|
| Typing                            | Dynamic                                                           | Dynamic                                                 |
| Code Execution                    | Interpreted from Bytecode                                         | V8: Interpreted from  Bytecode                          |
| Runs client-side code in  browser | No                                                                | Yes                                                     |
| Runs server side code             | Yes                                                               | Yes (using node.js)                                     |
| Standard Library                  | Extensive                                                         | Minimalistic                                            |
| Package Management                | via pip                                                           | via npm                                                 |
| Code Legibility                   | Generally good                                                    | Can be very unreadable                                  |
| Native Code                       | Usually use native code in packages                               | Not common.                                             |
| Summary                           | Good for science, data science, AI/machine learning, data munging | Good for web services and back-end for web development  |

<!-- {"left" : 0.25, "top" : 1.08, "height" : 6.42, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->

Notes:

---

## Python Popularity

  * Python Most popular language in 2018 on Stack Overflow

<img src="../../assets/images/python/3rd-party/Future-Traffic-on-Major-Programming-Languages-Stackoverflow.png" style="max-width:70%;"/><!-- {"left" : 1.91, "top" : 2.13, "height" : 5.39, "width" : 6.44} -->



Notes:

---

## A simple “Hello, world!” comparison


<img src="../../assets/images/python/3rd-party/Pythonv2.x.png" style="max-width:70%;"/><!-- {"left" : 0.95, "top" : 2.31, "height" : 5.02, "width" : 4.25} -->  &nbsp; &nbsp;  <img src="../../assets/images/python/3rd-party/c++.png" style="max-width:70%;"/><!-- {"left" : 5.59, "top" : 2.31, "height" : 5.02, "width" : 3.71} -->


Notes:

---

## Python Use Cases

  * Who uses Python?

  * Python is very commonly used in the following areas:

    - Web Programming
    - Web Scraping 	
    - Microservices
    - System Automation Tasks
    - Scientific Programming
    - Data Analysis / Data Science
    - Machine Learning/Deep Learning and AI

Notes:

---

## Is Python Interpreted?

  * Standard Python (CPython) is **byte-code** interpreted

    - This means it will first just-in-time (JIT) compile the code to bytecode. (.pyc code)
    - Then, it will interpret (rather than compile) the bytecode
    - This allows for dynamic code and environment.

  * Cython (C + Python) is **compiled** much like C/C++

    - Cython will first translate the Python code into C/C++
    - It will then combine that code with custom C/C++ code
    - It will then compile it into native code.

Notes:

---

## Is Python Fast?

  * Pure python code is fairly slow

    - Faster than purely interpreted languages (LISP, Smalltalk, shell scripts)
    - But slower than managed languages like Java, .NET
    - And much slower than pure native code like C/C++/Fortran.

  * Python does allow users to write native code

    - Python integrates with C, C++, Fortran, etc.
    - Typically performance sensitive code is written in native code (usually C/C++)
    - Cython compiler: allows you to mix C, C++ and python code

  * Native code is Fast!

  * Write Native code (C/C++) for performance sensitive parts,

    - Everything else, pure python!  Much easier

Notes:

---

## Installation


<img src="../../assets/images/python/Installing-Python.png" style="max-width:70%;"/><!-- {"left" : 2.38, "top" : 2.16, "height" : 4.75, "width" : 5.49} -->



Notes:

---

## Installing Python

  * We recommend downloading Anaconda from Continuum Analytics 
    - [https://www.anaconda.com/]

  * Download the free version of Anaconda Distribution for Windows / Mac / Linux
   at [http://www.anaconda.com/download]

  * Ensure to get the Python `3.*` version

<img src="../../assets/images/python/Installing-Python.png" style="max-width:60%;"/><!-- {"left" : 1.54, "top" : 4.89, "height" : 2.94, "width" : 3.4} --> &nbsp; &nbsp; <img src="../../assets/images/python/3rd-party/anaconda.png" style="max-width:30%;"/><!-- {"left" : 5.34, "top" : 4.89, "height" : 2.94, "width" : 3.38} -->




Notes:

---

## Why Anaconda?

  * Anaconda has hundreds of the most commonly used DS packages already built!

    - No need for C/C++ compilers
    - Good for Windows Users! (Hard to build on Windows)

  * Easy to Install Bundle

    - Platform Native bundling (MSI: Windows, DMG: Mac, etc)

  * Commercially Available Support

    - Good for Enterprise Users
    - Easy for IT Services to “Certify” entire distribution including packages

  * Separate from System Python

    - Anaconda is separate from your system python
    - So it won’t break anything else you may be doing on your machine in Python

Notes:

---

## Do I really need Anaconda?

  * No, using your system python is fine (if you have one)

  * Most Mac and Linux users already have Python

    - However, it may not be the latest version
    - On Linux, python `3.x` is often called python3

  * You may want to use ”virtualenv” to create a virtual environment for your data science work

  * You will have to download and install your own packages as-needed


Notes:

---

## Lab: Install Anaconda

  * Overview:

    - Install Anaconda for Python 3.x

  * Approximate time:

    - 10 mins

  * Instructions:

    - **01-helloworld /**


---

## Python Console

  * We can also use Python from console

  * Though Spyder is a much better interface

```python
# Type “python“ to get into the python console
$ python

# Now we are in Python Shell. Type help()
>>> help()

# Now, we are in the help prompt. Type “for“.
[help> for

# To exit from the help prompt,
[help> control + D

# To exit python, back to the Linux prompt,
>>> control + D
```
<!-- {"left" : 0, "top" : 2.18, "height" : 4.8, "width" : 10.21} -->


Notes:

---

## Lab: Python REPL Shell

  * Overview:

    - Learn Python REPL – Read Evaluate Print Loop Shell

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02__pythonIntro | 2.1-repl.md**


---

## Getting Started With Python  REPL (Lab)

```python
# prints to screen
print("hello world")

# create variables (= and = are equivalent)
a = 10
b = 3.1
c = "hello world"
```
<!-- {"left" : 0, "top" : 1.23, "height" : 2.55, "width" : 9.52} -->

* Lab: 01-helloworld/1.1-REPL.md

Notes:

---

## Running Python

  * To run Python, we can just run the from the command line.

```python
$ nano myprogram.py
#!/usr/env/python3

print(”Hello World!”)
```
<!-- {"left" : 0, "top" : 1.71, "height" : 2.08, "width" : 6.66} -->

```python
$ python myprogram.py
Hello World!
```
<!-- {"left" : 0, "top" : 4.17, "height" : 1.25, "width" : 6.66} -->

Notes:

---

## Lab: Run a Script

  * Overview:

    - Quick intro to running a script.

  * Approximate time:

    - 10 mins

  * Instructions:

    - **01-helloworld / 1.2-Script.md**

---

## Lab: Writing a Python Script

  * Overview::

    - Write a python script

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02__pythonIntro | 2.2-script.md**
    - **02__pythonIntro | helloworld.py**


---

# IDEs
---

## IDEs

  * Python Has Many IDEs

  * We will discuss some common ones:

    - Spyder
    - PyCharm
    - PyDev
    - Visual Studio Code
    - Sublime Text / Other Text Editors.

Notes:

---

## Spyder

  * Rstudio-like IDE for data science and scientific programming

  * Lightweight

  * Included with Anaconda

  * Website - https://github.com/spyder-ide/spyder


<img src="../../assets/images/python/3rd-party/Spyder.png" style="width:50%;"/><!-- {"left" : 1.94, "top" : 3.7, "height" : 4, "width" : 6.36} -->


Notes:

---

## Pycharm

  * There are many other IDEs:

  * Example: PyCharm from JetBrains

  * Pretty Heavyweight


<img src="../../assets/images/python/3rd-party/Pycharm.png" style="width:50%;"/><!-- {"left" : 0.9, "top" : 3.08, "height" : 4.43, "width" : 8.44} -->


Notes:

---

## PyDev / Eclipse

* PyDev is an extension to eclipse

* Website - http://www.pydev.org/


<img src="../../assets/images/python/3rd-party/PyDev.png" style="width:50%;"/><!-- {"left" : 1.08, "top" : 2.54, "height" : 4.56, "width" : 8.08} -->



Notes:

---

## PyDev / Eclipse

  * PyDev is an extension to eclipse

Notes:

---

## Visual Studio Code

  * For all the Microsoft Fans out there:

  * Surprisingly lightweight, but fully-featured IDE!

  * Website - https://code.visualstudio.com/


<img src="../../assets/images/python/3rd-party/Visual-Studio-Code.png" style="width:50%;"/><!-- {"left" : 2.07, "top" : 3, "height" : 4.36, "width" : 6.11} -->


Notes:

---

## Other options

  * Some just like text editors

    - Vi(m)
    - Sublime Text

  * Advantages:

    - Lightweight and agile
    - Fast

  * Limited interactive debugging / breakpoints

Notes:

---

## Lab: Introducing Spyder

  * Overview:

    - Quick intro lab to Spyder IDE


  * Approximate time:

    - 10 mins

  * Instructions:

    - **01-helloworld / 1.3-Spyder.md**

---
## Lab: Introducing Spyder

  * Overview:

    - Introduction to Spyder IDE

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02__pythonIntro | 2.3-spyder.md**

---

# Jupyter Notebook

---

## Jupyter Notebooks

  * Jupyter notebooks are a great way to showcase working python code.

  * Jupyter Notebooks allow us to combine:

    - Text
    - HTML / Images
    - Visualizations
    - Runnable Python Code

  * Document Centric View

  * We do Jupyter notebooks in this class!

  * NOT an IDE.

    - Good for exploratory data analysis
    - Showcasing code

Notes:

---
## Jupyter Notebooks

  * Example:

<img src="../../assets/images/python/3rd-party/Jupyter.png" style="width:50%;"/><!-- {"left" : 0.5, "top" : 2.08, "height" : 5.49, "width" : 9.25} -->




Notes:

---
## Jupyter Notebook Installation

  * Project Jupyter Website -
https://jupyter.org/

  * Installation recommended
    using Anaconda,
    but Jupyter can be installed
    individually too -
    https://jupyter.org/install


<img src="../../assets/images/python/3rd-party/Jupyter-Notebook-Installation.png" style="width:40%;"/><!-- {"left" : 2.45, "top" : 2.93, "height" : 5.08, "width" : 5.34} -->


Notes:

---

## Using Jupyter Notebooks

  * Go to directory and type jupyter notebook

  * The Jupyter notebook by default starts at http://localhost:8888

```python
$ cd /path/to/my/notebooks

$ jupyter notebook

[I 22:28:59.637 NotebookApp] The Jupyter Notebook is
running at: http://localhost:8888/?token=YOURTOKEN

[I 22:28:59.637 NotebookApp] Use Control-C to
stop this server and shut down all kernels
(twice to skip confirmation).

[C 22:28:59.639 NotebookApp]    Copy/paste this URL into
your browser when you connect for the first time,   
to login with a token:        
http://localhost:8888/?token=YOURTOKEN
```
<!-- {"left" : 0, "top" : 2.34, "height" : 4.15, "width" : 10.25} -->

Notes:

---

## Browser for Jupyter Notebook


<img src="../../assets/images/python/3rd-party/Browser-for-Jupyter-Notebook.png" style="width:50%;"/><!-- {"left" : 0.71, "top" : 1.74, "height" : 6.17, "width" : 8.83} -->


Notes:

---

## Lab: Running Jupyter

  * Overview:

    - Run Jupyter Notebook

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02-notebooks / 2.1-install-jupyter.md**

---

## Lab: Introducing Notebooks

  * Overview:

    - Quick intro lab to Jupyter Notebook

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02-notebooks / 2.2-LearningNotebooks.ipynb**

---
## Lab: Introducing Jupyter Notebook


  * Overview:

    - Introduction to Jupyter Notebook

  * Approximate time:

    - 10 mins

  * Instructions:

    - **02__pythonIntro | 2.4-startingJupyter.md**

    - **02__pythonIntro | learningJupyter.ipynb**


