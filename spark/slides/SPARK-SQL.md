# Spark SQL

<img src="../../assets/images/logos/spark-logo-1.png" style="width:35%;"/>  <!-- {"left" : 2.75, "top" : 6.35, "height" : 1.26, "width" : 2.38} -->

---

## Objectives

* Learn about Dataframes
* Using Spark SQL

---

## Spark SQL

<img src="../../assets/images/spark/spark-components-sql.png" style="width:50%;float:right;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

* Spark SQL package has some exciting components

* __SparkSession__: The new Spark interface

* __Dataframes__ : High level data structures with excellent performance

* __Spark SQL__: Support for SQL language queries

* __Catalyst Optimizer__: Optimizes Dataframe queries

---

# DataFrames

---

## Spark API  Evolution

* RDD based APIs are the first interface to Spark

* As Spark being adopted widely, the following issues cropped up:
    - RDD API is too low level, requiring developers to write more code than necessary
    - Not very easy to use
    - Optimizations are left up to users

* DataFrames based API was introduced in 2013 to address the above issues

<img src="../../assets/images/spark/spark-data-model-1.png" style="width:35%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## DataFrames

<img src="../../assets/images/spark/dataframe-2-distributed.png" style="width:35%;float:right;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

* Spark DataFrames represent data as a table (rows and columns)
    - Very similar functionality to Pandas DataFrames

* Spark DataFrames are **distributed** and can contain **huge amount of data**
    - Data doesn't need to fit on to a single machine

* DataFrames will have rows and columns.  Columns have names and schema
    - Here we see 3 columns with different data types

| Row Number | Name (String) | Age (Int) | Weight (Float) |
|------------|---------------|-----------|----------------|
| 1          | John          | 34        | 168.4          |
| 2          | Jane          | 30        | 140.0          |
| 3          | Mark          | 5         | 30.3           |

---

## DataFrame Features

* DataFrames offer **very high level, easy to use APIs** (compared to RDD API)

* DataFrames add schema support to data
    - RDDs represent data
    - DataFrames = data + schema

* DataFrames also support **SQL queries**

* Supported  languages : Java, Scala, Python, R and SQL

* __Catalyst Optimizer__ optimizes queries on DataFrames
    - One of the best optimizers around!

---

## DataFrame Architecture

* DataFrames and Catalyst Optimizer are part of Spark SQL package

* DataFrames API do not replace RDD API, they can be used together

<img src="../../assets/images/spark/spark-dataframe-architecture.png" style="width:60%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## DataFrames Performance

<img src="../../assets/images/spark/dataframe-performance-1.png" style="width:50%;float:right;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

* Here is an interesting benchmark highlighting DataFrame performance compared to RDD

* In native RDD API, Scala is the fastest (~ 4 secs), and Python is about twice as slower (~ 9 secs)

* The DataFrame API illustrates:
    - Consistant performance, no matter what language is used
    - And even faster than RDD Scala code!

* This performance is due to the optimizer

* [Source](https://databricks.com/blog/2015/02/17/introducing-dataframes-in-spark-for-large-scale-data-science.html)

---

## DataFrame Data Sources

* DataFrame can read / write to a wide variety of formats

<img src="../../assets/images/spark/3rd-party/dataframe-formats.png" style="width:90%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

# DataFrame API

---

## DataFrame API  (Scala)

* DataFrames work well with **structured data** (json, csv, parquet)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```scala
// scala api

val peopleDF = spark.read.json("people.json")

//   peopleDF: org.apache.spark.sql.DataFrame = [age: long, name: string, gender:string, weight:double]

peopleDF.printSchema

//   root
//    |-- age: long (nullable = true)
//    |-- gender: string (nullable = true)
//    |-- name: string (nullable = true)
//    |-- weight: double (nullable = true)

peopleDF.show

//   +---+------+----+------+
//   |age|gender|name|weight|
//   +---+------+----+------+
//   | 35|     M|John| 200.5|
//   | 40|     F|Jane| 150.2|
//   | 18|     M|Mike| 120.0|
//   | 19|     F| Sue| 100.0|
//   +---+------+----+------+
```

---

## DataFrame API  (Python)

* DataFrames work well with **structured data** (json, csv, parquet)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```python
# python api

peopleDF = spark.read.json("people.json")

#   peopleDF: org.apache.spark.sql.DataFrame = [age: long, name: string, gender:string, weight:double]

peopleDF.printSchema()

#   root
#    |-- age: long (nullable = true)
#    |-- gender: string (nullable = true)
#    |-- name: string (nullable = true)
#    |-- weight: double (nullable = true)

peopleDF.show()

#   +---+------+----+------+
#   |age|gender|name|weight|
#   +---+------+----+------+
#   | 35|     M|John| 200.5|
#   | 40|     F|Jane| 150.2|
#   | 18|     M|Mike| 120.0|
#   | 19|     F| Sue| 100.0|
#   +---+------+----+------+
```

---

## Querying a DataFrame (Scala)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```scala
// scala api

val peopleDF = spark.read.json("people.json")

df.filter(df("name") === "John").show() // note equal is === 
df.filter("name == 'John'").show
df.filter($"name" === "John").show

//   +---+------+----+
//   |age|gender|name|
//   +---+------+----+
//   | 35|     M|John|
//   +---+------+----+

df.filter(df("age") >35).show() 
df.filter("age > 20").show
df.filter($"age" > 20).show

//   +---+------+----+
//   |age|gender|name|
//   +---+------+----+
//   | 35|     M|John|
//   | 40|     F|Jane|
//   +---+------+----+
```

---

## Querying a DataFrame (Python)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```python
# python api

peopleDF = spark.read.json("people.json")

df.filter(df("name") == "John").show()
df.filter("name == 'John'").show()

#   +---+------+----+
#   |age|gender|name|
#   +---+------+----+
#   | 35|     M|John|
#   +---+------+----+

df.filter(df("age") >35).show() 
df.filter("age > 20").show()

#   +---+------+----+
#   |age|gender|name|
#   +---+------+----+
#   | 35|     M|John|
#   | 40|     F|Jane|
#   +---+------+----+
```

---

## DataFrame Types

| Type        | Description                                                                                   | Java/Scala           | Python          |
|-------------|-----------------------------------------------------------------------------------------------|----------------------|-----------------|
| ByteType    | 1-byte signed integer numbers. Range = -128 to 127                                            | Byte                 | Int or Long     |
| ShortType   | 2-byte signed integer numbers.   Range = -32768 to 32767                                      | Short                | Int or Long     |
| IntegerType | 4-byte (32 bit) signed integer numbers.  Range = -2,147,483,648 (-231) to 2,147,483,647 (231) | Integer              | Int or Long     |
| LongType    | 8-byte (64 bit) signed integer numbers Range = -263  to 263                                   | Long                 | Long            |
| FloatType   | 4-byte (32 bit) single-precision floating point numbers                                       | Float                | Float           |
| DoubleType  | 8-byte (64 bit) double-precision floating point numbers                                       | Double               | Float           |
| DecimalType | arbitrary-precision signed decimal numbers                                                    | java.math.BigDecimal | decimal.Decimal |
|             |                                                                                               |                      |                 |
| StringType  | String / text values                                                                          | String               | string          |
| BinaryType  | Binary / blob data                                                                            | Array[Byte]          | bytearray       |
| BooleanType | True / False                                                                                  | True / False         | bool            |

---

## DataFrame Types

| Type          | Description                                                                                                        | Java/Scala               | Python                |
|---------------|--------------------------------------------------------------------------------------------------------------------|--------------------------|-----------------------|
| Date / Time   |                                                                                                                    |                          |                       |
| DateType      | Date with year, month, day.                                                                                        | java.sql.Date            | datetime.date         |
| TimestampType | Timestamp with year, month, day, hour, minute, and second                                                          | java.sql.Timestamp       | datetime.datetime     |
|               |                                                                                                                    |                          |                       |
| Complex Types |                                                                                                                    |                          |                       |
| ArrayType     | Sequence of elements                                                                                               | scala.collection.Seq     | list, tuple, or array |
| MapType       | Key / Value pairs                                                                                                  | scala.collection.Map     | dict                  |
| StructType    | Random structure with one or more fields  <br />Address <br />{street_number,<br />     street_name,<br />     city,<br />      state,<br />     zip } | org.apache.spark.sql.Row | list or tuple         |

---

## Catalyst Query Optimzizer

* Catalyst Optimizer can really boost performance
* DataFrames are lazily evaluated
    - Catalyst can optimize bunch of instructions together
    - It can combine / short-circuit / re-order operations
* Re-ordering operations
    - For example filter operations can be moved up if possible, this cuts down data flowing through stages
* Using schema information optimizer can perform additional optimization
    - For example comparing Integers is more efficient than comparing String
* Catalyst is a 'multi phase' optimizer

<img src="../../assets/images/spark/3rd-party/catalyst-optimizer-1.png" style="width:70%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Predicate Pushdown Example

* Here we area reading data, and immediately filtering
    - So it makes sense to only read data that can pass the filter

```python
df1 = spark.read.csv("data.csv")
df2 = df1.filter ("age > 30")
```

<img src="../../assets/images/spark/optimizer-predictate-pushdown-1.png" style="width:70%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Predicate Pushdown Example

```python
df1 = spark.read.csv("...")
df2 = df1.filter ("age > 30")
df2.explain(extended=True)
```

<pre>
== Parsed Logical Plan ==
'Filter ('age > 30)
+- Relation[age#7L,gender#8,name#9,weight#10] json

== Analyzed Logical Plan ==
age: bigint, gender: string, name: string, weight: double
Filter (age#7L > cast(30 as bigint))
+- Relation[age#7L,gender#8,name#9,weight#10] json

== Optimized Logical Plan ==
Filter (isnotnull(age#7L) AND (age#7L > 30))
+- Relation[age#7L,gender#8,name#9,weight#10] json

== Physical Plan ==
*(1) Project [age#7L, gender#8, name#9, weight#10]
+- *(1) Filter (isnotnull(age#7L) AND (age#7L > 30))
   +- FileScan json [age#7L,gender#8,name#9,weight#10] Batched: false, 
    DataFilters: [isnotnull(age#7L), (age#7L > 30)], Format: JSON, 
    Location: InMemoryFileIndex[file:/data/people/people.json], 
    PartitionFilters: [], 
    <mark>PushedFilters: [IsNotNull(age), GreaterThan(age,30)]</mark>, 
    ReadSchema: struct< age:bigint,gender:string,name:string,weight:double >
</pre>

---

## Optimizer Code Generation

* As a final step, Catalyst may generate code for execution plans

* This is done using [Janino compiler](http://janino-compiler.github.io/janino/)

* Codegen can really boost performance (sometimes 10x) for some queries!

<img src="../../assets/images/spark/3rd-party/codegen-1.png" style="width:80%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Lab: Dataframes

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Work with Spark DataFrames

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.1

Notes:

---

# Spark SQL

---

## Why SQL?

* Spark API (Scala, Java or Python) can  still be fairly complex
    - SQL has very simple syntax

* SQL is pretty popular with developers and analysts

* SQL queries can be optimized pretty well
    - SQL Engine technology  is mature and is very well field tested

* SQL is pretty much expected feature now (Hadoop, Cassandra and Spark)

---

## Spark SQL

* __Spark SQL__ module adds SQL capability to Spark (since Spark v2)

* Spark SQL is one of the most used feature of Spark

* Catalyst is pretty good at optimizing SQL queries

* From Spark v3, Spark SQL is  ANSI SQL compliant

<img src="../../assets/images/spark/spark-dataframe-architecture.png" style="width:50%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Spark 3 SQL Improvements

<img src="../../assets/images/spark/3rd-party/spark-sql-benchmark-1.png" style="width:20%;float:right;clear:both;" /><!-- {"left" : 5.96, "top" : 1.11, "height" : 0.99, "width" : 3.11} -->
<img src="../../assets/images/spark/3rd-party/spark3-patches.png" style="width:28%;float:right;clear:both;" /><!-- {"left" : 5.96, "top" : 1.11, "height" : 0.99, "width" : 3.11} -->

* Spark has one of the best SQL engines around

* Spark SQL received lot of updates in Spark v3

* ANSI SQL support improved

* __Adaptive Query Execution (AQE)__:
   - Can adjust execution plan at runtime (change number of reduces ..etc)
   - Can even observe **data skew** and make changes (This is a big deal, as it happens a lot in real life workloads)
   - Can do effective joins automatically

* [Source](https://youtu.be/OLJKIogf2nU)

---

## Spark SQL Example (Scala)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```scala

// Step 1: read a DataFrame
val df = spark.read.json("people.json")

// Step 2: Register DF as temporary table
df.createOrReplaceTempView("people")

// Step 3: Query away
spark.sql("select * from people").show()

//   +---+------+----+
//   |age|gender|name|
//   +---+------+----+
//   | 35|     M|John|
//   | 40|     F|Jane|
//   | 18|     M|Mike|
//   | 19|     F| Sue|
//   +---+------+----+

spark.sql("select * from people where age > 30").show()

//   +---+------+----+
//   |age|gender|name|
//   +---+------+----+
//   | 35|     M|John|
//   | 40|     F|Jane|
//   +---+------+----+
```

---

## Spark SQL Example (Python)

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```python

# Step 1: read a DataFrame
df = spark.read.json("people.json")

# Step 2: Register DF as temporary table
df.createOrReplaceTempView("people")

# Step 3: Query away
spark.sql("select * from people").show()

#   +---+------+----+
#   |age|gender|name|
#   +---+------+----+
#   | 35|     M|John|
#   | 40|     F|Jane|
#   | 18|     M|Mike|
#   | 19|     F| Sue|
#   +---+------+----+

spark.sql("select * from people where age > 30").show()

#   +---+------+----+
#   |age|gender|name|
#   +---+------+----+
#   | 35|     M|John|
#   | 40|     F|Jane|
#   +---+------+----+
```

---

## Table Scope

* Temporary tables
    - Use **`createOrReplaceTempView`**
    - Table is only valid during the scope of current session
* Global Temporary View
    - Can outlast the session that created it
    - Until the end of Spark application
    - Use **`createGlobalTempView`**
* Persistent Table
    - Can be saved using Hive metastore
    - Use **`df.write.saveAsTable`** command
    - Tables are permanent and available for others

```python
# this is temp table
df.createGlobalTempView("people")

# Global temporary view is tied to a system preserved database 'global_temp'
spark.sql("SELECT * FROM global_temp.people").show()
spark.newSession().sql("SELECT * FROM global_temp.people").show()

# Save a persistent table
df.saveAsTable("hiveTable")
```

---

## Lab: Spark SQL

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Work with Spark SQL

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.2

Notes:

---

# Dataset

---

## Datasets

<img src="../../assets/images/spark/dataset-2.png" style="width:35%;float:right;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

<img src="../../assets/images/spark/spark-data-model-1.png" style="width:35%;float:right;clear:both;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

* Datasets unify both **typed** and **untyped** datamodels
    - Typed dataset is called **`Dataset`**
    - Untyped dataset is called **`DataFrame`** (yes the same DFs we have been using!)

* Typed dataset API is available only on Java,Scala
    - Because Java,Scala are strongly typed languages
    - Not available in Python as Python is a dynamic language (not strongly typed)

- Untyped dataset (DataFrame) is available on all languages

---

## Dataset API

```json
{"name": "John", "age": 35, "gender" : "M", "weight": 200.5 }
{"name": "Jane", "age": 40, "gender" : "F" , "weight": 150.2}
{"name": "Mike", "age": 18, "gender" : "M" , "weight": 120}
{"name": "Sue",  "age": 19, "gender" : "F" , "weight": 100}
```

```scala
// define Person class
case class Person (
        name: String, 
        age: Long, 
        gender: String, 
        weight: Double)

// people is of type 'Person'
val people = spark.read.json("...").as[Person]

people.printSchema
//   root
//    |-- age: Integer
//    |-- gender: String
//    |-- name: String
//    |-- weight: Double

// ageCol is Integer type
val ageCol = people("age")

// increases every one's age by 10
// We can do this, because 'age' is Integer
people("age") + 10
```

* See [Dataset Java API](https://spark.apache.org/docs/latest/api/java/index.html?org/apache/spark/sql/Dataset.html) ,  [Dataset Scala API](https://spark.apache.org/docs/latest/api/scala/org/apache/spark/sql/Dataset.html)

---

## Dataset API

```scala
// For implicit conversions like converting RDDs to DataFrames
import spark.implicits._

> val df1 = spark.read.json("people.json")
//  df1: org.apache.spark.sql.DataFrame = [age: bigint, gender: string ... 1 more field]

// read CSV directly, infer columns from header
> val df2 = spark.read.option("header", "true").csv("people2.csv")
//  df2: org.apache.spark.sql.DataFrame = [name: string, gender: string ... 1 more field]

// load a plain String RDD and query using functional programming
> val t = spark.read.textFile("twinkle.txt")
//  t: org.apache.spark.sql.Dataset[String] = [value: string]

> t.filter(_.contains("twinkle")).collect
//  Array[String] = Array(twinkle twinkle little star, twinkle twinkle little star)
```

---

## Schema Infering

* Dataset can "infer" schema from common formats like JSON/Parquet/ORC

* This is convenient but may have performance overhead

* Parquet/ORC formats store schema alongside with data. Inferring is very quick!

* For JSON, Spark has to parse the data to figure out the schema
    - Can be expensive on large scale
    - There is an option to "sample" the data

```scala
// go through all records
> val df = spark.read
                .option("inferSchema", "true")
                .json("people.json")

// go through 30%  records
> val df = spark.read
                .option("inferSchema", "true")
                .option("samplingRatio", 0.3)
                .json("people.json")

> df.printSchema
//   Root
//   |-- age: long (nullable = true)
//   |-- gender: string (nullable = true)
//   |-- name: string (nullable = true)

```

---

## Reading CSV Files

* If header is present, Spark will use it for column names

* Schema is inferred by through trough the data

```csv
name,gender,age
John,M,35
Jane,F,40
Mike,M,18
Sue,F,19
```

```scala
> val p = spark.read
            .option("header", "true")
            .option("samplingRatio", 0.3)
            .csv("people.csv")

> p.columns
//   Array[String] = Array(name, gender, age)

> p.printSchema
//   root
//   |-- name: string (nullable = true)
//   |-- gender: string (nullable = true)
//   |-- age: string (nullable = true)

```

---

## Specifying Schema

* While inferring schema is great, it comes with a performance penalty

* For files like JSON and CSV, Spark has to parse the file to figure out the schema

* This can get expensive for large scale data (TBs of data)

* So for large scale data, we can specify schema
    - Spark will **apply** our schema during read time
    - Spark will not parse file to infer schema

* What if specified schema doesn't match actual data?
    - Spark will substitute NULL values

* References
    - [Spark schema – explained with examples](https://sparkbyexamples.com/spark/spark-schema-explained-with-examples/)

---

## Specifying Schema (Scala)

```scala

// This is used to implicitly convert an RDD to a DataFrame.import spark.implicits._
import org.apache.spark.sql._
import org.apache.spark.sql.types._

// specify schemas
val nameField = StructField("name", StringType)
val genderField = StructField("gender", StringType)
val ageField = StructField("age", IntegerType)

val peopleSchema = StructType(Array(nameField, genderField, ageField))

val peopleDF = spark.read.
             option("header", "true").
             schema(peopleSchema).
             csv("data/people2.csv")

peopleDF.printSchema

//   Root
//    |-- name: string (nullable = true)
//    |-- gender: string (nullable = true)
//    |-- age: integer (nullable = true)
```

---

## Specifying Schema (Python)

```python

nameField = StructField("name", StringType(), True)
genderField = StructField("gender", StringType(), True)
ageField = StructField("age", IntegerType(), True)

peopleSchema = StructType([nameField, genderField, ageField])

peopleDF = (spark.read.
               option("header", "true").
               schema(peopleSchema). 
               csv("people2.csv"))

peopleDF.printSchema()

//   Root
//    |-- name: string (nullable = true)
//    |-- gender: string (nullable = true)
//    |-- age: integer (nullable = true)


```

---

## Conversion among RDD / DataFrame / Dataset

<img src="../../assets/images/spark/data-models-3.png" style="width:35%;float:right;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

```scala
// This is used to implicitly convert an RDD to a DataFrame.
import spark.implicits._
import org.apache.spark.sql._
import org.apache.spark.sql.types._

peopleRDD
//   peopleRDD: org.apache.spark.rdd.RDD[Person] = ...

// ==== convert RDD to Dataset
val peopleDS = peopleRDD.toDS
//   org.apache.spark.sql.Dataset[Person] = [name: string, ...]
// another approach
val peopleDS2 = spark.createDataset[Person](peopleRDD)

// === Access RDD in Dataset
peopleDS.rdd
//   org.apache.spark.rdd.RDD[Person] = MapPartitionsRDD[47]

// === convert Dataset to DataFrame
val df2 = peopleDS.toDF
//   df2: org.apache.spark.sql.DataFrame = [name: string, ...]

// === convert DataFrame to Dataset
val ds2 = df2.as[Person]
//   ds2: org.apache.spark.sql.Dataset[Person] = [name: string,  ...]

// DataFrame  & RDD
df2.rdd
//   org.apache.spark.rdd.RDD[org.apache.spark.sql.Row] =  ...
```

---

## Lab: Datasets

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Work with Spark Datasets

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.3

Notes:

---

## Lab: Caching in SQL

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Understanding caching of Spark SQL tables

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.4

Notes:

---

# Spark and Hive

---

## Spark & Hadoop

* Hive is the data warehouse for Hadoop
    - Has table definitions

* Spark can query Hive to extract table definitions
    - No need to redefine table schema in Spark

* Spark can load data directly from HDFS 

<img src="../../assets/images/spark/spark-and-hadoop-2.png" style="width:90%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Spark Catalog

* Spark Catalog keeps track of tables

```scala

> spark.catalog
//   org.apache.spark.sql.catalog.Catalog

> spark.catalog.[TAB]
//   cacheTable            dropGlobalTempView   getTable        listTables
//   ...

> spark.catalog.listDatabases.show(false)

//   +-------+---------------------+-------------------------+
//   |name   |description          |locationUri              |
//   +-------+---------------------+-------------------------+
//   |default|Default Hive database|file:/user/hive/warehouse|
//   +-------+---------------------+-------------------------+

> spark.catalog.listTables.show(false)

//   +--------+---------+-----------+-----------+-----------+
//   |name    |database |description|tableType  |isTemporary|
//   +--------+---------+-----------+-----------+-----------+
//   | people | null    |           | TEMPORARY |  true     |
//   | logs   | default |           | MANAGED   |  false    |
//   +--------+---------+-----------+-----------+-----------+

```

---

## Reading from Hive Tables

```sql
// this is hive shell

hive> show tables;
//  clickstream
```

```scala
// this is Spark shell

> spark.catalog.listTables.show
//   clickstream

> val t = spark.catalog.getTable("clickstream")
//   org.apache.spark.sql.catalog.Table

> spark.sql("select * from clickstream limit 10").show

//   +---+------+----+
//   |age|gender|name|
//   +---+------+----+
//   | 35|     M|John|
//   | 40|     F|Jane|
//   +---+------+----+

> spark.sql("select action, count(*) as total from clickstream group by action").show

```

---

## Lab: Spark and Hive

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Query Hive tables from Spark
   - Note: This lab only works on a Hadoop environment

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.5

Notes:

---

# Data Formats

---

## Row vs. Columnar Storage

* Here is an example of how a table data can be stored on disk in 2 different ways

<img src="../../assets/images/spark/row-columnar-3.png" style="width:44%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Row vs Column Data Stores

* How data is stored has a big impact on query performance

* Row based formats are better for finding specific row data

```sql
select * from items where id = 123
```

* Column based format is better for aggregate queries

```sql
select MAX(price) from items;
```

* Doing column based queries on row-based format is not efficient:
    - lot of random access of data on disk
    - not high through put

<img src="../../assets/images/spark/row-columnar-1.png" style="width:45%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->
<img src="../../assets/images/spark/row-columnar-2.png" style="width:45%;" /><!-- {"left" : 0.58, "top" : 1.83, "height" : 5.41, "width" : 9.08} -->

---

## Data Formats

* Most common data formats:
    - Text  
    - Avro
    - Parquet
    - ORC: Optimized Row Columnar

---

## Text Data Formats

* Example data formats : CSV, JSON

* CSV data

```text
#name, gender, age
John,M,40
Jane,F,35
```

* JSON data

```json
{"name" : "John", "gender" : "M", "age": 40}
{"name" : "Jane", "gender" : "F", "age": 35}
```

* Pros:
    - Human-readable
    - Compatible with tools (export/import from DB for example)

* Cons:
    - Not size-efficient to store
    - Not efficient to query
    - Does not support block compression

---

## AVRO Format

* AVRO is a popular serializing format

* Binary baed

* Row-based

* Schema is stored as part of the data
    - Decoding is easy
    - No need for separate data-dictionaries

* Supports schema evolution or schema versioning
    - Version 1 has two attributes: name, email
    - Version 2 has an extra attribute: name, email, phone
    - They can co-exist

---

## Parquet Format

* Currently the 'goto' format

* Came out of Twitter + Cloudera

* Column-based storage

* Binary + compressed

* Schema stored with data

* Very efficient for column-based queries

---

## ORC Format

* Evolution of RCFile

* Hybrid row/columnar format

* Stores rows

* Within rows, data is stored in columnar format

* Can support basic stats (minimum/maximum, etc.) on columns

---

## Which Format to Choose?

* Depends on:
    - Workload
    - Other ETL/ingestion systems

* Is “human readability” a big deal?
    - Then use text: CSV, JSON

* For Speed go with Parquet/ORC

* Parquet/ORC is preferred format currently

* Spark natively supports JSON, Parquet, Avro

---

## Converting Between Formats

* In Spark, converting between formats is very easy

```scala
// loading json data
dfJson = spark.read.json(“data.json”)

// save as parquet (faster queries)
dfJson.write.parquet(“data-parquet/”)

// save as ORC (faster queries)
dfJson.write.orc(“data-orc/”)

```

---

## Lab: Data Formats

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
   - Benchmark various data formats

* **Approximate run time:**
   - 20-30 mins

* **Instructions:**
   - 4.6

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.24, "top" : 1.21, "height" : 1.28, "width" : 1.73} -->

* Let's go over what we have covered so far

* Any questions?

<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;" /><!-- {"left" : 2.69, "top" : 4.43, "height" : 3.24, "width" : 4.86} -->
