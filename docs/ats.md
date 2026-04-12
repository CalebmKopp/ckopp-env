# Caleb Kopp

Saint Paul, MN | 507-299-0445 | caleb.m.kopp@outlook.com | [linkedin.com/in/calebmkopp](linkedin.com/in/calebmkopp) | Open to remote

---

## Summary

Platform engineer with 5+ years building and operating large-scale distributed systems at production scale at Optum, the technology arm of UnitedHealth Group. I am one of the deepest technical owners of a Kafka-as-a-Service platform built on custom Kubernetes operators in Go, a CRD-driven internal provisioning system (PRM/KRM), and a NextJS micro-frontend embedded in HCP Console. I support a fleet of 1,000+ nodes, 750+ high-throughput Kafka clusters, and 5,500+ clients served at five-nines. Most recently I co-led the full-stack delivery of WarpStream-based cluster provisioning automation, projected to reduce annual Kafka infrastructure costs by approximately 80% for our largest GCP customers. Seeking to apply my this intersection of streaming engineering, k8s native system design, and full stack product delivery to enterprise challenges at scale.

---

## Skills

**Languages and Runtimes:** Golang, Python, Bash, scripting, TypeScript, JavaScript, Java

**Infrastructure and Orchestration:** Kubernetes, Kubernetes CRDs, custom Kubernetes operator framework development, Helm, Terraform, infrastructure as code, GitHub Actions, CI/CD, GCP, Google Cloud Platform, Azure, GKE, Docker, VPC, DNS, automated deployment, configuration management, cloud infrastructure, DevOps

**Data and Streaming:** Apache Kafka, WarpStream, Confluent, Confluent Schema Registry, Elasticsearch, ELK, stream processing, data ingestion, high throughput, low latency, compaction, data orchestration, data engineering

**Observability:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, cloud monitoring

**Security and Auth:** mTLS, PKI, encryption, network security, HashiCorp Vault, Chainguard hardened images, IAM

**Frontend:** React, NextJS, micro-frontend architecture, TypeScript, self-service provisioning UI

**Cloud:** Google Cloud Platform, GCP, Cloud Storage, cloud engineering, cloud deployment, cloud infrastructure, Azure

---

## Experience

### Staff Platform Engineer
Optum, UnitedHealth Group | Saint Paul, MN | Sep 2022 - Present

**Kafka and Infrastructure Platform, HCP Console**

- **Kafka Resource Manager (KRM) SME:** Serve as one of the primary technical owners and deepest SMEs of KRM, a federated network of Kubernetes operators written in Go forming a two-tier control plane for automated deployment and configuration of streaming infrastructure at production scale. The upper control layer connects to and interfaces with external APIs, CSP provisioning hooks, and Optum-internal resource registration and billing services. A secondary operator layer, running in a separate Kubernetes cluster, generates and owns all concrete Kubernetes resources and links them back to the meta-resources established above. The PRM agent layer and KRM operators share a common Elasticsearch cluster as a single source of truth, ensuring full state recovery and resource utilization visibility if either system becomes unavailable. The platform manages 500+ individual Kafka clusters across multi-tenant, multi-cloud environments, handling high-throughput, low-latency data ingestion workloads at enterprise production scale.

- **Platform Resource Manager (PRM):** Contribute to the PRM agent layer, an internal self-service developer platform and framework analogous to Spotify Backstage, through which all data orchestration and provisioning workflows are expressed as typed API contracts (Kinds and Objects) that decouple the product experience from operator implementation details. Enable self-service cloud deployment of streaming infrastructure across Google Cloud Platform and Azure.

- **Confluent Schema Registry as a Service:** Connect producers and consumers to managed Confluent Schema Registry endpoints, providing certificate/ACL governed schema management, compatibility enforcement, and data governance capabilities on top of the Kafka clusters the platform provisions.

- **Secure and Robust Client Infrastructure:** Maintain the platform's certificate authority and distribution pipeline: generate, distribute, and rotate 5,500+ client certificates with end-to-end encryption, each representing at least one producer and consumer served at five nines reliability. Manage VPC-scoped network security and DNS configuration for broker endpoints across all cloud environments.

- **Frontend Product Lead:** Serve as lead engineer and product owner of the Kafka Clusters on the Cloud self-service micro-frontend (TypeScript, React, NextJS) embedded in HCP Console; captain a team of 6 engineers, write user stories, conduct code reviews, and ship features against product, security, and compliance requirements. Produce technical documentation for onboarding engineers and platform partners.

- **Terraform and Cloud Infrastructure Engineering:** Contribute deep SME expertise to infrastructure-as-code and cloud infrastructure provisioning across GKE, VPC, DNS, IAM, Vault policies, Artifact Registry, and CI/CD pipelines on Google Cloud Platform and Azure; co-design and deliver all Terraform backing the net-new WarpStream Clusters-as-a-Service product including Cloud Storage bucket provisioning and cloud deployment automation.

- **Observability and Cloud Monitoring:** Extend the Prometheus/Thanos/Grafana observability stack, writing PromQL queries, updating Go monitoring controllers for new offerings, and delivering Terraform-managed Grafana dashboards with PagerDuty and ServiceNow alert routing for customer-facing SLAs.

- **Kafka Operations:** Own day-to-day operations of high-throughput, low-latency Kafka clusters at production scale including topic compaction configuration, rolling restarts, partition reassignment, consumer group lag monitoring, throughput and utilization tuning, and broker certificate rotation across on-prem and cloud environments.

- **Utility Tooling and Scripting:** Build and maintain a suite of Python and Bash scripting utilities: broker debugging, auth log inspection, quick produce/consume tools, automated Kafka broker TLS certificate rotation, and internal documentation tooling.

- **DevOps and CI/CD:** Own and maintain CI/CD pipeline configuration for platform services using GitHub Actions, Docker-based build pipelines, JFrog Artifactory, and HashiCorp Vault secret injection; enforce DevOps best practices across the team for container image management, deployment automation, and environment promotion workflows.

- **SRE and Mentorship:** Serve on-call across a fleet of 1,000+ nodes with zero customer data loss in production across the platform's history; mentor junior engineers on distributed systems design, stream processing patterns, operator framework development, and Go best practices. Coordinate across engineering, product, and security stakeholders. Author technical documentation and runbooks used across the Kafka Platform organization.

- **Early Careers:** Volunteer for Optum Early Careers, running technical bootcamp lectures and labs each summer and conducting candidate interviews each fall and spring. 

**Featured Project: WarpStream Cluster Provisioning Platform (Q4 2024 - Q1 2025)**

- Co-led an 8-week sprint to deliver end-to-end WarpStream-based Kafka cluster provisioning across the full stack: PRM agent changes, KRM operator extensions for net-new resource kinds, and a net-new WarpStream DME operator (Go) that generates all required Kubernetes resources and connects them into Cloud Storage buckets, WarpStream API registrations, and agent configs.

- Co-designed and authored all Terraform cloud infrastructure for the WarpStream Clusters-as-a-Service cloud deployment from scratch, including GCP Cloud Storage provisioning, VPC configuration, DNS, and IAM.

- Delivered WarpStream cloud monitoring integration, extending Go monitoring controllers and PromQL dashboards and onboarding into existing PagerDuty and ServiceNow alert routing.

- Shipped to two of Optum's largest Apache Kafka on GCP customers as beta; WarpStream's diskless, Cloud Storage-based architecture eliminates local disk I/O from the stream processing data path, projected to reduce their annual Kafka infrastructure spend by approximately 80%.

**Organizational Initiative Leadership (ongoing)**
Consistent first-responder when company-wide mandates land before any golden path exists. Role in each: absorb the directive from leadership, decompose into tightly-scoped Features and User Stories (1-2 story points each for parallelization and scope control), and run focused engineering calls across the team and adjacent Kafka Platform groups to resolve blockers with SME-level insight. Demonstrated problem solving, analytical skills, communication, coordination, and collaboration across product, security, compliance, and engineering stakeholders at every level of the organization.

- **Chainguard image adoption:** Adopted UHG's hardened base image standard early, rebuilding the platform Docker-based container supply chain and encryption baseline before a formal golden path existed.

- **Cloud vulnerability remediation:** Triaged and resolved hundreds of cloud infrastructure security findings and network security misconfigurations in days when the internal security team hard-launched a new detection system, unblocking the broader Kafka Platform.

- **UHG Cloud Native 2029 migration:** Drove accelerated cloud deployment and migration of customers off on-prem shared multi-tenant Kafka clusters toward Google Cloud Platform and Azure cloud-native deployments.

- **Optum Grafana consolidation:** Led platform-side transition from self-hosted Grafana pods to Optum's centralized internal cloud monitoring offering, migrating dashboards, alert routing, and data source configs.

- **HashiCorp Vault and break-glass CLI:** Manage team and sister-team secrets and encryption keys in Vault; co-maintain a proprietary CLI tool for time-boxed secondary ID check-in/check-out supporting privileged break-glass access workflows.

---

### Software Engineer
Optum, UnitedHealth Group | Saint Paul, MN | Jun 2020 - Aug 2022

Kafka as a Service Platform

- Contributed to provisioning pipelines and day-to-day operations supporting 1,000+ Kafka as a Service clients across multi-tenant and single-tenant stream processing deployments on Google Cloud Platform and Azure.

- Implemented novel features in custom Kubernetes operator frameworks in Go for automated deployment and configuration of Kafka resources at production scale; participated in early architecture discussions for KRM during its design phase.

- Assumed SRE responsibilities beginning Aug 2021, stabilizing production high-throughput Kafka services, establishing performance and utilization thresholds aligned to SLAs, and running on-call shifts responding to production incidents.

---

### Software Development Intern
Optum | Saint Paul, MN | Jun 2019 - Aug 2019

- Documented microservices leveraging master data integrity capabilities to maintain a unified golden record view of individuals and HCOs across multiple data sources.

- Improved quality of an Angular web application through UI testing, defect identification, and increased code coverage.

---

### Student Software Developer
Sogeti USA | Jan 2019 - May 2019

- Co-built a full-stack serverless web application for managing client success stories.
- Served as agile team lead running ceremonies and interfacing with product stakeholders.

---

## Education

Bachelor of Science in Software Engineering, 

St. Cloud State University | Aug 2016 - May 2020 | GPA 3.79

President, Student Organization of Software Engineers (SOSE)
