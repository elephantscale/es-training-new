# AI for testing introduction

---

# Software testing conundrum

---


## Software testing is expensive

* up-front and recurring investment 
  * in labor and assets
* The cost of fixing defects increases exponentially
* Bugs found early during requirements elicitation
  * cheaper to fix
* Bugs discovered while coding 
  * More expensive
* Bug found after the software is released
  * Even more expensive
* Found in production
  * cost you your reputation and business.

---

## Who will gain from the right approach?

* The managers and project overall, as above
* Developers who get better feedback
* __Testers__ - our hearts are with them

---

## The middle way

* The key to controlling quality cost-effectively 
  * find the right level of testing effort 
  * based on the risks associated with the release
* We want to do just enough testing 
  * remove the most harmful defects prior to the release. 
* The more test coverage, the better, but
  * coverage comes with too great an investment cost,
  * you end up overtesting 
  * and not getting ROI

---

## Need for automation

* One way to reduce testing costs and improve your ROI is through automation
* By removing manual steps
  * organizations can scale operations faster, easier, and more cost-effectively.
* Unfortunately, the current state of the art in test automation still requires significant manual effort
* Humans have to first 
  * understand the software requirements, 
  * design and specify test cases, 
  * and then manually translate them into machine-readable scripts.

---

## Benefits of automation

* A software-testing tool or framework is needed
* It will execute the scripts against the system under test and logs the results. 
* However, the moment the script ends ... 
  * humans enter back into the loop 
    * to verify the results
    * and translate them into actionable items. 

---

## Automation with Artificial Intelligence (AI) 

* __The good news__
  * advances in artificial intelligence (AI) and machine learning (ML) 
  * are being used to bridge
    * the gap between
      * manual and 
      * automated software testing.

---

## Who Is This Workshop For?

* Technology leader
  * CTO, 
  * VP of engineering, 
  * quality director, or 
  * engineering manager 
  * responsible for developing high-quality software, 
  * interested in learning how to scale those efforts 
  * cost-effectively through test automation,
* Roles
  * automation engineers, 
  * software engineers, 
  * architects, 
  * technical leads, or 
  * researchers 
  * using or developing automated software-testing solutions.

---

## What we will cover

* the grand challenges and limitations of traditional automated testing tools
* how AI-driven approaches are helping to overcome these problems. 
* Explore the application of AI/ML to 
  * functional 
  * structural 
  * performance 
  * user-design testing
* dive into techniques for automating graphically intensive solutions
* such as video streaming and gaming applications.

---

## Goals

* Wide knowledge of the various applications of AI-driven testing, 
* an understanding of its current benefits and limitations, and 
* insights into the future of this emerging discipline.

---

# Test Automation Gap

--- 

## Automate this

* When you automate something
  * it can start, run, and complete with little to no human intervention
* 1950s -  “lights-out manufacturing” 
  * vision of factories so independent of human labor that they could operate with the lights out
* However, in the field of software testing, alas!
  * Far from a lights-out philosophy
  * There is a gap between manual and automated testing, 
  * including some grand challenges of software testing and limitations of traditional test automation approaches

---

## The Human Element of Software Testing

* People differentiated between manual and automated testing
* As a test architect, engineering director, and head of quality
  * I frequently differentiated between the two
  * However, the truth is that, outside of automatic test execution, software testing is almost entirely 
    * a manual, tedious, and time-consuming process

---

## Before you can test a software system

* You must understand
  * what the system is supposed to do
  * who its intended users are
* This generally involves
  * reviewing software requirements documentation; 
  * interviewing product analysts, end users, and customers; 
  * and comparing this information to the requirements of similar products.


---

## Once you understand

* Once you understand
  * the product requirements 
  * and customer needs
* You must examine 
  * the implemented system to determine 
  * whether it meets those needs.
* Software testing is more than having a human and/or machine check specific facts about a program.

---


## Testing is...

![](../images/01.png)

---

## Grand Challenges

* Input/Output
* State Explosion
* Data
* The Oracle
* Environment

---

