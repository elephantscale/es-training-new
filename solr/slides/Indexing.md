Solr: Indexing
===================

## Section Objectives

  * Practice adding data to Solr and delete data
  * Build a realistic search example
  * Deal with duplicates


Notes:


---

# Adding Your Own Contents To Solr

## Solr Import Options

  * XML
  * JSON
  * Binary (such as MS Word, Excel, etc.)

Notes:


---

## Lab: Adding A New Collection

* Overview: we will build a bookstore search and explore it.
* Pre-requisites: solr-labs/install/README.md   
* Approximate time: 30 minutes
* Instructions: solr-labs/indexing/1-films.md

Notes:

---

## Lab: Making Your Own Documents

* Overview: we will build a bookstore search and explore it.
* Pre-requisites: solr-labs/install/README.md   
* Approximate time: 30 minutes
* Instructions: solr-labs/indexing/2-tweets.md



## Solr Request Handlers

  * Tells Solr what to do
  * Most common: Search Handler (default)
  * Next: UpdateRequestHandler
  * More:

    - Collection management
    - Debugging the system
    - MoreLikeThisHandler
    - Etc.



Notes:


---

## Update Handlers

| Request type    | Explanation                             | XML example                                                                     |
|-----------------|-----------------------------------------|---------------------------------------------------------------------------------|
| Add             | Adds one or more documents to the index | `<add>   <doc>       <field name="id">1</field>         ...   <doc> </add>`     |
| Delete          | Deletes the document by ID              | `<delete>      <id>1</id> </delete>`                                            |
| Delete by query | Deletes documents matching a query      | `<delete>     <query>         screen_name:@thelabdude     </query> </delete>`   |


<!-- {"left" : 0.61, "top" : 1.19, "height" : 5.66, "width" : 9.04, "columnwidth" : [2.1, 2.33, 4.61]} -->



Notes:


---

# Building a bookstore search
## Bookstore example

  * Using provided books.xml data

    - Building a bookstore search
    - Adding book data
    - Exploring the book data


Notes:


---

## Lab: Bookstore 

* Overview: we will build a bookstore search and explore it.
* Pre-requisites: solr-labs/install/README.md   
* Approximate time: 30 minutes
* Instructions: solr-labs/bookstore/README.md

Notes:


---

# De-duplication

## De-duplication

  * What is de-duplication:

    - Preventing duplicate or near duplicate documents from entering an index or tagging documents 
    - Accomplished with a signature/fingerprint for duplicate field collapsing

  * De-duplication in Solr

    - Solr natively supports de-duplication techniques of this type via the <Signature> class 
    - Solr allows for the easy addition of new hash/signature implementations




Notes:


---

## De-duplication options

| Method               | Description                                                                                                      |
|----------------------|------------------------------------------------------------------------------------------------------------------|
| MD5Signature         | 128 bit hash used for exact duplicate detection                                                                  |
| Lookup3Signature     | 64 bit hash used for exact duplicate detection, much faster than MD5 and smaller to index                        |
| TextProfileSignature | Fuzzy hashing implementation from Nutch for near duplicate detection. Its tunable but works best on longer text. |


<!-- {"left" : 0.99, "top" : 1.64, "height" : 3.06, "width" : 8.26, "columnwidth" : [3.4, 4.87]} -->


Notes:


---

## de-duplication In solrconfig.xml

```xml
<updateRequestProcessorChain name="dedupe">
  <processor class="solr.processor.SignatureUpdateProcessorFactory">
    <bool name="enabled">true</bool>
    <str name="signatureField">id</str>
    <bool name="overwriteDupes">false</bool>
    <str name="fields">name,features,cat</str>
    <str name="signatureClass">solr.processor.Lookup3Signature</str>
  </processor>
</updateRequestProcessorChain>
```
<!-- {"left" : 0, "top" : 1.1, "height" : 2.25, "width" : 10.25} -->



Notes:


---










