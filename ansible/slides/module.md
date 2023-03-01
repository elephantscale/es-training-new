# Ansible Modules
---

## Module
* A module is a self-contained script that implements a single action
* Modules are the building blocks of Ansible
* Modules are executed on the remote hosts
* Modules are written in Python
* Modules are located in the `/usr/lib/python3.6/site-packages/ansible/modules` directory

---

## Module Types

* Core modules
  * Maintained by the Ansible team
  * Located in the `/usr/lib/python3.6/site-packages/ansible/modules` directory


* Extra modules
  * Maintained by the Ansible community
  * Located in the `/usr/lib/python3.6/site-packages/ansible/modules` directory
  * Can be promoted to core modules
  * might be removed if they are not maintained
  * Can be installed using the `ansible-galaxy` command

---

## Index of Modules

* The index of modules is located in the `/usr/share/doc/ansible/html/modules_by_category.html` directory

* The index of modules is also available online at https://docs.ansible.com/ansible/2.9/modules/modules_by_category.html

---

## Module Documentation
* The documentation for each module is located in the `/usr/share/doc/ansible/html/modules/<module_name>.html` directory

* The documentation for each module is also available online at `https://docs.ansible.com/ansible/2.9/modules/module_name>.html`

* The documentation for each module includes:
  * A description of the module
  * A list of the module's arguments
  * A list of the module's return values
  * A list of the module's examples

---

## Module Arguments

* Arguments are the parameters that are passed to the module
* Arguments are passed as key-value pairs

---

## Module Return Values

* Return values are the values that are returned by the module
* Return values are passed as key-value pairs

---
