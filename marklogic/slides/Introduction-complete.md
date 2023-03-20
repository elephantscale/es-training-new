# Introduction to MarkLogic

---

# NoSQL database

---

## NoSQL database

* MarkLogic Server is an Enterprise NoSQL database
* It uses XML and JSON documents, along with RDF triples, as its data model, and stores the documents within a transactional repository
* It is a document-centric, transactional, search-centric, structure-aware, schema-agnostic, XQuery- and JavaScript-driven, high performance, clustered, database server

---


# Search

---

## Search

* MarkLogic fuses together database internals, search-style indexing, and application server behaviors into a unified system
* It indexes the words and values from each of the loaded documents, as well as the document structure
* And, because of its unique Universal Index, MarkLogic doesn’t require advance knowledge of the document structure (its “schema”) nor complete adherence to a particular schema
* Through its application server capabilities, it’s programmable and extensible

---

# Installation

---

## Installation

* MarkLogic assumes there is only one MarkLogic Server process running on any given machine, so it is not recommended to run multiple instances of MarkLogic on a single machine
* For a production deployment, MarkLogic recommends at least 8 vCPUs per host, with 8 GB of memory per vCPU
* For a prototyping or development deployment, MarkLogic requires a minimum of 4 GB of system memory and recommends at least 8 GB of memory
* For small forests that will not grow, such as Security and Schemas, the reserve size is two times the size of the forest.
    - For data forests, we recommend a size of 500 GB, where 400 GB is allocated to content, and 100 GB is left as reserved space to handle merges
* On Linux systems, you need at least as much swap space as the amount of physical memory on the machine or 32 GB, whichever is lower
* On Windows systems, twice the physical memory is also recommended for the swap (page) file
    - For Windows 10, you configure this by searching for View Advanced System Settings in the taskbar. Next, click the icon. Then, in the Performance area, click Settings > Advanced and set the virtual memory to twice the physical memory. For earlier Windows systems, click System Control Panel > Advanced System Settings > Performance Settings > Advanced tab and set the virtual memory settings to twice the physical memory
---

## Lab-1

* Enjoy your first lab for Marklogic Installation
* Go to [Lab-1](https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/1-install.md)

---

# Getting Started with MarkLogic Server-Side JavaScript

## This section describes the following procedures to get started creating and querying documents using JavaScript in MarkLogic:

* About Query Console
* JavaScript Examples
* Module Programs and Other Considerations

---

## About Query Console
* Query Console is an interactive web-based query tool that is bundled with MarkLogic. Query Console enables you to write ad-hoc queries and view the results without using .sjs or .xqy files. You can view the results as formatted (Auto) or in plain-text (Raw) output. Query Console is designed for a modern web browser with JavaScript support.
* Many of the examples in this document assume you are using Query Console. To learn more about Query Console, see the Query Console Walkthrough in the Query Console User Guide

---

## This section walks you through creating some simple documents in JavaScript and contains the following parts:
* Create a Simple JSON Document
* Creating and Searching Documents

---

## Create a Simple JSON Document

## To create a simple document and query it, perform the following steps:
* Go to the following URL (substitute your hostname if MarkLogic is not running on your local machine):
http://localhost:8000/
* When prompted, enter a username and password. The user should have the admin role (you can use the same user created when you installed MarkLogic).
* Optionally, in Query Console, create a new workspace. This will make it easier to come back to later.
* To create a JavaScript object and return the results, enter the following in the query text area of Query Console:
    ```shell
    const obj = {key1:"value1", key2:"value2"};
    lick the Run button. You will see the object serialized in the results pane.
 * To create a document, enter the following in the query text area of Query Console:
    ```shell
    declareUpdate();
    const obj = {key1:"value1", key2:"value2"};
    xdmp.documentInsert("/simple.json", obj);
        Click the Run button. You will see your query response was empty in the results pane. But what actually happened is you created a document in the database. The declareUpdate() function is required everytime your program includes an update to the database (otherwise an exception is thrown--try it).
  * Look at the document you just created by entering the following in the query text area of Query Console
 ```shell
    cts.doc("/simple.json")
    Click the Run button. You will see the JSON document you created in the results pane.
```
* To see the key1 property, enter the following and then click the Run button:
```shell
    cts.doc("/simple.json").root.key1;
    You will see the value for the key1 property (value1) in the results pane. Note that cts.doc returns a document node, so you first have to navigate to the root to get to the JSON node, and then you can navigate to the key1 property.
```

---

# Creating and Searching Documents

## To create some documents and then perform some searches against them, perform the following steps:
 
 * In Query Console, run the following:
 ```shell
    // create some documents to search over
    declareUpdate();
    const phrase1 = "The quick brown fox jumps over the lazy dog.";
    const fox = {fox: phrase1};
    const phrase2 = "The huge white elephant walked in the mud.";
    const elephant = {elephant: phrase2};
    const phrase3 = "The fast electric car drove down the highway.";
    const car = { car: phrase3};
    const obj1 = { fox: {colors:["brown", "red", "yellow"],
         actions:["jump", "sleep", "eat"]} ,
        elephant: {colors:["brown", "white", "green"],
         actions:["blow horn", "sleep", "eat", "walk"]},
         car: {colors:["brown", "red", "yellow", "green", "grey"],
           actions:["speed", "drive", "stop", "accelerate"]}
             };

  const col = "my-phrases";
  const perms = [xdmp.permission("qconsole-user", "read"),
                 xdmp.permission("qconsole-user", "update")];
 xdmp.documentInsert("/fox.json", fox, perms, col);
 xdmp.documentInsert("/elephant.json", elephant, perms, col);
 xdmp.documentInsert("/car.json", car, perms, col);
 xdmp.documentInsert("/stuff.json", obj1, perms, col);

```
* Click the Explore button in query console. You should see the four new documents you just created. You can click on them to see their contents.
* Now in another Query Console buffer, run the following:

  ```shell
    // find all documents with the word "the" in the "my-phrases"
    // collection and count them
    let count = 0;
    const results = new Array();
    for (const result of cts.search(
         cts.andQuery(["the", cts.collectionQuery("my-phrases")]))) {
     count++;
     results.push(result); };
     results.push(fn.concat("Count = ", count)); 
     results;

   ```

## This returns the following array:

 ```shell
  [
    {"car":"The fast electric car drove down the highway."}, 
    {"fox":"The quick brown fox jumps over the lazy dog."},
    {"elephant":"The huge white elephant walked in the mud."},

     "Count = 3"
   ]
  
  ```
 * Now in another Query Console buffer, run the following:

 ```shell
  // find all documents in the "my-phrases" collection 
  // with the word "car" and count them
  let count = 0;
  const results = new Array();
  for (const result of cts.search(cts.andQuery([
        cts.collectionQuery("my-phrases"),
         cts.wordQuery("car")])) ) {
    count++;  
    results.push(result); }
  results.push(fn.concat("Count = ", count));
  results;      
  ```
## This returns the following array:

 ```shell
  [
     {"car":"The fast electric car drove down the highway."},
      "Count = 1"
  ]    
  ```
* Try changing some of the values in the cts.collectionQuery or the cts.wordQuery to see what different results you get.
* Now in another Query Console buffer, run the following:

  ```shell
  // find all documents with the word "car" and count them
  let count = 0;
  const results = new Array();
  for (const result of fn.collection() ) { 
     let res = result.root.car;
     let x = res;
     count++;
     results.push(x); };
   results.push(fn.concat("Count = ", count));  
   results;
 
  ``` 
## This returns the following array:
 ```shell
  [
 "The fast electric car drove down the highway.", 
 null, null, 
 {"colors":["brown", "red", "yellow", "green", "grey"],
  "actions":["speed", "drive", "stop", "accelerate"]}, 
 "Count = 4"
]

  ``` 
* A simpler way to find the number of documents with the word car in it is to perform the following:

  ```shell
       cts.estimate("car");

  ``` 

 ## This is an estimate of the number of documents that match the query, which means it is the number of documents that the indexes indicate are a match. For many searches, this will be accurate. For details about search, see the Search Developer's Guide.

* You can also use the jsearch API to perform the search as follows:

   ```shell
     mport * as jsearch from '/MarkLogic/jsearch.mjs';
    jsearch.documents()
  .where([cts.collectionQuery('my-phrases'), cts.wordQuery('car')])
  .map({snippet: true})
  .result();

  ``` 

## This returns two objects, the first is the HTTP header and the second contains the response from the endpoint, which contains a report detailing what matches the search.
 
    ```shell
     {"results":
    [{"score":108544, 
    "fitness":0.670031011104584, 
    "uri":"/car.json", 
    "path":"fn:doc(\"/car.json\")", 
    "confidence":0.497606456279755, 
    "index":0,
    "matches":
      [{"path":"fn:doc(\"/car.json\")/text(\"car\")",
        "matchText":
          ["The fast electric ", {"highlight":"car"}, 
           " drove down the highway."]
        }]
    }], 
      "estimate":1
    }
    ``` 
For details about jsearch, see jsearch API Documentation and Creating JavaScript Search Applications in the Search Developer's Guide.

This is just a very brief introduction to how you can search in documents. For information about the search functionality possible in MarkLogic, see the Search Developer's Guide.



# Module Programs and Other Considerations
## This section walks you through some Javascript changes that are implemented with a view towards improving Javascript performance:

*  Converting Scripts to Modules
* New Mimetype for Javascript Modules


# Converting Scripts to Modules
 ## Evaluating a JavaScript program may generate side-effects on the JavaScript global environment; therefore, each JavaScript program is evaluated in a separate v8 context. The overhead of creating such a context is significant, and in the recent v8 version that overhead has increased by roughly 40%.To compensate for this overhead, it is suggested that you convert your Javascript scripts to Javascript modules. A Javascript module program is one that adheres to the following :
 * A program that uses strict JavaScript syntax and can be compiled as a JavaScript module.
 * A program that contains a main module with .mjs extension.
 * Is any adhoc program that uses import or export syntax.

 For further reading on the details of converting script programs into module programs, please see our Javascript Reference Guide.

 # New Mimetype for Javascript Modules
 In order to support Javascript module programs, a new server mimetype has been created. All module URIs must conform to the new mimetype:

  * name: application/vnd.marklogic-js-module
  * Extension: mjs

 You may view this new mimetype by navigating to the Admin UI and selecting the Mimetypes from the explorer pane.

The extension for a module URI in the import statement may be omitted. When the module URI in an import statement doesn't contain an extension, an extension mapping to any of the above MIME types must be added to resolve the specified module. For example:
  
   ```shell
    import { square, diag } from 'lib/top'; // map to lib/top.js or lib/top.mjs
 
 ``` 

 # Getting Started with MarkLogic Using REST, Java, or Node.js

 ##  MarkLogic includes a REST Client API, a Java Client API, and a Node.js Client API. These APIs allow you to create full-featured, complex applications that create and update content in a MarkLogic database, search your content and return search results as well as facets, store JSON documents in MarkLogic, and much more. These APIs allow you to create these applications without needing to write any XQuery code.To quickly get started, first run through Getting Started with the MarkLogic REST API in the REST Application Developer's Guide. You can use the REST API directly using an HTTP tool like cURL, or you can write a thin layer on top of it in your favorite scripting or programming language and then quickly use the language you are familiar with.The Java Client API is built on top of the REST API. It includes the functionality of the REST API and is designed to be a familiar interface for Java developers. To get started with the Java Client API, see Getting Started in the Java Application Developer's Guide.The Node.js Client API is also built on top of the REST API. It includes the functionality of the REST API and is designed to be a familiar interface for JavaScript developers using Node.js. To get started with the Node.js Client API, see Getting Started in the Node.js Application Developer's Guide.


# Getting Started with MarkLogic Semantics Graph

## MarkLogic includes tools to index and store semantic graphs in the form of RDF triples. You can search and manage those triples using native SPARQL query and SPARQL Update, and do inference to discover new facts about your data. MarkLogic can function as a document store for triples embedded in documents and as a triple store for triples in graphs. These semantic capabilities can be accessed natively or through JavaScript, XQuery, and REST.

## Each RDF triple represents a fact (John Smith lives in London) in the form of a statement made up of a subject, predicate, and object. Groups of triples are stored as RDF graphs. Here is a model of a simple RDF graph that contains three triples:

Graph Excluded

# Getting Started with MarkLogic XQuery Applications

## This section describes the following procedures to get started using XQuery in MarkLogic Server:

* Exploring the Use Cases
* The App-Services App Server
* Sample XQuery Application that Runs Directly Against an App Server

Be sure to complete each procedure in the order presented.

# Exploring the Use Cases