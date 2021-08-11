# Docker Data
---

## Writable Container Layer

By default all files created inside a container are stored on a writable container layer. This means that:

 * The data doesn’t persist when that container no longer exists,
 * It is hard to get that data when the container is stopped
 * A container’s writable layer is tightly coupled to the host machine where the container is running. You can’t easily move the data somewhere else.
 * Writing into a container’s writable layer requires a storage driver to manage the filesystem. 
    - The storage driver provides a union filesystem, using the Linux kernel. 
    - This extra abstraction reduces performance as compared to using data volumes, which write directly to the host filesystem.

---

## Persistent Storage

 * 4 Options for Persistent Storage:
 * Bind Mounts
 * Volumes
 *  tmpfs mount (only on Linux hosts)
 * Named Pipe (only on Windows Hosts) 

---

## Bind Mounts

 * Oldest Persistent Data in Docker (now largely discouraged)
 * Filesystem path from host mounted on guest
 * Advanatages
    - Very performant
 * Disadvanteages:
    - Break isolation of container (container can modify host data)
    - Requires a specfic directory layout on host.
    - Unmanaged (No control of shared access to files) 
 * Bind Mounts are **discouraged** except in a few use cases
    - configuration (`/etc`) type files
    - Shared build artifacts like `.jar` files or `.so` files
    - secrets

---

## Volumes
 * Managed and Controlled By Docker
 * 2 Types
   - named (user provides)
   - anonymous (generates a guarunteed unique name)
 * Volume Drivers
   - allows storage on remote hosts such as Amazon S3
   - Can drive NAS/SAN remotely attached storage

 * Recommended for **most** use cases

---

## Volume HowTo
 * Create:
   - `docker volume create`
 * Cleanup
   - Unattached volumes are *not* deleted automatically 
   - `docker volume prune` - cleans up unused volumes

---

## When to use Volumes

 * Sharing data among multiple running containers. 
   - Automatically synchronizes access to shared resources
 * Decouple host filesystem from container
 * When we want to store host container in remote or cloud storage
 * When we need to migrate or backup data
   - Can stop containers 
   - backup
   - move to new containers

---

## TmpFS mounts

 * `tmpfs` mounts are for whenver we need temporary storage such as `/tmp` directories
 * Will not be saved
 * Also good for sensitive data or data protected by privacy regulatory constraints.
 * Also for adding secrets files such as ssh keys

--- 

### Named Pipes
 * Used on Windows Hosts (Container *itself* can be Linux or Windows)
 * Allows communication between host Windows Services and Docker container applications
 * Also good with interacting with Powershell Commands and .NET Runtime on host

* Easy to Deploy
* Good for Most Use Cases.
* We all already use Docker!

---

### Volume Summary

 * Volumes are easier to back up or migrate than bind mounts.
 * You can manage volumes using Docker CLI commands or the Docker API.
 * Volumes work on both Linux and Windows containers.
 * Volumes can be more safely shared among multiple containers.
 * Volume drivers let you store volumes on remote hosts or cloud providers, to encrypt the contents of volumes, or to add other functionality.
 * New volumes can have their content pre-populated by a container.


--- 

### Volume Management

 * Create and manage volumes outside the scope of any container.

 * Create a volume: `docker volume create`

```bash
$ docker volume create my-vol
```

 * List volumes: `docker volume ls`

```bash
$ docker volume ls

local               my-vol
```

---

### More Volume Management
 * Inspect a volume:

```bash
$ docker volume inspect my-vol
[
    {
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/my-vol/_data",
        "Name": "my-vol",
        "Options": {},
        "Scope": "local"
    }
]
```

---

### Removing a Volume
 * How to Remove a Volume

  * `docker volume rm`

```bash
 $ docker volume rm my-vol
```

