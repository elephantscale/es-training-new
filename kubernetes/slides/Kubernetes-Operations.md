# Kubernetes Operations

---

# Labels and Selectors

---

## Labels

* Labels are Key/Value pairs associated with K8s objects

* As the name suggests, Labels are used to meaningfully specify identifying attributes of objects

* Used to organize and select subsets of objects

* Attached to objects at the time of creation but can be modified at any point in time

* Here are some label examples:
    - for nodes:
        - "disk" : "ssd", "regular", "hybrid"
    - for Pods
        - "tier" : "fronend", "backend"
        - "env" : "dev", "test", "release"



---

## Labels

* Though each object can have a set of Key/Value labels, each key must be unique for each object

* Objects can be queried from the API server by the label

* **Labels are the essential glue to associate one API object with another and are used to select a set of objects**
    - Pods -> Replication Controller
    - Pods -> Service
    - Node -> Pods

Notes:

Instructor Notes :

Participant Notes :

---

## Defining Labels

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-v1
spec:
  selector:
    matchLabels:
      app: nginx
      version: "v1"
  replicas: 4
  template:
    metadata:
      labels:
        app: nginx
        version: "v1"
    spec:
      containers:
      - name: nginx
        image: sujee/nginx:1
        ports:
        - containerPort: 80
```

```bash
$   kubectl get deployments  -o wide 
```

```console
NAME       READY   UP-TO-DATE   AVAILABLE   AGE    CONTAINERS   IMAGES          SELECTOR
nginx-v1   4/4     4            4           160m   nginx        sujee/nginx:1   app=nginx,version=v1
```

---

## Defining Labels

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-v1
spec:
  selector:
    matchLabels:
      app: nginx
      version: "v1"
  replicas: 4
  template:
    metadata:
      labels:
        app: nginx
        version: "v1"
    spec:
      containers:
      - name: nginx
        image: sujee/nginx:1
        ports:
        - containerPort: 80
```

```bash
$  kubectl get pods  --show-labels
```

```console
NAME                        READY   STATUS    RESTARTS   AGE    LABELS
nginx-v1-67dfdcf8b8-4q8n9   1/1     Running   0          162m   app=nginx,version=v1
nginx-v1-67dfdcf8b8-7vw5x   1/1     Running   0          162m   app=nginx,version=v1
nginx-v1-67dfdcf8b8-gm2pw   1/1     Running   0          162m   app=nginx,version=v1
nginx-v1-67dfdcf8b8-hbjm9   1/1     Running   0          162m   app=nginx,version=v1
```

---

## Assigning Pods to Nodes

* We can use labels to assign Pods to certain nodes

* Say we want to run our database Pods on nodes with SSD drives (for performance)

* First attach labels to nodes

```bash
# 'worker1' node has SSDs
$   kubectl  label nodes worker1  disk=ssd


# 'worker2' has regular disks
$   kubectl  label nodes worker2  disk=regular

$   kubectl get nodes --show-labels
```

```console
NAME      STATUS   ROLES    AGE   VERSION   LABELS
worker1   Ready    <none>   9h    v1.22.1   disk=ssd ...
worker2   Ready    <none>   9h    v1.22.1   disk=regular ...
```

---

## Assigning Pods to Nodes

* Now specify a **NodeSelector** to pod.yaml

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: redis1
spec:
  containers:
  - name: redis
    image: redis
    imagePullPolicy: IfNotPresent
  nodeSelector:
    disk: ssd
```

* And create pods.  The pods will only be placed on **`worker1`** that is labeled as **`disk=ssd`**

```bash
# launch 2 redis instances
$   kubectl apply -f pod.yaml
$   kubectl apply -f pod.yaml

$   kubectol get pods -o wide
```

```console
NAME                        READY   STATUS    RESTARTS   AGE    IP                NODE      
redis1                      1/1     Running   0          77s    192.168.235.149   worker1   
redis2                      1/1     Running   0          52s    192.168.235.150   worker1  
```

---

## Labels Example

  * The example below has four pods and three labels

<img src="../../assets/images/kubernetes/metadata-01.png" style="width:85%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Query for Labels  

* You can query for labels that map to value of the entire app

<img src="../../assets/images/kubernetes/metadata-02.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Narrow Search

* You can either narrow your search with multiple labels - your app’s fronted


<img src="../../assets/images/kubernetes/metadata-03.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Query for only backend

* You can either narrow your search with multiple labels - your app’s backend


<img src="../../assets/images/kubernetes/metadata-04.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Query for Test Phase

* You can either narrow your search with multiple labels - your app’s test phase

<img src="../../assets/images/kubernetes/metadata-05.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Query for Production  

  * You can either narrow your search with multiple labels - your
app’s production release


<img src="../../assets/images/kubernetes/metadata-06.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


Notes:

---

## Lab: Labels

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Work with labels

* **Approximate run time:**
  - 20

* **Instructions:**
  - Please complete **LABELS-1** lab

Notes:

---

## Lab: Pod Placement

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Place Pods on certain nodes using lables

* **Approximate run time:**
  - 20

* **Instructions:**
  - Please complete **LABELS-2** lab

Notes:

---

# Storage

---

## Volumes

* Kubernetes supports an extensive array of volume types

* **Ephemeral volumes** (temporary space)
    - They follow the Pod lifecycle, created and destroyed along with the Pod
    - **EmptyDir**,  **ConfigMap**

* **Persistent Volumes**
    - Durable volumes, that outlast Pod's life
    - Used for long term storage (i.e. database files ..etc)
    - Many provider:  AWS, AzureDisk, GCEDisk, CephFS, NFS

* [See full list here](https://kubernetes.io/docs/concepts/storage/volumes)

---

## Ephemeral Storage

* Pods can request a certain 'local storage'amount

* When Kubernetes is trying find a Node to place the Pod, it will only consider Nodes that can supply that storage

* Here we are requesting **2Gi** storage with a cap of **4Gi**

* [Storage Units reference](https://en.wikipedia.org/wiki/Byte#Multiple-byte_units)

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: frontend
spec:
  containers:
  - name: app
    image: images.my-company.example/app:v4
    resources:
      requests:
        ephemeral-storage: "2Gi"
      limits:
        ephemeral-storage: "4Gi"
    volumeMounts:
    - name: ephemeral
      mountPath: "/tmp"
  volumes:
    - name: ephemeral
      emptyDir: {}
```

---

## Persistent Volumes (PV)

* **PVs** represent durable storage

* They can be created manually or created dynamically based on request (typical in the Cloud environments)

* Many storage providers are supported.  i.e.  AWS, AzureDisk, GCEDisk, CephFS, NFS

* After a Pod done using a volume, it can be either
    - Retain: Keep the data available for the next run
    - Delete: delete the volume
    - Recycle: Delete contents of the volume, and use it with another Pod

---

## Creating a PV

* Here is an example of creating a NFS volume

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: nfs-vol1
spec:
  capacity:
    storage: 1Mi
  accessModes:
    - ReadWriteMany
  nfs:
    server: nfs-server.default.svc.cluster.local
    path: "/exports"
```

---

## Creating a PV in Google Cloud

* And here is how to create a persistent disk on Google Cloud

* Create a disk before using it

```bash
$   gcloud compute disks create --size=500GB --zone=us-central1-a my-data-disk
```

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: test-pd
spec:
  containers:
  - image: k8s.gcr.io/test-webserver
    name: test-container
    volumeMounts:
    - mountPath: /test-pd
      name: test-volume
  volumes:
  - name: test-volume
    # This GCE PD must already exist.
    gcePersistentDisk:
      pdName: my-data-disk
      fsType: ext4
```

---

## Persistent Volume Claims (PVC)

* Think of PVs are resources in the cluster
    - "I have a 10G volume available"

* PVCs are requests for the resources
    - "I need a 2G disk space"

* Kubernetes will match the requests (PVCs) and resources (PVs)

* PVCs can also specify qualifiers
    - "I need 2GB of SSD storage"

---

## Example of  Creating and Using Persistent Volumes

* Step-1: Create a PV

* Step-2: Create a PVC

* Step-3: Use it

---

## Step-1&2: Creating a PV and PVC

```yaml
apiVersion: v1
kind: PersistentVolume
metadata:
  name: nginx-pv
  labels:
    type: local
spec:
  #storageClassName: manual
  #storageClassName: local-storage
  storageClassName: standard
  capacity:
    storage: 10Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/tmp/nginx-volume"
```

```yaml
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: nginx-pv-claim
spec:
  storageClassName: standard
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 3Gi
```

---

## Step-3: Using It

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  volumes:
    - name: nginx-pv-storage
      persistentVolumeClaim:
        claimName: nginx-pv-claim
  containers:
    - name: web1
      image: nginx
      ports:
        - containerPort: 80
          hostPort: 8080
          name: "http-server"
      volumeMounts:
        - mountPath: "/usr/share/nginx/html"
          name: nginx-pv-storage

  #nodeSelector:
  # - kubernetes.io/hostname: "ip-172-31-35-116"

```

---

## Lab: Volumes - EmptyDir

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Use scratch space with pods

* **Approximate run time:**
  - 15 mins

* **Instructions:**
  - Please complete **VOLUME-1** lab

Notes:

---

## Lab: Volumes - Share a Persistent Volume

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Use Persistent Volumes

* **Approximate run time:**
  - 20 mins

* **Instructions:**
  - Please complete **VOLUME-2** lab

Notes:

---

## Lab: Volumes - Use a Persistent Volume with Nginx

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Use Persistent Volumes with nginx

* **Approximate run time:**
  - 20 mins

* **Instructions:**
  - Please complete **VOLUME-3** lab

Notes:

---

# Deployment Strategies

---

## Deployment Strategies

* Basic
* Rolling
* Blue-Green
* Canary
* A/B Testing

* References
    - [Intro To Deployment Strategies: Blue-Green, Canary, And More](https://harness.io/blog/blue-green-canary-deployment-strategies/)
    - [Blue Green deployments explained](https://martinfowler.com/bliki/BlueGreenDeployment.html)

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

# Deployment Patterns

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