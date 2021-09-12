# Docker Operations 

---

# Logging

---

## Container Logging

* Use **`docker logs`** command to see logs

```bash
$   docker logs <container name>
```

* See the log interactively (tail -f)

```bash
$   docker logs -f <container name>
```

---

## Application Logs

* Our applications will likely have its own logs
    - log4j / apache / etc.

* We can map a volume to the host using -v
    - This way, logs will be saved even after the container exits
    - This is handy to debug crash logs

```bash
$   docker run -d -P -v ~/web-logs:/var/log/nginx nginx
```

* This will map `~/web-logs` in the host to `/var/log/nginx` in the container.

---

# Docker Health Checks

---

## Container Health Checks

* How do we know if a container is healthy?

* Docker doesn't interfere with conatiner
    - "Agnostic Design"

* Health checks can be specified in the Dockerfile.

* Following is a line in a DockerFile

* We will use "curl" to check a webservice.

```dockerfile
HEALTHCHECK CMD curl --fail http://localhost:3000/ || exit 1
```

* Note that the health check returns 1 (bad) if failed.

---

## Health Checks and Docker Swarm

* Docker Swarm **requires** positive health checks 

* That means your app should have at least one!

* Good practice to have several
    - app initialized?
    - app alive?

---

# Security

---

## Docker Security

* Running container more secure than running on host.

* Namespaces isolate running apps from each other.

* CGroups isolate resources by container
  - Helps avoid one app exhausting all resources

* Containers have a very light "attack surface"
  - Few running processes
  - Limited libraries
  - Less things to attack

---

## Docker Security

* Docker daemon runs as root

* Adding users to docker group give them access to root

* Don't give access to users that don't have sudo access.

```bash
# Adds 'user`' to docker group
# So user1 can execute docker commands
$    sudo usermod -aG docker user1

# 'user1' needs to logout and log-back-in for changes to take effect
```

---

## Kernel Exploits

* Docker containers share the host Kernel

* Kernel exploits in the container can affect host

* Compromised code can be run on the host.

* Kernel panics will affect **all** containers.

---

## Resource Starvation

* Cgroups can limit access to resources

* If not limited, the app can use it up.

---



