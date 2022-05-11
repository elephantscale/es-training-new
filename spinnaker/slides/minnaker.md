# Minnaker
---


## About Minnaker

 * Minnaker is a minimalistic Spinnaker designed to be run on a single node for test
 * Installs a lightweight kubernetes as well
 * Can use Halyward or 	

---

## Background

Minnaker performs the following actions when run on a single Linux instance:

* Installs [k3s](https://k3s.io/) with Traefik turned off.
* Installs minio in k3s with a local volume.
* Sets up **Halyard** in a Docker container (running in Kubernetes).
* Installs **Spinnaker** using Halyard.
* Minnaker uses local authentication. The username is `admin` and the password is randomly generated when you install Minnaker. Find more details about getting the password in [Accessing Spinnaker](#accessing-spinnaker).
* [Optionally] Configures development environment.

---

## Requirements

* Linux distribution running in a VM or bare metal
    * Ubuntu 18.04 or Debian 10 (VM or bare metal)
    * 2 vCPUs (recommend 4)
    * 8GiB of RAM (recommend 16)
    * 30GiB of HDD (recommend 40+)
    * NAT or Bridged networking with access to the internet
    * Install `curl` and `tar` (if they're not already installed):
        * `sudo apt-get install curl tar`
    * Port `443` on your VM needs to be accessible from your workstation / browser. By default, Minnaker installs Spinnaker and configures it to listen on port `443`, using paths `/` and `/api/v1`(for the UI and API).
* OSX
    * Docker Desktop local Kubernetes cluster enabled
    * At least 6 GiB of memory allocated to Docker Desktop

* On Ubuntu, the Minnaker installer will install K3s for you (a minimal installation of Kubernetes), so you do not have to pre-install Docker or Kubernetes.

--- 

## Changing Configuration
 *  Once Minnaker is up and running, you can make changes to its configuration using `hal`.  For example, to change the version of Spinnaker that is installed, you can use this:
    - `hal config version edit --version 2.17.4`
    - `hal deploy apply`

  * By default, Minnaker will install the latest GA version of Spinnaker available.


---

## Accessing Spinnaker

 *  Determine the public endpoint for Spinnaker

```bash
    grep override /etc/spinnaker/.hal/config
```

    Use the first URL.

 *  Get the Spinnaker password. On the Linux host, run the following command:

```bash
    cat /etc/spinnaker/.hal/.secret/spinnaker_password
```

---

## Accessing Spinnaker

 *  In your browser, navigate to the IP_ADDR (https://IP/) for Spinnaker from step 1. This is Deck, the Spinnaker UI.

    - If you installed Minnaker on a local VM, you must access it from your local machine. 
    - If you deployed Minnaker in the cloud, such as an EC2 instance, you can access Spinnaker from any machine that has access to that 'Public IP'.

 * Log in to Deck with the following credentials:

    Username: `admin`

    Password: 

## Changing Your Spinnaker Configuration

 *  SSH into the machine where you have installed Spinnaker
 *  Access the Halyard pod:

```bash
    export HAL_POD=$(kubectl -n spinnaker get pod -l app=halyard -oname | cut -d'/' -f 2)

    kubectl -n spinnaker exec -it ${HAL_POD} bash
```

---

## Changing Your Spinnaker Configuration

 * Run Halyard configuration commands. For example, the following command allows you to configure and view the current deployment of Spinnaker's version.
 * `hal config version`
 *  All Halyard configuration files are stored in `/etc/spinnaker/.hal`
 * When finished, use the `exit` command to leave the pod.


---

## Updating Halyard

 * SSH into the machine where you have installed Spinnaker
 * Change the Halyard version in `/etc/spinnaker/manifests/halyard.yml`
 *  `kubectl apply -f halyard.yml`
 * Access the Halyard pod and run `hal --version` to verify that Halyard has been updated.

---

## List the pods
To list all of the pods:

```bash
$ kubectl -n spinnaker get pods
NAME                               READY   STATUS    RESTARTS   AGE
minio-0                            1/1     Running   0          2d11h
mariadb-0                          1/1     Running   0          2d11h
halyard-0                          1/1     Running   0          2d11h
spin-redis-57966d86df-qfn9m        1/1     Running   0          2d11h
spin-deck-778577cb65-7m6mw         1/1     Running   0          2d11h
spin-gate-75c99f6b9d-fcgth         1/1     Running   0          2d11h
spin-rosco-86b4b4d6b5-h4vgf        1/1     Running   0          2d11h
spin-orca-84dd94c7f9-ch2t5         1/1     Running   0          2d11h
spin-clouddriver-564d98585-p9m76   1/1     Running   0          2d11h
spin-front50-955856785-tr8pw       1/1     Running   0          2d11h
spin-echo-5b5dc87b4c-ldv97         1/1     Running   0          2d11h
```


## Seeing a Specific Pod

```bash
$ kubectl -n spinnaker describe pod spin-gate-75c99f6b9d-fcgth
Name:         spin-gate-75c99f6b9d-fcgth
Namespace:    spinnaker
Priority:     0
Node:         ip-172-31-19-10/172.31.19.10
Start Time:   Tue, 18 Feb 2020 16:49:51 +0000
Labels:       app=spin
              app.kubernetes.io/managed-by=halyard
              app.kubernetes.io/name=gate
              app.kubernetes.io/part-of=spinnaker
              app.kubernetes.io/version=2.18.0
              cluster=spin-gate
              pod-template-hash=75c99f6b9d
Annotations:  <none>
Status:       Running
IP:           10.42.0.14
IPs:
  IP:           10.42.0.14
Controlled By:  ReplicaSet/spin-gate-75c99f6b9d

```

---

### See the Logs for a pod
And to see the logs for a given pod:

```bash
$ kubectl -n spinnaker logs -f spin-gate-75c99f6b9d-fcgth
2020-02-21 01:06:20.802  Front50Service    ker:8080/v2/applications?restricted=false
2020-02-21 01:06:20.802  ClouddriverService /applications?restricted=false&expand=true
2020-02-21 01:06:20.805  ClouddriverService ications?restricted=false&expand=true (2ms)
2020-02-21 01:06:20.806  Front50Service  er:8080/v2/applications?restricted=false (4ms)
```

