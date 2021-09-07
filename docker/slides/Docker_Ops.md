# Docker Operations 
---

# Networking

---

## Port Mapping

 * Host can forward network to container
 * This is done by port mapping.

```console
docker container run -p HOSTPORT:CONTAINERPORT
```

Notes:

Instructor Notes:

Participant Notes

---

## Running a Web Server

 * We can use nginx, a web server
 * Why not httpd (apache)?
 * nginx is really **tiny** 
   - perfect for a container
 * The `nginx` is a container name on Docker Hub

Notes:

Instructor Notes:

Participant Notes

---

## Mapping nginx
 * `nginx` needs access to port 80
 * But we don't want to map port 80 of host
 * Let's use 8002

```console
docker container run -p 8002:80 nginx
```

 * Here is the response:

```console
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
```

Notes:

Instructor Notes:

Participant Notes

---

## Running in Background
 * So far, our containers always get stopped when done.
 * How Do we run it as a background (daemon) proces?

```bash
docker container run -p 8002:80 -d nginx
```

Notes:

Instructor Notes:

Participant Notes

---


## Lab 3.1: Networking
 * 03-networking/3.1-ports
 * Complete Lab


Notes:

Instructor Notes:

Participant Notes

---


# Logging

## Container Logging

![https://www.docker.com/sites/default/files/horizontal.png](../../assets/images/logos/docker-logo-4-horizontal.png)

* Docker logs commmand:

```console
docker logs <container name>
```

* See the log interactively (tail -f)

```console
docker logs -f <container name>
```

* Note that this will give us the output of PID 1



Notes:

Instructor Notes:

Participant Notes

---


## Application Logs

* Our applications will likely have its own logs
* log4j / apache / etc.
* We can map a volume to the host using -v

```console
docker run -d -P -v ~/web-logs:/var/log/nginx nginx
```

* This will map ~/web-logs in the host to /var/log/nginx in the 
  container.



Notes:

Instructor Notes:

Participant Notes

---



# Security

## Is Docker Secure?

* Running container more secure than running on host.
* Namespaces isolate running apps from each other.
* CGroups isolate resources by container
  - Helps avoid one app exhausting all resources
* Containers have a very light "attack surface"
  - Few running processes
  - Limited libraries
  - Less things to attack



Notes:

Instructor Notes:

Participant Notes


---


## Docker Security
 * Docker daemon runs as root
 * Adding users to docker group give them access to root
 * Don't give access to users that don't have sudo access.


Notes:

Instructor Notes:

Participant Notes

---


## Kernel Exploits
 * Docker containers share the host Kernel
 * Kernel exploits in the container can affect host
 * Compromised code can be run on the host.
 * Kernel panics will affect **all** containers.


Notes:

Instructor Notes:

Participant Notes

---


## Resource Starvation
 * Cgroups can limit access to resources
 * If not limited, the app can use it up.


Notes:

Instructor Notes:

Participant Notes

---



