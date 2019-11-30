
# Python Testing

---

## Lesson Objectives

* Being familiar with different testing platforms and IDEs
* Running a few simple test to see real application


Notes:  

---

# Test approaches

---

## Automated vs. Manual Testing

* Manual testing = exploratory testing
* There is no plan
* In automated testing we have a plan for test regarding"
  - Parts of the application
  - The order
  - The expected response
* Script instead of a human

Notes:

---

## Unit test vs. integration test

* Integration test: checks if the components in the application work with each other or not
* Unit test: checks a small component in the application
* It's possible to write either unit or integration tests in Python
* Example:

```python
assert sum([1,2,3]) == 6 "Error: Must be 6"
```
* Checks if the built-in function `sum` works properly

Notes:

---

## A failed example

* If everything is OK nothing comes up
* In case of any problem with the code we get an error


<img src="../../assets/images/python/assertion_error.png" style="max-width:70%;"/>

Notes:

---

## Test Python file

* Putting the test into a Python file:

```python
def testing_sum():
    assert sum([8, 5, 7]) == 20, "Should be 20"

if __name__ == "__main__":
    testing_sum()
    print("Everything is OK")
```
* To execute the Python file:

```bash
$ python testing_sum.py
Everythin is OK
```

Notes:

---

# Different kinds of test runners

---

## Why test runner

* Consider the following file: `test_sum_tuple.py`

```python
def testing_sum():
    assert sum([1, 2]) == 3, "Should be 3"

def testing_sum_tuple():
    assert sum((1, 1)) == 3, "Should be 3"

if __name__ == "__main__":
    testing_sum()
    testing_sum_tuple()
    print("Everything is OK")
```

Notes:

---

## Why test runner (contd)

* The output:

```bash
$ python test_sum_tuple.py
Traceback (most recent call last):
  File "test_sum_tuple.py", line 9, in <module>
    testing_sum_tuple()
  File "test_sum_tuple.py", line 5, in testing_sum_tuple
    assert sum((1, 1)) == 3, "Should be 3"
AssertionError: Should be 3
```
* Here we have just one mistake. What if we have more than one mistake? Answer is test runner

Notes:

---

## Choosing a test runner

* The most common test runners are:
  - `unittest`
  - `nose` or `nose2`
  - `pytest`

Notes:

---

## Enabling test runners

* For `unittest`:

```python
"python.unitTest.unittestEnabled": true,
"python.unitTest.pyTestEnabled": false,
"python.unitTest.nosetestsEnabled": false,
```

* For `pytest`:

```python
"python.unitTest.unittestEnabled": false,
"python.unitTest.pyTestEnabled": true,
"python.unitTest.nosetestsEnabled": false,
```

* For `nose`:

```python
"python.unitTest.unittestEnabled": false,
"python.unitTest.pyTestEnabled": false,
"python.unitTest.nosetestsEnabled": true,
```

---

## unittest

* Built into the Python standard library
* Contains either a testing framework and a test runner
* Requires that:
  - Putting the test into classes as methods
  - Using a series of special assertion methods in the `unittest.TestCase` class instead of the built-in `assert` statement

Notes:

---

## Converting previous example to unittest

* Import `unittest`
   - `import unittest`
* Create a class called `TestSum`
* Convert the test functions into methods by adding `self` as the first argument
* Change the assertions to use the `self.assertEqual()` method on the `TestCase` class
* Change the command-line entry point to call `unittest.main()`

Notes:

---

## Example

* FileName = `test_sum_unittest.py`

```python
import unittest


class TestingSum(unittest.TestCase):

    def testing_sum(self):
        self.assertEqual(sum([1, 2]), 3, "Should be 3")

    def testing_sum_tuple(self):
        self.assertEqual(sum((1, 1)), 3, "Should be 3")

if __name__ == '__main__':
    unittest.main()
```

Notes:

---

## The output

<img src="../../assets/images/python/unit_tuple.png" style="width:60%;"/>


Notes:

---

## nose

* Is compatible with tests created by `unittest`
* As a drop-in replacement for `unittest`
* `nose2` is recommended 

Notes:

---

## How to run?

* Install `nose2` from PyPI
  - `pip install nose2`
* Execute it on the command line
  - `python -m nose2`
* Discovers test scripts like `test*.py` and test cases inheriting from `unittest.TestCase` in the current directory

Notes:

---

## Example

* Input:

```bash
$ pip install nose2
$ python -m nose2
```

* Output:

<img src="../../assets/images/python/nose.png" style="max-width:70%;"/>

Notes:

---

## Pytest

* Supports execution of `unittest` test cases
* Advantage of `pytest` is writing `pytest` test cases
* These are some functions in a Python file starting with `test_` in their names
* Other characteristics:
  - Support for the built-in `assert` statement instead of using special `self.assert*()` methods
  - Support for filtering for test cases
  - Ability to rerun from the last failing test
  - An ecosystem of hundreds of plugins to extend the functionality

Notes:

---

## Example

* Writing a `TestSum` test case for `pytest` looks like:

```python
def testing_sum():
    assert sum([1, 2]) == 3, "Should be 3"

def testing_sum_tuple():
    assert sum((1, 1)) == 3, "Should be 3"
```

Notes:

---

# PyCharm IDE
---

## A simple project

* Let's create a simple project in python and run unittest on it

Notes:

---

## Creating a Python project

* Choose `File > New Project` and set the path and the name of the project

<img src="../../assets/images/python/create_pro.png" style="max-width:70%;"/>

* Then right click on the left panel and choose `new` and then `Python File`
* Name the file `Solver`

Notes:

---

## Code

* The following code creates a simple script which solves a quadratic equation.

```python

import math
 
class Solver:
 
     def demo(self, a, b, c):
            d = b ** 2 - 4 * a * c
            if d >= 0:
            disc = math.sqrt(d)
            root1 = (-b + disc) / (2 * a)
            root2 = (-b - disc) / (2 * a)
            print(root1, root2)
            else:
                 raise Exception
 Solver().demo(2,1,0)

```

Notes:

---

## Creating the test

* Click on `Solver` and press `Ctrl+Shift+T` and click on `Create New Test` 
* Check the `test_demo` and click on `OK`

<img src="../../assets/images/python/test_pycharm.png" style="max-width:70%;"/>


Notes:

---

## Changing the script

* We need to add an import:

<img src="../../assets/images/python/solver.png" style="max-width:70%;"/>


Notes:

---

## Creating a test method

* The final code on the screen would be

```python
from unittest import TestCase
 
from Solver import Solver
 
class TestSolver(TestCase):
 
    def test_negative_discr(self):
 
        s = Solver()
 
        self.assertRaises(Exception,s.demo,2,1,2)
 
    def test_demo(self):
 
        self.fail()
```

Notes:

---

## Running the test

* Just press `Ctrl+Shift+F10` to run the test

<img src="../../assets/images/python/3rd-party/result.png" style="max-width:70%;"/>

Notes:

---

# Visual Studio Code IDE

---

## Test discovery

* Uses currently enabled testing framework
* It can be triggered at any time 
* By default `python.unitTest.autoTestDiscoverOnSaveEnabled` is `true`
* `python.unitTest.unittestArgs` Searches for python test files with `test` included in their names in root folder
* `python.unitTest.pyTestArgs` Searches for the same files with `test_` in the beginning or `_test` at the end of the file name

Notes:

---

## CodeLens adornment

* After recognizing test files, some items appear in the window
* You can easily click on them to run the test
* If discovery fails a notification shows up

<img src="../../assets/images/python/3rd-party/codelens.png" style="max-width:70%;"/>


Notes:

---

## Running test

* There are four ways:
  - By opening test file and using `CodeLens` 
  - By selecting `Run Tests` on the status bar (which can change appearance based on results). Then selecting one of the commands like `Run All Unit Tests` or `Run Failed Unit Tests`
  - By right-clicking a file in Explorer and select `Run All Unit Tests`
  - By selecting any of the run unit test commands in the `Command Palette`. (Ctrl+Shift+P)

Notes:

