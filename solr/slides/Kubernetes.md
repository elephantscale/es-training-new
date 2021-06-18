# Kubernetes and Solr

## Docker
 * Docker is the standard format for containers
 * Orchestration engines like Kubernetes generally use docker containers.
 * Containerization includes many benefits for solr:
   - Simplifies dependency managmenet
   - Makes it easier to deploy/manage/ugprade
   - Devloper Friendly

---

## Lab: Run Solr in Docker
 * Lab: Single Node Docker
 * Lab Instructions:
   - Follow the instructions in `solr-labs/kubernetes/single-node.docker.md`


---

## Kubernetes and Docker
 * Kubernetes is a cluster compute engine for containerized workfoads.
 * 


---

## Lab: Run Solr in Docker
 * Lab: Single Node Docker
 * Lab Instructions:
   - Follow the instructions in `solr-labs/kubernetes/single-node.docker.md`


---

## Solr Operator
 * Solr Operator a control-plane manager for Solr in Kuberenetes
 * Solr operator helps simplifiy the deployment process by managing Kubernetes.

 

---

## Architecture

![](../../assets/images/solr/k8s-primary-components.png)
---




### CRDS (Custom Resource Definition)

 * A Custom Resource Definition (CRD) allows application developers to define a new type of object in Kubernetes. This provides a number of benefits:
 * Exposes domain specific config settings to human operators
 * Reduce boilerplate and hide implementation details
 * Perform CRUD operations on CRDs with kubectl
 * Stored and managed in etcd just like any other K8s resource


---

### CRDS (Custom Resource Definition)
 * The Solr operator defines CRDs that represent the following:
   -  SolrCloud resources
   - metrics exporter resources
   -  backup/restore resource.

 
