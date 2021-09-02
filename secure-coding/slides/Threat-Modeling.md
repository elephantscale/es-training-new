# Threat Modeling

# STRIDE

## STRIDE attack classification

* STRIDE is an acronym for
  * Spoofing
  * Tampering
  * Repudiation
  * Information Disclosure
  * Denial of Service
  * Elevation of Privilege. 

Notes:

* STRIDE was invented by Loren Kohnfelder and Praerit Garg in 1999
* Help people developing software identify the types of attacks that software tends to experience.

---

## STRIDE a.k.a
* finding threats
* threat enumeration
* threat analysis 
* threat elicitation
* threat discovery

Notes:

* Each connotes a slightly different flavor of approach. Do the threats exist in the software or the diagram? Then you're finding them. Do they exist in the minds of the people doing the analysis? Then you're doing analysis or elicitation. No single description stands out as always or clearly preferable, but this book generally talks about finding threats as a superset of all these ideas.

* Using STRIDE is more like an elicitation technique, with an expectation that you or your team understand the framework and know how to use it. If you're not familiar with STRIDE, the extensive tables and examples are designed to teach you how to use it to discover threats.

---

## Our plan of mastering STRIDE

* For each specific threat,
  * Provide a deeper explanation
  * Give detailed examples
  * Discuss these examples
* STRIDE can be
  * Per-element
  * Per interaction
  * DESIST
  
Notes:

This chapter explains what STRIDE is and why it's useful, including sections covering each component of the STRIDE mnemonic. Each threat-specific section provides a deeper explanation of the threat, a detailed table of examples for that threat, and then a discussion of the examples. The tables and examples are designed to teach you how to use STRIDE to discover threats. You'll also learn about approaches built on STRIDE: STRIDE-per-element, STRIDE-per-interaction, and DESIST

---


## Spoofing

| Threat   | Property Violated | Threat Definition                                         | Typical Victims                      | Examples                                                                                                        |
|----------|-------------------|-----------------------------------------------------------|--------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| Spoofing | Authentication    | Pretending to be something or someone other than yourself | Processes, external entities, people | Falsely claiming to be Acme.com, winsock .dll, US President, a police officer, or the Nigerian Anti-Fraud Group |


Notes:

* Invite students to find their own examples


---


## Tampering

| Threat    | Property Violated | Threat Definition                                       | Typical Victims                    | Examples                                                                                                                                                                                                                                                                                        |
|-----------|-------------------|---------------------------------------------------------|------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Tampering | Integrity         | Modifying something on disk, on a network, or in memory | Data stores, data flows, processes | Changing a spreadsheet, the binary of an important program, or the contents of a database on disk; modifying, adding, or removing packets over a network, either local or far across the Internet, wired or wireless; changing either the data a program is using or the running program itself |

---

## Repudiation

| Threat      | Property Violated | Threat Definition                                                                                                                                                            | Typical Victims | Examples                                                                                                                                                                                                                         |
|-------------|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Repudiation | Non- Repudiation  | Claiming that you didn't do something, or were not responsible. Repudiation can be honest or false, and the key question for system designers is, what evidence do you have? | Process         | Process or system: “I didn't hit the big red button” or “I didn't order that Ferrari.” Note that repudiation is somewhat the odd-threat-out here; it transcends the technical nature of the other threats to the business layer. |

---

## Information Disclosure

| Threat                 | Property Violated | Threat Definition                                         | Typical Victims                    | Examples                                                                                                                                                                                                                      |
|------------------------|-------------------|-----------------------------------------------------------|------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Information Disclosure | Confidentiality   | Providing information to someone not authorized to see it | Processes, data stores, data flows | The most obvious example is allowing access to files, e-mail, or databases, but information disclosure can also involve filenames (“Termination for John Doe.docx”), packets on a network, or the contents of program memory. |

---

## Denial of Service

| Threat            | Property Violated | Threat Definition                             | Typical Victims                    | Examples                                                                                                                                                      |
|-------------------|-------------------|-----------------------------------------------|------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Denial of Service | Availability      | Absorbing resources needed to provide service | Processes, data stores, data flows | A program that can be tricked into using up all its memory, a file that fills up the disk, or so many network connections that real traffic can't get through |

---

## Elevation of Privilege

| Threat                 | Property Violated | Threat Definition                                             | Typical Victims | Examples                                                                                                     |
|------------------------|-------------------|---------------------------------------------------------------|-----------------|--------------------------------------------------------------------------------------------------------------|
| Elevation of Privilege | Authorization     | Allowing someone to do something they're not authorized to do | Process         | Allowing a normal user to execute code as admin; allowing a remote person without any privileges to run code |

---

## The goal of STRIDE

* The goal of STRIDE is to help you find attacks
* Categorizing?
  * Categorizing them might help you figure out the right defenses, 
  * or it may be a waste of effort. 
  * Trying to use STRIDE to categorize threats can be frustrating
  * But this is a bit like throwing out the baby with the bathwater

Notes:

* You'll sometimes hear STRIDE referred to as “STRIDE categories” or “the STRIDE taxonomy.” This framing is not helpful because STRIDE was not intended as, nor is it generally useful for, categorization. It is easy to find things that are hard to categorize with STRIDE. For example, earlier you learned about tampering with the authentication database and then spoofing. Should you record that as a tampering threat or a spoofing threat? The simple answer is that it doesn't matter. If you've already come up with the attack, why bother putting it in a category? The goal of STRIDE is to help you find attacks. Categorizing them might help you figure out the right defenses, or it may be a waste of effort. Trying to use STRIDE to categorize threats can be frustrating, and those efforts cause some people to dismiss STRIDE, but this is a bit like throwing out the baby with the bathwater.

---

## Spoofing a person

| Threat Examples                        | What the Attacker Does                 | Notes                                        |
|----------------------------------------|----------------------------------------|----------------------------------------------|
| Spoofing a process on the same machine | Creates a file before the real process |                                              |
|                                        | Renaming/linking                       | Creating a Trojan “su” and altering the path |
|                                        | Renaming                               | Naming your process “sshd”                   |

Notes:

* Spoofing is pretending to be something or someone other than yourself. Table 3.1 includes the examples of claiming to be Acme.com, winsock.dll, Barack Obama, or the Nigerian Anti-Fraud Office. Each of these is an example of a different subcategory of spoofing. The first example, pretending to be Acme.com (or Google.com, etc.) entails spoofing the identity of an entity across a network. There is no mediating authority that takes responsibility for telling you that Acme.com is the site I mean when I write these words. This differs from the second example, as Windows includes a winsock.dll. You should be able to ask the operating system to act as a mediating authority and get you to winsock. If you have your own DLLs, then you need to ensure that you're opening them with the appropriate path (%installdir%\dll); otherwise, someone might substitute one in a working directory, and get your code to do what they want. (Similar issues exist with unix and LD_PATH.) The third example, spoofing Barack Obama, is an instance of pretending to be a specific person. Contrast that with the fourth example, pretending to be the President of the United States or the Nigerian Anti-Fraud Office. In those cases, the attacker is pretending to be in a role. These spoofing threats are laid out in Table 3.2.

* If an attacker creates a file before the real process, then if your code is not careful to create a new file, the attacker may supply data that your code interprets, thinking that your code (or a previous instantiation or thread) wrote that data, and it can be trusted. Similarly, if file permissions on a pipe, local procedure call, and so on, are not managed well, then an attacker can create that endpoint, confusing everything that attempts to use it later.

* Spoofing a process or file on a remote machine can work either by creating spoofed files or processes on the expected machine (possibly having taken admin rights) or by pretending to be the expected machine, covered next.

---

## Spoofing a file

| Threat Examples | What the Attacker Does                       | Notes                                                                                                                   |
|-----------------|----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
| Spoofing a file | Creates a file in the local directory        | This can be a library, executable, or config file.                                                                      |
|                 | Creates a link and changes it                | From the attacker's perspective, the change should happen between the link being checked and the link being accessed.   |
|                 | Creates many files in the expected directory | Automation makes it easy to create 10,000 files in /tmp, to fill the space of files called /tmp /′pid.NNNN, or similar. |

---

## Spoofing a machine

| Threat Examples    | What the Attacker Does | Notes                                     |
|--------------------|------------------------|-------------------------------------------|
| Spoofing a machine | ARP spoofing           |                                           |
|                    | IP spoofing            |                                           |
|                    | DNS spoofing           | Forward or reverse                        |
|                    | DNS Compromise         | Compromise TLD, registrar or DNS operator |
|                    | IP redirection         | At the switch or router level             |


Notes:

* Attackers can spoof remote machines at a variety of levels of the network stack. These spoofing attacks can influence your code's view of the world as a client, server, or peer. They can spoof ARP requests if they're local, they can spoof IP packets to make it appear that they're coming from somewhere they are not, and they can spoof DNS packets. DNS spoofing can happen when you do a forward or reverse lookup. An attacker can spoof a DNS reply to a forward query they expect you to make. They can also adjust DNS records for machines they control such that when your code does a reverse lookup (translating IP to FQDN) their DNS server returns a name in a domain that they do not control—for example, claiming that 10.1.2.3 is update.microsoft.com. Of course, once attackers have spoofed a machine, they can either spoof or act as a man-in-the-middle for the processes on that machine. Second-order variants of this threat involve stealing machine authenticators such as cryptographic keys and abusing them as part of a spoofing attack.
* Attackers can also spoof at higher layers. For example, phishing attacks involve many acts of spoofing. There's usually spoofing of e-mail from “your” bank, and spoofing of that bank's website. When someone falls for that e-mail, clicks the link and visits the bank, they then enter their credentials, sending them to that spoofed website. The attacker then engages in one last act of spoofing: They log into your bank account and transfer your money to themselves or an accomplice. (It may be one attacker, or it may be a set of attackers, contracting with one another for services rendered.)

---

## Spoofing a person or a role

| Threat Examples   | What the Attacker Does              | Notes                                                    |
|-------------------|-------------------------------------|----------------------------------------------------------|
| Spoofing a person | Sets e-mail display name            |                                                          |
|                   | Takes over a real account           |                                                          |
| Spoofing a role   | Declares themselves to be that role | Sometimes opening a special account with a relevant name |

Notes:

* Major categories of spoofing people include access to the person's account and pretending to be them through an alternate account. Phishing is a common way to get access to someone else's account. However, there's often little to prevent anyone from setting up an account and pretending to be you. For example, an attacker could set up accounts on sites like LinkedIn, Twitter, or Facebook and pretend to be you, the Adam Shostack who wrote this book, or a rich and deposed prince trying to get their money out of the country.

---

## Tampering Threats

* Tampering is modifying something
  * on disk, 
  * on a network, 
  * in memory.

Notes:

* Tampering is modifying something, typically on disk, on a network, or in memory. This can include changing data in a spreadsheet (using either a program such as Excel or another editor), changing a binary or configuration file on disk, or modifying a more complex data structure, such as a database on disk. On a network, packets can be added, modified, or removed. It's sometimes easier to add packets than to edit them as they fly by, and programs are remarkably bad about handling extra copies of data securely. More examples of tampering are in Table 3.3.


---

## Tampering with a file

| Threat Examples       | What the Attacker Does                         | Notes                                                   |
|-----------------------|------------------------------------------------|---------------------------------------------------------|
| Tampering with a file | Modifies a file they own and on which you rely |                                                         |
|                       | Modifies a file you own                        |                                                         |
|                       | Modifies a file on a file server that you own  |                                                         |
|                       | Modifies a file on their file server           | Loads of fun when you include files from remote domains |
|                       | Modifies a file on their file server           | Ever notice how much XML includes remote schemas?       |
|                       | Modifies links or redirects                    |                                                         |

---


# Security terminology

# Threat modeling

# CVSS attack assessment

## Labs on threat modeling
