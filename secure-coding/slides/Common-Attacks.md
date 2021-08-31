# Common Attacks

---
 
## Common Attacks List

This module covers the following common attacks:

1. Cross site scripting (XSS)
2. Malicious file execution
3. Session hijacking
4. Encryption
5. Unsecured direct object reference
6. Failure to authorize/hidden URLs
7. Cross site request forgery (CSRF) 

There are other attacks not covered in this module.

OWASP maintains a project identifying the current top ten attacks

// add url

Notes:

---

## Cross Site Scripting (XSS)

- A form of injection attack
- Malicious scripts are injected into a response from a trusted website
  - Because the script is from a trusted source, the user's browser executes it
  - There is no way to tell the script originated from an untrusted source
  - The XSS script has the same level of trust as the website
- Often used to access session tokens, cookies and other information stored in the user's browser


Notes:

---

## Types of XSS Attacks

- There are three recognized types of XSS attacks

- _Stored XSS:_ Known as a persistent or Type I attack
  - The malicious script is stored persistently on the server
  - The payload is embedded in the HTML response to a user request

- _Reflected XSS:_ Known as a Type II attack
  - A user is tricked into accessing a trusted website using a malformed URL
  - The payload is embedded in the HTML response just like in a Type I attack
  - The attacker "bounces" the script off a trusted server

- _DOM XSS:_ Also known as a Type 0 attack
  - Does not return malicious code in the response HTML 
  - It is returned as a URI fragment in response URL 
  - 
  
---

## Persistent XSS Attack

![](../images/cross-site-scripting-example.png)

Notes:

Image credit: https://spanning.com/blog/cross-site-scripting-web-based-application-security-part-3/

---
## Persistent XSS Attack Example

- A trusted blog allows users to post comments
- An attacker posts the following comment which contains a malicious script

- When a user fetches the comment from the bloc, the script in the comment is executed on their browser
- The attack payload remains or persists on the server across victims


---

## Reflected XSS Attack

- A user is tricked into clicking on a malformed URL to a trusted website
  - Phishing attacks like sending the user the link in a email, are often used
- The payload is in the malformed URL
  - When the response is opened in the user's browser, the payload executes

---

## Reflected XSS Attack Example

___

## DOM XSS Attack

---

## DOM XSS Attack Example

---
## Malicious File Execution

Notes:

---

## Session Hijacking

Notes:

---

## Encryption

Notes:

---

## Unsecured Direct Object Access

- Happens when implementation objects are exposed
  - Eg. Configuration files, credentials, SQL queries
- These objects can then be modified or destroyed
- If implementation directories are accessible
  - Attackers can add new files to compromise the system
- 

Notes:

---

## Hidden URL Authorization Failure

Notes:

---

## Cross Site Request Forgery



Notes:

---


