# Packer - intro

## Packer - Bird's Eye View

* Packer - an open source tool for image building
* Created by HashiCorp
* Builds images in Linux, Windows, Mac
    
---
## Before
* "Golden Image"
* Manual work
    * Multiple images need
    * Version proliferation
    * "Foil Ball"
![Del Mar, San Diego](../artwork/golden-image.png)

---
## Then

* Puppet, etc.
    - build fleets of servers
    - customize or maintain them 
        - via configuration management manifests
* Images often remained
    - to deal with base hardware differences
    - to provide a starting step or bootstrap for a server
* The focus on post-install configuration
![](../artwork/puppet-pexels.jpg)

---
    