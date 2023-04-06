# Ansible Playbook

---

## What is a Playbook?

* A playbook is a list of plays


* A playbook is a YAML-formatted file in Ansible that contains a series of tasks to automate configuration, deployment, and orchestration of IT infrastructure.

* Playbooks define the desired state of a system, allowing Ansible to manage and maintain consistency across environments.

---

## Key Components of a Playbook

* Plays: Organize tasks for a specific group of hosts.
* Tasks: Execute a single action using Ansible modules (e.g., package installation, file creation).
* Variables: Define custom or dynamic values to be used in tasks.
* Handlers: Perform actions in response to specific triggers (e.g., restarting a service).
* Templates: Dynamically generate configuration files using Jinja2 templating language.
* Playbooks promote reusable, shareable, and maintainable code for infrastructure management.

We will discuss each of these components in detail in the following slides.

---

## Playbook

Let's take a look at a simple playbook:

```yaml
- name: Print a message
  hosts: all

  tasks:
    - name: Print a debug message
      debug:
        msg: "Hello, world!"
```

now, we're going to break down the playbook into its component parts.

---

## YAML header

The first line of the playbook is a YAML header that specifies the document type and version. In this case, it's a YAML document with no specific version:

```yaml
  ---
```

---

## Play

The _hosts_ and _become_ directives are part of the first play defined in the playbook:

```yaml
- hosts: servers
  become: true
```

---

## What is a play?

A _play_ is a set of tasks that run on a specific set of hosts.

```yaml
- hosts: servers
```

In this case, the play is targeting the `servers` group of hosts,

---

## What is become?

`become` directive tells Ansible to run the tasks with elevated privileges.

```yaml
  become: true
```

---

## Task structure

```yaml
  tasks:
    - name: Print a debug message
      debug:
        msg: "Hello, world!"
```

* Each task in a playbook has a name, a module, and any necessary module arguments.

* The name directive is a human-readable label for the task, used for reporting and logging.

* The module specifies the name of the Ansible module to use for the task, such as apt, yum, or copy.

* Any necessary module arguments are specified as key-value pairs under the module.

---

## Task: Name

```yaml
    - name: Print a debug message
```

* The name directive is used to give the task a human-readable label, which is used for reporting and logging purposes.

* The name should be descriptive enough to provide context for the task being executed.

* In the example playbook, the task is named "Print a debug message".

---

## Task: Module

```yaml
      debug:
```

* The module directive specifies the name of the Ansible module to use for the task.

* Modules are reusable, idempotent blocks of code that perform a specific action, such as managing packages, creating users, or copying files.

* Ansible comes with hundreds of built-in modules, and you can also create your own custom modules.

---

# Lets Discuss Modules

---

## Task: Modules:  arguments

```yaml
        msg: "Hello, world!"
```

* Any necessary module arguments are specified as key-value pairs under the module.

* Module arguments can include options such as package names, file paths, or user names and passwords.

* In the example playbook, the apt module is used to install the apache2 package on the target hosts.

---

## Modules: Types

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

## Modules: Index

* The index of modules is located in the `/usr/share/doc/ansible/html/modules_by_category.html` directory

* The index of modules is also available online at https://docs.ansible.com/ansible/2.9/modules/modules_by_category.html

---

## Modules: Documentation

* The documentation for each module is located in the `/usr/share/doc/ansible/html/modules/<module_name>.html` directory

* The documentation for each module is also available online at `https://docs.ansible.com/ansible/2.9/modules/module_name>.html`

* The documentation for each module includes:
  * A description of the module
  * A list of the module's arguments
  * A list of the module's return values
  * A list of the module's examples

---

# Back to our playbook

---

## Playbook: Summary

```yaml
- name: Print a message
  hosts: all

  tasks:
    - name: Print a debug message
      debug:
        msg: "Hello, world!"
```

* The playbook contains a single play that targets all hosts in the inventory file.
* The play contains a single task that uses the debug module to print a message to the console.
* The task uses the msg argument to specify the message to print.
* The playbook can be executed using the ansible-playbook command.

---

## Running the playbook

* Once you've created your playbook, you can run it using the ansible-playbook command.

* Ansible will connect to the target hosts and execute the tasks specified in the playbook.

* You can use the -v option to enable verbose output, which will show you what Ansible is doing as it executes the playbook.

```commandline
$ ansible-playbook -v playbook.yml
```

---

# LAB

---

## Variables and Facts

Let's take a look at a simple playbook that uses variables and facts:

```yaml
  ---
    - hosts: servers
  vars:
    my_var: "Hello, world!"
  tasks:
    - name: Debug variable
      debug:
        var: my_var
```        

Let's break down this playbook and explain each part in more detail

---

## Variables

  ```yaml
      vars:
        my_var: "Hello, world!"
  ```

* Variables are used to store and reference data in Ansible.

* You can define variables at the play or task level, or in an inventory file or variable file.

* In this example, a variable named my_var is defined at the play level, with the value "Hello, world!".

---

## Task: Debug

```yaml
      - name: Debug variable
        debug:
          var: my_var
```

* The debug task is used to display the value of a variable or other data structure.

* The var directive specifies the variable to display.

* In this example, the debug task is used to display the value of the my_var variable.

---

## LAB

---

## Prompt for input

Let's analyze a playbook that prompts the user for input:

```yaml
  ---
    - hosts: servers
  vars_prompt:
    - name: my_var
      prompt: "Enter a value for my_var: "
  tasks:
    - name: Debug variable
      debug:
        var: my_var
```

Let's break down this playbook and explain each part in more detail

---

## Variables: Prompt

```yaml
    vars_prompt:
      - name: my_var
        prompt: "Enter a value for my_var: "
```

* The vars_prompt section is used to prompt the user for variable values.

* Each prompt is defined with a name and a prompt attribute.

* In this example, a variable named my_var is defined with a prompt that asks the user to enter a value.

---

## Structure of a prompt

```yaml
    vars_prompt:
      - name: my_var
        prompt: "Enter a value for my_var: "
        default: "default value"
        private: yes
```

`name`: variable name

`prompt`: prompt message

`default`: default if user skips the prompt

`private`: hide the input from the screen

---

## Variables: File

* Variables can be defined in a separate file.

* The file can be in any format, but the most common one is the YAML format.

* The file must be located in the same directory or relative to the playbook.

* The file must be named anything that you need.

* The file must be defined in the vars_files section of the playbook.
  * There is a module called `include_vars` that can be used to include variables from a file as a task.

```yaml
  ---
    - hosts: servers
  vars_files:
    - vars.yml
  tasks:
    - name: Debug variable
      debug:
        var: my_var
```

---

## Variables: Register

* Variables can be registered to store the output of a task.

```yaml
- name: Register a variable
  shell: cat /home/ubuntu/a.txt
  register: motd_contents
```

In this example, the output of the `shell` task is stored in the `my_var` variable.
---

## Variables: Set Fact

Variables can be set as facts to store the output of a task using `set_fact` module

these variables can be accessed like a normal variable

```yaml
- name: Setting host facts using set_fact module
  set_fact:
    fact_one: "Hello"
    fact_other: "Bye"
    john_fact: "Doe"
    cacheable: yes
```

If you have `redis` installed, you can use `cached` to store these variables for later use.

---

## LAB

---

## Ansible Facts

Facts are pieces of information about the remote hosts that Ansible collects when it runs a playbook.

```yaml
  ---
    - hosts: servers
  gather_facts: yes
  tasks:
    - name: Display CPU count
      debug:
        msg: "The target host has {{ ansible_facts['processor']['count'] }} CPUs."
```

Let's break down this playbook and explain each part in more detail

---

## Play: gather_facts

```yaml
  gather_facts: yes
```

* The gather_facts directive is used to gather system information (facts) from the target hosts.

* By default, Ansible gathers a basic set of facts, such as the hostname and IP address of the target host.

* You can also customize the set of facts to gather using the gather_subset directive.

* In this example, the gather_facts directive is set to yes, which means Ansible will gather all available facts.

---

## Task: Debug

```yaml
      - name: Display CPU count
        debug:
          msg: "The target host has {{ ansible_facts['processor']['count'] }} CPUs."
```

* The debug task is used to display a message in the playbook output.

* The msg directive specifies the message to display.

* In this example, the msg directive includes a variable reference to ansible_facts['processor']['count'], which contains the number of CPUs on the target host.

---

## LAB

---

# Conditionals

---

## Conditionals

```yaml
  ---
    - hosts: servers
  vars:
    my_var: true
  tasks:
    - name: Display message
      debug:
        msg: "The variable is true."
      when: my_var
```

Let's break down this playbook and explain each part in more detail

---

## Variable: Define

```yaml
    vars:
      my_var: true
```

Variables can be defined in a playbook using the vars keyword.

In this example, the my_var variable is defined with a value of true.

---

## Task: Debug

* The debug task is used to display a message in the playbook output.

* The msg directive specifies the message to display.

* In this example, the msg directive displays a message if the my_var variable is true.

---

## Task: When

```yaml
        when: my_var
```

* The when keyword is used to specify a condition for the task to run.
* The task will only run if the condition is true.
* In this example, the when keyword is used to specify that the task should only run if the my_var variable is true.

Let's talk about the condition syntax.
---


## Conditions: Operators

* Ansible supports the following operators:
  * `and`
  * `or`
  * `not`
  * `==`
  * `!=`
  * `>`
  * `>=`
  * `<`
  * `<=`
* The condition can be defined as a Jinja2 expression.

* The condition can be defined as a variable.

---

## Condition: Expressions

* Ansible supports the following expressions:
  * `true`
  * `false`
  * `none`


* The condition can be defined as a list.
  * The list must contain valid expressions.
  * `and` operator is used between each item of the list.

---

## Conditions: Variables

* the following variables can be used in conditions:
  * `ansible_facts`
  * `ansible_hostname`
  * `ansible_host`
  * `ansible_os_family`
  * `ansible_os_name`
  * `ansible_os_version`
  * `ansible_playbook_python`
  * `ansible_python`
  * ...

---

## LAB

---

# Loops

---

## Loops

Ansible provides a simple and efficient way to iterate over a set of values using loops in a playbook.

```yaml
  ---
  - hosts: servers
    vars:
      my_list:
        - item1
        - item2
        - item3
    tasks:
      - name: Display list items
        debug:
          msg: "{{ item }}"
        with_items: "{{ my_list }}"
```

Let's break down this playbook and explain each part in more detail
---

## Variable: Define

```yaml
    vars:
      my_list:
        - item1
        - item2
        - item3
```

* Variables can be defined in a playbook using the vars keyword.

* In this example, the my_list variable is defined as a list of items to be displayed using the debug module.

---

## Task: Debug

```yaml
      - name: Display list items
        debug:
          msg: "{{ item }}"
        with_items: "{{ my_list }}"
```

* The debug task is used to display a message in the playbook output.

* The msg directive specifies the message to display.
* The with_items directive specifies the list of items to loop over.

---

## Task: With Items

```yaml
        with_items: "{{ my_list }}"
```

* The with_items keyword is used to specify a list of items to iterate over.
* The item keyword is used to refer to each item in the loop.
* In this example, the with_items keyword is used with the debug module to loop over the my_list variable, displaying each item in the list.

---

## Loops: `loop`

The `loop` loop is a newer alternative to with_items loop, and it offers more flexibility and readability. 

It allows you to loop over a list or dictionary of items, and use the item variable to access each item.

```yaml
  ---
  - hosts: servers
    vars:
      my_list:
        - item1
        - item2
        - item3
    tasks:
      - name: Display list items
        debug:
          msg: "{{ item }}"
        loop: "{{ my_list }}"
```
---

## Using Loops with Conditionals

You can also use loops with conditionals to perform tasks based on certain conditions.

```yaml
  ---
  - hosts: servers
    vars:
      my_list:
        - item1
        - item2
        - item3
    tasks:
      - name: Display list items
        debug:
          msg: "{{ item }}"
        loop: "{{ my_list }}"
        when: item != 'item2'
```
---

## The loop_control Keyword

The `loop_control` keyword allows you to modify the behavior of the loop. For example, you can use it to set the loop index, skip items, or stop the loop.
  
  ```yaml
    ---
    - hosts: servers
      vars:
        my_list:
          - item1
          - item2
          - item3
      tasks:
        - name: Display list items
          debug:
            msg: "{{ item }}"
          loop: "{{ my_list }}"
          loop_control:
            index_var: my_index
            loop_var: my_loop
  ```
---

## Conclusion

Loops in Ansible Playbook provide an efficient way to perform repetitive tasks. With the with_items and loop loops, you can iterate over a list of items or a dictionary, and use conditionals and loop_control keyword to modify the behavior of the loop.

---

## LAB

---

# Handlers

---

## Handlers

Handlers are tasks that are triggered by notifications

```yaml
  ---
  - hosts: servers
    tasks:
      - name: Display message
        debug:
          msg: "Hello World"
        notify: restart service
    handlers:
      - name: restart service
        service:
          name: httpd
          state: restarted
```

Let's break down this playbook and explain each part in more detail

---

## Task: Debug

```yaml
      - name: Display message
        debug:
          msg: "Hello World"
        notify: restart service
```

The debug task is used to display a message in the playbook output but it also triggers a notification.

That notification is used to trigger the restart service handler.

---
## Handlers
```yaml
    handlers:
      - name: restart service
        service:
          name: httpd
          state: restarted
```

The handlers keyword is used to define a list of handlers that can be triggered by notifications in the tasks.

handlers are normal tasks, but they are only executed when they are notified by another task in the playbook that changes the state of the system.

Important: Handlers are executed at the end of the play, after all the tasks have been executed.

---
## Best Practices

* Handlers should be used to restart services, reload configuration files, and perform other tasks that need to be executed after a change in the system state.
* Handlers should not be used to perform tasks that are idempotent, such as installing packages or creating users.

---

## Conclusion

Handlers are tasks that are triggered by notifications. They are used to restart services, reload configuration files, and perform other tasks that need to be executed after a change in the system state.

---

## LAB

---

# Blocks

---

## Blocks

Blocks are used to group tasks together and control the execution of the tasks in the block.

```yaml
    ---
    - hosts: servers
      tasks:
        - name: Create directory
          block:
            - file:
                path: /tmp/my_dir
                state: directory
          rescue:
            - debug:
                msg: "Directory creation failed!"
```

Let's break down this playbook and explain each part in more detail

---

## Task: Block
  
```yaml
        - name: Create directory
          block:
            - file:
                path: /tmp/my_dir
                state: directory
```

* The block module is used to group multiple tasks together as a single block.
* The tasks within the block are executed sequentially, and if any task fails, Ansible will move to the rescue section.
* In this example, the block module is used to create a directory on the target hosts.


---


## Syntax of Blocks in Ansible Playbook

The syntax for defining a block in an Ansible playbook is as follows:

```yaml
    block:
      - task1
      - task2
      - task3
    rescue:
      - task4
      - task5
    always:
      - task6
      - task7
```

* The `block` keyword is used to define the set of tasks that should be grouped together
* The `rescue` keyword is used to define a set of tasks to be run if any task in the block fails
* The `always` keyword is used to define a set of tasks to be run regardless of whether the block succeeds or fails

---

## Benefits

* Using blocks in an Ansible playbook can make the playbook more readable and easier to maintain by grouping related tasks together
* Blocks can also make it easier to apply conditions, retries, and error handling to a set of tasks as a single unit
* Using blocks can help to reduce duplication and make playbooks more modular
* By using blocks, it is possible to write more robust and error-tolerant playbooks

---

# Templates

---

## Templates

Using templates in Ansible Playbook is a very powerful feature that allows you to generate configuration files on the target hosts.

```yaml
    ---
    - hosts: servers
      vars:
        my_var: "Hello World"
      tasks:
        - name: Create configuration file
          template:
            src: my_template.j2
            dest: /tmp/my_config.conf
```

```jinja2
    # my_template.j2
    This is my configuration file
    {{ my_var }}
```

Let's break down this playbook and explain each part in more detail

---

## Variable: Define

```yaml
      vars:
        my_var: "Hello World
```

Variables can be defined in a playbook using the vars keyword.

In this example, the my_var variable is defined as a string that will be used in the template.


---
## Task: Template

```yaml
        - name: Create configuration file
          template:
            src: my_template.j2
            dest: /tmp/my_config.conf
```

* The template task is used to create a file from a Jinja2 template.

* The src parameter specifies the path to the Jinja2 template file.

* The dest parameter specifies the path and name of the file to be created on the target host.

---

## Jinja2 Template

```jinja2
    # my_template.j2
    This is my configuration file
    {{ my_var }}
```

* The Jinja2 template is a text file that contains variables and expressions that are evaluated and replaced with the actual values when the template is rendered.

In this example, the my_template.j2 file is a Jinja2 template that contains a variable called my_var.

---

## Benefits

* Using templates in an Ansible playbook can make it easier to create and maintain configuration files on the target hosts.
* Templates can also be used to generate configuration files from templates that are stored in a version control system.
* Using templates can help to reduce duplication and make playbooks more modular.

---

## Conclusion

Using templates in an Ansible playbook is a very powerful feature that allows you to generate configuration files on the target hosts.

---

## LAB

---

# Ansible Vault

---

## Ansible Vault

Ansible Vault is a feature that allows you to encrypt sensitive data in Ansible playbooks.

* Ansible Vault is a part of Ansible, which means that it is installed by default when you install Ansible.
* Ansible Vault is a command line.


```yaml
  ---
  - hosts: servers
    vars:
      my_secret: !vault |
        $ANSIBLE_VAULT;1.1;AES256
        62386336663035336236633435383630316232666533383163343161396464396630363461316638
    tasks:
      - name: Display secret
        debug:
          var: my_secret
```
---

## Encrypting Variables

```yaml
  ---
  - hosts: servers
    vars:
      my_secret: !vault |
        $ANSIBLE_VAULT;1.1;AES256
        62386336663035336236633435383630316232666533383163343161396464396630363461316638
    tasks:
      - name: Display secret
        debug:
          var: my_secret
```

In this example, the my_secret variable is defined as a sensitive string that has been encrypted using Ansible Vault.

Important: Ansible can encrypt any variables, files and playbooks, not just strings.

---

## Vault: Basic Vault Commands

* create: `ansible-vault create vault.yml` => creates a new vault file
* edit:  `ansible-vault edit vault.yml` => opens the vault file in an editor
* view: `ansible-vault view vault.yml` => displays the contents of the vault file
* encrypt: `ansible-vault encrypt vault.yml` => encrypts an existing file
* decrypt: `ansible-vault decrypt vault.yml` => decrypts an existing file
* rekey: `ansible-vault rekey vault.yml` => rekeys an existing file

---

## Run Playbooks with Vault


* `ansible-playbook playbook.yml --ask-vault-pass`
  * prompts for the vault password
    
* `ansible-playbook playbook.yml --vault-password-file vault_pass.txt`
    * uses a file to store the vault password

---

## LAB

---

# Plugins

---

## Plugins

Plugins are used to extend Ansible and execute on the Ansible controller before the play starts.

```yaml
  - hosts: windows_servers
    tasks:
      - name: Install Notepad++
        ansible.windows.win_package:
          name: notepadplusplus.install
          state: present
          choco_path: C:\ProgramData\chocolatey\bin
          choco_install_args: "--force"
        become: yes
```

Let's break down this playbook and explain each part in more detail.

---

## Task: module and plugin

* The _ansible.windows.win_package_ module is used to manage software packages on Windows hosts.
* The _win_chocolatey_ plugin is used to install packages using the Chocolatey package manager.
* In this example, the notepadplusplus.install package is installed using Chocolatey.
* The choco_path parameter is used to specify the path to the Chocolatey binary on the target host.
* The choco_install_args parameter is used to pass additional arguments to the Chocolatey install command.

---

## Plugins: Types

* Action plugins
  * used to extend the functionality of modules
* Callback plugins
  * used to extend the functionality of the output
* Connection plugins
  * used to extend the functionality of the connection
* Filter plugins
  * used to extend the functionality of the filters
* Inventory plugins
  * used to extend the functionality of the inventory

---

## Plugins: Types

* Lookup plugins
  * used to extend the functionality of the lookup
* Module plugins
  * used to extend the functionality of the modules
* Strategy plugins
  * used to extend the functionality of the strategy
* Test plugins
  * used to extend the functionality of the tests
* Terminal plugins
  * used to extend the functionality of the terminal
* Var plugins
  * used to extend the functionality of the variables
* Cache plugins
  * used to extend the functionality of the cache

---

# Roles

---

## Roles

Roles are a way to organize playbooks and make them more modular and reusable.
Also, roles encapsulate functionality for specific services or applications.

```yaml
  ---
  - hosts: servers
    roles:
      - common
      - webserver
      - database
```

* The roles keyword is used to specify the roles that should be applied to the target hosts.

Let's break down this playbook and explain each part in more detail.

---

## Role: Define

```yaml
  ---
  - hosts: servers
    roles:
      - common
      - webserver
      - database
```

A role is a collection of tasks, files, templates, and variables that are organized in a specific directory structure.

The roles keyword in the playbook specifies the role or roles to be applied to the hosts.

In this example, the webserver role is applied to the web servers in the webservers group.

---

## Role: Directory Structure

In order to create a role, you need to create a directory structure that contains the following directories:

```yaml
      tasks/
        main.yml
      handlers/
        main.yml
      files/
        main.yml
      templates/
        main.yml
      vars/
        main.yml
      defaults/
        main.yml
      meta/
        main.yml
```


* Tasks: Define the actions to execute
* Handlers: Manage service restarts or configuration reloads
* Templates: Create dynamic configuration files using Jinja2
* Files: Store static files required by the role
* Vars: Define role-specific variables
* Defaults: Set default variable values that can be overridden


---

## Benefits of Using Roles

* Enhance code reusability and maintainability
* Simplify playbook structure
* Enable collaboration and sharing via Ansible Galaxy

---

## LAB