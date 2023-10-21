# Cloud Computing Overview

---

## What is Cloud Computing?

<img src="../../assets/images/aws/cloud-computing.jpg" alt="XXX image missing" style="max-width:80%;" />


---

## What Is Cloud Computing?

Cloud Computing is a technology that allows individuals and businesses to access and store data, run applications, and utilize computing resources
over the internet without needing to own or maintain
physical hardware.

---

## The **Cloud** Metaphor

Imagine storing your files in a distant warehouse instead of your local computer. Anytime you need a file, you can just request it, and it's delivered
to you over the internet.

That warehouse is the **cloud**

<img src="../../assets/images/generic/cloud.jpg" alt="XXX image missing" style="max-width:70%;" />

---

## In simple terms

* Get as many resources as you need
* In a matter of minutes
* Only pay for what you use

<img src="../../assets/images/generic/fast.jpg" alt="XXX image missing" style="max-width:70%;" />

---

# History of ...

---

## Early Foundations & Concepts

- **1950s-60s:** Mainframes were expensive. 'Time-sharing' systems introduced, enabling multiple users to share access to data and CPU time.
- **1961:** Computer scientist John McCarthy envisioned computation as a public utility, laying philosophical groundwork for cloud computing.

---

## Grid Computing & Virtualization

- **1970s:** Grid computing proposed connecting disparate computers to act like a virtual supercomputer.
- **1980s:** VM (Virtual Machine) technology allowed multiple OS instances to coexist on a single physical hardware system. It was a crucial
  development that provided the necessary abstraction for cloud infrastructure.

---

## Internet & Early Cloud Vision

- **1990s:** Telecommunication sectors began to use virtualized private networks. This was more efficient and hinted at scalability—key to cloud's
  appeal.
- **CompuServe & AOL:** These services offered early internet users cloud-like benefits, such as remote email access and storage.

---

## Application Service Providers (ASP) & Web Services

- **Late 1990s:** ASPs offered businesses software and applications via the web.
- **Early 2000s:** Companies like Amazon started developing web services, online services delivered over the HTTP protocol.

---

## ASP?!

Companies that offered software applications and related services over the internet, especially during the late 1990s and early 2000s. They
allowed businesses to access and use applications without the need to install or maintain them on local servers or computers. Here are some examples
of ASPs:

* NetSuite:
* Salesforce:
* WebEx:
* Intuit QuickBooks Online:
* Citrix Systems:

These ASPs set the groundwork for the modern SaaS (Software as a Service) model, which has become the dominant method for delivering software
applications over the internet.

---

## Amazon's Innovation

- **2002:** Amazon Web Services (AWS) provided a bundled cloud platform with storage and computation capabilities.
- **2006:** Amazon's EC2 was groundbreaking, providing resizable compute capacity in the cloud, democratizing access to scalable computing resources.

---

## Major Tech Entrants & Innovations

- **2008:** Google launched Google App Engine. Developers could build web applications without thinking about the underlying infrastructure.
- **2010:** Microsoft Azure, Microsoft's response to AWS, allowed developers to use Microsoft tools to build cloud-native apps.

---

## Expansion, Competition & Cloud Variants

- **2009:** Oracle Cloud launched, focusing on integrated cloud services.
- **2011:** IBM's SmartCloud offered tailored cloud solutions for enterprises.

---

## Current Trends & The Future

- **Edge Computing:** Processing data closer to its source, especially important for IoT.
- **Quantum Cloud Services:** Early integrations of quantum computing capabilities into cloud platforms.
- **Sustainability:** Green cloud computing emerges as the demand for eco-friendly data centers grows.
- **Cloud & Global Networks:** Expanding global infrastructures to reduce latency and improve access.

---

## Advantages

<img src="../../assets/images/aws/cloud-advantages.png" alt="XXX image missing" style="max-width:80%;" />

---

## Cloud Computing Advantages

* Revolutionary shift in how technology
    - Obtained
    - Used
    - Managed

* You can
    - Reconfigure the environment
    - Scale capacity up and down
    - Deploy applications

---

## Variable vs. Capital Expense

Trade capital expenses for variable operational expenses (pay as you go)

---

## Economies of Scale

Usage from hundreds of thousands of customers is aggregated in the cloud to achieve lower costs and higher economies of scale for all.

---

## Stop guessing capacity

Eliminate guessing on your infrastructure capacity needs. When you make a capacity decision prior to deploying an application, you often either
end up sitting on expensive idle resources or dealing with limited capacity. With cloud computing, these problems go away.

---

## Increase speed and agility

You can develop and experiment faster and cheaper

---

### Focus on Business Differentiators

Spend on what you do well, not on running data centers and managing hardware.

---

### Go global in minutes

Easily deploy your application in multiple regions around the world with just a few clicks.

---

# Disadvantages

---

## Data Privacy and Security Concerns

- **Third-Party Control:** Cloud providers have access to your data.
- **Multi-Tenancy:** Sharing resources with others can pose security risks.
- **Potential for Breaches:** Even major providers can be vulnerable to hacks and unauthorized access.

---

## Downtime and Reliability

- **Not Always Online:** All cloud providers experience occasional outages.
- **Dependency on Internet:** No internet means no access to cloud services.
- **Data Loss:** While rare, data loss events can and do happen.

---

## Limited Control and Flexibility

- **Bound by Provider Choices:** Limited to tools and operations offered by the cloud provider.
- **Migration Challenges:** Moving to a different provider or back on-premises can be complex.
- **Potential Vendor Lock-In:** Difficulties in transferring services and data between providers.

---

## Costs and Bandwidth

- **Hidden Costs:** Billing can be complicated, leading to unexpected charges.
- **Bandwidth Expenses:** Large-scale data transfers can be costly.
- **Scaling Costs:** As you grow, costs can escalate if not monitored.

---

# Cloud Service Models

---

## The Service Model Spectrum

Cloud services are categorized based on what they provide to users

The three main service models are:

- Infrastructure as a Service (IaaS)
- Platform as a Service (PaaS)
- Software as a Service (SaaS)

---

# Iaas

---

## Infrastructure as a Service (IaaS)

Provides virtualized computing resources over the internet on a pay-as-you-go basis

---

## Key Components

- Virtual machines
- storage
- networking

**Example:** Amazon EC2, Google Compute Engine.

---

## Benefits

- **Flexibility:** Choose your software, configuration, and architecture.
- **Cost-Efficient:** Pay only for the infrastructure used.
- **Scalability:** Easily scale resources based on demand.
- **No Physical Maintenance:** Servers are managed by the provider.

---
# PaaS
---

## Platform as a Service (PaaS)

Provides a platform allowing customers to develop, run, and manage applications without dealing with infrastructure complexities.

---

## Key Components

- Development tools
- operating systems
- databases

**Example:** Heroku, Google App Engine.

---

## Benefits

- **Simplified Development:** Focus on coding, not infrastructure.
- **Scalable:** Platform scales with application demands.
- **Integrated Development Tools:** Streamlined development and deployment processes.
- **Cost-Efficient:** Reduce costs associated with app development, testing, and deployment.

---
# SaaS
---

## Software as a Service (SaaS)

Software applications provided over the internet on a subscription basis.

- **Accessibility:** Access from anywhere with an internet connection and a browser.

- **Example:** Google Workspace, Microsoft Office 365.

---

## Benefits

- **Ease of Use:** No installations or updates; handled by the provider.
- **Collaboration:** Centralized data, accessible by multiple users.
- **Automatic Updates:** Always use the latest version.
- **Cost-Effective:** No upfront costs for software licenses.

---

## Other Cloud Service Models

- **Function as a Service (FaaS):** Serverless computing where code execution is fully managed by the cloud provider.
- **Container as a Service (CaaS):** Container management service that allows users to upload, organize, start, stop, scale, and otherwise manage
  containers.

---

## Comparing Service Models

- **IaaS:** Like renting a bare apartment; you furnish and maintain it.
- **PaaS:** Renting a furnished apartment; you live and personalize it but don't worry about the furniture.
- **SaaS:** Staying in a hotel; everything is managed, and you just use the services.

---

# Cloud Deployment Models

---

# An In-depth Exploration
---

## Deployment Models

Cloud deployment models define where and how cloud services are delivered and who has access.

**Primary Models**

- Public
- Private
- Hybrid
- Community

---

# Public Cloud

---



Cloud resources owned and operated by third-party cloud service providers delivered over the internet.

**Accessibility**

Available to public

**Example Providers**

AWS, Google Cloud, Microsoft Azure

---

## Benefits

- **Economies of Scale:** Cost-efficient due to shared infrastructure.
- **No Maintenance:** Provider handles upkeep and updates.
- **High Scalability:** Resources can be provisioned or de-provisioned based on demand.
- **Pay-as-You-Go:** Users only pay for resources they consume.

---

## Concerns with Public Cloud

- **Data Security:** Potential vulnerabilities since resources are shared.
- **Less Customization:** Limited to what the cloud provider offers.
- **Potential Downtime:** Reliant on provider's infrastructure.

---

## Private Cloud

- **Definition:** Cloud resources exclusively used by a single business or organization.
- **Location:** Can be on-premises or hosted by a third-party provider.
- **Customization:** Infrastructure tailored to specific business needs.

---

## Benefits of Private Cloud

- **Enhanced Security:** Dedicated resources offer more robust security options.
- **Customization:** Greater control over configurations.
- **Performance Consistency:** No interference from other users.

---

## Concerns with Private Cloud

- **Higher Costs:** Requires investment in infrastructure and maintenance.
- **Limited Scalability:** Bound by in-house resources unless expanded.
- **Management Overhead:** Organization responsible for upkeep unless outsourced.

---

## Hybrid Cloud

- **Definition:** Combines both private and public clouds, allowing data and applications to be shared between them.
- **Flexibility:** Optimal deployment options for different workloads.
- **Interoperability:** Integrated solutions working cohesively.

---

## Benefits of Hybrid Cloud

- **Optimal Resource Utilization:** Use public cloud for scalable needs and private cloud for sensitive operations.
- **Cost-Effective:** Balance between operational costs of public and security benefits of private.
- **Business Continuity:** Backup and disaster recovery solutions are more efficient.

---

## Concerns with Hybrid Cloud

- **Complexity:** Managing different platforms can be challenging.
- **Security Compliance:** Ensuring consistent security policies across platforms.
- **Integration Issues:** Seamless integration requires proper tools and configurations.

---

## Community Cloud

- **Definition:** Cloud infrastructure shared among several organizations with common concerns (e.g., mission, security requirements, policy).
- **Collaborative:** Built by multiple parties or by a single provider.
- **Examples:** Clouds for banking sectors, government agencies, or research institutions.

---

## Benefits of Community Cloud

- **Shared Costs:** Multiple parties split infrastructure costs.
- **Tailored Solutions:** Built for specific community needs.
- **Shared Knowledge:** Collaborative problem-solving and innovations.

---

## Concerns with Community Cloud

- **Management Issues:** Who takes the lead in management?
- **Less Flexibility:** Customized for the group, not individual organizations.
- **Potential for Conflict:** Differences in priorities or requirements among members.

---

## Concluding Thoughts & The Future

- **Strategic Choices:** Organizations should choose based on cost, security, compliance, and scalability needs.
- **Future Evolution:** Continuous evolution with the advancement of technologies and business needs.
- **Emerging Concepts:** Edge computing, distributed cloud, and more are influencing deployment strategies.

---

# Cloud Outages

Causes and Consequences

---

## Introduction to Cloud Outages

A cloud outage is an interruption to cloud service availability.

- **Impact:** Can affect businesses, end-users, and other reliant entities.
- **Fact:** Even the largest cloud providers aren't immune to outages.

---

## Common Causes of Outages

1. **Hardware Failures:** Even in redundant configurations, hardware can malfunction.
2. **Software Bugs:** Errors in code can cause disruptions.
3. **Network Issues:** Localized or widespread network failures can cut off access.
4. **DDoS Attacks:** Overwhelming traffic can cripple servers.
5. **Human Error:** Misconfigurations or accidental changes can result in outages.

---

# Famous Cloud Outages

---

## AWS

On February 2017, Amazon Web Services (AWS) experienced a major caused by a typo in a command that was being run during a routine debugging of the S3
billing system.

- **Duration:** Lasted approximately 4 hours.
- **Major Sites Down:** Netflix, Reddit, Quora, Apple services and Trello were affected during AWS's 2017 outage.

---

## Google Cloud

On June 2019, Google Cloud experienced a major outage. The outage was caused by a configuration
change intended for a small group of servers in one region that was mistakenly applied to a larger number of servers across several neighboring
regions.

- **Duration:** Lasted approximately 4 hours.
- **Major Sites Down:** Snapchat, Vimeo, and Shopify.

---

## Microsoft Azure

On May 2019, Microsoft Azure experienced a major outage due to a series of storms that caused hardware damage, leading to data center outages.

- **Duration:** Unspecified by Microsoft.
- **Major Sites Down:**  Microsoft-based products.

---

## Repercussions Beyond the Direct Outage

- **Reputation Damage:** Trust is hard to rebuild after significant downtime.
- **Financial Repercussions:** Direct (lost sales/services) and indirect (compensation, regulatory fines).
- **Operational Setbacks:** Lost data or work, delay in business operations.

---

## Preventive Measures and Mitigation

1. **Redundancy:** Deploying resources across multiple data centers or regions.
2. **Monitoring & Alerts:** Real-time tracking to identify and address issues immediately.
3. **Backup and Recovery:** Regularly back up data and ensure swift recovery procedures.
4. **DDoS Protection:** Implementing solutions to deflect or absorb malicious traffic.

---

## Importance of Incident Response Plans

- **Preparation:** Knowing what to do and who is responsible during an outage.
- **Communication:** Keeping customers informed can mitigate reputation damage.
- **Review & Iteration:** Post-mortem analysis to understand what went wrong and how to avoid future occurrences.

---

## Looking Ahead: The Future of Cloud Resilience

- **Increasing Reliability:** Cloud providers investing more in infrastructure and prevention mechanisms.
- **Advanced AI Monitoring:** Predictive analytics to preemptively tackle potential issues.
- **The Role of Edge Computing:** Distributing data and applications to reduce the strain on centralized servers.
