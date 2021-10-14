# Kubernetes Storage

<img src="../../assets/images/logos/kubernetes-logo-4-medium.png" style="width:35%;" />

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

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
