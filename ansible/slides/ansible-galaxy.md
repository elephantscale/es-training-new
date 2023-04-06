# Ansible Galaxy

---

## What is Ansible Galaxy?

Ansible Galaxy is a public community hub for sharing and finding Ansible roles, collections, and other resources.

It allows Ansible users to share and reuse roles, collections, modules, plugins, and other resources.


---

## Registry


The Ansible Galaxy Registry is a searchable, browseable catalog of Ansible content contributed by the community.

The registry includes roles, collections, modules, plugins, and other resources.

Users can search for and download content from the registry, and also rate and review content.

---

##  Collections

Collections are a way to package and distribute Ansible content, including roles, modules, plugins, and other resources.

Collections can be published to Ansible Galaxy, and can include metadata, documentation, and dependencies.

Collections can be used in playbooks and roles using the collections keyword.

It worth noting that Redhat is pushing for the use of collections as the default way to distribute Ansible content.

---

## Roles

Ansible Roles are a way to organize and package tasks, files, templates, and variables into reusable components.

Roles can be published to Ansible Galaxy, and can include metadata, documentation, and dependencies.

Roles can be installed using the ansible-galaxy command-line tool or the roles keyword in a playbook.

---

## Galaxy Tools

Ansible Galaxy provides several tools for creating, sharing, and managing Ansible content.

The _ansible-galaxy_ command-line tool can be used to manage roles, collections, and other content.

The _ansible-builder_ tool can be used to create and package custom collections.

---

## Galaxy Organizations

Ansible Galaxy Organizations are a way to group and manage content contributed by a team or organization.

Organizations can have multiple members with different levels of access and permissions.

Organizations can have multiple repositories, and can control access to them.

---

## Quality Scoring

Ansible Galaxy includes a quality scoring system to help users find high-quality content.

The quality score is based on several factors, including documentation, testing, and community ratings.

The quality score is displayed in the registry for each content item.

---

## Dependencies

Ansible Galaxy allows content creators to specify dependencies on other roles, collections, or modules.

Dependencies can be specified in the metadata of a role or collection, and will be installed automatically when the role or collection is used.

The following example shows how to install dependencies in a role's metadata:

```ini
dependencies:
  - src: geerlingguy.apache
    version: 3.0.0
```

```yaml
```commandline
ansible-galaxy install -r requirements.yml
```

---

## Licensing

Ansible Galaxy requires that all content be licensed under an open-source license.

Content creators can choose from a list of approved open-source licenses.

Content with proprietary or non-approved licenses will not be accepted into the registry.

---

## Contributing

Anyone can contribute content to Ansible Galaxy.

Content should follow the guidelines for roles, collections, or other types of content.

Content should be well-documented and tested, and follow best practices for Ansible content.

---

## Security

Ansible Galaxy takes security seriously and has a number of security features to protect users and content.

Content is scanned for known vulnerabilities using the Snyk vulnerability database.

Content contributors are required to sign a Contributor License Agreement (CLA) to ensure that their contributions are legitimate and do not infringe on any intellectual property rights.

---

## Best Practices

* When using Ansible Galaxy, it's important to follow best practices to ensure the security and reliability of your infrastructure.
* Always review and test content before using it in production environments.
* Use trusted sources and verify the authenticity of content.
* Follow the principle of least privilege and limit access to sensitive systems and data.

---

## Alternatives

While Ansible Galaxy is a popular and well-maintained hub for sharing Ansible content, there are also other options available.

Some other popular Ansible content sharing platforms include GitHub, GitLab, and Bitbucket.

These platforms can be used to share and collaborate on Ansible roles, collections, and other content.

---

## Note-worthy contributors

* [Jeff Geerling](https://galaxy.ansible.com/geerlingguy)
  * Authored several popular Ansible roles on Galaxy. He also maintains an active blog and YouTube channel where he shares his knowledge and experience with Ansible.
* [David Winterbottom](https://galaxy.ansible.com/dwinterbottom)
  * David is the author of Ansible's official AWS modules and has contributed to several other popular modules on Galaxy. He has also given talks and workshops on Ansible at various conferences.
* Nick Janetakis
  * Author of "Docker for Developers", a book on Docker published by Packt.
* Tim Gerla
  * Author of "Mastering Ansible", a comprehensive guide to Ansible published by Packt.

---

## Conclusion

* Ansible Galaxy is a powerful tool for sharing and finding Ansible content.
* It allows users to quickly and easily find and use high-quality roles, collections, modules, and other resources.
* By following best practices and taking security seriously, Ansible Galaxy can help users manage their infrastructure more efficiently and securely.

---


<img src="../images/keep_calm.jpg" width="100%" height="100%" />

Good Bye!

