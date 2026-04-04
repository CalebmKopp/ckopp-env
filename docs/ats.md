Caleb_Kopp_Resume_ATS.md
# Caleb Kopp

Saint Paul, MN | 507-299-0445 | caleb.m.kopp@outlook.com | Open to remote

---

## Summary

Platform engineer with 5+ years building and operating large-scale distributed systems at Optum, the technology arm of UnitedHealth Group. I am one of the deepest technical owners of a Kafka-as-a-Service platform built on custom Kubernetes operators in Go, a CRD-driven internal provisioning system (PRM/KRM), and a NextJS micro-frontend embedded in HCP Console. I support a fleet of 1,000+ nodes, 500+ Kafka clusters, and 5,500+ clients served at five-nines. Most recently I co-led the full-stack delivery of WarpStream-based cluster provisioning automation, projected to reduce annual Kafka infrastructure costs by approximately 80% for our largest GCP customers.

---

## Skills

Languages and Runtimes: Golang, Python, Bash, TypeScript, JavaScript, Java

Infrastructure and Orchestration: Kubernetes, Kubernetes CRDs, custom Kubernetes operators, Helm, Terraform, GitHub Actions, GCP, Azure, GKE

Data and Streaming: Apache Kafka, WarpStream, Elasticsearch

Observability: Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow

Security and Auth: mTLS, PKI certificate management, HashiCorp Vault, Chainguard hardened images

Frontend: React, NextJS, micro-frontend architecture, TypeScript

---

## Experience

### Staff Platform Engineer
Optum, UnitedHealth Group | Saint Paul, MN | Sep 2022 - Present

Kafka and Infrastructure Platform, HCP Console

- Kafka Resource Manager (KRM) SME: Serve as one of the primary technical owners and deepest SMEs of KRM, a federated network of Kubernetes operators written in Go forming a two-tier control plane. The upper control layer interfaces with external APIs, CSP provisioning hooks, and Optum-internal resource registration and billing services. A secondary operator layer, running in a separate Kubernetes cluster, generates and owns all concrete Kubernetes resources and links them back to the meta-resources established above. The PRM agent layer and KRM operators share a common Elasticsearch cluster as a single source of truth, ensuring full state recovery if either system becomes unavailable. The platform manages 500+ individual Kafka clusters across multi-tenant, multi-cloud environments.

- Platform Resource Manager (PRM): Core contributor to the PRM agent layer, an internal developer platform analogous to Spotify Backstage, through which all provisioning workflows are expressed as typed API contracts (Kinds and Objects) that decouple the product experience from operator implementation details.

- Secure and Robust Client Infrastructure: Maintain the platform's certificate authority and distribution pipeline: generate, distribute, and rotate 5,500+ client certificates, each representing at least one producer and consumer served at five nines reliability.

- Frontend Product Lead: Lead engineer and product owner of the Kafka Clusters on the Cloud micro-frontend (TypeScript, React, NextJS) embedded in HCP Console; captained a team of 6 engineers, writing user stories, conducting code reviews, and shipping features against product, security, and compliance requirements.

- Terraform: Deep SME contributor to infrastructure-as-code across GKE, IAM, Vault policies, Artifact Registry, and CI/CD pipelines on GCP and Azure; co-designed and delivered all Terraform backing the net-new WarpStream Clusters-as-a-Service product.

- Observability: Extended the Prometheus/Thanos/Grafana observability stack, writing PromQL from scratch, updating Go monitoring controllers for new offerings, and delivering Terraform-managed Grafana dashboards with PagerDuty and ServiceNow alert routing for customer-facing SLAs.

- Utility Tooling: Built and maintained a suite of Python/Bash utilities: broker debugging, auth log inspection, quick produce/consume tools, and automated Kafka broker TLS certificate rotation.

- SRE and Mentorship: On-call across a fleet of 1,000+ nodes with zero customer data loss in production across the platform's history; mentor junior engineers on distributed systems design, operator patterns, and Go best practices.

- Early Careers: Volunteer for Optum Early Careers, running technical bootcamp lectures and labs each summer and conducting candidate interviews each fall and spring.

Featured Project: WarpStream Cluster Provisioning Platform (Q4 2024 - Q1 2025)

- Co-led an 8-week sprint to deliver end-to-end WarpStream-based Kafka cluster provisioning across the full stack: PRM agent changes, KRM operator extensions for net-new resource kinds, and a net-new WarpStream DME operator (Go) that generates all required Kubernetes resources and wires them into S3 buckets, WarpStream API registrations, and agent configs.

- Co-designed and authored all Terraform infrastructure for the WarpStream Clusters-as-a-Service product from scratch.

- Delivered WarpStream observability integration, extending Go monitoring controllers and PromQL dashboards and onboarding into existing PagerDuty and ServiceNow alert routing.

- Shipped to two of Optum's largest Apache Kafka on GCP customers as beta; WarpStream's diskless, S3-based architecture is projected to reduce their annual Kafka infrastructure spend by approximately 80%.

Organizational Initiative Leadership (ongoing)

Consistent first-responder when company-wide mandates land before any golden path exists. Role in each: absorb the directive from leadership, decompose into tightly-scoped Features and User Stories (1-2 story points each for parallelization and scope control), and run focused engineering calls across the team and adjacent Kafka Platform groups to resolve blockers with SME-level insight.

- Chainguard image adoption: Early adopter of UHG's hardened base image standard, rebuilding the platform container supply chain before a formal golden path existed.

- Cloud vulnerability remediation: Triaged and resolved hundreds of cloud security findings in days when the internal security team hard-launched a new detection system, unblocking the broader Kafka Platform.

- UHG Cloud Native 2029 migration: Drove accelerated migration of customers off on-prem shared multi-tenant Kafka clusters toward cloud-native deployments.

- Optum Grafana consolidation: Led platform-side transition from self-hosted Grafana pods to Optum's centralized internal Grafana offering, migrating dashboards, alert routing, and data source configs.

- HashiCorp Vault and break-glass CLI: Manages team and sister-team secrets in Vault; co-maintains a proprietary CLI tool for time-boxed secondary ID check-in/check-out supporting privileged break-glass access workflows.

---

### Software Engineer
Optum, UnitedHealth Group | Saint Paul, MN | Jun 2020 - Aug 2022

Kafka as a Service Platform

- Contributed to provisioning pipelines and day-to-day operations supporting 1,000+ Kafka as a Service clients across multi-tenant and single-tenant deployments on GCP and Azure.

- Implemented novel features in custom Kubernetes operators in Go for Kafka resource reconciliation; participated in early architecture discussions for KRM during its design phase.

- Assumed SRE responsibilities beginning Aug 2021, stabilizing production Kafka services, establishing performance and availability thresholds aligned to SLAs, and running on-call shifts responding to production incidents.

---

### Software Development Intern
Optum | Saint Paul, MN | Jun 2019 - Aug 2019

- Documented microservices leveraging master data integrity capabilities to maintain a unified golden record view of individuals and HCOs across multiple data sources.

- Improved quality of an Angular web application through UI testing, defect identification, and increased code coverage.

---

### Student Software Developer
Sogeti USA | Jan 2019 - May 2019

- Co-built a full-stack serverless web application for managing client success stories; served as agile team lead running ceremonies and interfacing with product owners.

---

## Education

Bachelor of Science in Software Engineering
St. Cloud State University | Aug 2016 - May 2020
GPA 3.79
President, Student Organization of Software Engineers (SOSE)
