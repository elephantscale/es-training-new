# Why Ansible?

---

## Stating a Problem

<img src="../images/problem.jpg" style="width:35%;"/>

Modern IT environments often require deploying and managing a large number of servers, applications, and services. When done manually, these tasks are error-prone, time-consuming, and difficult to
scale. Configuration drift, inconsistent updates, and lack of centralized management can create unnecessary complexity and risk.

---

## Answer

<img src="../images/answer.jpg" style="width:25%; float: right; top:10px"/>

**Automation** is the key to addressing these challenges. By using tools that enable streamlined, repeatable processes, organizations can ensure consistency, reduce human error, and achieve faster
deployments.

---

## Automation

<img src="../../assets/images/ansible/ansible.jpg" style="width:25%;"/>

- Automating the management and deployment of a large infrastructure is essential to maintain consistency and scalability.
- Ansible is one such automation tool that makes it easy to define, manage, and orchestrate IT environments in a repeatable, secure, and predictable way.

---

## Ansible

<img src="../images/what.jpg" style="width:25%;"/>

---

## What is Ansible?

- **Simple IT Automation Tool**  
  Ansible is designed to simplify the deployment of applications and the maintenance of systems.

- **No Need for Custom Scripts**  
  You don’t have to write complex scripts or custom code to manage updates or roll out new features.

- **Human-Readable Language**  
  Ansible uses YAML, a syntax that closely resembles plain English, making configurations easy to write and review.

- **Agentless Architecture**  
  Because Ansible relies on SSH (or WinRM for Windows), there is no need to install any agents on the managed nodes. This makes setup and management far simpler.

---

## Where to Use Ansible

- **Configuration Management**  
  Maintain consistent system configurations across servers.

- **Application Deployment**  
  Automate the rollout of new application versions, ensuring consistent deployments.

- **Continuous Delivery**  
  Integrate with CI/CD pipelines to automate builds, tests, and releases.

- **Orchestration**  
  Coordinate complex, multi-step workflows and interdependent services.

- **Security Automation**  
  Streamline security patches, vulnerability scans, and compliance checks.

- **Multi-Tier Applications**  
  Manage configurations across multiple layers (web, application, database) seamlessly.

- **Cloud Provisioning**  
  Provision and manage resources on cloud providers (AWS, Azure, GCP, etc.).

- **Network Automation**  
  Configure and maintain network devices, such as switches and routers.

- **And More…**

---

## Agentless

Target systems do not require any pre-installed software or running services for Ansible to manage them. By default, Ansible communicates via SSH (on Unix-like systems) or WinRM (on Windows). Tasks
execute on the remote host only when needed, leaving no persistent agents behind.

<img src="../images/img.png" style="width:35%;"/>

<span style="font-size:15px; color:red">
_Important: Windows hosts require PowerShell and WinRM to be configured, but no separate agent or service is needed._
</span>

---

# Why Agentless?

- **Ease of Setup**  
  Most modern Unix/Linux/BSD/macOS systems already have SSH capabilities built in.

- **Reduced Overhead**  
  No extra background services or agents running on the managed nodes.

- **Simplicity**  
  Eliminates the need to install, maintain, and troubleshoot additional software packages on each host.

---

## Idempotent

- Ansible ensures **idempotency**, meaning you can run the same task multiple times without altering the outcome after the first successful run.
- This guarantees a consistent state on all managed systems, regardless of how many times the playbooks are executed.

---

## Continued

<img src="../images/note.jpg" style="width:45%;"/>

- While Ansible is frequently used for configuration management, it is not a *pure* configuration management tool in the same sense as Puppet or Chef.
- **However**, it can still manage configuration files effectively and is often used in that capacity.

---

## Ansible Architecture

<img src="../images/img_6.png" style="width:65%;"/>

- **Control Node**: Where Ansible is installed and commands are run.
- **Managed Nodes**: Systems you want to control, which require no special agents.
- **Inventory**: A list of hosts or groups of hosts.
- **Modules**: Units of code Ansible executes via SSH or WinRM.
- **Playbooks**: YAML files that define a series of tasks.

---

## Run AGAINST

- To “run against” a host or group means to execute a specific ad-hoc command, play, or playbook on those targeted systems.
- The target hosts or groups are defined in the inventory.

<img src="../images/mean.jpg" width="30%">

---

## Ansible vs. Chef vs. Puppet vs. SaltStack

Below is a high-level comparison of popular automation/configuration management tools.

| Feature                   | Ansible                   | Chef     | Puppet     | SaltStack |
|---------------------------|---------------------------|----------|------------|-----------|
| Configuration Language    | YAML                      | Ruby DSL | Puppet DSL | YAML      |
| Masterless Support        | Yes                       | No       | No         | Yes       |
| Agent-Based Support       | Optional (`ansible-pull`) | Yes      | Yes        | Yes       |
| Idempotent Execution      | Yes                       | Yes      | Yes        | Yes       |
| Real-Time Execution       | Yes                       | No       | No         | Yes       |
| Parallel Execution        | Yes                       | Yes      | Yes        | Yes       |
| Dependency Management     | Yes                       | Yes      | Yes        | Yes       |
| Dry-Run Testing           | Yes                       | Yes      | Yes        | Yes       |
| Declarative Configuration | Yes                       | Yes      | Yes        | Yes       |

---

| Feature                   | Ansible                                        | Chef                                     | Puppet                                   | SaltStack                     |
|---------------------------|------------------------------------------------|------------------------------------------|------------------------------------------|-------------------------------|
| Community Support         | Strong                                         | Strong                                   | Strong                                   | Strong                        |
| Ease of Use               | Easy to learn, minimal setup                   | Steep learning curve, more complex setup | Steep learning curve, more complex setup | Easy to learn, minimal setup  |
| Platform Support          | Cross-platform                                 | Cross-platform                           | Cross-platform                           | Cross-platform                |
| Reporting                 | Basic built-in reporting; extensions available | Robust reporting & monitoring            | Robust reporting & monitoring            | Robust reporting & monitoring |
| Language Support          | Multiple languages & frameworks                | Ruby DSL                                 | Puppet DSL                               | Python                        |
| Custom Module Development | Yes                                            | Yes                                      | Yes                                      | Yes                           |

---

| Feature                      | Ansible                               | Chef              | Puppet            | SaltStack                |
|------------------------------|---------------------------------------|-------------------|-------------------|--------------------------|
| Extensibility                | Plugins (modules, roles, collections) | Plugins & modules | Plugins & modules | Python modules & plugins |
| Infrastructure as Code (IaC) | Yes                                   | Yes               | Yes               | Yes                      |
| Task Scheduling              | Yes                                   | Yes               | Yes               | Yes                      |
| Compliance Auditing          | Yes                                   | Yes               | Yes               | Yes                      |
| Configuration Testing        | Yes                                   | Yes               | Yes               | Yes                      |
| Centralized Management       | Yes                                   | Yes               | Yes               | Yes                      |
| System Monitoring            | Yes                                   | Yes               | Yes               | Yes                      |
| Encryption                   | Yes (Ansible Vault)                   | Yes (Chef Vault)  | Yes (Hiera-eyaml) | Yes (GPG and Vault)      |

---

# Inventory

---

## Inventory

- **Definition**: An inventory is a list of hosts (systems) managed by Ansible.
- **Types**: It can be static (a file) or dynamic (generated by a script).
- **Usage**: Can be specified on the command line or within a default file (commonly `/etc/ansible/hosts`).

```ini
mailserver mail.example.com

[webserver]
foo.example.com
bar.example.com

[appserver]
one.example.com
two.example.com
three.example.com
mailserver
```

---

## INI Format

- **Sections**: Group hosts under bracketed sections (e.g., `[webserver]`).
- **Hosts and Attributes**: You can specify hosts and their connection parameters using key-value pairs (e.g., `ansible_user=ubuntu`).
- **Optional Attributes**: If no attributes are specified, Ansible uses defaults (like SSH key-based authentication).

<img src="../images/data.png">

---

## Static Inventory

- **Defined in a File**: Commonly located in `/etc/ansible/hosts`.
- **INI Format**: The most common format, but YAML and others are possible.
- **Easy to Maintain**: Good for smaller environments or those that change infrequently.

<img src="../images/random_number.png">

---

## Example

```ini
[webserver]
<Machine-IP> ansible_ssh_pass=<Password>

[webserver:vars]
ansible_user=<Username>

[appserver]
<Machine-IP> ansible_ssh_pass=<Password>

[appserver:vars]
ansible_user=<Username>  # (ubuntu in our environment)
```

---

## Dynamic Inventory

- **Script-Driven**: Hosts are populated dynamically using external data sources, such as cloud provider APIs or CMDBs.
- **Format**: The script outputs JSON describing groups, hosts, and associated variables.
- **Location**: By default, Ansible will look in `/etc/ansible/hosts` or the directory specified with `-i`.

---

# Install Ansible

---

## Install Ansible

- **Language**: Ansible is primarily written in Python, allowing it to run on many OSes including Debian, Red Hat-based distributions, and FreeBSD.
- **macOS**: Can be installed via `pip`, Homebrew, or other package managers.
- **Windows**: Native installation is supported via WSL2 (Windows Subsystem for Linux) or Python distributions. Windows Server 2025 requires Ansible Core 2.19+.

---

## Release Cycle

- **Frequency**: Ansible releases occur approximately every four weeks for minor versions, with major releases twice a year.
- **Current Versions**: As of 2025, Ansible 11.x is the latest stable release (based on ansible-core 2.18.x).
- **Changes**: Each release includes bug fixes, new collections, and feature updates while maintaining backward compatibility.
- **Best Practice**: Use official Ansible packages or repositories to stay up to date with the latest stable releases.

<img src="../images/rel_c.gif">

---

## LAB

- **Task**: Install Ansible
- **Instructions**:
https://github.com/elephantscale/ansible-labs/blob/main/setup/Install-Ansible.md

---

## Ansible Ad-Hoc

---

## Ad-Hoc Commands

- **Definition**: Quick, one-off Ansible commands run from the CLI using the `ansible` command.
- **Non-Reusable**: Ideal for immediate tasks (e.g., checking connectivity, rebooting a server), but not for ongoing tasks.
- **Examples of Use**:
    - **Reboot Servers**
    - **Copy Files**
    - **Manage Packages and Users**
- **Modules**: You can invoke any Ansible module (e.g., `ping`, `shell`, `yum`) with `-m`.
- **Arguments**: Pass parameters using `-a`.
- **Inventory**: Specify inventory location (or use default) with `-i`.

---

## Example

```bash
ansible -i hosts -m ping all
```

- This command uses the `ping` module to check connectivity against all hosts defined in the `hosts` file.

---

## LAB

- **Objective**: Practice running Ad-Hoc commands
- **Instructions**: [Ansible Labs - Adhoc](https://github.com/elephantscale/ansible-labs/tree/main/adhoc)
