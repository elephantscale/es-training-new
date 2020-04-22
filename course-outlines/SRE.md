


1. Introduction
The Sysadmin Approach to Service Management
Google’s Approach to Service Management: Site Reliability Engineering
Tenets of SRE
Ensuring a Durable Focus on Engineering
Pursuing Maximum Change Velocity Without Violating a Service’s SLO
Monitoring
Emergency Response
Change Management
Demand Forecasting and Capacity Planning
Provisioning
Efficiency and Performance
The End of the Beginning
2. The Production Environment at Google, from the Viewpoint of an SRE
Hardware
System Software That “Organizes” the Hardware
Managing Machines
Storage
Networking
Other System Software
Lock Service
Monitoring and Alerting
Our Software Infrastructure
Our Development Environment
Shakespeare: A Sample Service
Life of a Request
Job and Data Organization
II. Principles
3. Embracing Risk
Managing Risk
Measuring Service Risk
Risk Tolerance of Services
Identifying the Risk Tolerance of Consumer Services
Identifying the Risk Tolerance of Infrastructure Services
Motivation for Error Budgets
Forming Your Error Budget
Benefits
4. Service Level Objectives
Service Level Terminology
Indicators
Objectives
Agreements
Indicators in Practice
What Do You and Your Users Care About?
Collecting Indicators
Aggregation
Standardize Indicators
Objectives in Practice
Defining Objectives
Choosing Targets
Control Measures
SLOs Set Expectations
Agreements in Practice
5. Eliminating Toil
Toil Defined
Why Less Toil Is Better
What Qualifies as Engineering?
Is Toil Always Bad?
Conclusion
6. Monitoring Distributed Systems
Definitions
Why Monitor?
Setting Reasonable Expectations for Monitoring
Symptoms Versus Causes
Black-Box Versus White-Box
The Four Golden Signals
Worrying About Your Tail (or, Instrumentation and Performance)
Choosing an Appropriate Resolution for Measurements
As Simple as Possible, No Simpler
Tying These Principles Together
Monitoring for the Long Term
Bigtable SRE: A Tale of Over-Alerting
Gmail: Predictable, Scriptable Responses from Humans
The Long Run
Conclusion
7. The Evolution of Automation at Google
The Value of Automation
Consistency
A Platform
Faster Repairs
Faster Action
Time Saving
The Value for Google SRE
The Use Cases for Automation
Google SRE’s Use Cases for Automation
A Hierarchy of Automation Classes
Automate Yourself Out of a Job: Automate ALL the Things!
Soothing the Pain: Applying Automation to Cluster Turnups
Detecting Inconsistencies with Prodtest
Resolving Inconsistencies Idempotently
The Inclination to Specialize
Service-Oriented Cluster-Turnup
Borg: Birth of the Warehouse-Scale Computer
Reliability Is the Fundamental Feature
Recommendations
8. Release Engineering
The Role of a Release Engineer
Philosophy
Self-Service Model
High Velocity
Hermetic Builds
Enforcement of Policies and Procedures
Continuous Build and Deployment
Building
Branching
Testing
Packaging
Rapid
Deployment
Configuration Management
Conclusions
It’s Not Just for Googlers
Start Release Engineering at the Beginning
9. Simplicity
System Stability Versus Agility
The Virtue of Boring
I Won’t Give Up My Code!
The “Negative Lines of Code” Metric
Minimal APIs
Modularity
Release Simplicity
A Simple Conclusion
III. Practices
10. Practical Alerting from Time-Series Data
The Rise of Borgmon
Instrumentation of Applications
Collection of Exported Data
Storage in the Time-Series Arena
Labels and Vectors
Rule Evaluation
Alerting
Sharding the Monitoring Topology
Black-Box Monitoring
Maintaining the Configuration
Ten Years On…
11. Being On-Call
Introduction
Life of an On-Call Engineer
Balanced On-Call
Balance in Quantity
Balance in Quality
Compensation
Feeling Safe
Avoiding Inappropriate Operational Load
Operational Overload
A Treacherous Enemy: Operational Underload
Conclusions
12. Effective Troubleshooting
Theory
In Practice
Problem Report
Triage
Examine
Diagnose
Test and Treat
Negative Results Are Magic
Cure
Case Study
Making Troubleshooting Easier
Conclusion
13. Emergency Response
What to Do When Systems Break
Test-Induced Emergency
Details
Response
Findings
Change-Induced Emergency
Details
Response
Findings
Process-Induced Emergency
Details
Response
Findings
All Problems Have Solutions
Learn from the Past. Don’t Repeat It.
Keep a History of Outages
Ask the Big, Even Improbable, Questions: What If…?
Encourage Proactive Testing
Conclusion
14. Managing Incidents
Unmanaged Incidents
The Anatomy of an Unmanaged Incident
Sharp Focus on the Technical Problem
Poor Communication
Freelancing
Elements of Incident Management Process
Recursive Separation of Responsibilities
A Recognized Command Post
Live Incident State Document
Clear, Live Handoff
A Managed Incident
When to Declare an Incident
In Summary
15. Postmortem Culture: Learning from Failure
Google’s Postmortem Philosophy
Collaborate and Share Knowledge
Introducing a Postmortem Culture
Conclusion and Ongoing Improvements
16. Tracking Outages
Escalator
Outalator
Aggregation
Tagging
Analysis
Unexpected Benefits
17. Testing for Reliability
Types of Software Testing
Traditional Tests
Production Tests
Creating a Test and Build Environment
Testing at Scale
Testing Scalable Tools
Testing Disaster
The Need for Speed
Pushing to Production
Expect Testing Fail
Integration
Production Probes
Conclusion
18. Software Engineering in SRE
Why Is Software Engineering Within SRE Important?
Auxon Case Study: Project Background and Problem Space
Traditional Capacity Planning
Our Solution: Intent-Based Capacity Planning
Intent-Based Capacity Planning
Precursors to Intent
Introduction to Auxon
Requirements and Implementation: Successes and Lessons Learned
Raising Awareness and Driving Adoption
Team Dynamics
Fostering Software Engineering in SRE
Successfully Building a Software Engineering Culture in SRE: Staffing and Development Time
Getting There
Conclusions
19. Load Balancing at the Frontend
Power Isn’t the Answer
Load Balancing Using DNS
Load Balancing at the Virtual IP Address
20. Load Balancing in the Datacenter
The Ideal Case
Identifying Bad Tasks: Flow Control and Lame Ducks
A Simple Approach to Unhealthy Tasks: Flow Control
A Robust Approach to Unhealthy Tasks: Lame Duck State
Limiting the Connections Pool with Subsetting
Picking the Right Subset
A Subset Selection Algorithm: Random Subsetting
A Subset Selection Algorithm: Deterministic Subsetting
Load Balancing Policies
Simple Round Robin
Least-Loaded Round Robin
Weighted Round Robin
21. Handling Overload
The Pitfalls of “Queries per Second”
Per-Customer Limits
Client-Side Throttling
Criticality
Utilization Signals
Handling Overload Errors
Deciding to Retry
Load from Connections
Conclusions
22. Addressing Cascading Failures
Causes of Cascading Failures and Designing to Avoid Them
Server Overload
Resource Exhaustion
Service Unavailability
Preventing Server Overload
Queue Management
Load Shedding and Graceful Degradation
Retries
Latency and Deadlines
Slow Startup and Cold Caching
Always Go Downward in the Stack
Triggering Conditions for Cascading Failures
Process Death
Process Updates
New Rollouts
Organic Growth
Planned Changes, Drains, or Turndowns
Testing for Cascading Failures
Test Until Failure and Beyond
Test Popular Clients
Test Noncritical Backends
Immediate Steps to Address Cascading Failures
Increase Resources
Stop Health Check Failures/Deaths
Restart Servers
Drop Traffic
Enter Degraded Modes
Eliminate Batch Load
Eliminate Bad Traffic
Closing Remarks
23. Managing Critical State: Distributed Consensus for Reliability
Motivating the Use of Consensus: Distributed Systems Coordination Failure
Case Study 1: The Split-Brain Problem
Case Study 2: Failover Requires Human Intervention
Case Study 3: Faulty Group-Membership Algorithms
How Distributed Consensus Works
Paxos Overview: An Example Protocol
System Architecture Patterns for Distributed Consensus
Reliable Replicated State Machines
Reliable Replicated Datastores and Configuration Stores
Highly Available Processing Using Leader Election
Distributed Coordination and Locking Services
Reliable Distributed Queuing and Messaging
Distributed Consensus Performance
Multi-Paxos: Detailed Message Flow
Scaling Read-Heavy Workloads
Quorum Leases
Distributed Consensus Performance and Network Latency
Reasoning About Performance: Fast Paxos
Stable Leaders
Batching
Disk Access
Deploying Distributed Consensus-Based Systems
Number of Replicas
Location of Replicas
Capacity and Load Balancing
Monitoring Distributed Consensus Systems
Conclusion
24. Distributed Periodic Scheduling with Cron
Cron
Introduction
Reliability Perspective
Cron Jobs and Idempotency
Cron at Large Scale
Extended Infrastructure
Extended Requirements
Building Cron at Google
Tracking the State of Cron Jobs
The Use of Paxos
The Roles of the Leader and the Follower
Storing the State
Running Large Cron
Summary
25. Data Processing Pipelines
Origin of the Pipeline Design Pattern
Initial Effect of Big Data on the Simple Pipeline Pattern
Challenges with the Periodic Pipeline Pattern
Trouble Caused By Uneven Work Distribution
Drawbacks of Periodic Pipelines in Distributed Environments
Monitoring Problems in Periodic Pipelines
“Thundering Herd” Problems
Moiré Load Pattern
Introduction to Google Workflow
Workflow as Model-View-Controller Pattern
Stages of Execution in Workflow
Workflow Correctness Guarantees
Ensuring Business Continuity
Summary and Concluding Remarks
26. Data Integrity: What You Read Is What You Wrote
Data Integrity’s Strict Requirements
Choosing a Strategy for Superior Data Integrity
Backups Versus Archives
Requirements of the Cloud Environment in Perspective
Google SRE Objectives in Maintaining Data Integrity and Availability
Data Integrity Is the Means; Data Availability Is the Goal
Delivering a Recovery System, Rather Than a Backup System
Types of Failures That Lead to Data Loss
Challenges of Maintaining Data Integrity Deep and Wide
How Google SRE Faces the Challenges of Data Integrity
The 24 Combinations of Data Integrity Failure Modes
First Layer: Soft Deletion
Second Layer: Backups and Their Related Recovery Methods
Overarching Layer: Replication
1T Versus 1E: Not “Just” a Bigger Backup
Third Layer: Early Detection
Knowing That Data Recovery Will Work
Case Studies
Gmail—February, 2011: Restore from GTape
Google Music—March 2012: Runaway Deletion Detection
General Principles of SRE as Applied to Data Integrity
Beginner’s Mind
Trust but Verify
Hope Is Not a Strategy
Defense in Depth
Conclusion
27. Reliable Product Launches at Scale
Launch Coordination Engineering
The Role of the Launch Coordination Engineer
Setting Up a Launch Process
The Launch Checklist
Driving Convergence and Simplification
Launching the Unexpected
Developing a Launch Checklist
Architecture and Dependencies
Integration
Capacity Planning
Failure Modes
Client Behavior
Processes and Automation
Development Process
External Dependencies
Rollout Planning
Selected Techniques for Reliable Launches
Gradual and Staged Rollouts
Feature Flag Frameworks
Dealing with Abusive Client Behavior
Overload Behavior and Load Tests
Development of LCE
Evolution of the LCE Checklist
Problems LCE Didn’t Solve
Conclusion
IV. Management
28. Accelerating SREs to On-Call and Beyond
You’ve Hired Your Next SRE(s), Now What?
Initial Learning Experiences: The Case for Structure Over Chaos
Learning Paths That Are Cumulative and Orderly
Targeted Project Work, Not Menial Work
Creating Stellar Reverse Engineers and Improvisational Thinkers
Reverse Engineers: Figuring Out How Things Work
Statistical and Comparative Thinkers: Stewards of the Scientific Method Under Pressure
Improv Artists: When the Unexpected Happens
Tying This Together: Reverse Engineering a Production Service
Five Practices for Aspiring On-Callers
A Hunger for Failure: Reading and Sharing Postmortems
Disaster Role Playing
Break Real Things, Fix Real Things
Documentation as Apprenticeship
Shadow On-Call Early and Often
On-Call and Beyond: Rites of Passage, and Practicing Continuing Education
Closing Thoughts
29. Dealing with Interrupts
Managing Operational Load
Factors in Determining How Interrupts Are Handled
Imperfect Machines
Cognitive Flow State
Do One Thing Well
Seriously, Tell Me What to Do
Reducing Interrupts
30. Embedding an SRE to Recover from Operational Overload
Phase 1: Learn the Service and Get Context
Identify the Largest Sources of Stress
Identify Kindling
Phase 2: Sharing Context
Write a Good Postmortem for the Team
Sort Fires According to Type
Phase 3: Driving Change
Start with the Basics
Get Help Clearing Kindling
Explain Your Reasoning
Ask Leading Questions
Conclusion
31. Communication and Collaboration in SRE
Communications: Production Meetings
Agenda
Attendance
Collaboration within SRE
Team Composition
Techniques for Working Effectively
Case Study of Collaboration in SRE: Viceroy
The Coming of the Viceroy
Challenges
Recommendations
Collaboration Outside SRE
Case Study: Migrating DFP to F1
Conclusion
32. The Evolving SRE Engagement Model
SRE Engagement: What, How, and Why
The PRR Model
The SRE Engagement Model
Alternative Support
Production Readiness Reviews: Simple PRR Model
Engagement
Analysis
Improvements and Refactoring
Training
Onboarding
Continuous Improvement
Evolving the Simple PRR Model: Early Engagement
Candidates for Early Engagement
Benefits of the Early Engagement Model
Evolving Services Development: Frameworks and SRE Platform
Lessons Learned
External Factors Affecting SRE
Toward a Structural Solution: Frameworks
New Service and Management Benefits
Conclusion
V. Conclusions
33. Lessons Learned from Other Industries
Meet Our Industry Veterans
Preparedness and Disaster Testing
Relentless Organizational Focus on Safety
Attention to Detail
Swing Capacity
Simulations and Live Drills
Training and Certification
Focus on Detailed Requirements Gathering and Design
Defense in Depth and Breadth
Postmortem Culture
Automating Away Repetitive Work and Operational Overhead
Structured and Rational Decision Making
Conclusions
34. Conclusion
A. Availability Table
B. A Collection of Best Practices for Production Services
Fail Sanely
Progressive Rollouts
Define SLOs Like a User
Error Budgets
Monitoring
Postmortems
Capacity Planning
Overloads and Failure
SRE Teams
C. Example Incident State Document
D. Example Postmortem
Lessons Learned
Timeline
Supporting information:
E. Launch Coordination Checklist
F. Example Production Meeting Minutes
Bibliography
Index