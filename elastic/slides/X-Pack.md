# X-Pack: Monitoring with Elastic
---

## What was X-pack?

* An elastic stack extension
* Security, monitoring, alerting, reporting, graph, and machine  learning
* Formerly shield / watcher / marvel
* Only parts can be had for free – requires a paid Platinum license or trial  otherwise


---


## X-Pack

* Commercial extension for Elasticsearch
* Subscription pricing
* More later

<img src="../../assets/images/elastic/X-Pack.png" alt="X-Pack.png" style="width:60%;"/><!-- {"left" : 1.02, "top" : 2.97, "height" : 4.9, "width" : 8.21} -->



Notes:


---

## Now for Kibana. Say you have logs

<img src="../../assets/images/elastic/3rd-party/Now-Kibana.png" alt="Now-Kibana.png" style="width:70%;"/><!-- {"left" : 0.51, "top" : 2.09, "height" : 4.88, "width" : 9.23} -->


Notes:


---

## Here is How You Would Like Them

<img src="../../assets/images/elastic/3rd-party/Here-Them.png" alt="Here-Them.png" style="width:60%;"/><!-- {"left" : 0.58, "top" : 1.72, "height" : 4.95, "width" : 9.09} -->



Notes:


---

## With X-Pack You Can Do Even More

<img src="../../assets/images/elastic/3rd-party/With-X-Pack.png" alt="With-X-Pack.png" style="width:60%;"/><!-- {"left" : 0.55, "top" : 1.66, "height" : 4.87, "width" : 9.16} -->



Notes:

---


## Install x-pack on Earlier Versions of Elastic Stack (pre 6.5)


```bash
cd /usr/share/elasticsearch
sudo bin/elasticsearch-plugin install x-pack
sudo vi /etc/elasticsearch/elasticsearch.yml  (Add xpack.security.enabled:false)
sudo /bin/systemctl stop elasticsearch.service  
sudo /bin/systemctl tart elasticsearch.service

cd /usr/share/kibana/
sudo -u kibana bin/kibana-plugin install x-pack  
sudo /bin/systemctl stop kibana.service
sudo /bin/systemctl start kibana.service

```

---

## Lab: Install X-Packs

* Lab 17: Install X-Packs


