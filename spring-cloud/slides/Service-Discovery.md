# **Lab 3: Set Up Service Discovery Using Eureka and Register Services**

---

## **What is Spring Cloud Netflix Eureka?**

- Eureka is a service discovery tool from the Spring Cloud Netflix suite.
- It allows microservices to register and discover each other in a distributed system.
- Core features include:
  - Dynamic service registration and deregistration.
  - Load balancing by providing multiple instances of a service.
  - Health check to remove non-responsive services from the registry.

Notes:

Eureka helps simplify the process of discovering services in a microservices architecture. It allows services to register themselves, making it easy for other services to locate them dynamically.

---

## **History of Eureka**

- Developed by Netflix as part of their suite for cloud-native microservices.
- Released to the open-source community in **2012**.
- Became a part of the Spring Cloud Netflix library for Spring-based microservices.

### Why was it created?
- Netflix created Eureka to address the challenge of managing services in a dynamic cloud environment.
- Service discovery was a major challenge in their microservices architecture.
- Eureka provided a solution to keep track of service instances automatically.

Notes:

Eureka was created to address the need for reliable service discovery in dynamic, cloud-native environments. It automatically handles the registration and discovery of services, solving a key problem in microservices.

---

## **Why Use Eureka for Service Discovery?**

- **Before Eureka**:
  - Hardcoded service addresses in configuration files.
  - Difficult to handle dynamic scaling (adding/removing service instances).
  - Manual tracking of service availability was error-prone.

- **After Eureka**:
  - Automatic registration and deregistration of services.
  - Easier to scale services dynamically.
  - Built-in health checks to manage service availability.

Notes:

Eureka streamlines service discovery, which is essential in distributed systems. It provides automatic registration, health checks, and deregistration, reducing the manual burden of managing service addresses.

---

## **Key Objectives of Eureka**

1. **Dynamic Service Registration** - Services register themselves when they start.
2. **Service Discovery** - Enable services to find other services dynamically.
3. **Health Monitoring** - Continuously check the availability of registered services.
4. **Load Balancing** - Provide multiple instances for resilience and load distribution.
5. **Fault Isolation** - Handle service failures without affecting other services.

Notes:

Eureka is designed to make microservices dynamic and resilient. It manages service registration, discovery, and health monitoring, which are essential components in ensuring system reliability.

---

## **Benefits of Eureka for Microservices**

### Before Eureka:
- Static service discovery and hardcoded URLs.
- Lack of automated health checks for service instances.
- Complexity in scaling services dynamically.

### After Eureka:
- Centralized registry for all microservices.
- Services can locate each other without hardcoded addresses.
- Automated health checks to ensure service availability.
- Scalable microservices architecture with dynamic registration.

Notes:

Eureka transforms service discovery from a static, manual process into a dynamic, automated one. Its built-in health checks and centralized registry make it ideal for managing the complexity of distributed systems.

---

## **Comparison: Manual Service Discovery vs. Eureka**

| **Feature**                | **Manual Service Discovery**        | **Spring Cloud Eureka**                |
|----------------------------|-------------------------------------|----------------------------------------|
| **Service Registration**   | Manual configuration               | Automated registration                 |
| **Address Management**     | Hardcoded URLs                     | Dynamic lookup via Eureka registry     |
| **Scaling**                | Manual update of instances         | Auto-discovery of new instances        |
| **Health Check**           | Manual monitoring                  | Built-in health check mechanism        |
| **Resilience**             | Limited fault isolation            | High resilience with automatic deregistration |

Notes:

This comparison highlights how Eureka makes service discovery more dynamic and resilient compared to traditional manual approaches. Automated registration and health checks greatly simplify the management of service instances.

---
