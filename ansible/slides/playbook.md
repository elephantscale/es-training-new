# Ansible Playbook

---

## Playbook

A playbook is a collection of tasks that define the desired state of a system. 

Playbooks are written in YAML format and can be used to manage a wide range of systems, from simple web servers to complex multi-tier applications.

---

## Example

![img_3.png](images/img_3.png)

---

## Task Structure

A task is a single module with a set of arguments.
  
![img.png](img.png)

---

## Variables

* Variables are used to store information that can be used in playbooks and templates.

* Variables can be defined in the playbook or in a separate file.

* Variables are defined in the form of key=value pairs.

* Variables are defined in the vars section of the playbook.

* Variables can be used in the tasks section of the playbook.

---

## Example

![img_1.png](images/img_13.png)

---

## Variables Prompt

* Variables can be prompted for user input.
* The prompt can be defined in the vars section of the playbook.

---

## Example

![img_2.png](images/img_14.png)

`name`: variable name
`prompt`: prompt message
`default`: default if user skips the prompt
`private`: hide the input from the screen

---

## Variables File

* Variables can be defined in a separate file.
* The file can be in any format, but the most common one is the YAML format.
* The file must be located in the same directory as the playbook.
* The file must be named vars.yml.
* The file must be defined in the vars_files section of the playbook.

---