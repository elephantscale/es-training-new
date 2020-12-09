# Python: Selenium

---

## Lesson Objectives

  * Introduction to Selenium

  * Installing Selenium

Notes:

---

## Introduction to Selenium

  * Selenium is an automation software for browsers commonly used for testing.
   
  * Allows you to automated and test web applications, websites, and other browser


Notes:

---

## Why Selenium

  * **Key advantage**  - Provides a very user friendly API to automate browser tasks
  * Python provides a no-fuss easy API for controlling selenium.

Notes:

---


# Installation
---

##  Installing Selenium

  * 3 steps:
    - Install browser plugins on selected browser of choice
    - Install Java selenium server (if you want to run non-locally)
    - Install Python package `pip install selenium`


---

# Example

---

##  Selenium Example

```python
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

driver = webdriver.Firefox()
driver.get("http://www.python.org")
assert "Python" in driver.title
elem = driver.find_element_by_name("q")
elem.clear()
elem.send_keys("pycon")
elem.send_keys(Keys.RETURN)
assert "No results found." not in driver.page_source
driver.close()
```

---

## Writing a Unit Test

```python
import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

class PythonOrgSearch(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Firefox()

    def test_search_in_python_org(self):
        driver = self.driver
        driver.get("http://www.python.org")
        self.assertIn("Python", driver.title)
        elem = driver.find_element_by_name("q")
        elem.send_keys("pycon")
        elem.send_keys(Keys.RETURN)
        assert "No results found." not in driver.page_source
```

---

## Writing a Unit Test

```python
    def tearDown(self):
        self.driver.close()

if __name__ == "__main__":
    unittest.main()
``` 


---

## Running Headless

 * You may not want to run the browser GUI
 * Headless mode allows you to avoid that
 * Good for testing on servers or in cloud where there is no GUI

