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

- **Go & Backend:** Go (primary, 4+ years production), Python, TypeScript, Bash; custom Kubernetes operator development, backend services, infrastructure automation
- **Kubernetes & Cloud Native:** Kubernetes CRDs, custom controller/operator frameworks, Helm, multi-cluster management, GKE, Docker, CNCF ecosystem
- **Cloud & Infrastructure:** GCP (certified), Azure, Terraform, VPC, DNS, IAM, Cloud Storage, infrastructure as code, CI/CD (GitHub Actions)
- **System Design & Observability:** Distributed control plane architecture, multi-tenant platform design, Prometheus, Thanos, Grafana, PromQL, PagerDuty, SLO/SLA enforcement
- **Security & Data:** mTLS/PKI, certificate authority management, HashiCorp Vault, GCP KMS, Apache Kafka, Warpstream

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a Kubernetes-native streaming platform built on custom Go operators forming a two-tier CRD-driven distributed control plane. The platform manages 1,000+ nodes and 750+ clusters across GCP and Azure with five nines reliability and zero customer data loss. Architect and implement operator extensions, new custom resource kinds, and cross-cluster resource reconciliation at enterprise production scale.

- Co-led delivery of a net-new cluster provisioning product: wrote a Go operator from scratch that generates all required Kubernetes resources and connects them into Cloud Storage buckets, API registrations, and agent configs. Coauthored all Terraform cloud infrastructure (GCS, VPC, DNS, IAM) and delivered full observability integration. Solely owned a head-to-head performance benchmark in GCP, designing methodology from scratch, iterating after initial results were challenged, and presenting findings to external vendor engineering and upper leadership that directly informed the production launch decision. Projected to reduce annual infrastructure costs by approximately 80%.

- Lead engineer and product owner of a self-service micro-frontend (TypeScript, React, NextJS) embedded in an enterprise developer portal serving thousands of internal developers. Build developer-empathetic interfaces that let teams provision production-grade Kubernetes infrastructure in minutes. Design typed API contracts decoupling the developer experience from operator internals, enabling seamless platform evolution without breaking consumer workflows.

- Extend the Prometheus/Thanos/Grafana observability stack with PromQL queries, Go monitoring controllers, and Terraform-managed dashboards. Own the platform's mTLS certificate authority, generating and rotating thousands of client certificates. Author runbooks, incident playbooks, and enforce SLOs across customer-facing services.

- Captain a team of 6 engineers: conduct code and design reviews, mentor on distributed systems design, Go best practices, and operator framework development. Coordinate across engineering, product, security, and compliance stakeholders.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated cluster deployment and lifecycle management. Shaped early architecture decisions for the CRD-driven control plane during its design phase. Discovered undocumented Azure API rate limits through hands-on investigation and presented cost analysis that steered the platform's cloud vendor decision toward GCP, driving millions in cumulative infrastructure savings. Assumed SRE responsibilities and migrated 300 customer namespaces to CRD-backed provisioning with minimal downtime.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615) &nbsp;|&nbsp; Google Cloud Certified Digital Leader
