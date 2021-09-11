Microservices
=============

## Monolithic Services
  * Traditional Services are defined as monolithic
  * Monolithic Service Does all of the following:
    - Presentation
    - Business Logic
    - DB Access
    - Application Integration


Notes:

Instructor Notes :


Participant Notes :

Monolithic services are what we're trying to move away from.  Monolithic 
services are built from the "do everything" model.  

REST services provide a more minimalistic, uncluttered interface, but 
the still can wrap the functionality of an application that is still
trying to do anything and everything.



---


## Disadvantages to Monolithic Services
  * Complexity to fully understand
  * Difficult to Scale
  * Reliability
  * Difficult to Test
  * Tight Coupling.
  * Violation of Single Concern
  * Difficult to Re-use components.


Notes:

Instructor Notes :


Participant Notes :

Testability is one of the biggest liabilities of the monolithic service. 
Although we can write unit tests for each module within the service, there's no 
real easy way to design the entire service for testability, because the service
itself is tightly coupled to so many other components.

Monolithic services tend to be difficult to repurpose, because designed as
an integrated system, they are of little use outside of the area for which they
were originally designed.


---

## Conway's Law

 * Melvin Conway (1967) stated Conway's Law:
   - "Organizations which design systems -- are constrained to produce designs which are copies of the communication structures of those organizations"
  * What does this mean?
    - it means that are architecture will naturally match our own business structure
    - 3 business units means likely three components
  *  What's wrong with that?
    - Should we match our *own* business structure?
    - What about the business structure of our users?? 

---

## Eric Raymond's Hacker Dictionary
 * Eric Raymond re-states Conway's Law.
   - "If you have four groups working on a compiler; you will get a four-stage compiler"
 * The organization of the *product* is **congruent** with the organization of the organization

---

## Conways Laws:

 * Law 1:  Communication dictates design
  - The mode of organizational communication is expressed through system design
 * Law 2: There is never enough time to do something right, but there is always enough time to do it over
  - A task can never be done perfectly, even with unlimited time, but there is always time to complete a task
 * Law 3: There is a homomorphism from the linear graph of a system to the linear graph of its design organization
  - Homomorphism exists between linear systems and linear organizational structures
 * Law 4: The structures of large systems tend to disintegrate during development, qualitatively more so than small systems
  - A large system organization is easier to decompose than a smaller one


---

## Conway's First Law 

 * "Human beings are complex social animals."
 * For a complex system, design topics always involve communication between human beings. 
 *  "The Mythical Man-Month".
  - “Adding manpower to a late software project makes it later” — Fred Brooks, (1975)
 * **Why?**
 * Communication cost increases exponentially with the number of people in a project: 
   - Communication Cost: `n(n-1)/2`, or  `O(n²)` 
   - 5 members team: `5*(5–1)/2 = 10` channels
   - 15 member team: `15*(15–1)/2 = 105` channels
   - 50 member team: `50*(50–1)/2 = 1,225` channels 
 * Dunbar Number: (Robin Dunbar)
   - Human brains seem wired to have about 150 friends (5 of whom are intimate friends)


## Conway's Second Law

 * "Rome was not built in a day. Address the issues that can be addressed first."
 * “Problem too complicated? Ignore details.  Not enough resources? Give up features.”
   – Erik Hollnagel (2009)
 * Solution:
   - Reslient
   - Fault-Tolerant
   - 

Notes:

The system’s complexity, the number of functions, market competition, and investor expectations are increasing, but human intelligence remains constant. No organization is certain whether it can find sufficient talents, regardless of the capabilities and funds. For an extremely complex system, there will always be something ignored by the operators. Erik believes that the best solution to this issue is to just “let it be.”
We often encounter such issues during daily development tasks. Are the requirements raised by product managers too complex? If so, ignore some minor requirements and focus on the major ones first. Do the product managers have too many requirements? If yes, give up some functions.

---


## Conway’s Third Law
 * "Create independent subsystems to reduce the communication cost."
 * Business Boundaries create small systems
 * "Inter-operate, don't integrate"
   - Interoperate: Define System Boundareis and interface
   - Full stack to entire team
   - Complete Autonomy

---


## What are Microservices?
  * "Do One Thing and Do It Well"
    - Each microservice does minimal level of useful functionality
  * Application Composed of interconnecting services
    - Services communicate via RPC or Messaging
    - Services do their own persistence 
  * Services are Testable
    - Services have their own testing strategy
    - Functionally

Notes:

Instructor Notes :


Participant Notes :




---

## UNIX Philosophy

 * Small is beautiful.
 * Make each program do one thing well.
 * Build a prototype as soon as possible.
 * Choose portability over efficiency.
 * Store data in flat text files.
 * Use software leverage to your advantage.
 * Use shell scripts to increase leverage and portability.
 * Avoid captive user interfaces.
 * Make every program a filter.


Notes:

Instructor Notes :

Mike Gancarz cam up with the UNIX philosophy
https://en.wikipedia.org/wiki/Unix_philosophy#Mike_Gancarz:_The_UNIX_Philosophy


Participant Notes :

Why does the UNIX Philosophy matter?  It is because this philosophy.

Not to diminish the importance of Windows, but today, the vast majority
of systems today are built on top of UNIX (the desktop PC being the primary
exception).  Linux, Mac OS X, Android, iOS,
and most embedded devices all use a UNIX-like OS.  There is a reason for
its popularity in building modular systems.

Unix's pipe and filter architecture means that out of a few dozen reusable 
components, one can design complex systems.  Shell scripts are then able 
to take that 

---


## Distributed Systems

  * Microservices are the "UNIX Philosophy" 
    - in distributed systems
    - in services
  * Does this mean that I can only do this on Linux?
    - NO!
    - "UNIX Philosophy" can be used on Windows too!
    - It's just an idea

Notes:

Instructor Notes :

It's important to make clear to participants that the UNIX philosophy is not one that has to be used only on Linux,
although it certainly is a natural fit for the environment.  

In this case, we are extending the idea to distributed systems.  Unix was invented long before there was such
a thing as distributed systems, so we are more looking at the design pattern as it relates to a new area:
distributed systems

Participant Notes :

Operating Systems are a mature technology, but design patterns in distributed systems are wide open .


---

## Microservice Advantages
  * Scalability
    - Functionality already distributed
    - Easy to Break it up as deployment
  * Testability
    - Each portion is minimal so easy to test
    - TDD
  * Re-usability
    - Components have to focus on doing one task well.
    - We avoid cluttering components with application specific code.

Notes:

Instructor Notes :


Participant Notes :


---



## Microservice Architecture Principles
  * Elastic 
  * Resilient
  * Composable
  * Minimal
  * Complete

Notes:

Instructor Notes :


Participant Notes :

This guide defines what we mean by Microservices. This comes from the original article 
describing the idea behind microservices.


---



## Principle 1: Elastic
  * Must be able to scale up or down
  * Multiple Stateless Instances of Service
  * Routing and Load Balancing
  * Registration, Naming, and Discovery

Notes:

Instructor Notes :


Participant Notes :

Elasticity means that the application can be freely distributed


---


## Principle 2: Resilient
  * Service will have multiple Instances
  * High Availability
    - Redundancy
    - Fault Tolerance
  * No Single Point of Failure
    - No one service is indispensable
    - Load/Risk Distribution
  * Service Instance Dynamic

Notes:

Instructor Notes :


Participant Notes :


---



## Principle 3: Composable
  * Common, Uniform Interface
  * REST Principles
  * Composition Patterns:
    - aggregation
    - linking
    - caching
    - proxies
    - gateways

Notes:

Instructor Notes :


Participant Notes :


---


## Principle 4: Minimal 
  * The "Micro" in Microservices!
  * Entities should be **cohesive**
  * SRP (Single Responsibility Principle
    - **One** business function
  * Not **necessarily** small in size
    - (See next slide)
    - But as as small as possible.
  
Notes:

Instructor Notes :


Participant Notes :





---


## Principle 5: Complete 
  * Minimize coupling With Other Services
    - Tight Coupling limits re-usability.
  * Should fully accomplish business function
    - Don't "split" services for the sake of it
    - Each module is as big as it needs to be
    - "Micro" doesn't **always** mean small
   
Notes:

Instructor Notes :


Participant Notes :

A rookie mistake is to split up a service into two just for the purpose of being small. 
If we have two services that only call each other, then there's no point in doing such
a split.


---


## Microservices and Containers

  * Container frameworks facilitate microservices.
  * Kubernetes Pods
    - Allows groups of containers to run together.
    - facilitates microservices.


Notes:

Instructor Notes :


Participant Notes :


---


    




