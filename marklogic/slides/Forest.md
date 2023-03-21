# Forest

## Understanding Forests

* MarkLogic Server stores XML, JSON, XQuery, and JavaScript data in forests

* A forest is a collection of XML, JSON, text, or binary documents

* Forests are created on hosts and attached to databases to appear as a contiguous set of content for query purposes

* A forest can only be attached to one database at a time

---

## Understanding Forests (cont...)

* You cannot load data into a forest that is not attached to a database

* By default, the operations allowed on a forest are: read, insert, update, and delete.

* A forest contains in-memory and on-disk structures called stands

* Each stand is composed of XML, JSON, binary, and/or text fragments, plus index information associated with the fragments

---

## Understanding Forests (cont...)

* A forest also contains a separate on-disk Large Data Directory for storing large objects such as large binary documents

* MarkLogic Server stores large objects separately to optimize memory usage, disk usage, and merge time

* A small object is stored directly in a stand as a fragment

* A large object is stored in a stand as a small reference fragment, with the full content stored in the Large Data Directory

---

## Creating a Forest

* Go to Lab-2

    https://github.com/elephantscale/marklogic-labs/blob/main/marklogic/2-create_forest.md


