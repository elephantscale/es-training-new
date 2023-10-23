# AWS Well-Architected Framework
---

## Introduction to the Well-Architected Framework

The AWS Well-Architected Framework helps cloud architects build secure, high-performing, resilient, and efficient applications.

It provides a consistent approach to evaluate architectures and implement scalable designs.

It provides a set of questions developed by AWS experts to helps customers think critically about their architecture.

It asks, "Does your infrastructure follow best practices?"

---

## The AWS Well-Architected Framework

Architects should leverage the AWS Well-Architected Framework in order to:

- Increase awareness of architectural best practices.

- Address foundational areas that are often neglected.

- Evaluate architectures using a consistent set of principles.

---

## The AWS Well-Architected Framework

The AWS Well-Architected Framework **does not** provide:

- Implementation details

- Architectural patterns

- Relevant case studies

However, it **does** provide:

- Questions centered on critically understanding architectural decisions

- Services and solutions relevant to each question

- References to relevant resources

---

## Five Pillars of the Framework

The Framework is based on five pillars:

- Operational Excellence
- Security
- Reliability
- Performance Efficiency
- Cost Optimization
- Sustainability

---

# Pillar: Operational Excellence

---

## What is Operational Excellence?

This pillar focuses on running and monitoring systems to deliver business value.

Emphasizes the importance of :

- Documentation
- Procedures
- understanding changes

---

## Design Principle

- **Perform operations as code**:
    - Use engineering discipline across the environment.
    - Implement and update workload with code.
    - Automate procedures and achieve consistent responses.
- **Make frequent, small, reversible changes**:
    - Regularly update components.
    - Prioritize reversible, minimal impact changes.
- **Refine operations procedures frequently**:
    - Continuously refine and evolve procedures.
    - Regularly review and ensure team familiarity.
- **Anticipate failure**:
    - Identify and address potential failures.
    - Test procedures and impacts.
    - Train teams through simulated events.
- **Learn from all operational failures**:
    - Drive improvement from operational events.
    - Share learnings organization-wide.

---

# Best Practices

---

## Organization

**Shared Understanding and Prioritization**:

- Teams must have a shared understanding of the workload, their role, and business goals.
- Regularly evaluate internal and external customer needs with stakeholders.
- Stay updated on guidelines from organizational governance and regulatory compliance.

**Risk Management**:

- Evaluate business risks, maintain a risk registry, and assess tradeoffs between competing interests.
- Understand the impact of risks and make informed decisions on where to focus.

**Team Roles and Responsibilities**:

- Ensure teams understand their roles in achieving business outcomes and supporting each other.
- Define ownership for applications, platforms, processes, and procedures.
- Clearly articulate the responsibilities and provide mechanisms for change requests.

---
**Support and Empowerment**:

- Senior leadership should set expectations, encourage experimentation, and provide resources for growth.
- Promote inclusion, diversity, and accessibility within teams for diverse perspectives.

**Utilizing AWS Resources**:

- Leverage AWS Cloud Compliance, AWS Well-Architected Tool, and AWS Trusted Advisor for best practices and insights.
- Educate teams with AWS Support, AWS Documentation, AWS Training, and AWS Partner Network.
- Use centralized governance tools like AWS Organizations and AWS Control Tower for efficient management.

---

## Prepare

**Understand Workloads and Design for Observability**:

- Gain insights into workloads through metrics, logs, events, and traces.
- Observability offers comprehensive insights into system behaviors, rooted in metrics, logs, and traces.

**Effective Change Management**:

- Improve the flow of beneficial changes into production.
- Prioritize refactoring, fast feedback, and quick bug fixes for optimal performance.

**Fast Feedback and Rapid Recovery**:

- Mitigate impact of deployment issues through proactive feedback mechanisms.
- Emphasize frequent, small, and reversible changes for agility and quick troubleshooting.

**Operational Readiness Assessment**:

- Evaluate readiness of workloads, processes, and personnel.
- Utilize checklists for go-live decisions and runbooks for routine activities.

**Utilizing AWS for Operational Excellence**:

- View workloads as code for consistent engineering discipline.
- Use AWS CloudFormation for templated, controlled development and production environments.

---

## Operate

**Emphasis on Observability**:

- Focus on meaningful data to understand workload performance.
- Set clear baselines, alert thresholds, and monitor for deviations to address potential challenges.

**Measuring Successful Operation**:

- Determine business and customer outcomes for workload success.
- Establish metrics baselines, analyze them, and validate understanding of operational success over time.

**Management of Operational Events**:

- Efficiently handle both planned and unplanned operational events.
- Prioritize responses based on business impact and ensure identified owners and escalation processes.

**Communication of Operational Status**:

- Tailor dashboard views and notifications to target audiences.
- Keep stakeholders informed on workload status and any disruptions.

**Utilizing AWS for Insightful Dashboards**:

- Leverage AWS tools like CloudWatch for aggregated views of operations activities.
- Use AWS logging capabilities (e.g., X-Ray, CloudTrail) for root cause analysis and remediation.

---

## Evolve

**Commitment to Continuous Improvement**:

- Allocate time for constant incremental improvements and post-incident analysis to prevent the recurrence of issues.
- Prioritize opportunities for enhancement, encompassing both workload and operational procedures.

**Feedback Loops**:

- Integrate feedback mechanisms within procedures to quickly pinpoint areas that require improvement.

**Sharing and Collaborative Learning**:

- Distribute lessons learned among teams to ensure collective growth.
- Analyze trends from lessons and perform cross-team evaluations to identify and execute improvement strategies.

**Implementation and Evaluation**:

- Implement strategic changes targeting improvement and assess the outcomes to gauge success.

**Leveraging AWS for Analytics**:

- Export and store log data using Amazon S3. Prepare data with AWS Glue and analyze using Amazon Athena.
- Employ Amazon QuickSight for data visualization, helping in recognizing trends and pinpointing potential areas for enhancement.

---

# Pillar: Security

---

## What is Security?

This pillar focuses on protecting information and systems.

<span style="text-align:left">The ability to protect:</span>

- Information
- Systems
- Assets

While delivering business value through:

- Risk assessments
- Mitigation strategies

---

## Design Principles

- **Implement a strong identity foundation**:
    - Enforce least privilege and separation of duties.
    - Centralize identity management.
    - Eliminate static long-term credentials.
- **Maintain traceability**:
    - Monitor and audit environment changes in real time.
    - Integrate logs with systems for automatic action.
- **Apply security at all layers**:
    - Use defense in depth with multiple controls.
    - Secure every layer, from network edge to code.
- **Automate security best practices**:
    - Use software-based security for scalable security.
    - Implement controls as version-controlled code.
- **Protect data in transit and at rest**:
    - Classify and secure data based on sensitivity.
    - Use encryption, tokenization, and access controls.
- **Keep people away from data**:
    - Minimize direct access or manual data processing.
    - Reduce human error risks with data.
- **Prepare for security events**:
    - Have aligned incident management processes.
    - Run simulations and automate detection and recovery.

---

# Best Practices

---

## Identity and access management

**Importance of IAM**:

- Identity and access management ensures only authenticated and authorized entities can access resources as intended. It involves defining principals, creating policies, and managing credentials.

**AWS IAM Service**:

- AWS Identity and Access Management (IAM) controls both user and programmatic access to AWS services and resources.

**Granular Policies**:

- Use specific policies in AWS to assign permissions to entities like users, groups, roles, or resources.

**Strong Credential Management**:

- Enforce best practices for password strength, avoid password reuse, and mandate multi-factor authentication (MFA).

**Secure Access for Workloads**:

- AWS IAM supports secure system access through methods like roles, instance profiles, identity federation, and temporary credentials.

---

## Detection

**Role of Detective Controls**:

- Detective controls help identify potential security threats or incidents and support compliance, quality processes, and threat response.

**Types of Detective Controls**:

- Asset inventory helps establish operational baselines, while internal auditing ensures practices align with policies and requirements.

**Alerts and Notifications**:

- Automated alerts based on specific conditions help in quickly identifying and reacting to anomalies.

**AWS Detective Tools**:

- AWS offers tools like CloudTrail (for logging API calls), CloudWatch (for monitoring and alarming), and AWS Config (for tracking configurations).

**Advanced AWS Security Services**:

- Amazon GuardDuty offers continuous threat detection, and services like Amazon S3 can log access requests for deeper insight.

---

## Infrastructure protection

**Infrastructure Protection Importance**:

- Infrastructure protection is crucial for meeting best practices, regulatory requirements, and ensuring ongoing secure operations.

**Defense in Depth**:

- This layered security approach ensures that multiple protective barriers exist, so if one fails, another layer is already in place to thwart malicious activity.

**Packet Inspection in AWS**:

- AWS supports both stateful and stateless packet inspection, leveraging either its native tools or third-party solutions from the AWS Marketplace.

**Amazon Virtual Private Cloud (VPC)**:

- Amazon VPC provides a customizable and isolated environment, allowing users to define a secure network architecture with controlled gateways, routing, and subnet configurations.

**Infrastructure Customization**:

- Within the VPC, users can delineate between public and private subnets, ensuring sensitive resources remain inaccessible from the public internet.

---

## Data protection

**Foundational Security Practices**:

- Before designing any system, establish foundational security practices like data classification and encryption to safeguard sensitive information and meet regulatory requirements.

**Data Control and Encryption in AWS**:

- AWS customers have total control over their data. AWS facilitates easy data encryption, key management, and key rotation, ensuring robust data protection.

**Detailed Logging**:

- AWS offers comprehensive logging, capturing vital activities such as file access and modifications, aiding in audit and security monitoring.

**Exceptional Data Durability**:

- AWS's storage services like Amazon S3 and Amazon Glacier boast a durability level of 99.999999999% annually, ensuring the preservation and availability of stored objects.

**Data Versioning and Regional Boundaries**:

- AWS supports data versioning to prevent unintentional modifications or deletions. Moreover, data remains fixed in its specified AWS Region unless explicitly moved by the user.

---

## Incident response

**Importance of Incident Response**:

- Despite advanced preventive and detective controls, organizations must have procedures ready for responding to security incidents. Effective architecture aids in efficient incident management,
  isolation, and recovery.

**Detailed Logging on AWS**:

- AWS offers comprehensive logging capturing crucial activities, aiding in quick detection and understanding of security incidents, such as unauthorized file access or alterations.

**Automated Incident Response on AWS**:

- AWS allows automated event processing and response using its APIs. AWS CloudFormation can be employed to pre-set tools and establish a secure "clean room" for isolated forensic analysis during a
  breach.

---

## Application security

**Definition of AppSec**:

- Application security encompasses processes for designing, building, and testing the security of developed workloads.

**Incorporate AppSec in SDLC**:

- Include security testing within the software development lifecycle to identify, rectify, and prevent security vulnerabilities before deployment.

**Early Integration is Cost-Effective**:

- Early identification of flaws, such as through threat modeling, reduces the complexity and cost of mitigation.

**Focus Areas for Implementation**:

- Consider organization and culture, security of and in the pipeline, and dependency management for a holistic application security approach.

**AWS & AppSec**:

- AWS offers various solutions that focus both on technological measures and organizational strategies to enhance the application security program.

---

# Pillar: Reliability

---

## What is Reliability?

This pillar focuses on ensuring a workload performs its intended function correctly and consistently when it's expected to.

The ability of a system to:

- Recover from infrastructure or service failures
- Dynamically acquire computing resources to meet demand

Mitigate disruptions such as:

- Misconfigurations
- Transient network issues

---

## Design Principles

- **Automatically recover from failure**:
    - Monitor workload using KPIs tied to business value.
    - Initiate automation for breaches in thresholds.
    - Automate failure notifications and recovery.
    - Anticipate and remediate failures before occurrence.
- **Test recovery procedures**:
    - Use cloud capabilities to test failure scenarios.
    - Validate recovery procedures.
    - Simulate past failures or different failure types.
    - Expose and address failure pathways before real incidents.
- **Scale horizontally for availability**:
    - Use multiple small resources instead of a large one.
    - Distribute requests to avoid common failure points.
- **Stop guessing capacity**:
    - Address failures from resource saturation.
    - Monitor demand and resource utilization.
    - Automate resource scaling based on demand.
    - Understand and manage service quotas and constraints.
- **Manage change in automation**:
    - Implement infrastructure changes through automation.
    - Track and review changes to automation.

---

# Best Practices

---

## Foundations

**Foundational Requirements**:

- These are overarching requirements that go beyond a specific workload or project.

**Pre-architecting Considerations**:

- Ensure foundational requirements, such as adequate network bandwidth, are met before designing a system.

**AWS Advantage**:

- AWS inherently addresses many foundational requirements.
- AWS provides a flexible and scalable infrastructure, taking on the responsibility for sufficient networking and compute capacity.
- Resources can be adjusted as needed, offering on-demand scalability.

---

## Workload architecture

Key Points:

**Design Significance**:

- Reliable workloads hinge on initial design choices in both software and infrastructure.

**Architecture and Well-Architected Pillars**:

- Architectural decisions influence workload behavior across various areas of optimal practices.
- Specific patterns are essential for ensuring reliability.

**AWS's Developer Support**:

- AWS offers a broad selection of languages and technologies for developers.
- AWS SDKs simplify coding by offering language-specific APIs.
- This versatility allows developers to seamlessly integrate reliability best practices.

**Educational Resource**:

- Amazon provides insights into its own software construction and operations through The Amazon Builders' Library.

---

## Change management

**Anticipating Changes**:

- For a workload to operate reliably, changes from both external factors (e.g., demand spikes) and internal adjustments (e.g., feature deployments, security patches) must be anticipated and addressed.

**Monitoring and Automation with AWS**:

- AWS tools allow for the monitoring of workloads and the automation of responses based on Key Performance Indicators (KPIs).
- As demands increase, AWS can be configured to automatically scale resources, like adding more servers to cater to a growing user base.

**Control and Audit**:

- AWS provides the capability to manage permissions, ensuring that only authorized individuals can make changes to the workload.
- AWS also offers the ability to audit the history of changes, allowing for transparency and accountability.

---

## Failure management

**Expectation of Failures**:

- Complex systems are inherently prone to failures, and a reliable system should be designed to anticipate and handle these failures.

**Failures Awareness**:

- For a system to be reliable, it must be able to detect failures in real-time and act accordingly to ensure continuous availability.

**Advantages of Automation with AWS**:

- AWS offers capabilities that allow workloads to react to monitoring data automatically.
- If a specific metric surpasses a set threshold, AWS can trigger automated actions to correct the issue.

**Resource Management Strategy**:

- Instead of investing time in diagnosing and rectifying a problematic resource within the production environment, it's often more efficient to simply replace it with a new, functioning resource.
- Post-failure, the problematic resource can be analyzed separately, without affecting the ongoing operations of the primary system.

**Temporary System Stand-Up**:

- AWS's cloud architecture permits the setup of temporary, whole system replicas at a relatively low cost.
- This ability allows for thorough automated testing, ensuring that complete recovery processes are verified and reliable.

---

# Pillar: Performance Efficiency

---

## What is Performance Efficiency?

This pillar focuses on using computing resources efficiently to meet system requirements and to maintain that efficiency as demand changes and technologies evolve.

The ability to:

- Use computing resources efficiently to meet system requirements
- Maintain that efficiency as demand changes and technologies evolve

---

## Design Principles

- **Democratize advanced technologies**:
    - Delegate complex tasks to the cloud vendor.
    - Consume advanced tech (e.g., NoSQL, machine learning) as services.
    - Allow the team to focus on product development.
- **Go global in minutes**:
    - Deploy workloads in multiple AWS Regions for better customer experience.
- **Use serverless architectures**:
    - Eliminate the need to manage physical servers.
    - Utilize serverless services for storage, events, and more.
    - Reduce operational burdens and potentially lower costs.
- **Experiment more often**:
    - Leverage virtual and automatable resources for varied testing.
- **Consider mechanical sympathy**:
    - Align technology selection with workload goals.
    - Understand how services are consumed.
    - Match tech approach to specific needs, such as data access patterns.

---

## Best Practices

---

# Cost Optimization

---

## What is Cost Optimization?

This pillar focuses on avoiding unneeded costs.

The ability to avoid or eliminate:

- Unneeded cost
- Suboptimal resources

---

## Design Principles

- **Implement Cloud Financial Management**:
    - Invest in Cloud Financial Management and Cost Optimization.
    - Dedicate resources for capability building in tech and usage management.
    - Establish knowledge, programs, and processes for cost efficiency.
- **Adopt a consumption model**:
    - Pay for only what you use.
    - Adjust usage based on actual needs, not forecasts.
    - Optimize costs by shutting down resources when not in use.
- **Measure overall efficiency**:
    - Track business output versus associated costs.
    - Monitor gains from output increase and cost reduction.
- **Stop spending on undifferentiated heavy lifting**:
    - Let AWS handle data center operations and some managed services.
    - Focus on business projects over IT infrastructure.
- **Analyze and attribute expenditure**:
    - Identify and break down cloud usage and costs.
    - Allocate IT costs to specific workloads.
    - Measure ROI and enable workload owners to optimize resources.

---

# Best Practices

---

## Architecture selection

**Versatility in Solutions**:

- The best-fit solution for a workload might not be singular. Combining multiple approaches often yields the most effective results.

**Features that Enhance Performance**:

- Workloads that are designed following the Well-Architected framework utilize multiple solutions, leveraging their varied features to enhance overall performance.

**Diverse AWS Resources**:

- AWS offers a wide variety of resource types and configurations. This diversity enables businesses to tailor their cloud infrastructure to their unique needs.

**Advantages Over On-Premises**:

- AWS provides options and solutions that might be challenging or impossible to achieve with traditional on-premises setups.

**Managed Services for Enhanced Performance**:

- Services like Amazon DynamoDB exemplify AWS's capacity to offer fully managed solutions. DynamoDB, in particular, offers NoSQL database capabilities with exceptionally low latency, maintaining
  performance irrespective of the scale.

---

## Compute and hardware

**Choice Impacts Efficiency**:

- The compute selection for a workload is crucial. The right choice enhances performance efficiency, while the wrong choice can be detrimental.

**Diverse Compute Options in AWS**:

- AWS offers a range of compute solutions tailored to varying needs.

**Instances**:

- Virtual servers in AWS are called instances. Their flexibility lets users alter their capabilities as required.
- AWS instances come in a spectrum of families and sizes, each tailored to specific workloads. Additional features such as SSDs and GPUs further enhance their versatility.

---
**Containers**:

- Containers offer OS-level virtualization, allowing applications to run with their dependencies in isolated environments.
- AWS offers different platforms for container management, including AWS Fargate for serverless container compute and EC2 for those requiring more granular control.
- For orchestrating these containers, users can opt for Amazon ECS or the Kubernetes-based Amazon EKS.

**Functions**:

- AWS provides function-based compute, abstracting away the underlying infrastructure. With this model, users focus solely on their code.
- AWS Lambda epitomizes this concept, enabling code execution without managing any underlying instances.

---

## Data management

**Diversity in Data Management**:

- The right data management solution is contingent upon various factors such as data type, access patterns, throughput needs, access frequency, update frequency, and reliability requirements.
- It's critical to use purpose-built databases to optimize performance.

**AWS Storage Varieties**:

- AWS delivers a spectrum of storage solutions, each tailored for specific needs: object, block, and file storage.

**Object Storage**:

- Geared for scalability and durability, object storage is best suited for globally accessible data, serverless computing, archiving, big data storage, or backups.
- Amazon S3 stands out in this category, boasting unparalleled scalability, security, and performance, along with exceptional durability of 99.999999999% (11 9's).

---
**Block Storage**:

- Block storage offers consistent and low-latency storage on a per virtual host basis, resembling DAS or SAN systems.
- Amazon EBS is crafted for workloads needing persistent storage in tandem with EC2 instances. It balances storage capacity, performance, and cost, making it a go-to for many AWS applications.

**File Storage**:

- This storage type provides shared file system access across various systems, making it apt for large repositories, development settings, media storage, or user directories.
- Amazon EFS is a notable file storage service, suitable for varied use cases.
- Amazon FSx furnishes a simplified way to deploy and manage popular file systems, ensuring users get the benefits of renowned file systems without the operational burdens.

---

## Networking and content delivery

**Networking Considerations**:

- The ideal networking solution is contingent on factors like latency, throughput, jitter, and bandwidth.
- Physical constraints, often determined by the location of users or on-site resources, play a pivotal role in deciding location options. However, these can be counterbalanced with strategies like
  edge locations or strategic resource placement.

**Virtualized Networking in AWS**:

- AWS offers a versatile range of virtualized networking solutions, facilitating a tailored fit for diverse requirements.

**Optimization Features**:

- AWS presents several features to enhance network performance and optimize traffic:
    - **Enhanced Networking**: Improves networking performance for Amazon EC2 instances, allowing higher packet per second (PPS) performance, lower network jitter, and reduced latencies.
    - **EC2 Networking Optimized Instances**: These instance types offer higher bandwidth, higher packet per second (PPS) performance, and lower network jitter.
    - **Amazon S3 Transfer Acceleration**: Boosts the speed of transferring files to and from Amazon S3 by using optimized network paths and Amazon CloudFront's globally distributed edge locations.
    - **Dynamic Amazon CloudFront**: A content delivery network (CDN) that securely delivers data, videos, applications, and APIs to users globally with low latency and high-speed.

---
**Networking Features for Latency and Jitter Reduction**:

- AWS provides an array of features designed to minimize network distance or jitter:
    - **Amazon Route 53 Latency Routing**: A scalable Domain Name System (DNS) web service designed to route end-users to the closest endpoint, ensuring the lowest latency.
    - **Amazon VPC Endpoints**: Allows private connectivity between VPCs and AWS services, bypassing the public internet.
    - **AWS Direct Connect**: Provides a dedicated network connection from your on-premises to AWS, reducing costs, increasing bandwidth, and providing a consistent network experience.
    - **AWS Global Accelerator**: A service that uses the AWS global network to optimize the path from your users to your applications, improving the availability and performance of your applications.

---

# Pillar: Sustainability

---

## What is Sustainability?

This pillar focuses on making decisions that make the environment better.

Focuses on:

- Environmental impact
- Energy Consumption
- Carbon Footprint

---

## Design Principles

- **Understand your impact**:
    - Measure current and future impact of workloads.
    - Consider impact from product use to decommissioning.
    - Compare productive output to total impact.
    - Use data to set KPIs and evaluate productivity and impact over time.
- **Establish sustainability goals**:
    - Set long-term goals for each workload.
    - Model ROI of sustainability improvements.
    - Plan for growth with reduced impact intensity.
    - Align with wider business sustainability objectives.
- **Maximize utilization**:
    - Right-size and design for high utilization.
    - Focus on energy efficiency and reduce idleness.
- **Anticipate and adopt efficient offerings**:
    - Support improvements from partners and suppliers.
    - Monitor new efficient hardware and software.
    - Design for flexibility for rapid technology adoption.
- **Use managed services**:
    - Share services for maximum resource utilization.
    - Use services like AWS Fargate for efficient operations.
    - Minimize impact with tools like Amazon S3 Lifecycle or EC2 Auto Scaling.
- **Reduce downstream impact**:
    - Minimize energy and resources needed for service usage.
    - Limit device upgrades for service access.
    - Test for expected and actual service impacts on devices.

---

# Best Practices

---

## Region selection
---
## Alignment to demand
---

## Software and architecture

---

## Data

---

## Hardware and services

---





