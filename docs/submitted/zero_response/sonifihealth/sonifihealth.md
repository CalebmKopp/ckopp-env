---
pdf_options:
  margin:
    top: 10mm
    bottom: 10mm
    left: 15mm
    right: 15mm
---

### Caleb Kopp - Senior Software Engineer

Saint Paul, MN &nbsp;|&nbsp; 507-299-0445 &nbsp;|&nbsp; caleb.m.kopp@outlook.com &nbsp;|&nbsp; linkedin.com/in/calebmkopp

---

#### Skills

- **Architecture & Design:** Microservices, event driven architecture, API design, system design, distributed systems, monolith to microservices decomposition, platform engineering, solution architecture
- **Cloud & Orchestration:** AWS, GCP, Kubernetes, EKS, GKE, Docker, Helm, Terraform, infrastructure as code, CloudFormation, CI/CD, GitHub Actions
- **Backend & Languages:** Go, Python, TypeScript, JavaScript, Java, Bash; RESTful APIs, messaging systems, queuing, 3rd party integrations
- **Data & Streaming:** Apache Kafka, Warpstream, Confluent Schema Registry, Elasticsearch, data pipelines, high throughput messaging
- **Security & Compliance:** mTLS, PKI, encryption, IAM, HashiCorp Vault, GCP KMS, HIPAA, PHI/PII, data governance, secure communications
- **Frontend & UX:** React, NextJS, micro-frontend architecture, self-service provisioning UI, responsive design
- **Observability:** Prometheus, Grafana, PagerDuty, ServiceNow, monitoring, alerting, incident response

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners and architects of a streaming platform built on custom Kubernetes operators in Go, forming a two tier distributed control plane (KRM/PRM). The platform manages 1,000+ nodes and 750+ clusters across multi-tenant, multi-cloud environments with five nines reliability and zero customer data loss. Make architecture decisions balancing reliability, scalability, security, and operability; communicate tradeoffs to engineering and product stakeholders.

- Led end to end delivery of Warpstream based cluster provisioning in an 8 week sprint: architected the solution across all layers, wrote a net new Go operator from scratch, coauthored all Terraform cloud infrastructure (Cloud Storage, VPC, DNS, IAM), integrated into the self-service portal, and delivered full observability with Prometheus, Grafana, and PagerDuty alert routing. Projected to reduce annual infrastructure costs by approximately 80% for two of the platform's largest customers.

- Architect and maintain cross-system integration points: typed API contracts decoupling the product experience from operator internals, Confluent Schema Registry as a Service with certificate/ACL governed schema management, and a secure mTLS certificate authority generating and rotating thousands of client certificates for producers and consumers across the enterprise.

- Own the full stack self-service developer portal (TypeScript, React, NextJS micro-frontend) embedded in the enterprise developer console. Captain a team of 6 engineers; write user stories, conduct code and design reviews, and coordinate across engineering, product, security, and compliance stakeholders.

- Design and enforce secure communications between on-prem and cloud systems: VPC-scoped network security, DNS configuration for broker endpoints, SSL/TLS transport of PHI/PII data streams, GCP KMS encryption at rest, and legally-approved data governance workflows in compliance with healthcare regulations.

- Drive platform-wide initiatives ahead of established golden paths: hardened container image adoption, cloud vulnerability remediation (hundreds of findings resolved in days), CI/CD modernization, and observability platform consolidation. Decompose mandates into scoped user stories and run focused engineering calls to unblock teams.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated Kafka cluster deployment and lifecycle management. During the platform's migration from on-prem monolithic infrastructure to cloud-native microservices, discovered undocumented Azure API rate limits through hands-on investigation and presented cost analysis that steered the cloud vendor decision to GCP, driving millions in cumulative infrastructure savings.

- Led migration of 300 customer namespaces from legacy GitOps based provisioning to a CRD backed microservices model with minimal downtime. Migrated 50 Terraform/Helm deployments from OpenShift to GKE, and replaced monolithic CI/CD (Jenkins, Ansible, Atlantis) with modular GitHub Actions pipelines.

- Built a full stack web application (React, TypeScript, Express, MSSQL) replacing a spreadsheet based datacenter inventory management process. Designed the data model, built the API, and delivered the frontend. Demoed and adopted by the team.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615) &nbsp;|&nbsp; Google Cloud Certified Digital Leader
