
## User Perspective

  * User view

![](../../assets/images/kubernetes/api-container.png) <!-- {"left" : 0.28, "top" : 3.13, "height" : 1.75, "width" : 9.73} -->

Notes:

---

## Installing Kubernetes

* There are two types of "install" for kubernetes:
   - Developer Install (test / learning / dev)
   - Cluster Install (prod / dev / test)

* Developer install
    - Minikube
    - microk8s

---

## Minikube (for Developers)

<img src="../../assets/images/logos/minikube-logo-1.png" style="width:40%;float:right;" />

* Minikube works very similarly to Docker Toolbox.

* Minikube can run on any platform that supports VirtualBox (Linux, Mac, Windows)

* Users install Oracle VirtualBox on their systems.
    - User CPU must support virtualization (VT-x, AMD-V)
    - Virtualization *must* be enabled in the BIOS. (Usually *not* by default)

* Minikube will install a VM in virtualbox and run it

* A CLI called `minikube` will allow users to interact with the VM

* References:
    - [https://minikube.sigs.k8s.io/docs/start/](https://minikube.sigs.k8s.io/docs/start/)

---

## Microk8s (for Developers)

<img src="../../assets/images/logos/microk8s-logo-1.png" style="width:40%;float:right;" />

* MicroK8s works on Linux machines **only**.
    - **NOT** BSD or other Unix-like OSs including Mac

* No need of a VM or virtualization

* It is installed as a snap for any machine that supports snaps

* Available Ubuntu repos,  installs in seconds!

* It runs the kubernetes daemons locally on the users' system

* References
    - [https://microk8s.io/](https://microk8s.io/)