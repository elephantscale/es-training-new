# Python C Extensions

---

## Why an Extension?

  * Pure Python code is interpreted and not very fast
  * Most of the time, this doesn't really matter.
  * However, sometimes we need to write code that is performance sensitive 
    - Highly Iterative
    - Lots of Number Crunching
  * Another reason is that we need to reference an external library that is (or can talk to) C/C++ 

---

## Extensions
  * Extensions are very normal in Python
  * Most commonly used packages have some extension code
    - NumPy, Pandas, etc
  * C/C++ code is by far the most common
  * Fortran still used in some scientific programming contexts


---


## Building Extensions with `distutils`

 * `distutils` is a python package for building python modules
 * Python mechanism for building a package 
 * Most `pip` installable packages are built with this standard

---


## Source vs Binary Packages

  * Source Packages include the source files 
    - Example: `.c` and `.h` files
  * Requires users to have C Compiler
    - Linux: `sudo apt install build-essential`
    - Mac: Install XCode
    - Windows: Need Visual C++ Installed
  * Binary Packages
    - Prebuilt for Users CPU / OS
    - example: `win-amd64`,


---


## Prerequisites
  * You will need to have *developer* versions of python installed
    - Ubuntu: `sudo apt install python3-dev`
    - Mac: `brew install python3-dev`
  * Anaconda: Already has python-dev installed

---


## Header file

 * The header file required is simply the following:

```c
#include <Python.h>
```
<!-- {"left" : 0, "top" : 1.53, "height" : 0.5, "width" : 3.49} -->


 * That should be sufficient 


---

## PyObject

 * C references python objects using `PyObject*`
   - Notice this is a pointer (reference)! 
 * *ALL* Python functions **must** return `PyObject`
   - Notice this is *not* a pointer but the actual object

```c
static PyObject *MyFunction( PyObject *self, PyObject *args);
```
<!-- {"left" : 0, "top" : 3.15, "height" : 0.53, "width" : 10.25} -->


---

## Function Definitions

  * C functions must contain the following:
    - must be defined as **static**
    - must be defined as type `*PyObject` (pointer to type PyObject)
    - must contain a pointer reference to itself (usually `PyObject *self`)
    - must **return**  type `*PyObject` (no `void` functions)
    - usually contain arguments  (but not necessarily)
 * Example:

   - `static PyObject *MyFunction( PyObject *self, PyObject *args);`


---


## Types of Function Definitions

  * There are only 4 types of function definitions
  * Function With No Arguments
    - `static PyObject *MyFunction( PyObject *self);`
  * Function with Exactly One Argument
    - `static PyObject *MyFunction( PyObject *self, PyObject *arg);`
    - `arg` here represents a pointer to PyObject with exactly one argument 
  * Function With Positional Arguments
    - `static PyObject *MyFunction( PyObject *self, PyObject *args);`
    - Allows a variable number of arguments
    - `args` here represents a pointer to PyObject with multiple arguments 
  * Function With Keyword Arguments and Positional Arguments
    - `static PyObject *MyFunction( PyObject *self, PyObject *args, PyObject *kwargs);`
    - This allows both Positional arguments and keyword arguments



---

## Sample Code

```c

#include <Python.h>

// Function 1: A simple 'hello world' function
static PyObject* helloworld(PyObject* self, PyObject* args)
{
    printf("Hello World\n");
    return Py_None;
}

// Our Module's Function Definition struct
// We require this `NULL` to signal the end of our method
// definition
static PyMethodDef myMethods[] = {
    { "helloworld", helloworld, METH_NOARGS, "Prints Hello World" },
    { NULL, NULL, 0, NULL }
};
```
<!-- {"left" : 0, "top" : 1.46, "height" : 4.18, "width" : 10.25} -->

---

## Sample Code

```c
// Our Module Definition struct
static struct PyModuleDef myModule = {
    PyModuleDef_HEAD_INIT,
    "myModule",
    "Test Module",
    -1,
    myMethods
};

// Initializes our module using our above struct
PyMODINIT_FUNC PyInit_myModule(void)
{
    return PyModule_Create(&myModule);
}


```
<!-- {"left" : 0, "top" : 1.44, "height" : 4.36, "width" : 8.78} -->

---

## Performing the Build
  * You need a `setup.py` file
  * This is kind of like the "Makefile" of Python
  * Example:

```python
from distutils.core import setup, Extension
setup(name = 'myModule', version = '1.0',  \
   ext_modules = [Extension('myModule', ['test.c'])])
```
<!-- {"left" : 0, "top" : 2.75, "height" : 1.23, "width" : 10.25} -->

---

# Cython
---

## About Cython

 * Cython is a generator of Python code to C code
 * The generator produces code that can be easily extended with vanilla C code
 * Cython is technically a *superset* of Python

---

## Coding Cython

 * You need to generate a `.pyx` file
 * This indicates the code is Cython and not Python
 * You then will be able to convert the code to a *generated* .c file
 * The generated .c file will be then compiled as any other C program

---

## Setup.py file

  * We need to set up a `setup.py` file similar to this:
  * Remember that `setup.py` is like the Makefile of python

```python
from distutils.core import setup
from Cython.Build import cythonize

setup(name='Hello world app',
      ext_modules=cythonize("hello.pyx"))
```
<!-- {"left" : 0, "top" : 2.31, "height" : 1.86, "width" : 8.15} -->

---

## An example code 

 * We can create a `hello_cython.pyx` file as follows:

```python
def hello_cython(name):
  print("Hello to %s from Cython!" % name)
```
<!-- {"left" : 0, "top" : 1.71, "height" : 0.86, "width" : 7.78} -->

<br/>

 * Then we can create the setup.py file:

```python
from distutils.core import setup
from Cython.Build import cythonize

setup(name='Hello world app',
      ext_modules=cythonize("hello.pyx"))
```
<!-- {"left" : 0, "top" : 3.95, "height" : 1.74, "width" : 7.61} -->

---

## Build and run
 * We can build as follows:

```bash
python setup.py build_ext --inplace
```
<!-- {"left" : 0, "top" : 1.94, "height" : 0.6, "width" : 7.01} -->

<br/>

* And then import and run the module from python:

```python
>>> from hello_cython import hello_cython
>>> hello_cython("Tim")
Hello to Tim from Cython!
```

<!-- {"left" : 0, "top" : 3.56, "height" : 1.15, "width" : 7.61} -->
