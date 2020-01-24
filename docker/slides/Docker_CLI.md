[ Back to Top Level](README.md) 

Docker CLI
=========

## CLI
 * Most work in Docker is done on the CLI
 * We have already seen this.
 * We use the `docker` command to execute most things

Notes:

Instructor Notes:


Participant Notes:




---


## Permissions
 * Docker service runs as root
 * Normal users needs to "sudo"
   - Very **annoying** for development.
 * Can add user to `docker` group:
   - **BEWARE!** Gives user root access!

Notes:

Instructor Notes:


Participant Notes:




---


## What is a Dockerfile?
 * Remember that containers are **layered**.
 * The base image usually comes from Docker Hub.
 * Our image has changes to that.
 * These changes are specified in a Dockerfile.

Notes:

Instructor Notes:


Participant Notes:




---


## FROM Statement
 * Dockerfiles always come from **somewhere**.
 * We don't start from scratch
 * Usually some Linux, like alpine.
 * Here, we will use Ubuntu:

```Dockerfile
# The base image
FROM ubuntu:latest
```

Notes:

Instructor Notes:


Participant Notes:




---


## Changes to image
 * We normally make changes to the image
 * Example commands:
   - RUN: executes a command on image
   - COPY: copies a file to the image.
   - CMD: executes our app
   - HEALTHCHECK: Gives us a health check. 


Notes:

Instructor Notes:


Participant Notes:




---


## Networking
 * Typically, we expose networking
 * Here, we expose 5000

```Dockerfile
  EXPOSE 5000
```

Notes:

Instructor Notes:


Participant Notes:




---

## Building 
 * We use the `docker build` command to build.
 * We have to have a Dockerfile in the root of the directory
 * Exaple:

```bash
cd myfirstapp
docker build -t myfirstapp
```

 * Watch the output -- it will be long!

Notes:

Instructor Notes:


Participant Notes:




---


## Lab 4.1: Dockerfile
 * Navigate docker-labs/04-Dockerfile/README.md

Notes:

Instructor Notes:


Participant Notes:




---

