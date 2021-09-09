# Docker Introduction

<img src="../../assets/images/logos/docker-logo-1.png" style="width:40%;"/>
---

## Docker

* Docker was introduced to the world with a very little fanfare by Solomon Hykes, founder and CEO of a company then called dotCloud, in a five-minute [lightning talk](https://www.youtube.com/watch?v=wW9CAH9nSLs) at the Python Developers Conference in Santa Clara, California on March 15, 2013  ([Source](https://learning.oreilly.com/library/view/docker-up/9781492036722/ch01.html#promise-of-docker))

* Since then, it has become one of the most influencing technologies for software development and deployment

* Docker at the core uses [Linux Containers](https://linuxcontainers.org/), which has been available publicly since 2008

* How ever, the way Docker combined multiple technologies and made them easy to use, is one of the reasons it became so popular, and made **Docker more powerful than sum of its all parts**

* [Docker.com](https://www.docker.com/)  ([formerly dotCloud](https://www.docker.com/docker-news-and-press/dotcloud-inc-now-docker-inc)) is the company that is commercially supporting Docker

---

## What is Docker?

<img src="../../assets/images/logos/docker-logo-1.png" style="width:30%;float:right;"/>

* Docker is the current **industry standard container format**
    - Allows package and ship software in **self-contained containers**
    - Provides **isolation without performance hit**

* **What docker is NOT**
    - It is _not a virtualization platform_ like VMWare or KVM
    - It is _not a cloud platform_ like OpenStack
    - It is _not a configuration management tool_ like Chef, Puppet
    - It is _not a orchestration tool_ like Mesos, Kubernetes
    - It is _not a virtualization tool_ like VirtualBox, Vagrant

Notes:

Instructor Notes :

Participant Notes :

Docker's name is almost synonymous with containers.   While arguably Docker's contribution
is not the largest or the most significant to the container ecosystem, it is the one that
is closest to the developer -- as the developer relies on Docker tools to create container
application images.

---

## Docker Architecture

* Docker uses the host kernel on Linux, and thus run natively

* Unlike virtual machines, docker containers do not have their own guest OS, **they share the host OS**

* Containers run **isolated, in user space**

* References: [1](https://www.docker.com/resources/what-container)

<img src="../../assets/images/docker/docker-architecture-1.png" style="width:70%;"/>

---

## Docker Desktop for Windows (Developer)

<img src="../../assets/images/logos/windows-logo-1.png" style="width:30%;float:right;"/>

 * Docker Desktop for Windows has the following requirements:
   * Windows 10 Professional 64 Bit (or Higher)  (not Home, Not Home Pro)
   * Virtualization Extensions Available in CPU and turned on in BIOS.
   * Hyper-V (optional component) installed
   * Reasonable CPU / Memory requirements
 * Docker Toolbox
   * Windows Users unable to run Docker Desktop for Windows can run in Docker Toolbox
   * Toolbox requires Oracle VirtualBox for Virtualization.

Notes:

Instructor Notes :

Participant Notes :
Docker Desktop for Windows has fairly steep requirements.

Why does Docker require Hyper-V?  Because all containers on Windows require virtualization. Even windows containers require virtualization because those containers require Windows Server kernels which are different from Windows 10 (client) kernels.

Hyper-V does not run on Windows Home versions (most consumer-grade windows machines).  So, Docker Desktop for Windows will not run on those versions either.  One needs a Windows Professional.

Hyper-V will require that Virtualization extensions be turned on in the BIOS.  Typically, from the factory these are turned off on client machines for security reasons, as some exploits have targeted these instruction sets.

Docker Toolbox can be used together with Oracle VirtualBox to run Docker containers on older versions of windows such as 8.1 or 7 or on Home versions of Windows 10.  However, it’s a pretty painful developer experience, so it’s not recommended.

---

## Docker and Windows Server

<img src="../../assets/images/logos/windows-server-logo-1.png" style="width:30%;float:right;"/>

* Docker for Windows Server is designed for App deployment rather than Development
  - Developers should use Docker Desktop for Windows instead.
  - Supports running Linux containers containers (via Hyper-V)
  - And Native Windows Containers (using Hyper-V or native Windows Containers)
* Native Windows Containers
  - Native Windows Containers must use the same Windows Server kernel as the host
  - Both host and guest must be Windows Server to run native (not Windows 10)
  - Native Windows Containers must use Windows Server kernel
  - Able to run native containers without virtualization
  - Minimal Performance Penalty

Notes:

Instructor Notes :

Participant Notes :

Native Windows Containers are not all that common at this time, but Microsoft is pushing them because they
realize that the Windows platform needs to be have this capability to continue to be relevant as a server-side
platform.  

---

## Docker and WSL 2

<img src="../../assets/images/docker/3rd-party/windows-wsl2.jpg" style="width:20%;float:right;"/>

* Microsoft is including a full Linux kernel in the new Windows Subsystem For Linux 2
    - A bit of a "hell freezes over" moment considering history!
    - This is an **optional** install intended for developers only.

* This allows Windows users to install a full Ubuntu (or other distro) on top of Windows.

* This also allows Docker Users to run a native Linux conatiner on Windows (without using Hyper-V)!   - with the performance advantages of running native.

* Docker has a special Docker Desktop for WSL2 available for this.
    - It is a different product than Docker Desktop for Windows, and **beta** software
    - The two can be installed in parallel

* [Docker Desktop WSL 2 backend](https://docs.docker.com/desktop/windows/wsl/)

---

## Docker on Windows Use Cases

|                     | Windows 10 (Linux Kernel) | Windows 10 (Windows Server Kernel) | Windows Server (Virtualized Kernel) | Windows Server (Native Kernel) |
|---------------------|---------------------------|------------------------------------|-------------------------------------|--------------------------------|
| Use Case            | Developer                 | Developer                          | Deployment                          | Deployment                     |
| Container OS        | Linux                     | Windows Server                     | Linux or Windows Server             | Windows Server                 |
| Isolation from Host | Yes (via Hyper-V)         | Yes (via Hyper-V)                  | Yes (via Hyper-V)                   | Not Virtualized                |
| Startup Delay       | 500ms - 1s                | 500ms - 1s                         | 500ms - 1s                          | No Delay                       |

Notes:

Instructor Notes :

Participant Notes :

This slides shows the relative use cases of various use cases on Windows. Docker realizes that Windows is its most common platform for development, even for applications 
that will not be deployed on Windows.  Because of this, the Windows platform has the richest number of options.  Windows users need to choose between developing 
"native" Windows server containers or Linu containers.  The advantage of the native containers is that there is minimal delay in starting a native container,
similar to what one would expect on Linux platforms.

---

## Docker Desktop on Mac (Developer)

<img src="../../assets/images/logos/apple-logo-1.png" style="width:20%;float:right;"/>

* Docker Desktop on Mac is only supported as a development platform.
  - There are no "native" mac containers as there are on Linux and Windows

* Docker for Mac uses only Linux containers
  - Windows containers can be run entirely inside a VM (but this is not common)
  - Linux Containers use a VM for the Linux kernel only (much like Windows)

* Docker for Mac uses Apple’s VM Hypervisor
  - Note the Mac's BSD-based darwin kernel is not Linux and therefore must run a virtualized Linux Kernel.
  - Usually turned on factory default (unlike most PCs), No special actions required.

Notes:

Instructor Notes :

Participant Notes :

Apple is an extremely popular platform for development, so it comes as no surprise that Docker has versions for this platform.  As Apple has no real presence in the 
data center, it is strictly for development.

While it's often thought that Apple is built on top of Unix, it has chosen BSD Unix as its base, which is not compatible with the Linux Kernel.  So, like Windows,
Mac users must run in a VM, though unlike Windows, all modern Mac systems are capable of running virtualization without any special actions. 

There is no way to run "native" Windows containers on Mac, except for in a VM.  This isn't a common use case.

---

# Docker Architecture

---

## Docker Architecture

<img src="../../assets/images/docker/docker-architecture-2.png" style="width:90%;"/>

---

## Docker Images

* **Docker Images** can be considered 'templates'

* Images can be hosted on registries

* Here we see images for Ubuntu, Nginx ..etc

* We only need  **one copy of image on host**

<img src="../../assets/images/docker/docker-architecture-2.png" style="width:70%;"/>

---

## Docker Containers

* **Docker Containers** are instances of images

* We can run multiple containers for a same image
    - Here we see 2 ubuntu instances and 2 nginx instances running

* Containers run in isolation

<img src="../../assets/images/docker/docker-architecture-2.png" style="width:70%;"/>

---

## Docker Clients

* Docker service/daemon runs on host computers

* We interact with docker daemon using client

* Here we see the client issuing commands (build/pull/run)

<img src="../../assets/images/docker/docker-architecture-2.png" style="width:70%;"/>

---

## Container Registry

<img src="../../assets/images/logos/docker-hub-logo-1.png" style="width:30%;float:right;"/>

* **Registries** are like _App Store_ for docker images

* **Docker Hub** is a popular registry of containers

* Developers can publish and share images with the world

* Thousands of Containers Available

* We rarely start from scratch

- Use an image from Docker Hub!

Notes:

Instructor Notes :

Participant Notes :

If Docker's container image format is its first great contribution, Docker Hub and similar container registries are the second. The fact that users can
share and get container images from Docker Hub is a huge catalyst to containers, as it allows code to be shared across multiple teams.  More importantly,
it means there's no reason to re-invent the wheel. In fact, Docker Hub is designed to minimize re-invention of any kind.

We will see later how Docker's build process allows us to leverage other people's work.

---

## Other Container Registries

* **Docker Hub** is the most popular registry
    - Like Github, has free and premium accounts
    - Has individual and organizational accounts

* Cloud vendors have their own registries as well:
    - Google Cloud : [Google Container Registry (GCR)](https://cloud.google.com/container-registry)
    - Amazon Cloud [Elastic Container Registry](https://aws.amazon.com/ecr/)
    - Microsoft [Azure Container Registry (ACR)](https://aws.amazon.com/ecr/)

* If you are running in the cloud, use the cloud providers' registries
    - Much higher bandwidth for publishing / downloading images --> faster upload/download times
    - You won't incur bandwidth charges

* Enterprises can host their own private registries as well

Notes:

Instructor Notes :

Participant Notes :

Corporate environments invariably have Docker Hub blocked, much like Maven repository coordinate and Github itself. Because of this, companies are able to use
private container registries.  In fact, this is encouraged in Docker and rarely will someone attempt to put something out on public Docker Hub unless there is a
very good reason to do so.

The doesn't mean that one can't use Docker Hub.  If you want to start with, say, a basic linux image, using something from Docker Hub as a start makes
a lot of sense. Many corporate container registries will also mirror some or all Docker Hub artifacts.

---

## Group Lab: Exploring Docker Hub

<img src="../../assets/images/icons/group-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Explore DockerHub
  - Find some popular images

* **Approximate run time:**
  - 10 mins

* **Instructions:**
  - Look for these images
  - Operating systems: Ubuntu, alpine, busybox
  - Applications: nginx, httpd
  - Datastores : mysql, Oracle, redis
  - Development systems: python, jupyter, tensorflow
  - Discuss any other interesting images you find
  - Note the 'download count' for these images

Notes:

---

# Working with Docker

---

## Lab Prep

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Get access to lab environment

* **Approximate run time:**
  - 10 mins

* **Instructions:**
  - Instructor please distribute the lab environment details
  - Demo accessing lab machine

Notes:

---

## Lab-1: Installing Docker

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Install docker

* **Approximate run time:**
  - 15 mins

* **Instructions:**
  - 01-Install
  - Follow the instructions for your platform

Notes:

---

## Downloading Docker Images

* Before we run a docker container, we need a local copy of the image

* Docker images are hosted at registries like Dockerhub

* **`docker pull`** will download an image from registry to local machine

* Let's pull `alpine` - an ultra-lightweight Linux image, just 5MB in size (tiny).

```bash
$   docker pull alpine
```

<img src="../../assets/images/docker/docker-pull-1.png" style="width:60%;"/>

Notes:

Instructor Notes :

Participant Notes :

Anyone who has used Github and Git will find the Docker syntax easy to remember.  Instead of using a copy of the source code repository, Docker will
store the binary container image (usually a hash) in a local place on the user's hard drive.

---

## Check Images

* **`docker images`** will show images we have _locally_

```bash
$   docker images
```

```text
REPOSITORY                  TAG                  IMAGE ID       CREATED         SIZE

alpine                      latest               14119a10abf4   12 days ago     5.6MB
ubuntu                      focal                f643c72bc252   9 months ago    72.9MB
nginx                       latest               f6d0b4767a6c   7 months ago    133MB
```

---

## Running a Container

* **`docker run`** is used to run containers

```bash
$   docker run alpine ls
```

* This will run `alpine` image and run `ls` command inside the container

* Here is the output

```console
bin    etc    lib    mnt    proc   run    srv    tmp    var
dev    home   media  opt    root   sbin   sys    usr
```

* The container will exit immediately

* Containers are designed to run a job and terminate

Notes:

Instructor Notes :

Participant Notes :

Docker containers can be started with "run" -- this is because it's better to look at running a container as more like an app than a VM.  

Alpine is extremely popular as mini-sized Linux to start containers.  While running with a starter like ubuntu certainly gives a lot more
power plus the familiarity with ordinary tools like "bash", alpine is great when all we really need is just enough of an OS to run our 
application.

---

## Running a Shell

* Here we are going to run a shell in interactive mode

```bash
$   docker container run -it --rm alpine /bin/ash
```

* Parameters explained:
   - -i : interactive mode
   - -t : terminal mode
   - --rm : remove container after we are done
   - /bin/ash : bash is big and needs to be installed.  ash (almquist shell) is small. We also have old-school sh.

* Output, we will see a shell prompt, displayed.

```console
/ #
```

* Execute a few commands

```console
/ # date
    Thu Sep  9 06:55:58 UTC 2021
/ # hostname
    fea51759ac90
```

Notes:

Instructor Notes :

Participant Notes :

Many users ask how to "ssh" to the container.  This isn't typically how we accomplish this, instead, what we do is to attach our terminal to the container.

Some containers we probably want to automatically stop when we are not longer using the container. This depends a lot of the use case.  If the container is
more of background service, then we probably do not want to do this.  However, if it is an interactive application then this is not a bad idea.

---

## See Running Containers

* **`docker ps`** will list all running containers

```bash
# Run two instances of alpine on two terminals
$   docker run -it alpine /bin/ash
$   docker run -it alpine /bin/ash

# list running containers
$   docker ps
```

* output

```console
CONTAINER ID   IMAGE   COMMAND    CREATED        STATUS     PORTS    NAMES 

80c43841fdb7   alpine  "/bin/ash" 10 seconds ago  Up 10 seconds        boring_franklin
fea51759ac90   alpine  "/bin/ash"  4 minutes ago  Up 4 minutes         brave_cannon
```

* Here we see 2 containers, running alpine image
    - Even though they are running the same image `alpine`, each container is a unique process
    - Each container has a unique **container id**

* `ps` will list running containers.  To see all containers, including stopped containers use **`docker ps -a`**

---

## Stopping the Containers

* Use **`docker stop`** to stop running containers

```bash
$   docker ps
```

```console
CONTAINER ID   IMAGE   COMMAND    CREATED        STATUS     PORTS    NAMES 

80c43841fdb7   alpine  "/bin/ash" 10 seconds ago  Up 10 seconds        boring_franklin
fea51759ac90   alpine  "/bin/ash"  4 minutes ago  Up 4 minutes         brave_cannon
```

* Stop 

```bash
$   docker stop 80c43841fdb7
$   docker ps
```

```console
CONTAINER ID   IMAGE   COMMAND    CREATED        STATUS     PORTS    NAMES 

fea51759ac90   alpine  "/bin/ash"  4 minutes ago  Up 4 minutes         brave_cannon
```

---

## Removing Containers

* **`stop`** just halts the containers
    - They are still in the system
    - Will use up storage 
    - it will also show up in **`docker ps -a`**

* To cleanup, use **`docker rm`**
    - This will delete all container related files from the system

* It is a good practice to call **`stop`** followed by **`rm`**

```bash
$   docker stop 80c43841fdb7
$   docker rm   80c43841fdb7
```

Notes:

Instructor Notes :

Participant Notes :

Running "docker rm" is a good way to clean up and de-clutter our container registry.  That said, one should not expect to save lots of space by running docker rm,
because even larger container images are stored in the base repository, and deleing our derived images from these will not save an extraordinary amount of space.  
Remember, Docker overlays changes from one filesystem to the next, so only the changes will be removed..

---

## Removing a Images

* **`docker rm`** only deletes the container instance (e.g. 80c43841fdb7)
    - It does **NOT** delete the container **image**.  (e.g. alpine)
    - The container image is from Docker Hub or another repo.
    - It is stored locally in our local repo.

* Use **`docker rmi`** to delete image

```bash
$   docker rmi alpine
```

Notes:

Instructor Notes :

Participant Notes :

We differentiate between the container image and the container instance.  The image is not going to be directly deleted this way, but the instance
will be. 

Knowing the difference between instance and image is extremely important.

---

## Lab 2: Running Containers

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Run images

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - 2.1 - run
  - 2.2 - delete

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
