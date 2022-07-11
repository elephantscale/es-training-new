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

## Expression Language in the Application

![](../images/expr1.png)

* Expressions are often usd for configuring Processor properties. 
  * Not all Processor properties support the Expressions 
* When configuring a component property, the UI provides an Information icon next to the name of the Property. Hovering over this icon with the mouse will provide a tooltip that provides helpful information about the Property. 
  

---

## Expression Language Editor

* When configuring the value of a Processor property, UI provides help with the Expression Language using the Expression Language editor
* Once an Expression is begin by typing ${, the editor begins to highlight parentheses and braces so that the user is easily able to tell which opening parenthesis or brace matches which closing parenthesis or brace.
* The editor also supplies context-sensitive help by providing a list of all functions that can be used at the current cursor position. 
* To activate this feature, press Ctrl+Space on the keyboard. 
* The user is also able to type part of a function name and then press Ctrl+Space to see all functions that can be used that start with the same prefix. 

---

## Expression Language Editor

![](../images/expr2.png)

---

## Functions

* Each function takes zero or more arguments and returns a single value. 
* These functions can then be chained together to create powerful Expressions to evaluate conditions and manipulate values. 
* Data types:  Each argument to a function and each value returned from a function has a specific data type. 
* The Expression Language supports five different data types:
  * String: A sequence of numbers, letters, white space, and special characters.
  * Number: A integer number comprised of one or more digits (0 through 9). 
  * Decimal: A double-precision 64-bit IEEE 754 floating point number
  * Date: A Date is an object that holds a Date and Time. 
  * Boolean: Onene of either true or false.
   
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

## Subjectless Functions

* _ip_ Returns the IP address of the machine as a string
* _hostname_ Returns the Hostname of the machine as a string
* _UUID_ Returns a randomly generated type 4 UUID.
  
```bash
     ${ip():equals('192.168.1.123')} 
     ${hostname():equals('zorgo')} 
     ${UUID()} -> produces output like: "de305d54-75b4-431b-adb2-eb6b9e546013"
```
* _literal_ Returns its argument as a literal String value.
* _nextInt_ Returns a one-up value (starting at 0) and increasing over the lifetime of the running instance of NiFi. 
  * This value is not persisted across restarts and is not guaranteed to be unique across a cluster.

```bash
    ${literal(2):gt(1)}  returns a true
    if the previous value of nextInt was 6 then
    ${nextInt()} gives the value 7 
```
* Other subjectless functions are thread and getStateValue.
  
---

## Type Coercion  

* After evaluating expression language functions, all attributes are stored as type String.
* The Expression Language is generally able to automatically coerce a value of one data type to the appropriate data type for a function. 
* Type coercion operators can be used to force coercion
* _toString_ converts the subject into a string
* _toNumber_ converts the subject into a number
* _toDecimal_ converts the subject into a decimal number

```bash
    ${fileSize:toNumber():toString()} converts the value of "fileSize" attribute 
                                      to a number and back to a String.
    ${fileSize:toDecimal()} converts the attribute value of "fileSize" to a decimal.
```
---

## Boolean Logic

* Used to compare an attribute value against some other value. 
  * Often used to configure how a Processor should route data. 
* _isNull_  returns true if the subject is null, false otherwise. This is typically used to determine if an attribute exists. "notNull" is the converse
  
```bash
    ${filename:isNull()}    returns true if the "filename" attribute does not exist
                            returns false if the attribute exists.
    {filename:notNull()}    returns true if the "filename" attribute exists. 
```
* _isEmpty_ returns true if the Subject is null, does not contain any characters or contains only white-space (new line, carriage return, space, tab), false otherwise

```bash
    ${literal(" "):isEmpty()} returns true
    ${literal(""):isEmpty()}  also returns true
```
* _equals_ determines if its subject is equal to another String value. _equalsIgnoreCase_ ignores case

```bash
    ${filename:equals('hello.txt')}   true if filename is 'hello.txt'
    ${filename:equalsIgnoreCase('hello.txt')} also true if filename is 'HELLO.txt'
```

---

## Boolean Comparison

* _gt ge lt le_ inequality comparison operators

```bash
    ${fileSize:gt( 1024 )} true if the size of the FlowFile’s content > 1024 bytes. 
    ${fileSize:ge( 1024 )} true if the size of the FlowFile’s content >= 1024 bytes.
    ${fileSize:lt( 1048576 )}  true if the size of the FlowFile’s content < 1 megabyte
    ${fileSize:le( 1048576 )}  true if the size of the FlowFile’s content <= 1 megabyte

```
* _and_ returns true if the subject and the argument are both true
* _or_ returns true if the subject or the argument are true
* _not_ flips the logical value of the argument
* For example, check if the filename is both all lower-case and has at least 5 characters
  
```bash
    ${filename:toLower():equals( ${filename} ):and(
	${filename:length():ge(5)}
    )}
```
* Check if either the filename has exactly 5 characters or if the filename is all lower-case.
```bash
    ${filename:toLower():equals( ${filename} ):or(
	${filename:length():equals(5)}
    )}
```
---
## ifElse Operator

* Evaluates the first argument if the Subject evaluates to true, or the second argument if the Subject evaluates to false.

```bash
    ${literal(true):ifElse('a','b')}  ->   a
    ${literal(false):ifElse('a','b')}  ->   b
    ${filename:isNull():not():ifElse('found', 'not_found')}  -> found
```


---
## String Manipulation

* _toUpper toLower_ converts all letters to the corresponding case
* _trim_ removes leading and trailing whitespace
* _substring_ returns a substring of the subject starting at a provided location and an optional ending location
* _substringBefore substringBeforeLast substringAfterLast_ returns a substring relative to the occurrence of the provided argument string
  
```bash
    // filename = "a brand new filename.txt"
    ${filename:substring(0,1)} -> 'a'
    ${filename:substring(12)} -> 'filename.txt'
    ${filename:substringBefore('.')} -> 'a brand new filename'
    ${filename:substringAfter(' n')} -> 'ew filename.txt'
```

---

## String Manipulation

* There are more string manipulation functions including:
* _getDelimitedField_ 0arses the Subject as a delimited line of text and returns just a single field from that delimited text.
* _append prepend padleft padright_ adds strings or whitespace to the start or end of a string
* _replace replaceEmpty replaceNull_ performs replacement operations in the subject - can use regular expressions as patterns to match.
* And more not covered here
  
```bash
     // filename = "a brand new filename.txt"
     // greetings = "hello"

     ${filename:replace(' ', '.')} -> 'a.brand.new.filename.txt'
     // replace a '.' and all characters following with an empty string
     ${filename:replaceAll('\..*', '')} -> 'a brand new filename'
     ${greetings:padLeft(10, '@')} -> '@@@@@hello'
```

---

## Encode/Decode Functions

* Strings may be encoded according to a specific data formate, JSon for example
* These functions assist in the conversions process
* _escapeJson escapeXml escapeCsv escapeHtml4_ escapes the control characters for use in the specified format
* _unescapeJson unescapeXml unescapeCsv unescapeHtml4_ performs the converse of the corresponding escape function

```bash
    ${literal('He didn’t say, "Stop!"',):escapeJson()} -> 'He didn’t say, \"Stop!\"'
    ${literal( 'He didn’t say, \"Stop!\"',):escapeJson()} -> 'He didn’t say, "Stop!"'

```
---

## Encode/Decode Functions

* _urlEncode_ Returns a URL-friendly version of the Subject. 
* _urlDecode_ Converts a URL-friendly version of the Subject into a human-readable form.
* _base64Encode_ Returns a Base64 encoded string. 
* _base64Decode_ Reverses the Base64 encoding on given string.
* _hash_  Returns a hex encoded string using the hash algorithm provided

```bash
    // url = "https://nifi.apache.org/some value with spaces"
    ${url:urlEncode()} -> "https%3A%2F%2Fnifi.apache.org%2Fsome+value+with+spaces"
    ${literal("admin:admin"):base64Encode()} -> "YWRtaW46YWRtaW4="
    ${literal("string value"):hash('SHA-256')} -> 
    "9b6a1a9167a5caf3f5948413faa89e0ec0de89e12bef55327442e60dcc0e8c9b"
```

---

## Math and Date Functions

* There are a number of functions that allow basic math operations
  * _add divide multiply minus random_ and other related functions
* Standard date functions include functions for formatting dates, creating date objects and getting the current time and date.

```bash
    ${literal(100):multiply(1024)} -> 102400
    ${random():mod(10):plus(1)}  -> random number between 1 and 10 inclusive.

    ${time:format("yyyy/MM/dd HH:mm:ss.SSS'Z'", "GMT")}
        -> 2014/12/31 20:36:03.264Z

    ${now()} -> The current date and time to the nearest millisecond
    
```

---

## Evaluating Multiple Attributes

* These operations allow for evaluating the same conditions against groups of attributes at the same time. These do not take a subject.
* _anyAttribute_ Checks to see if any of the given attributes, match the given condition.
* _allAttributes_ Checks to see if all of the given attributes match the given condition
* _anyMatchingAttribute_ Checks to see if any of the given attributes that match a regular expression, match the given condition. There is an analogous _allMatchingAttributes_


```bash

    // The "abc" attribute contains the value "hello world", 
    // The "xyz" attribute contains "good bye world", 
    // And the "filename" contains "file.txt" 

    ${anyAttribute("abc", "xyz"):contains("bye")} -> true
    ${allAttributes("abc", "xyz"):contains("world")} -> true
    ${allAttributes("abc", "xyz"):contains("hello")} -> false
    ${anyMatchingAttribute("[ax].*"):contains('bye')} -> true
    ${allMatchingAttributes(".*"):isNull()}

```

---


