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

- **Languages:** Go, Java, Python, Bash, TypeScript
- **Distributed Systems & Streaming:** Apache Kafka, WarpStream, Confluent Schema Registry, event-driven architecture, high-throughput data pipelines, stream processing
- **Cloud & Orchestration:** GCP, Azure, GKE, Kubernetes (CRDs, custom operators), Docker, Helm, Terraform
- **Observability & Operations:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, SLO/SLA definition
- **CI/CD & Security:** GitHub Actions, JFrog Artifactory, HashiCorp Vault, mTLS/PKI, IAM
- **Data & Storage:** Elasticsearch, MSSQL, Cloud Storage

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters, five-nines reliability, zero customer data loss. Built on custom Kubernetes operators in Go forming a two-tier control plane for automated streaming infrastructure deployment across multi-tenant, multi-cloud environments on GCP and Azure.

- Drive architecture decisions across distributed backend services, balancing reliability, scalability, performance, and operability: typed API contracts decoupling product from operator internals, Confluent Schema Registry-as-a-Service with certificate/ACL-governed schema management, and a secure mTLS certificate authority rotating thousands of client certificates. Ensure secure transport and storage (GCP KMS) of PHI/PII data streams with active disaster recovery.

- Co-designed and authored all Terraform for the platform's cloud infrastructure across GCP and Azure with consistent IAM policies, resource tagging, and module patterns. Co-led WarpStream cluster provisioning end to end in an 8-week sprint: a net-new Go operator, all Terraform from scratch (GCS, VPC, DNS, IAM), and observability integration. WarpStream's serverless, Cloud Storage-backed architecture eliminates local disk, enabling ~80% cost reduction versus traditional Kafka. Shipped to Optum's two largest GCP customers.

- Extend the Prometheus/Thanos/Grafana observability stack with PromQL queries, Go monitoring controllers, and Terraform-managed dashboards with PagerDuty/ServiceNow alert routing. Own day-to-day Kafka operations: rolling restarts, partition reassignment, lag monitoring, and throughput tuning.

- Lead engineer and product owner of the Kafka Clusters on Cloud micro-frontend (TypeScript, React, NextJS) in HCP Console. Captain a team of 6 engineers, conduct code and design reviews, coordinate across engineering, product, and security stakeholders. Mentor engineers on distributed systems, Go, and operator development. Serve on-call across 1,000+ production nodes.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated Kafka deployment at production scale. Managed 120 Azure VM ScaleSets via Terraform modules and Atlantis GitOps workflows with consistent environment promotion across lab/dev/stg/prd. Migrated 300 customer namespaces to CRD-backed provisioning with minimal downtime. Assumed SRE responsibilities Aug 2021, establishing performance thresholds aligned to SLAs and running on-call incident response.

---

#### Projects

##### OSNI, Online Social Network Interactions
*Lead Developer* &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615)

- Designed and built a data pipeline applying NLP and sentiment analysis to social media data using Python. Managed CI/CD via Azure DevOps. Published as a peer-reviewed IEEE paper.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; Student Org of Software Engineers President
