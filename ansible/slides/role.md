# Ansible Roles

---

# Overview

* Reusable, modular components in Ansible
* Organize tasks, variables, templates, and files
* Enable sharing, reusing, and distributing automation code
* Encapsulate functionality for specific services or applications

---

# Role Directory Structure

![img_1.png](../images/role_1.png)


---

# Role Components

* Tasks: Define the actions to execute
* Handlers: Manage service restarts or configuration reloads
* Templates: Create dynamic configuration files using Jinja2
* Files: Store static files required by the role
* Vars: Define role-specific variables
* Defaults: Set default variable values

---

# Including Roles in Playbooks

* Use the "roles" keyword in a playbook
* Specify the role name or path
* Pass variables to customize the role

---

![img_2.png](../images/role_2.png)

---

# Benefits of Using Roles

* Enhance code reusability and maintainability
* Simplify playbook structure
* Enable collaboration and sharing via Ansible Galaxy