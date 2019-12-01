# Python Files

---

## Opening a file

 * Python files (of all types) can be opened with `open()` function
   - `f = open("test.txt") # opens read-only`
   - `f = open("test.txt", 'r') #specify mode`
 * Files should eventually call `close()`
   - `f.close()`

---


## Modes for Opening a file

| Mode | Description                                        |
|------|----------------------------------------------------|
| 'r'  | Opens a file to read (default)                     |
| 'w'  | Opens a file to write                              |
| 'x'  | Creates a file if not exists, otherwise Exception  |
| 'a'  | appends to a file if exists, otherwise creates new |
| 't'  | Opens file in text mode (default)                  |
| 'b'  | Opens a file in binary mode                        |
| '+'  | Opens a file for both reading and writing          |

<!-- {"left" : 0.25, "top" : 1.27, "height" : 4.38, "width" : 9.75} -->

---

## File Mode Examples

| Mode    | Description                                   |
|---------|-----------------------------------------------|
| default | Read in text mode                             |
|  'w'    | Overwrite existing file if exist in text mode |
| '+b'    | Read and write binary mode                    |
| 'xb'    | Open a file id not exists in binary mode      |

<!-- {"left" : 0.25, "top" : 1.27, "height" : 2.5, "width" : 9.75} -->

---


## Encodings

 * Python supports different encoding
 * Python 3: Uses `utf-8` as *default* encoding
   - Except on Windows!
 * Python 2: Still uses ASCII as default
   - Need to manually convert

---

## Encodings

| Encoding | Description                               |
|----------|-------------------------------------------|
| utf-8    | Unicode, default on Linux/Mac             |
| utf-16   | Unicode 16 bit, used by Windows           |
| cp1252   | Windows 1252 encoding, default on Windows |
| ascii    | Legacy 8-bit ASCII, default on Python 2.x |

<!-- {"left" : 0.25, "top" : 1.27, "height" : 2.69, "width" : 9.75} -->

---


## Specifying the encoding

  * You can specify the encoding manually if you know it
    - `f = open("test.txt", model="r", encoding = 'utf-8')`
  * Generally a good idea if encoding is known in advance
  * Python 3.x **Recommended** you load **ALL** files as `utf-8`
    - will convert Windows-oriented formats (e.g. utf-16) to standard utf-8


---

## Why Close a file?

 * Avoids Over-reliance on garbage collection
 * Frees RAM for your program to run faster 
 * Changes to file may not be committed until after `.close()`
 * Python has limits to the number of files you can have open
 * Windows locks all open files, leading to contention (e.g., antivirus)
 * Not closing is just sloppy coding. 


---


## Auto-closing a file

 * We can auto close a file by using the `with` semantics
 * `with open(filename, 'r') as myfile:`
 * will auto-close the file once done.
 * Equivalent to adding a `finally` block to the end.
 
```python

with open(filename, 'r') as myfile:
  # DO Something with myfile
  # Do something more with myfile

# File is auto-closed
```
<!-- {"left" : 0, "top" : 3.15, "height" : 1.74, "width" : 6.61} -->

---

## Reading a File Line by Line

  * Once we open a file, we may want to read line-by-line
  * Must be open in text mode

```python
filename = "../data/files/file.txt"
with open(filename, 'r') as myfile:
  for line in myfile:
    print(line)
```
<!-- {"left" : 0, "top" : 2.16, "height" : 1.96, "width" : 9.74} -->

---


## Python File Exceptions

  * Python will throw IO exceptions

```python
try:
  with open(filename, 'r') as myfile:
  for line in myfile:
     print(line)
except IOError:
  sys.stderr.write('problem reading:' + filename)

```
<!-- {"left" : 0, "top" : 1.55, "height" : 1.82, "width" : 9.74} -->

<br/>

  * Exception handling helps in attempts to open non-existent files, corrupt files etc

```python
try:
  with open(filename, 'r') as myfile:
    for line in myfile:
      print(line)
except:
    print("Sorry! The file either doesn't exist or is corrupt!")
```
<!-- {"left" : 0, "top" : 4.51, "height" : 1.6, "width" : 9.74} -->

Notes:

---


## CSV Files
  * we can use the csv module in python to read CSV files
  * must say `import csv` at top 
  * Example:

```python
filename = "../data/files/file.csv"
with open(filename, 'r') as myfile:
  myfilereader = csv.reader
  (myfile, delimiter=',')
     for row in myfilereader:
	print(' '.join(row))
```
<!-- {"left" : 0, "top" : 2.77, "height" : 2.03, "width" : 6.61} -->


Notes:

---

## JSON Files

 * What about JSON files?
 * We need to say `import json` at the top

```python
import json
filename = "../data/files/file.json"
with open(filename, 'r') as myfile:
   my_dict = json.load(myfile) # loads into dict
```
<!-- {"left" : 0, "top" : 2.17, "height" : 1.44, "width" : 8.78} -->

---

## HTML/XHTML/XML files

 * These kinds of files are best handled by the `BeautifulSoup` package

```python

from bs4 import BeautifulSoup
filename = "../data/files/file.xml"
with open(filename, 'r') as myfile:
  soup = BeautifulSoup(myfile, 'xml')
  
```
<!-- {"left" : 0, "top" : 2.19, "height" : 1.44, "width" : 6.94} -->

---

## Binary Files

 * Binary files depend on the format exactly.
 * you do need to user `rb`, `wb`, etc.

```python
with open(filename, 'r') as myfile:
  soup = BeautifulSoup(myfile, 'xml')

```
<!-- {"left" : 0, "top" : 2.27, "height" : 0.86, "width" : 6.94} -->

---

## Reading very large binary files

 * If a binary file is too large to load, don't read it all at once 
 * The way to do this is using the `f.seek(offset, start)`

```python
with open(filename, 'rb') as f:
  f.seek(1000) #read 1000 bytes
  f.read(1) # read a byte
  f.seek(1000) # read next 1000 bytes
  f.read(2) # read 2 bytes
```
<!-- {"left" : 0, "top" : 2.34, "height" : 1.74, "width" : 6.94} -->


---


## Serialization

 * If files are serialized format, we can use the equivalent library
 * Examples of serialization
   - JSON
   - Parquet
   - ORC
   - AVRO
   - msgpack
   - protobuf
   - Pickle

---

## Pickling

 * Python's native serialization format is called pickling
 * It is native to Python
 * Very easy to use (within Python)
 * Not much used outside of Python
 * Not Particularly efficient

---

## Pandas

 * Python's `Pandas` package offers another option for reading structured data
 * Very useful for data analysis / data science
 * Tends to want to read entire files all at once   
   - But it is possible to read subsets of a file
 * Better for smaller sized data (< 1 GB) 


---

## PySpark
 * PySpark gives us the ability to handle huge datasets (1TB + )
 * Able to distribute data on a Spark or Hadoop cluster
 * Distribute processes across cluster
 * Standard solution for Big Data

---

## Lab: Files

  * Overview:
    - Play with files in Python

  * Approximate time:
    - 10 mins

  * Instructions:

    - **languagebasics/6-files.ipynb**


Notes:


