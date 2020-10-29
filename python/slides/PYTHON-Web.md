# Python – Web Programming

---

## Lesson Objectives

* Learn about Python Web Applications
* Learn about Django versus Flask
* Web Services with Flask 



Notes:

---
# Python Web Frameworks

---
## Python Web Frameworks

| Framework         | Features                                                                                                                                     |
|-------------------|----------------------------------------------------------------------------------------------------------------------------------------------|
| **Light Weight**  |                                                                                                                                              |
| **WSGI**          | - Python’s Web Server Gateway Interface (WSGI) is part of Python installation. - Very basic functionality. - Also look at Werkzeug framework. |
| **Falcon**        | - Very fast - Bare bones functionality                                                                                                       |
| **Flask**         | - Light weight - Got basic features                                                                                                          |
|                   |                                                                                                                                              |
| **Full Featured** |                                                                                                                                              |
| **Django**        | - Feature rich - Very popular                                                                                                                |
| **Web2Py**        |                                                                                                                                              |
| **TurboGears**    |                                                                                                                                              |

<!-- {"left" : 0.25, "top" : 1.3, "height" : 5.77, "width" : 9.75, "columnwidth" : [4.88, 4.88]} -->


Notes:

---
# Flask

---

## Flask

  * Simple, but powerful web framework

  * Provides server and debugger

  * “Do one thing and do it well” philosophy


Notes:

---
## Django Vs Flask

|                           | Django                                                                     | Flask                                                                          |
|---------------------------|----------------------------------------------------------------------------|--------------------------------------------------------------------------------|
| Philosophy                | Everything Included                                                        | Plugin model                                                                   |
| DI/IOC Container          | Included                                                                   | Not Supported                                                                  |
| Web Content Framework     | Included                                                                   | Various Plugins Available                                                      |
| RESTFUL Web Services      | Included                                                                   | Included                                                                       |
| User Authentication       | Django Model                                                               | Various Plugins for Authentication Scenarios                                   |
| Content Versioning        | Django Model                                                               | Not Supported                                                                  |
| Browsable Web Service API | Included                                                                   | Not Supported                                                                  |
| ORM                       | Built-in ORM                                                               | Plugin support for SQLAlchemy and others.                                      |
| Speed                     | Acceptable Speed                                                           | Faster Speed                                                                   |
| Summary                   | Good for big webapps and heavy-weight services where all-inclusive is good | Good for lightweight apps, Microservices, and places where speed is essential. |

<!-- {"left" : 0.26, "top" : 1.3, "height" : 6.36, "width" : 9.75, "columnwidth" : [3.25, 3.25, 3.25]} -->


Notes:

---

## Getting Started With Flask

* Flask is part of Anaconda
* For vanilla python installations, we recommend a virtual-env setup


```bash
$ mkdir webapp
$ cd webapp
$ virtualenv flask
New python executable in flask/bin/python
Installing setuptools............................done.
Installing pip...................done.

$ pip install flask
```
<!-- {"left" : 0, "top" : 2.6, "height" : 2.5, "width" : 10.25} -->

Notes:

---

## Flask App

 * `app.py`: 

```python
from flask import Flask 

app = Flask(__name__) 

@app.route('/')
def index():
    return "Hello, World!"

if __name__ == '__main__':
    app.run(debug=True) 
```

<!-- {"left" : 0, "top" : 1.64, "height" : 3.78, "width" : 5.11} -->

```bash
$ python ./app.py
 * Running on http://127.0.0.1:5000/ 
 * Restarting with reloader
```
<!-- {"left" : 0, "top" : 5.62, "height" : 1.15, "width" : 6.94} -->


Notes:

---
# RESTFul API With Flask
---

## Basic REST Concepts

  * **Client-Server Architecture:**

     - Client and Server are separated.
     - Server offers a 'service.
     - Client consumes it.

  * **Stateless**

     - Client requests must contain all information to serve that particular request

  * **Caching**

     - Server will provide on guidance on caching requests


Notes:

---

## RESTFul WebService

| HTTP Method | Description                           |
|-------------|---------------------------------------|
| GET         | Get resource listing or resource info |
| POST        | Create a new resource                 |
| PUT         | Update a resource                     |
| DELETE      | Delete a resource                     |
|             |                                       |


<!-- {"left" : 0.26, "top" : 1.37, "height" : 3, "width" : 9.75, "columnwidth" : [4.88, 4.88]} -->



Notes:

---
## Lab: Building A WebService

  * Overview:
    - Build a web service server and client
  * Approximate time:

    - 1 hr

  * Instructions:

    - Please follow instructions from

      - Web/web-1
      - Web/web-2
      - Web/web-3

  * To Instructor:

    - help the class

Notes:

---

## Review Questions




