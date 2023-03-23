# Kubernetes Best Practices

<img src="../../assets/images/logos/kubernetes-logo-4-medium.png" style="width:35%;" />
<img src="../../assets/images/generic/3rd-party/best-practices-2.png" style="width:35%;" />

---

## Handy Aliases

* These will save you some typing!

```bash
$   alias k='kubectl'

$   alias ks='kubectl get namespaces'

$   alias kga='k get all -A'

$   alias kdp='kubectl describe pod'

$   alias kdn='kubectl describe node'

$   alias kdd='kubectl describe deployment'

$   alias kds='kubectl describe service'

```

* Put these in your **`~/.bashrc`** file, so they are setup every time you login

---

# Configuration

---

## Managing Configuration Files

* Use **`yaml`** instead of **`json`**.  YAML tends to be more human readable

* Keep configuration files in version control system
    - So we can track changes
    - And revert back easily

* Keep config files **minimal**
    - Don't specify default values

---

## Write Clean Concise YAML Files

* Most modern code editors will support YAML file editing.  Recommended editors are : [VSCode](https://code.visualstudio.com/),  [vim](https://www.vim.org/), [Notepad++](https://notepad-plus-plus.org/downloads/)

* Consistent indentation.  Can be 2 spaces or 4 spaces, just use the same level

* Use validators to check the syntax.  For example **`yamllint`**. Modern editors can do this for you automatically

```bash
$   yamllint  a.yaml
```

* Here is a minimal yaml

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

---

## Use Comments in YAML Config files

* YAML supports comments

* Use comments to document the config files

```yaml
# This is our nginx delployment
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: web
      image: nginx:1.9  # this is the version that is tested with our app!
```

---

## Group Related Objects Into a Single File

* Say we have a bunch of objects defined across multiple config files

```text
deployment-1/
├── deployment.yaml
├── pods.yaml
└── service.yaml
```

<img src="../../assets/images/kubernetes/combined-yaml-config.png" style="width:40%;float:right;" /><!-- {"left" : 3.65, "top" : 4.84, "height" : 2.42, "width" : 2.95} -->

* Put related object definitions into a single file

* Use three-dashes to separate the object definitions

* Examples:
    - [guestbook-all-in-one.yaml](https://github.com/kubernetes/examples/tree/master/guestbook/all-in-one/guestbook-all-in-one.yaml)

---

# Performance

---

## Use Smaller Images

* Most developers try to use 'familiar images' (like ubuntu) as base image
    - These have lot of extra libraries that are not needed
    - And they add to the size

* Go for **alpine** images and add needed libraries as needed
    - These images are 10x smaller than standard images

| Image   | Size    | Description                                     |
|---------|---------|-------------------------------------------------|
| Busybox | 1.25 MB | A tiny Linux distribution with lot of utilities |
| Alpine  | 5.6 MB  | A minimal Docker image based on Alpine Linux    |
| Ubuntu  | 70 MB   | Base ubuntu image                               |

---

## Efficient `kubectl apply`

* When applying multiple files, we can apply them individually

```bash
$   kubectl  apply -f file1.yaml
$   kubectl  apply -f file2.yaml
```

* We can apply all files in a directory

```bash
$   kubectl  apply -f  <dir>
```

---

## Monitor Resource Usage

* First install metrics

```bash
$   kubectl apply -f \
https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# enable metrics for minikube
$   minikube addons enable metrics-server

# see metrics server is running
$  kubectl get pods --all-namespaces | grep metrics-server
```


* Use **`kubectl top`** command

```bash
# to mnonitor node utilzation
$   kubectl  top   node
```

```text
NAME       CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%   
minikube   782m         4%     1009Mi          3%        
```

```bash
# to see pod usage
$   kubectl  top   pod
```

* Watch the top output periodically, use **`watch`** command

```bash
$   watch  kubectl top node -n 5
```

---

# Best Practices

---

## Use Namespaces

* **Namespaces** facilitate many **virtual clusters** on a physical cluster

* Namespaces allow segmenting resources, access and permissions

```bash
# create namespace
$   kubectl create namespace test

# create objects within an namespace
$   kubectl apply -f pod.yaml --namespace=test

# get pods
$   kubectl get pods --namespace=test
```

* Use [kubens](https://github.com/ahmetb/kubectx) utilities to manage and switch namespaces

* References
    - [Kubernetes best practices: Organizing with Namespaces](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-organizing-with-namespaces)

---

## Prefer Deployments Instead of Naked Pods

* Say you want to run 10 instances of nginx

* If we start them manually, the **naked pods** will not be rescheduled in the event of a node failure.

* Prefer a **deployment**

* Deployment will create a **ReplicaSet** and will keep running desired number of replicas automatically

---

## Prefer Trackable Changes

* Say we have are incrementing replicas of a deployment.  We could do this like this; but this change is not trackable!

```bash
$   kubectl scale deployment deployment1 --replicas=10
```

* Recommended it to do it via config file, so we can track changes via version control

```bash
$   kubectl apply -f deploy2.yaml
```

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  selector:
    matchLabels:
      app: nginx
  replicas: 10
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
        - name: nginx
          image: nginx
```

---

## Adopt a Git Based Workflow

* Don't make adhoc changes to deployment

* Using **git as source of truth** will enable
    - traceability
    - reliable deployment process
    - automation using CI/CD workflows

Notes:

---

## Use Labels

* Labels allow us to query and select objects

* See the [guestbook](https://github.com/kubernetes/examples/tree/master/guestbook/) app for examples of this approach.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: label-demo
  labels:
    environment: production
    app: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.14.2
    ports:
    - containerPort: 80
```

---

## Use Health Checks

<img src="../../assets/images/kubernetes/3rd-party/google-kubernetes-probe-readiness6ktf.gif" style="width:30%;float:right;" /><!-- {"left" : 3.65, "top" : 4.84, "height" : 2.42, "width" : 2.95} -->
<img src="../../assets/images/kubernetes/3rd-party/google-kubernetes-probe-livenessae14.gif" style="width:30%;float:right;clear:both;" /><!-- {"left" : 3.65, "top" : 4.84, "height" : 2.42, "width" : 2.95} -->

* Kubernetes has built-in health checks

* **Readiness probe** will determine if an instance is ready to accept traffic

* **Liveness probe** will determine if the an instance is alive and can serve traffic

* References:
    - [Kubernetes best practices: Setting up health checks with readiness and liveness probes](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-setting-up-health-checks-with-readiness-and-liveness-probes)

Notes:

Image source: https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-setting-up-health-checks-with-readiness-and-liveness-probes

---

## Use Resource Limits

* Without limits, Pods can use up Node resources

* Here we are requesting 2G memory and capping the memory to 4G

* References:
    - [Kubernetes best practices: Resource requests and limits](https://cloud.google.com/blog/products/containers-kubernetes/kubernetes-best-practices-resource-requests-and-limits)

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: frontend
spec:
  containers:
  - name: app
    image: my-image:v1
    resources:
      requests:
        memory: "2Gi"
        cpu: "250m"
      limits:
        memory: "4Gi"
        cpu: "500m"
```

---

## Wrap up and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* What are some of the best practices you can share with the class

* Any questions?
