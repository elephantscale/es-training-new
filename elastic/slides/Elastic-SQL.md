# Elasticsearch SQL

---

## Common thoughts on "Elasticsearch + SQL"

<img src="../../assets/images/elastic/elaticsearch-SQL.png" alt="elaticsearch-SQL.png" style="width:40%;float:right;"/>

* RDBMS
* Joins
* BI Tools like Tableau & PowerBI
* SQL 
* What about Query DSL?
* How/Where/Why/When?


---

## What is SQL?

<img src="../../assets/images/elastic/3rd-party/SQL-01.png" alt="SQL-01.png" style="width:80%;"/>

---

## What is the evolution of Elastic Stack SQL?


<img src="../../assets/images/elastic/3rd-party/elastic-slack-sql.png" alt="elastic-slack-sql.png" style="width:80%;"/>


---

## Experiment: Elastic Stack SQL Exploration 

* Open the Kibana Dev Console


<img src="../../assets/images/elastic/3rd-party/kibana-dev.png" alt="kibana-dev.png" style="width:55%;"/>

<img src="../../assets/images/elastic/3rd-party/manage-elastic-slack.png" alt="manage-elastic-slack.png" style="width:50%;"/>


---

## Querying Elastic Kibana Console Interface


<img src="../../assets/images/elastic/3rd-party/elastic-kibana.png" alt="elastic-kibana.png" style="width:70%;"/>


---

## Queries to Explore

```text
# describe the data model for the table (AKA INDEX)
POST /_sql
{
  "query":"DESCRIBE company"
}

#deprecated syntax - old school
POST /_xpack/sql
{
  "query":"select * From company"
}
```

---

## Queries to Explore

```text
#return standard elasticsearch output format
POST /_sql
{
  "query":"select * From company"
}

#return CSV
POST /_sql?format=csv
{
  "query":"select * From company"
}
```

---

## Queries to Explore

```text
#return standard SQL query output format
POST /_sql?format=text/plain
{
  "query":"select * From company"
}

#Shorter syntax with limit
POST /_sql?format=txt
{
  "query":"select * From company limit 1"
}

```



---

## Queries to Explore

```text
# search fewer fields
POST /_sql
{
  "query":"select firstname, lastname from company"
}

# search fewer fields
POST /_sql
{
  "query":"select firstName, lastName from company"
}

```


---

## Queries to Explore


```text
# future
POST /_sql
{
  "query":"select distinct firstName, lastName from company"
}
#Math functions
POST /_sql?format=txt
{
  "query":"select round(8.2 + 12.2) * 2 as answer"
}
```

