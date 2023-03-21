# Introduction to MarkLogic

## NoSQL database

* MarkLogic Server is an Enterprise NoSQL database
* It uses XML and JSON documents, along with RDF triples, as its data model, and stores the documents within a transactional repository
* It is a document-centric, transactional, search-centric, structure-aware, schema-agnostic, XQuery- and JavaScript-driven, high performance, clustered, database server

---

## Search

* MarkLogic fuses together database internals, search-style indexing, and application server behaviors into a unified system
* It indexes the words and values from each of the loaded documents, as well as the document structure
* And, because of its unique Universal Index, MarkLogic doesn’t require advance knowledge of the document structure (its “schema”) nor complete adherence to a particular schema
* Through its application server capabilities, it’s programmable and extensible

---

## Installation

* MarkLogic assumes there is only one MarkLogic Server process running on any given machine, so it is not recommended to run multiple instances of MarkLogic on a single machine
* For a production deployment, MarkLogic recommends at least 8 vCPUs per host, with 8 GB of memory per vCPU
* For a prototyping or development deployment, MarkLogic requires a minimum of 4 GB of system memory and recommends at least 8 GB of memory
* For small forests that will not grow, such as Security and Schemas, the reserve size is two times the size of the forest.
    - For data forests, we recommend a size of 500 GB, where 400 GB is allocated to content, and 100 GB is left as reserved space to handle merges

---

## Installation (cont...)

* On Linux systems, you need at least as much swap space as the amount of physical memory on the machine or 32 GB, whichever is lower
* On Windows systems, twice the physical memory is also recommended for the swap (page) file
    - For Windows 10, you configure this by searching for View Advanced System Settings in the taskbar. Next, click the icon. Then, in the Performance area, click Settings > Advanced and set the virtual memory to twice the physical memory. For earlier Windows systems, click System Control Panel > Advanced System Settings > Performance Settings > Advanced tab and set the virtual memory settings to twice the physical memory
---

## Lab-1

* Enjoy your first lab for Marklogic Installation
* Go to Lab-1

  https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/1-install.md