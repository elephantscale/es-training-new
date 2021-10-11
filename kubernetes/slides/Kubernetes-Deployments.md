# Kubernetes Deployments

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
  replicas: 4 
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

## Basic Deployment

* Nodes are updated with newer version of software

* Can be done with config management systems like Ansible / Chef ..etc

* Not foolproof, as it may be not be easy to rollback if things go wrong  (for example some libraries may have been updated and not compatible)

<img src="../../assets/images/kubernetes/deployment-basic-1.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Rolling Deployment

* New Pods are deployed in increments

* Easy to roll back if things go wrong

* Ths rollover will take some time, in the mean time, both versions are alive

<img src="../../assets/images/kubernetes/deployment-rolling-1.png" style="width:65%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Blue/Green Deployment

* Both Blue and Green versions are deployed in exactly the same environment

* Green is currently live, Green is ready to go live

* Then Blue is made live very quickly

* Rollback is instant (flicking a switch)

<img src="../../assets/images/kubernetes/deployment-blue-green-1.png" style="width:65%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## Canary Deployment

* Release new version incrementally

* To test out the features with a smaller group of users first and then increasing deployment base

<img src="../../assets/images/kubernetes/deployment-canary-1.png" style="width:65%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

## A/B Testing

* Used to experiment with features

<img src="../../assets/images/kubernetes/deployment-AB-testing-1.png" style="width:75%;;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

---

# Rolling Upgrades

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

## Lab: Rollout Deployments

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Rollout an upgrade

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **DEPLOY-2**

Notes:

---

## Blue Green Deployment-1

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

## Lab: Blue/Green Deployment

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Deploy a blue/green scenario

* **Approximate run time:**
    - 20 mins

* **Instructions:**
    - Please complete **DEPLOY-3**

Notes:

---

## Lab: Canary Deployment

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Do a canaray deployment

* **Approximate run time:**
    - 30 mins

* **Instructions:**
    - Please complete **DEPLOY-4**

Notes:

---

# Autoscaling

---

## Autoscaling

<img src="../../assets/images/kubernetes/autoscaling-1.png" style="width:45%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* So far we looked at various deployment strategies;  We specified the number of `replicas` explicitly

* When running advanced applications, we want the application to scale up and down along with the load
    - For example, a stock trading application may be scaled up during trading hours, and scaled down during off hours
    - We can program this automatically, set repicas based on time
    - But it won't be flexible to handle unexpected spikes in traffic (e.g. sudden surges in volume)

* Wouldn't it be nice, if we can scale up/down automatically along with the load?

* **Horizontal Pod Autoscaler** is how we do it

---

## Horizontal Pod Autoscaler

<img src="../../assets/images/kubernetes/Horizontal-Pod-Autoscaler.png" style="width:45%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* Autoscaling, one of the key features, allows the kubernetes cluster to automatically increase or decrease the number of nodes  based on the demand for service response.

* **Horizontal Pod Autoscaler** scales the number of pods automatically  in a replication controller, deployment or replica set.

* The controller manager queries the resource utilization against the metrics specified in each HorizontalPodAutoscaler definition (e.g. CPU, Memory, Disk)

* The controller periodically adjusts the number of replicas in a replication controller or deployment.

Notes:

Implemented as a control loop, Horizontal Pod Autoscaler with a period controlled by the controller manager’s `horizontal-pod-autoscaler-sync-period` flag (with a default value of 30 seconds)

---

## Using Horizontal Pod Autoscaler

* Here we are deploying [php-apache](https://console.cloud.google.com/gcr/images/google-containers/GLOBAL/hpa-example) image

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: php-apache-deployment
spec:
  selector:
    matchLabels:
      app: php-apache
  template:
    metadata:
      labels:
        app: php-apache
    spec:
      containers:
        - image: gcr.io/google_containers/hpa-example
          name: php-apache
          ports:
            - containerPort: 80
              protocol: TCP
          resources:
            requests:
              cpu: 500m # 0.5 of a core
              memory: 100M
```

---

## Using Horizontal Pod Autoscaler

* Then we define auto scaler
    - **`name: php-apache-deployment`** - points to the deployment
    - **`minReplicas: 1`** - minimum Pods to keep running
    - **`maxReplicas: 10`** - scale up to this many Pods max
    - **`targetCPUUtilizationPercentage: 50`** - If average CPU utilization across Pods exceed this number, trigger scaling up

```yaml
apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: php-apache-scaler
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: php-apache-deployment
  minReplicas: 1
  maxReplicas: 10
  targetCPUUtilizationPercentage: 50
```

---

## Lab: Autoscaling

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
    - Autoscale a deployment

* **Approximate run time:**
    - 30 mins

* **Instructions:**
    - Please complete **AUTOSCALE-1**

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
