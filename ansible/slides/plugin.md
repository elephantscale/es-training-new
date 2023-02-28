# Ansible Plugin

---

## What is a plugin?
* A plugin is a piece of code that extends Ansible
* Plugins are written in Python
* Plugins are executed on the Ansible controller
* Plugins are executed before the play starts

---
## Plugin Types
* Action plugins
* Callback plugins
* Connection plugins
* Filter plugins
* Inventory plugins
* Lookup plugins
* Module plugins
* Strategy plugins
* Test plugins
* Terminal plugins
* Var plugins
* Cache plugins

---

## Action Plugins

* Action plugins are used to extend the functionality of modules
* Action plugins are executed on the Ansible controller
* Action plugins are executed before the play starts
* Action plugins are executed before the module is executed

---

## Callback Plugins

* Callback plugins are used to extend the functionality of the output
* Callback plugins are executed on the Ansible controller
* Callback plugins are executed before the play starts
* Callback plugins are executed after the play ends

---

## Connection Plugins

* Connection plugins are used to extend the functionality of the connection
* Connection plugins are executed on the Ansible controller
* Connection plugins are executed before the play starts
* Connection plugins are executed before the module is executed
* Connection plugins are executed before the task is executed

---

## Filter Plugins

* Filter plugins are used to extend the functionality of the filters
* Filter plugins are executed on the Ansible controller
* Filter plugins are executed before the play starts
* Filter plugins are executed before the module is executed

---

## Inventory Plugins

* Inventory plugins are used to extend the functionality of the inventory
* Inventory plugins are executed on the Ansible controller
* Inventory plugins are executed before the play starts
* Inventory plugins are executed before the inventory is loaded

---

