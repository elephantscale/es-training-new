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


# Security terminology

# Threat modeling

# CVSS attack assessment

## Labs on threat modeling
