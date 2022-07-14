# Apache NiFi + Kafka

---

## NiFi + Kafka

![](../images/63.png)

---

## Generate some data

![](../images/64.png)

---

## Prepare to log the data

![](../images/65.png)

---

## Publish the data to Kafka

![](../images/66.png)

---
## Prepare to consume the data

![](../images/67.png)

---

## Publish generated data to Kafka

![](../images/68.png)

---

## Consume the data from Kafka

![](../images/69.png)

---

## Setup data generator

![](../images/70.png)

---

## Generate unique FlowFiles

![](../images/71.png)

---

## Setup Kafka producer

![](../images/72.png)

---

## Topic name

![](../images/73.png)

---

## Delivery guarantee

![](../images/74.png)

---
## Still need to set relationships

![](../images/75.png)

---

## Success and failure

![](../images/76.png)

---

## Create topic

```shell
kafka-topics --create --topic nifi-topic --zookeeper localhost:2181 --partitions 3 --replication-factor 1
```

```text
topic: nifi-topic created
```

---

## Start the flow

![](../images/77.png)

---

## Consumer in Kafka

![](../images/78.png)

---

## Log attributes - terminate after writing 

![](../images/79.png)

---

## Kafka is shown as a label

![](../images/80.png)

---

## Configure Kafka consumer

![](../images/81.png)

---

## It is working!

![](../images/82.png)

---
## Rev it up

![](../images/83.png)

---

## 1000 messages per second

![](../images/84.png)

---

## That's it, folks

![](../images/congrats.png)

---





