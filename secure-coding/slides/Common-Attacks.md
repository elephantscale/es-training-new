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
- Malicious scripts are injected into a trusted website
- Attack occurs when the script is delivered to a user
  - Because the script is from a trusted source, the user's browser executes it
  - There is no way to tell the script originated from an untrusted source
  - The XSS script has the same level of trust and the website
- The script can access session tokens, cookies and other information stored in the user's browser
- There are multiple types of XSS attacks

Notes:

---

## Cross Site Scripting (XSS)

![](../images/cross-site-scripting-example.png)

Notes:

Image credit: https://spanning.com/blog/cross-site-scripting-web-based-application-security-part-3/


---

## Types of XSS Attacks

- There are three recognized types of XSS attacks
- _Stored XSS:_ Also known as persistent or Type I attacks
  - 


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


