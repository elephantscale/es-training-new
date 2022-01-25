# Ghidra - advanced

# Ghidra in debug mode

## Ghidra in debug mode

* Eclipse IDE
* develop and debug
* any feature of Ghidra
* including plugins

---

## Requirements

* Java JDK 11 for x86_64
* The Eclipse IDE for Java developers
* PyDev 6.3.1
* The GhidraDev plugin

## Debugging the Ghidra code and Ghidra scripts

![](../images/26.png)

---

# Using Ghidra Extensions

## Using Ghidra Extensions

* incorporate new functionalities into Ghidra according to your needs.
* Extensions are optional components 
  * extend Ghidra's functionality 
  * experimental or user-contributed Ghidra plugins or analyzers.


---

# Reverse engineering

## Reverse engineering

* Reversing Malware Using Ghidra
  * analyze the Alina Point of Sale (PoS) malware
  * Scrapes the RAM memory of PoS 
  * steal credit card and debit card information.
  
* Scripting Malware Analysis
  * Deobfuscating malware samples using scripts
* Using Ghidra Headless Analyzer
  * analyzing multiple binaries
  * automating tasks
  * integrating Ghidra with other tools.
* Auditing Program Binaries
* Scripting Binary Audits

---

## Memory corruption (example)

![](../images/27.png)

---

## WannaCry analysis 1

* Reversing WannaCry Part 1 by stacksmashing
* Finding the killswitch and unpacking the malware in #Ghidra
* [https://www.youtube.com/watch?v=Sv8yu12y5zM&list=WL&index=12](https://www.youtube.com/watch?v=Sv8yu12y5zM&list=WL&index=12)

![](../images/30.png)

---

## WannaCry facts
* 2017
* 300,000 computers infected
* Boeing, Hitachi, TSMC, Renault, etc.

## How it works
![](../images/47.png)

* Run as Administrator

---

## In action

![](../images/48.png)

---

## After 1 min

![](../images/49.png)

---

## Files ruined

![](../images/50.png)

---

## Decrypt screen

![](../images/51.png)

---

## Ghidra we go

![](../images/52.png)

---

## Get the file type right

![](../images/53.png)

---

## Looking for main entry point

![](../images/54.png)

---

## Windows function call

![](../images/55.png)

---

## WinMain call

![](../images/56.png)

---

## Fix the function signature

![](../images/57.png)

---

## Strange string address

![](../images/58.png)

---

## Call is strange_url

![](../images/59.png)

---

## What do we do with strange_url?

![](../images/60.png)

---

## Copy by 4 bytes into strange_url_buffer

![](../images/61.png)

---

## Leave a comment

![](../images/62.png)

---

## Define HINTERNET

![](../images/63.png)

---

## Call to the 'strange' URL

![](../images/64.png)

---

## Killswitch domain

![](../images/65.png)

---

## What the report says

* We observed the emergence of a new WannaCry variant with the internet-check URL
* www.ifferfsodp9ifjaposdfjhgosurijfaewrwergwea[.]testing. 
* A bug in the code logic causes the malware to actually query www.ifferfsodp9ifjaposdfjhgosurijfaewrwergwea[.]test.
* The malware will encrypt your files only if it cannot contact this domain

---

## WannaCry analysis 2

* Reversing WannaCry Part 2 by stacksmashing
* Diving into the malware with #Ghidra
* [https://www.youtube.com/watch?v=Q90uZS3taG0&list=WL&index=13](https://www.youtube.com/watch?v=Q90uZS3taG0&list=WL&index=13)

![](../images/31.png)

---

## WannaCry analysis 3

* Reversing WannaCry Part 3 by stacksmashing
* The encryption component
* [https://www.youtube.com/watch?v=ru5VzUigKqw&list=WL&index=14](https://www.youtube.com/watch?v=ru5VzUigKqw&list=WL&index=14)

![](../images/32.png)

---

## Congrats on completion


![](../images/congrats.png)

---