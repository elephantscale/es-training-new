# Docker Orchestration

<img src="../../assets/images/generic/3rd-party/orchestration-1.jpg" style="width:30%;" />

---

## Orchestration

* Complex applications involve running multiple docker containers

* For example, a sophisticated web application can comprise of:
    - A few web containers (nginx) for load balancing
    - A database container (mysql)
    - A caching server (redis)

* So we need to coordinate all these containers
    - For example database and caching containers should be up and running before the web containers spin up
    - etc...

* Doing all these manually is a lot of work.

---

## Docker Orchestration Tools

* There are many tools available

* Simple tools:
    - Docker compose
    - Docker swarm

* More complex:
    - Kubernetes
    - Cloud orchestration tools

* References:
    - [Best Container Orchestration Tools for 2021](https://phoenixnap.com/blog/container-orchestration-tools/)

---

# Docker Compose

<img src="../../assets/images/logos/docker-compose-logo-1.png" style="width:60%;" />

---
## Docker Compose

* Compose is a tool for defining and running multi-container Docker applications.

* Using Compose is basically a three-step process:

    - Define a **Dockerfile** so it can be reproduced anywhere.

    - Define the services that make up your app in **docker-compose.yml** so they can be run together in an isolated environment.

    - Run **docker-compose up** to start the application

---

## docker-compose.yaml

* Here we are defining 2 services
    - **web** - this is built using our custom Dockerfile
    - **redis** - as our database

* Also 'web' is linking to 'redis', establishing a connection

```yaml
version: "3.9"  # optional since v1.27.0
services:
  web:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - .:/code
      - logvolume01:/var/log
    links:
      - redis
  redis:
    image: redis
volumes:
  logvolume01: {}
```

---

## Docker Compose Tool

* **dockercompose** is single binary file

* It relies on **docker** to do all the work

* Install compose like this

```bash
$   sudo curl -L \
    "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
    -o /usr/local/bin/docker-compose

$   sudo chmod +x  /usr/local/bin/docker-compose
# Now docker-compose is installed in /usr/local/bin/docker-compose
```

---

## Lab: Docker Compose - Nginx

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Experiment with docker-compose

* **Approximate run time:**
  - 30 mins

* **Instructions:**
  - compose-1

Notes:

---

## Lab: Docker Compose - Wordpress

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - More complex application with compose

* **Approximate run time:**
  - 30 mins

* **Instructions:**
  - compose-2

Notes:

---

# Docker Swarm

<img src="../../assets/images/logos/docker-swarm-logo-1.png" style="width:60%;" />

---

## Docker Swarm?

* Container Orchestration Framework, similar to Kubernetes and Mesos

* Pros:
    - Easy to Configure
    - Easy to Deploy
    - Good for Most Use Cases.
    - We all already use Docker!

* Cons:
    - Not good for large clusters
    - Not good for complex applications

---

## Comparison

|                     | Docker Swarm                                        | Kubernetes                                                                                 | Mesos                                                     |
|---------------------|-----------------------------------------------------|--------------------------------------------------------------------------------------------|-----------------------------------------------------------|
| Release             | 07/2016                                             | 06/2014                                                                                    | 12/2011                                                   |
| Maturity            | Fairly Immature                                     | Mature                                                                                     | Very Mature                                               |
| Configuration       | Very Easy                                           | Complex                                                                                    | Complex                                                   |
| Configuration Type  | Configs                                             | Yaml                                                                                       | JSON                                                      |
| Minimum Size (Test) | 1                                                   | 2                                                                                          | 2                                                         |
| Minimum Size (Prod) | 4                                                   | 4                                                                                          | 6                                                         |
| High Availability   | Yes                                                 | Yes                                                                                        | Yes                                                       |
| Rack Awareness      | Yes                                                 | Yes                                                                                        | Yes                                                       |
| Summary             | Easy Configuration excellent  for small deployments | Hierarchical "pods" allow for advanced  configuration, excellent for complex applications. | Robust, mature platform designed  for thousands of nodes. |

---

## Using Docker Swarm

* On master node

```bash
$ docker swarm init
```

```console
Swarm initialized: current node (x5hmcwovhbpxrmthesxd0n1zx) is 
now a manager.

To add a worker to this swarm, run the following command:

docker swarm join --token 
SWMTKN-1-5agb6u8svusxsrfisbpiarl6pdzfgq
dv1w0exj8c9niv45y0ya-9eaw26eb6i4yq1pyl0a2zdvjz 
192.168.65.3:2377
```

* From each work node run the join command

```bash
$ sudo  docker swarm join --token 
SWMTKN-1-5agb6u8svusxsrfisbpiar
l6pdzfgqdv1w0exj8c9niv45y0ya-9eaw26eb6i4yq1pyl0a2zdvjz 
192.168.65.3:2377
```

```console
The node joined the swarm as a worker
```

---

## Running in Swarm

* See cluster

```bash
$    docker node ls
```

```console
ID                            HOSTNAME    STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
2ty7dlvkqcrzkzzxayoo7wge9 *   k-master    Ready     Active         Leader           20.10.8
q0nioez0n6kusspwvkmeho8jx     k-worker1   Ready     Active                          20.10.8
6mtgv125bvk3wocyuklrzl1ep     k-worker2   Ready     Active                          20.10.8
```

* Launch a service

```bash
$ docker service create \
i   --publish 8000:80 \ 
    --replicas 4 \
    --name nginx nginx:latest
```

```bash
$   docker service ls
```

```console
ID             NAME      MODE         REPLICAS   IMAGE          PORTS
xmzm8wr8ve27   nginx     replicated   4/4        nginx:latest   *:8000->80/tcp
```

```bash
$   docker service ps nginx
```

```console
ID             NAME      IMAGE          NODE        DESIRED STATE   CURRENT STATE               
v9t6juf7v0n9   nginx.1   nginx:latest   k-worker2   Running         Running 2 minutes ago                  
b5dv8csxrqxy   nginx.2   nginx:latest   k-master    Running         Running about a minute ago             
dy3wvdf1cj75   nginx.3   nginx:latest   k-worker1   Running         Running 2 minutes ago                  
flr232k7l3xt   nginx.4   nginx:latest   k-worker2   Running         Running 2 minutes ago   
```

---

## Stack Files

 * Defines our Swarm
 * Same format as docker compose (Yaml)
 * Sample nginx:

```yaml
version: '3'
services:
  nginx:
    image: nginx:latest
    ports:
      - 8000:80
    deploy:
      mode: replicated
      replicas: 4
```

```bash
$   docker stack deploy --compose-file docker-compose.yml app
```

---

## Lab: Swarm

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Run docker swarm

* **Approximate run time:**
  - 30-40 mins

* **Instructions:**
  - Swarm-1

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
