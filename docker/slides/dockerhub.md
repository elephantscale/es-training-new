# Docker Hub

---

## About Dockerhub

<img src="../images/docker-horizontal.png" style="width:30%;float:right;"/>

- Docker hub is for docker images like is what Github for code
- The Hub hosts docker images - public and private
- Encourages sharing docker images, just like Github promoted 'social coding'
-  https://hub.docker.com

---

## Access Control

- Any one can 'pull' (download) public docker images 
- User account is needed to
  - push (upload) images
  - access private images

---

## Accounts / Organizations

- DockerHub has similar access structure like Github
- Users create individual accounts 
- Users can be part of multiple organizations
- Repositories can be owned by users or organizations


---

## Exploring Public Repositories
- Let's explore a public repo
- https://hub.docker.com/_/ubuntu
- Here you will see images tagged 
  - ubuntu:latest - is the latest image
  - ubuntu:bionic - Ubuntu bionic (18.04) release

---

## Pulling a docker image 
- Try downloading a sample image

```bash
$  docker images

# download latest ubuntu
$  docker pull ubuntu  
# this will take some time

$  docker images 
# should see ubuntu now
```

---

## Build a custom image and pushing it

- In this exercise we are going to build a custom docker image and upload it to Dockerhub 
- Step 1 : Define a docker file
- Step 2 : build docker image 
- Step 3 : Test the image 
- Step 4 : Upload the image
- Step 5 : Verify image at dockerhub

---

## Step 1 : Docker file

```docker 
FROM ubuntu

RUN apt update && \
	apt install -y iputils-ping
```

- We are building from ubuntu base image 
- We are installing `ping` utility by installing `iputils-ping`

---

## Step 2 : Build the Image 

```bash 
$  docker build .  -f Dockerfile  -t my_ubuntu
# this will download the image and build 

$ docker images
# you should see 'my_ubuntu' image
```

---
## Step 3 : Test the image 

```bash 
$   docker run -it my_ubuntu 
```

- This should drop you into your docker image 
- Try the following in docker image

```bash 
root@host:/ >   

## issue an ls command 
root@host:/ >  ls
# you will see ls output 

## try our newly installed ping command 
root@host:/ >  ping localhost 
# PING localhost (127.0.0.1) 56(84) bytes of data.
# 64 bytes from localhost (127.0.0.1): icmp_seq=1 ttl=64 time=0.059 ms
# 64 bytes from localhost (127.0.0.1): icmp_seq=2 ttl=64 time=0.096 ms

```

---

## Step 4 : Upload the image to dockerhub 

```bash
$ docker login 
# enter your credentials 

$ docker push  my_ubuntu
# this will upload the image to DockerHub

```

---

## Step 5 : Verify image at dockerhub 

- Go to dockerhub 
- you should see the image you just pushed
- now any one can download your image as   
`docker pull YOUR_USER_NAME/my_ubuntu`
