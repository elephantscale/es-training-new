 NiFi Expression Language

---

## Introduction

* A flowfile consists of two main sections
  * The data or content of the file
  * The meta-data or attributes of the flowfile
* Attributes are key-value pairs
  * For example: file name or directory path of the file
* The expression languages allows users to:
  * Reference the attributes
  * Manipulate attribute values
  * Compare attribute values to other values

---

## Structure of a NiFi Expression

* Expressions are always enclosed in the delimiters ${ and }
* The most basic form of an expression is just an attribute name. 
* For example, the expression below will return the value of the filename attribute.
  
```bash
    ${filename}
```
* This value can be manipulated with various functions.
* For example, the file name can be converted to uppercase like this:

```bash
    ${filename:toUpper()}
```
* In this example, the ":" is the function call delimiter.

---

## Escaping Special Characters

* Multiple function calls can be chained together
```bash
    ${filename:toUpper():equals('README.MD')}
```
* There is no limit to the number of function calls that can be chained together
* Any flowfile attribute can be referenced but if the name contains any special characters like '$*{})()...' (including whitespace) then it has to be escaped by using single or double quotes

```bash
    ${'my attribute'}
    ${"value$$7"}
```
---

## Subjectless Functions

* Some functions do not need a subject (ie. refer to an attribute)
* These are function calls that return general information
  
```bash
    ${hostname()}
```

* These can also be chained

```bash
    ${hostname():toUpper():equals('MYHOST')}
```
* Whitespace is ignored between delimiters so the following are equivalent
  
```bash
    ${hostname():toUpper():equals('MYHOST')}
    ${hostname() : toUpper() : equals('MYHOST')}
```
---

## Expression Language Hierarchy

* NiFi locates a specific property using the following process:
  1. Search FlowFile for attribute/key
  2. Search Process Group Variables for attribute/key
  3. Search File Registry file for attribute/key
  4. Search NiFi JVM Properties for attribute/key
  5. Search System Environment Variables for attribute/key

* NiFi will search for, and return, the first occurrence of a matching property. 
* If no matching property is found, null is returned.

---



