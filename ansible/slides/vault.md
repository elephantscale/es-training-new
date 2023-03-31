# Ansible Vault

---

# Ansible Vault: Secure Secrets Management with Examples
 
---

## What is Ansible Vault?

* Ansible Vault is a feature that allows you to encrypt sensitive data such as passwords or keys.
* Ansible Vault is a part of Ansible, which means that it is installed by default when you install Ansible.
* Ansible Vault is a command line tool that allows you to encrypt and decrypt files.
* Everything in Ansible is a file, so Ansible Vault can be used to encrypt any file.
* Everytime you run a playbook, Ansible Vault will ask you for the password to decrypt the file.

---
## Basic Vault Commands

* ansible-vault create
  * `ansible-vault create vault.yml` => creates a new vault file
* ansible-vault edit
  * `ansible-vault edit vault.yml` => opens the vault file in an editor 
* ansible-vault view
  * `ansible-vault view vault.yml` => displays the contents of the vault file
* ansible-vault encrypt
  * `ansible-vault encrypt vault.yml` => encrypts an existing file
* ansible-vault decrypt
  * `ansible-vault decrypt vault.yml` => decrypts an existing file
* ansible-vault rekey
  * `ansible-vault rekey vault.yml` => rekeys an existing file

---

## Run Playbooks with Vault

* ansible-playbook
  * `ansible-playbook playbook.yml --ask-vault-pass` => prompts for the vault password
  * `ansible-playbook playbook.yml --vault-password-file vault_pass.txt` => uses a file to store the vault password
  
---





