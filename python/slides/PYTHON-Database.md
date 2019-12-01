# PYTHON DB Programming

---

## Lesson Objectives

  * Learn about connecting to databases with Python

  * Be able to introduce data layer in Python
 
  * Understand How Python DB-API helps simplify connection to the Database
 
  * Look at SQLAlchemy as a interface layer for DB

  * Discuss ORM options for Python


Notes:

---
# Python DB Frameworks

---
## Python DB

  * Every vendor has a package for their DB:

    - Microsoft: pymssql
    - Oracle: cx_Oracle
    - SqlLite: sqllite3
    - Postgres: Psycopg
    - Teradata: teradata
    - ODBC: pyodbc (generic – anything with odbc conection)
    - JDBC: JayDeBeApi3 (JDBC)

  * Problem: how do we standardize the use of these?

  * Solution: DB-API

    - Python defines a standardized API
    - All DB-related packages follow the API


Notes:

---

## How to use DB-API

  * Need to open a connection to your db

  * Get the connection string (unique to your DB)

    - Example: MS Sql Server

```python
Server=myServerAddress;Database=myDataBase;
User Id=myUsername;
Password=myPassword;
```
<!-- {"left" : 0, "top" : 2.51, "height" : 1.38, "width" : 10.25} -->

---

## How to use DB-API

  * Open a connection (Example: Microsoft SQL Server)

```python
import pymssql

conn =  pymssql.connect(host='username\SQLEXPRESS’, 
           user='username',password='pwd',database='master')
```
<!-- {"left" : 0, "top" : 1.7, "height" : 1.79, "width" : 10.25} -->


---

## Cursors

  * We need a `Cursor` object to query
  * We get the cursor object by calling `.cursor()` on the connection

```python
cursor = conn.cursor()
```
<!-- {"left" : 0, "top" : 2.7, "height" : 0.74, "width" : 6.1} -->

Notes:

---

## Performing a Query with DB-API

  * Use the cursor to get a credit 

```python
cursor.execute('SELECT * FROM persons WHERE 
salesrep=%s', 'John Doe')
row = cursor.fetchone()
while row:
    print("ID=%d, Name=%s" % (row[0], row[1]))
    row = cursor.fetchone()
```
<!-- {"left" : 0, "top" : 1.82, "height" : 2.31, "width" : 10.25} -->

Notes:

---


## DB-API Summary

 * DB-API gives us a common interface to different databases
 * Allows us to execute literal SQL  
   - which can differ on different DBs (T-SQL vs PL-SQL, etc)
 * Supports Transactions and 2-Phase Commit
 * Pretty low Level

---

# Pandas

---

## Example: Pandas and Databases

  * Example: open connection to sqllite database

  * Then call pandas.


```python
import pandas as pd
import sqlite3

conn = sqlite3.connect("flights.db")

df = pd.read_sql_query
("select * from airlines limit 5;", conn)

df
```
<!-- {"left" : 0, "top" : 2.2, "height" : 2.74, "width" : 10.25} -->

Notes:

---

## Saving Data To DB

  * **pd.to_sql**  writes to db

  * Index: Python will write the index unless you say (index=‘false’)

  * Many other `pd.to_*` type functions

Notes:

---


## Transactions

 * example of SQL Transaction:


```sql
BEGIN TRANSACTION;
UPDATE versions SET status='stable' where version='2.6.0';
UPDATE versions SET status='old' where version='2.4.4';
SELECT * FROM versions;
released  | version | status
------------+---------+--------
2007-04-18 | 2.5.1   | stable
           | 3.0.0   | alpha
           | 2.6.0   | stable
2007-10-18 | 2.4.4   | old
ROLLBACK
SELECT * FROM versions;
released  | version | status
------------+---------+--------
2007-10-18 | 2.4.4   | stable
2007-04-18 | 2.5.1   | stable
           | 2.6.0   | devel
           | 3.0.0   | alpha
```
<!-- {"left" : 0, "top" : 1.82, "height" : 5.42, "width" : 10.25} -->

---


## Transactions

 * Here is how we do the same thing with DB-API

```python

cur = db.cursor()
try:
    cur.execute ("""UPDATE versions SET status='stable' where version='2.6.0' """)
    cur.execute ("""UPDATE versions SET status='old' where version='2.4.4' """)
    db.commit()
except Exception, e:
    db.rollback()
```
<!-- {"left" : 0, "top" : 1.74, "height" : 1.65, "width" : 10.25} -->

---

## SQLAlchemy

 * Actually contains 2 parts:
   - Core: Contains SQL Extraction Toolkit for any DB-API interface
   - ORM: (Optional) Contains ORM functionality
 * Many users use only **Core** and have no need for an ORM.


---


## SQLAlchemy Connections

 * Here is how we open up a connection to SQLAlchemy

```python
from sqlalchemy import create_engine
engine = create_engine('sqlite:///:memory:', echo=True)
```
<!-- {"left" : 0, "top" : 1.8, "height" : 0.86, "width" : 9.94} -->

<br/>

 * Notice that we need to pass the connection string to the DB
 * We get a "engine" object as the output 

---

## SQLAlchemy Connection Examples Examples

 * MySQL
   - `engine = create_engine('mysql://scott:tiger@localhost/foo')`

 * MS SQL Server:

   - `engine = create_engine('mssql+pymssql://scott:tiger@hostname:port/dbname') #using pymssql`

---


# ORM

---

## Object Relational Mapping

  * **ORM**

    - Means that we autoconvert database rows to programming objects
    - Decorate With Attributions (usually)
    - Similar to ORM in other languages (Hibernate, Entity Framework)

  * SQLAlchemy:

    - ORM for Python (lightweight)

  * Django Web Framework

    - Built-in ORM
 
  * Other ORMs:
    - Peewee
    - PonyORM
    - SQLObject
    - Storm


Notes:

---

## SQLAlchemy
 
 * *THE* Database framework for Python
 * Actually contains 2 parts:
   - Core: Contains SQL Extraction Toolkit for any DB-API interface
   - ORM: (Optional) Contains ORM functionality
 * Many users use only **Core** and have no need for an ORM.


---

## Advantages of SQLAlchemy
 * Higher-Level API
 * Most popular Python ORM (optional)
 * Brings Consistency between different DBs
 * Declarative rather than Imperative design


---


## SQLAlchemy ORM

 * Data Mapper style ORM
 * Uses a declarative configuration
 * Domain and Schema separate
 * ORM relies on SQLALchemy Core
 * Presents a Domain Specific (rather than schema-centric) view of data

---

## ORM Patterns
 * **Unit of Work:** objects are maintained by the ORM to track changes, and then transparently **flushes** those pending changes
 * **Identity Map:** objects tracked by their primary key with within the unit of work, then are kept **unique** on that primary key identity.
 * **Lazy Loading:**   Attributes of an object may emit additional SQL queries only when accessed.
 * **Eager Loading:** Multiple Tables will be queried at once to load related objects
 * **Method Chaining:** Queries are composed using a string of method calls which each return a new query object

---

## ORM Sample Queries
 * Find First name of First Employee in IT Department:
   - `s.query(Employee).filter(Employee.departments.any(Department.name == 'IT')).all()[0].name`
 * Find the Department of Employee John
   - ` s.query(Department).filter(Department.employees.any(Employee.name == 'John')).all()[0].name`
 
