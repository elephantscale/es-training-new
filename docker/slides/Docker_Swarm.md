# Docker Swarm
---

# Intro To Docker Swarm
---

## What is Docker Swarm?

[https://raw.githubusercontent.com/docker/swarm/master/logo.png](../images/docker-swarm-logo.png)

* Container Orchestration Framework
* Similar to Kubernetes and Mesos 

Notes:

Instructor Notes:

Participant Notes:

---

## Why Docker Swarm?

* Easy to Configure
* Easy to Deploy
* Good for Most Use Cases.
* We all already use Docker!

Notes:

Instructor Notes:

Participant Notes:

---


## Why Not Docker Swarm?
 * Not good for large clusters
 * Not good for complex applications



Notes:

Instructor Notes:

Participant Notes:

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


Notes:

Instructor Notes:

Participant Notes:

---


## Using Docker Swarm
 * Starting a new swarm is easy!
 * Simply run the following:

```bash
$ docker swarm init

Swarm initialized: current node (x5hmcwovhbpxrmthesxd0n1zx) is 
now a manager.

To add a worker to this swarm, run the following command:

docker swarm join --token 
SWMTKN-1-5agb6u8svusxsrfisbpiarl6pdzfgq
dv1w0exj8c9niv45y0ya-9eaw26eb6i4yq1pyl0a2zdvjz 
192.168.65.3:2377

To add a manager to this swarm, run 'docker swarm join-token
manager' and follow the instructions.
```

Notes:

Instructor Notes:

Participant Notes:

---


## Connecting to the Swarm
 * We need to connect another machine

```bash
$ sudo su  # Have to run as root
# docker swarm join --token 
SWMTKN-1-5agb6u8svusxsrfisbpiar
l6pdzfgqdv1w0exj8c9niv45y0ya-9eaw26eb6i4yq1pyl0a2zdvjz 
192.168.65.3:2377

The node joined the swarm as a worker
```

Notes:

Instructor Notes:

Participant Notes:

---


## Running a Service

```bash
$ docker service create --publish 80:80 \ 
  --name nginx nginx:latest

```


Notes:

Instructor Notes:

Participant Notes:

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
      - 80:80
    deploy:
      mode: replicated
      replicas: 1
```

Notes:

Instructor Notes:

Participant Notes:

---


## Deploying the Stack File

 * We can now deploy our stack file
 * A network will be created automatically

Notes:

Instructor Notes:

Participant Notes:

---

 
## Adding a volume

  * Containers are immutable
  * We need to add volumes to persist

  * Example YAML File for Volume

```yaml
services:
  nginx:
     ...
    volumes:
      - nginx-volume:/srv/www

volumes:
  nginx-volume:
```


Notes:

Instructor Notes:

Participant Notes:

---


