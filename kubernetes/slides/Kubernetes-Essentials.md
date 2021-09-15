# Kubernetes Essentials

<img src="../../assets/images/logos/kubernetes-logo-4-medium.png" style="width:35%;" />

---

## Module Objectives

* Understand the Kubernetes concepts and architecture

* Work with pods configurations, deployments, and replica sets and replication controller

Notes:

Instructor Notes :

Please let students know that in addition to the objectives they identified for themselves in taking this module, these are the ones we expect to achieve based on the material provided.

Participant Notes :

In addition to the objectives you identified in taking this module, these are the ones we expect to achieve based on the material provided.

---

# Let's Design Kubernetes from Scratch

<img src="../../assets/images/generic/3rd-party/whiteboard-design-1.jpg
" style="width:30%;" />

---

## Challenge:  Design K8s from Scratch

* We want to a design an orchestration system to help us manage our infrastructure

* Let's say we want to manage our massively scalable web application

* What do we need to achieve this?

<img src="../../assets/images/kubernetes/web-app-2-scaling.png" style="width:50%;" />

---

## Step-1: We Need a Distributed System

<img src="../../assets/images/kubernetes/kubernetes-design-1.png" style="width:50%;float:right;" />

* We need **multiple nodes (machines, hosts)**

* Let's assume they are all **Linux machines** (could be bare metal or virtualized)

* We will adopt a popular distributed design pattern:  **mater-workers**

---

## Step-2: Controllers for Master and Workers

<img src="../../assets/images/kubernetes/kubernetes-design-2.png" style="width:50%;float:right;" />

* Each worker will have a 'supervisor/controller' that manages that node.  We will call it **kubelet**

* All kubelets will coordinate with **master controller**

---

## Step-3: Running Applications

<img src="../../assets/images/kubernetes/kubernetes-design-3.png" style="width:50%;float:right;" />

* We need a portable, secure way of running applications

* We will use **containers**!

* Here you see docker runtime installed on all nodes, and we have containers running on all nodes

---

## Step-4: Grouping Containers Together

<img src="../../assets/images/kubernetes/kubernetes-design-4.png" style="width:50%;float:right;" />

* For some applications, we want the related **containers grouped together**
    - For example, a web application and a logging agent
    - The logging agent monitors web application logs
    - So it makes sense for them to be 'run as a single unit'

* This is done via **pods**
    - Pods can run one or more containers as a unit

* Also pods are **schedulable work units**

---

## It is Getting a Bit Crowded :-) 

<img src="../../assets/images/kubernetes/kubernetes-design-4.png" style="width:70%;" />

---

## Step-5: Networking

<img src="../../assets/images/kubernetes/kubernetes-design-5.png" style="width:50%;float:right;" />

* We need a solid, flexible networking setup in the system

* Network traffic is handled by **kubeproxy**

* KubeProxy will tightly work with Linux network layer to manage networks and traffic

---

## Step-6: Finalize with Few More Controllers

<img src="../../assets/images/kubernetes/kubernetes-design-6.png" style="width:50%;float:right;" />

* On the master node, we are adding 2 more controllers

* **Scheduler** will place pods on worker nodes

* **etcd** (a distributed datastore) will keep track of cluster status

---

## Here is Our Final Architecture

* Whew, we came up with a pretty complicated system!

<img src="../../assets/images/kubernetes/kubernetes-design-6.png" style="width:55%;" />

---

# Kubernetes Architecture

---

## Kubernetes Cluster

  * A cluster is a set of computing instance that Kubernetes manages

<img src="../../assets/images/kubernetes/cluster-1.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Can One Serve Two Masters?

<img src="../../assets/images/kubernetes/cluster-2.png" style="width:42%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Yes!

* A cluster can have multiple masters and lots of nodes



Notes:

---
## A Big Picture Overview of Kubernetes

<img src="../../assets/images/kubernetes/kubernetes-architecture-1.png" style="width:90%;" /> <!-- {"left" : 0.47, "top" : 1.56, "height" : 4.38, "width" : 9.31} -->

Notes:

---
## Kubernetes Architecture

* Kubernetes engine is a cluster. It has at least one master and potentially multiple worker machines. Worker machines are called nodes. The master and the node machines together perform cluster orchestration.

<img src="../../assets/images/kubernetes/kubernetes-architecture-2.png" style="width:70%;" /><!-- {"left" : 0.33, "top" : 1.05, "height" : 5.91, "width" : 9.58} -->

Notes:

Instructor Notes :

Participant Notes :

Kubernetes master
The master's lifecycle is managed by Kubernetes Engine when you create or delete  a cluster. 

Kubernetes node 
A typical cluster has one or more nodes, that are called worker machines, which run the containerized application and other workloads. A Master manages all the nodes and hence receives updates on the status of each node.

---

## Kubernetes Master Architecture

* We will look at all these components in detail in the next few slides

<img src="../../assets/images/kubernetes/kubernetes-architecture-3-master.png" style="width:80%;" /><!-- {"left" : 0.43, "top" : 1.29, "height" : 4.92, "width" : 9.38} -->

Notes:

Instructor Notes :

Participant Notes :

---

## Kubernetes Master

<img src="../../assets/images/kubernetes/kubernetes-architecture-3-master.png" style="width:50%;float:right;" /><!-- {"left" : 0.43, "top" : 1.29, "height" : 4.92, "width" : 9.38} -->

* **Etcd**

* Configuration information is stored in Etcd and this information can be used by each of the nodes in the cluster.  

* Etcd is an highly-available key value store and can be distributed among various nodes in the cluster. Being a distributed key value store, it is accessible to all.

* Etcd contains sensitive information and hence is accessible only by the Kubernetes API server.  

* References:
    - [Etcd vs Zookeeper](https://dzone.com/articles/apache-zookeeper-vs-etcd3)
    - [Etcd vs other datastores](https://etcd.io/docs/v3.3/learning/why/)

---

## Kubernetes Master

<img src="../../assets/images/kubernetes/kubernetes-architecture-3-master.png" style="width:50%;float:right;" /><!-- {"left" : 0.43, "top" : 1.29, "height" : 4.92, "width" : 9.38} -->

* **API Server**

    - API Server handles majority of user/admin interactions in the cluster

    - API server is very crucial

* **Scheduler**

    - Scheduler  is responsible for workload distribution.

    - It is also responsible for monitoring, tracking of utilization and redistribution of the workload on the nodes based on their resource availability.

    - Scheduler is also responsible for allocation of the pod to a new node.

---

## Kubernetes Master

<img src="../../assets/images/kubernetes/kubernetes-architecture-3-master.png" style="width:50%;float:right;" /><!-- {"left" : 0.43, "top" : 1.29, "height" : 4.92, "width" : 9.38} -->

* **kube-controller-manager** is a binary that runs controllers.  Logically, each controller is a separate process, but to reduce the number of moving pieces in the system, they are all compiled into a single binary and run in a single process.

* These controllers include:
    - Node Controller: Responsible for noticing & responding when nodes go down.
    - Replication Controller: Responsible for maintaining the correct number of pods running
    - Endpoints Controller: Manages endpoints
    - Service Account & Token Controllers: Create default accounts and API access tokens for new namespaces.

---

## Kubernetes Node Architecture

* K8 Node (worker machine) has quite a bit of components running as well

<img src="../../assets/images/kubernetes/Kubernetes-Node-Architecture.png" style="width:90%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

Notes:

Instructor Notes :

Participant Notes :

---

## Kubernetes Node Architecture

<img src="../../assets/images/kubernetes/Kubernetes-Node-Architecture.png" style="width:50%;float:right;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

* **Docker**
    - Docker is a basic requirement for each node. Dockers help in running the encapsulated app containers in an isolated, self-contained, lightweight environment.

* **Kubelet**
   - Kubelet, the primary "node agent", runs on each node 

   - Kubelet communicates with the master component for receiving the commands and for working. It is responsible for maintaining the status quo of the work process and node server.

---

## Kubernetes Node Architecture

<img src="../../assets/images/kubernetes/Kubernetes-Node-Architecture.png" style="width:50%;float:right;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

* **Kube-Proxy**
    - KubeProxy is a network proxy that runs on each node in your cluster

    - kube-proxy maintains network rules on nodes. These network rules allow network communication to your Pods from network sessions inside or outside of your cluster

    - kube-proxy uses the operating system packet filtering layer if there is one and it's available. Otherwise, kube-proxy forwards the traffic itself

* **supervisord** is a lightweight process babysitting system for keeping kubelet and docker running.  This is a Linux utility

---

# Namespaces

---

## Namespaces

<img src="../../assets/images/kubernetes/namespaces-2.png" style="width:35%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Intended for use in **multi-user/multi-team** environments.  Allows a physical cluster to be segmented into multiple **virtual clusters**

<img src="../../assets/images/kubernetes/namespaces-1.png" style="width:35%;float:right;clear:both;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Allows division of cluster resources amongst multiple users, thus provides logical separation between teams and their environments.
    - e.g.  Department-1,  Department-2

* Allows for role-based access control.

* Manage different environments within the same cluster.
    - e.g.  Dev,  Prod

* Namespaces help isolate resources into their own space.

* Reference: [1](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)

---

## Namespace

<img src="../../assets/images/kubernetes/namespaces-3.png" style="width:35%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Kubernetes objects/resources are located within the namespace

* Kubernetes by default initializes 3 namespaces
    - kube-system: all system level functionality
    - kube-public: accessible to all
    - default: default user namespace

* Creating a namespace

```bash
$   kubectl create namespace myns
```

* Listing namespaces

```bash
$   kubectl get ns
```

```console
NAME                   STATUS   AGE
default                Active   5d8h
kube-public            Active   5d8h
kube-system            Active   5d8h
myns                   Active   77m
```


Notes:

Instructor Notes :

Participant Notes :
Namespaces are 'logical or virtual entities'.
Multiple Namespaces can be hosted on a single physical cluster.

Namespaces help isolate resources into their own space.
Resources within a single Namespace, must have unique names.

---

# Pods

---

## Pod

<img src="../../assets/images/kubernetes/kubernetes-design-6.png" style="width:40%;float:right;" />

* The Pod is the core **unit of management** in K8s
    - Pods can be scaled up and down
    - Pods can be moved from Node to Node

* A Pod can run **one more containers**

* The Pod emulates a **logical host**
    - Containers in the same pod share the same hostname

* Each pod is isolated by:
    - Process ID (PID) namespace
    - Network namespace
    - Inter Process Communication (IPC) namespace
    - Unix Time Sharing (UTS) namespace

Notes:

Instructor Notes :

Participant Notes :

The pod serves as Kubernetes’ core unit of management. 
A pod is a group of one or more co-located and co-scheduled containers with shared storage/network and run in a shared context.
It hosts all the specifications that are required run the containers.

A pod models an application-specific "logical host" containing one or more application containers which are relatively tightly coupled.

---

## Pods and Containers

<img src="../../assets/images/kubernetes/pod-1.png" style="width:50%;float:right;" /> <!-- {"left" : 2.37, "top" : 2.11, "height" : 4.88, "width" : 5.52} -->

* Here we see a Pod encapsulating 3 containers

* Pods provide 2 types of shared resources for containers constituent in them:
    - Networking
    - Storage

* Each Pod is assigned a unique IP address and containers within them communicate with each another using localhost.

* So a Pod acts as a 'virtual host'

Notes:

Instructor Notes :

Participant Notes :

Pods are designed to support cohesive multiple cooperating processes or containers. These containers, by default, are co-located and co-scheduled in the same machine in the cluster. The machine can be physical or virtual.
Each of these containers share resources and dependencies, and can communicate and coordinate with one another.

Networking
Each Pod is assigned a unique IP address, and every container in the pod shared the same namespace, IP address, and network ports. They communicate with one another using localhost.

Storage
Set of shared storage volumes can be specified in a Pod, which can be accessed by all containers to share the same set of data. 
Volumes allow persistent data in a Pod in case of container restart within the pod.

---

## Pod vs. Container

<img src="../../assets/images/kubernetes/Pod-Container.png" style="width:50%;float:right;" /> <!-- {"left" : 0.48, "top" : 1.33, "height" : 4.84, "width" : 9.3} -->

* Typically, Containers are often used for solving narrowly defined problems. However, most of the time we end up designing for multiple containers to solve a single problem.

* Thus the main purpose of a multi-container Pod is to **support those helper process** that are co-located, co-managed for a primary application. 

<img src="../../assets/images/kubernetes/3rd-party/Indiana-Jones-And-The-Last-Crusade-2-sidecar.jpg" style="width:35%;float:right;clear:both;" /> <!-- {"left" : 0.48, "top" : 1.33, "height" : 4.84, "width" : 9.3} -->

* Here we have redis container acting as a local cache for python application.  So they are co-located in a Pod

* This design pattern is called **sidecar** pattern

Notes:

Instructor Notes :


Participant Notes :


Few if those are listed below: 

**Proxies, bridges, and adapters** creates a connect  between the main container and external world. These can also re-route the traffic to the external work. Thus proxies and bridges make it possible for the main container to access the localhost without any service discovery.

---

## Sidecar Pattern

<img src="../../assets/images/kubernetes/3rd-party/Indiana-Jones-And-The-Last-Crusade-2-sidecar.jpg" style="width:35%;float:right;" /> <!-- {"left" : 0.48, "top" : 1.33, "height" : 4.84, "width" : 9.3} -->

* **Sidecar** containers are **"helpers"** the main container 

* Examples of helper applications are:
    - log collectors
    - monitoring adopters
    - code loaders

* Here we see **log collecting** feature implemented as a sidecar pattern.  Basically log gathering is a helper function attached to the primary application

<img src="../../assets/images/kubernetes/sidecar-helper-1.png" style="width:45%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

---

## Sidecar Pattern

* Another typical application of sidecar pattern is code watchers

* Here we have a helper that monitors github repository and fetches new code to refresh application

* 'Github monitor' is a separate functionality from the main application, so it makes sense to separate it as another container.  But since they are tied together, they are colocated in the same Pod

* Example app: updating a 'blacklisted IP list'

<img src="../../assets/images/kubernetes/sidecar-helper-2.png" style="width:60%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

---

## Pod Spec / Configuration

* **Quick intro to spec/config/manifest files**

* Kubernetes objects are defined in **YAML or JSON** files
    - YAML is preferred over JSON as it is more user friendly and can be used inter-changeably.

* Configuration files should be stored in version control before being pushed to the cluster.
    - So we can track changes easily
    - and quickly roll back a configuration change if necessary.

---

## Pod Definition (Spec / Manifest)

* Define a pod with a YAML file

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: web
      image: nginx
```

* **`kind: Pod`** specifies that we are defining a Pod object

* Under **`spec`** we include more details

* The docker **`image: nginx`** is used

* We **do not** specify where to place the pod.  K8s will figure it out based on cluster availability
    - We can give guidance on where the Pod should go -- more on this later

Notes:

---

## Uploading the Configuration

* Upload the YAML file to the master

```bash
$   kubectl apply -f pod.yaml
```

<img src="../../assets/images/kubernetes/pod-2.png" style="width:80%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

Notes:

---

## Master Creates the Pod  

* The master creates a pod on your set of nodes

<img src="../../assets/images/kubernetes/pod-3.png" style="width:80%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

Notes:

---

## Deploying a Pod

<img src="../../assets/images/kubernetes/Deploying-a-Pod.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

Instructor Notes :

Participant Notes :

Here we see 2 Pod definitions. 
A Python one for web application
A Redis one for datastore

Master – All communication paths from the cluster to the master terminate at the API server.
Web Pod – Deployed the web application into the kubernetes nodes.
DB pod   - Deployed the Database application. 
We can deploy many pods like those listed above. 

---

# Hands on With Kubernetes

---

## Lab: Setting up Kubernetes - Single Node

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - We will use minikube to setup a single node Kubernetes cluster

* **Approximate run time:**
    - 20-30 mins

* **Instructions:**
    - **Instructor please demo this lab**
    - Please complete **install-1**

Notes:

---

## Lab: Setting up Kubernetes - Multi Node

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Setup a 3 node kubernetes cluster

* **Approximate run time:**
    - 40-60 mins

* **Instructions:**
    - **Instructor please demo this lab**
    - Please complete **install-2**

Notes:

---

## Lab: Running a Pod

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Run a single pod

* **Approximate run time:**
    - 15 mins

* **Instructions:**
    - **Instructor please demo this lab**
    - Please complete **pod-1**

Notes:

---

## Lab: Running Multiple Pods

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Deploy mulitple pods

* **Approximate run time:**
    - 15 mins

* **Instructions:**
    - **Instructor please demo this lab**
    - Please complete **pod-2**

Notes:

---

# Replica Sets

<img src="../../assets/images/generic/3rd-party/clones-2.jpg" style="width:40%;" /><!-- {"left" : 0.46, "top" : 1.81, "height" : 3.88, "width" : 9.33} -->

---

## Replication

* **Replication** allows us to run multiple instances of an application

* **Reliability:** Even if an instance crashed, other instances can handle the load

* **Load balancing:** Moreover, maintaining multiple versions of a container allows you to re-route the traffic to other instances with similar versions. This will prevent overloading of any particular node.

* **Scaling:** If the load increases, K8s can spin up additional instances to handle the load

<img src="../../assets/images/kubernetes/web-app-2-scaling.png" style="width:40%;" />

Notes:

Instructor Notes :

Participant Notes :
Before we go into how you would do replication, let’s talk about why.  

Typically one may prefer container replication for a variety of reasons.

Replication logic has to be simple by design but should offer powerful and flexible deployment topologies

---

## ReplicaSet

* ReplicaSet keeps a certain number of pods running at anytime

<img src="../../assets/images/kubernetes/ReplicaSet-01.png" style="width:70%;" /><!-- {"left" : 0.58, "top" : 1.5, "height" : 5, "width" : 9.08} -->

Notes:

Instructor Notes :

Participant Notes :

We are running 4 copies of the application using ReplicaSet. Please note that name, selector, podTemplate and replica syntaxes used.

---

## ReplicaSet

* Left: Here we wanted 4 pods (**desired state**) and we have 4 pods running (**current**)

* Right: Say one node crashes

<img src="../../assets/images/kubernetes/ReplicaSet-02.png" style="width:45%;" /><!-- {"left" : 0.6, "top" : 0.99, "height" : 5.51, "width" : 9.06} -->  &nbsp;  &nbsp;
<img src="../../assets/images/kubernetes/ReplicaSet-03.png" style="width:45%;" /><!-- {"left" : 0.6, "top" : 0.99, "height" : 5.51, "width" : 9.06} -->


Notes:

Instructor Notes :

Participant Notes :

The replication Controller is 4 
Desired = 4 ( The Defined replication is up and running )
Current = 4 ( 4 pods are running )
Node    = 4

---

## ReplicaSet

* ReplicationController will notice this, and launch another Pod on one of the remaining nodes!

<img src="../../assets/images/kubernetes/ReplicaSet-04.png" style="width:45%;" /><!-- {"left" : 0.6, "top" : 0.99, "height" : 5.51, "width" : 9.06} -->
&nbsp; &nbsp;<img src="../../assets/images/kubernetes/ReplicaSet-05.png" style="width:45%;" /><!-- {"left" : 0.6, "top" : 0.99, "height" : 5.51, "width" : 9.06} -->

---

## Replication Controller

* **Replication Controller** was the original form of replication in Kubernetes

* Replication Controller is superseded by Replica Sets.


```yaml
apiVersion: v1
kind: ReplicationController
metadata:
  name: nginx
spec:
  replicas: 3
  selector:
    app: nginx
  template:
    metadata:
      name: nginx
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx
        ports:
        - containerPort: 80
```


Notes:

Instructor Notes :

Participant Notes :

Despite being replaced by ReplicaSets, Replication Controller, the original form of replication is still widely in use.

A Replication Controller allows us to easily create multiple pods ensures that the pods are live and available. Replication Controller provides elasticity in managing the pods including the ability to autoscale or update the pods by a single command.

---

## Replica Sets

* **Replica Sets** and Replication Controllers are declared almost in the same way except **they have more options for the selector**

* RS **uses labels to select the Pods it will manage**  (`app=nginx`)


```yaml
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: nginx-replicaset
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 4 # tells deployment to run 2 pods matching the template
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx
          ports:
            - containerPort: 80
```

Notes:

Instructor Notes :

Participant Notes :

Replica Sets are fast replacing RCs. 

Replica Sets though, are declared in the same way as Replication Controllers, but they possess more options for the selector. 
Replica Set makes sure that required number of pod replicas are running at all times.

---

## Lab: Running a ReplicaSet

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Deploy ReplicaSet

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **REPLICA-1**

Notes:

---

# Deployments

---

## Deployments

* **Deployments** offer more functionality than Replication Controllers

* Deployments provide roll-out and roll-back options

* Deployments depend on ReplicaSets to manage and run pods

<img src="../../assets/images/kubernetes/Deployments.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

Instructor Notes :

Participant Notes :
Deployments, intended to replace Replication Controllers, provide the same replication functions (through Replica Sets) but additionally provide the ability to roll out and roll back the changes if required.

When the desired state is specified in the Deployment object, and the Deployment controller ensures the movement to the desired state from the actual state at a controlled rate. 

Pause the Deployment to apply multiple fixes to its PodTemplateSpec and then resume it to start a new rollout.

---

## Deployment

* Deployments monitor cluster and update changes when required

* Here we increased replicas from 3 (left) to 4 (right)

* So a new Pod is created

<img src="../../assets/images/kubernetes/Deployments.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/kubernetes/Deployments-01.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Deployment

* Deployments monitor pods and make correction when they stop working

* Here a Pod crashed, and a replacement Pod is spun up

<img src="../../assets/images/kubernetes/Deployments-02.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/kubernetes/Deployments.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Deployment

* Deployments constantly monitor cluster to observe changes

* Here we have gone from 4 replicas (left) to 3 (right).  So the excess Pod is deleted

<img src="../../assets/images/kubernetes/Deployments-01.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/kubernetes/Deployments-03.png" style="width:45%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Deployment Definition

* Our deployment consists of
    - Pods with `nginx` containers
    - 4 replicas

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 4 # tells deployment to run 2 pods matching the template
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx
          ports:
            - containerPort: 80
```

---

## Lab: Deployments

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Run a deployment

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **DEPLOY-1**

Notes:

---

# Services

---

## Service

* **Service** is an abstraction in Kubernetes, that allows us to define a 'high level' service

* For example, when we access Google search, we are accessing a service

* There may be 1000s of machines running the service behind the scene

* And at any moment a few of them may be down

* But the service overall is working and available


<img src="../../assets/images/kubernetes/service-1.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Services

* **Service vs. Deployment**
    - A deployment is responsible for keeping a set of pods running.
    - A service is responsible for enabling network access to a set of pods

* A Service can be backed by many Pods

* Service will route traffic to any of the Pods

* Service works with **kubeproxy** to direct traffic to Pods

<img src="../../assets/images/kubernetes/Exposing-Services.png" style="width:65%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

Instructor Notes :

Participant Notes :

An example of Service might be a web service.
This Web Service can be powered by say 3 Pods.
Client accessing the service doesn't care if the 3 Pods are up and running or not, as long as the service is accessible.

---

## Service Communication with Pods

* A service will get its own **fixed virtual IP address**

* So all traffic can be **predictably** routed to this IP address

* From there, the service can bounce traffic to active Pods

<img src="../../assets/images/kubernetes/service-assigns.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Multiple Services

* You can have multiple services with varying configurations and features at any given time


<img src="../../assets/images/kubernetes/service-assigns-1.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Exposing Service to Outside World

<img src="../../assets/images/kubernetes/service-2-expose-nodeport.png" style="width:50%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* One of the simplest ways of making our service to outside world is called **NodePort**

* Here a client can access the service by connecting to **any node on port 30000**

* Traffic flow:
    1. Client hits a **node:30000**
    2. Node forwards the traffic to a **service IP address** (this is virtual btw)
    3. The service then bounces traffic to **any of the pods servicing**

---

## Service Definition

<img src="../../assets/images/kubernetes/service-2-expose-nodeport.png" style="width:40%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  type: NodePort
  ports:
    # Three types of ports for a service
    # nodePort - a static port assigned on each the node
    # port - port exposed internally in the cluster
    # targetPort - the container port to send requests to
    - nodePort: 30000
      port: 8080
      targetPort: 80
      protocol: TCP
  selector:
    app: nginx
```

* Deploying a service

```bash
$   kubectl apply -f svc.yaml

$   kubectl get svc
```

Notes:

Instructor Notes :

Participant Notes :

This specification will create a Service which targets TCP port 80 on any Pod with the run: my-nginx,

---

## Lab: Services

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Deploy a service

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **SERVICE-1**

Notes:

---

# Rolling Out Upgrades

---

## Rolling Updates

* Rolling updates permit you to update from one image version to another

* Say we want to update from `hello1` to `hello2`

<img src="../../assets/images/kubernetes/Deployments-04.png" style="width:70%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Rolling Updates - 1

  * This deployment allows you to create a second ReplicaSet

<img src="../../assets/images/kubernetes/Deployments-05.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Rolling Updates - 2

* It gradually increases the number of replicas in the second ReplicaSet

<img src="../../assets/images/kubernetes/Deployments-06.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

<img src="../../assets/images/kubernetes/Deployments-07.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Rolling Updates - 3

* This decreases replicas in the first ReplicaSet
* Hence at any given point of time there are at most 4 pods

<img src="../../assets/images/kubernetes/Deployments-08.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/kubernetes/Deployments-09.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Rolling Updates - 4

* Rolllout is complete when the new RS has the same Pods to replace the old RS

<img src="../../assets/images/kubernetes/Deployments-10.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->
<img src="../../assets/images/kubernetes/Deployments-11.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

Notes:

---

## Lab: Rollouts

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Rollout an upgrade

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **ROLLOUT-1**

Notes:

---

# Canary Deployments

---

## Service

* Here we see a service  balancing traffic to primary pods based on label selectors

<img src="../../assets/images/kubernetes/Canary-deployment.png" style="width:85%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Canary Deployment

* Canary deployment tests a second deployment by load balancing a subset of traffic to new pods with the same label

* Great for testing new features, by exposing it to only a few users

<img src="../../assets/images/kubernetes/Canary-deployment-01.png" style="width:85%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Blue Green Deployment

* A blue-Green deployment make use the service label selector to change all traffic from one deployment to another


<img src="../../assets/images/kubernetes/Canary-deployment-02.png" style="width:90%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->



Notes:

---

## Blue Green Deployment

  * Initially bring up and test new deployment without live traffic


<img src="../../assets/images/kubernetes/Canary-deployment-03.png" style="width:90%;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->



Notes:

---

## Blue Green Deployment

  * To make the version go live, change the service label selector which switches all traffic

<img src="../../assets/images/kubernetes/Canary-deployment-04.png" style="width:90%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->



Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
