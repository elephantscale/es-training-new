# Docker Health Checks
---

## Container Health

![https://www.docker.com/sites/default/files/horizontal.png](../../assets/images/logos/docker-logo-4-horizontal.png)

 * How do we know if a container is healthy?
 * Docker doesn't interfere with conatiner
 * "Agnostic Design"

---

## Health Checks

 * Health Checks should be specified in the Dockerfile.

---

## Health Check Example

 * Following is a line in a DockerFile
 * This is a health check.
 * We will use "curl" to check a webservice.

 ```dockerfile
HEALTHCHECK CMD curl --fail http://localhost:3000/ || exit 1
 ```

 * Note that the health check returns 1 (bad) if failed.

---

## Health Checks and Docker Swarm

 * Docker Swarm **requires** positive health checks 
 * That means your app should have at least one!
 * Good practice ot have sevreal

---
