# Ansible Ad-Hoc
---

## Ad-Hoc Commands

* An Ansible ad hoc command uses the `ansible` command-line tool to automate a single task on one or more managed nodes.
* ad hoc commands are quick and easy, but they are not reusable.
* ad hoc tasks can be used to reboot servers, copy files, manage packages and users, and much more. 
* You can use any Ansible module in an ad hoc task. 
* ad hoc commands demonstrate the simplicity and power of Ansible
* It will port over directly to the playbook language
* For every ad hoc command you run, you will get a response in JSON format
* You can use the `-m` option to specify the module to use
* You can use the `-a` option to specify the arguments to pass to the module
* You can use the `-i` option to specify the inventory file to use

---

## Example

```bash
ansible -i hosts -m ping all
```

---

# LAB
Adhoc Lab
