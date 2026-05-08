---
pdf_options:
  margin:
    top: 6mm
    bottom: 6mm
    left: 12mm
    right: 12mm
---

### Caleb Kopp - Senior Software Engineer

Saint Paul, MN &nbsp;|&nbsp; 507-299-0445 &nbsp;|&nbsp; caleb.m.kopp@outlook.com &nbsp;|&nbsp; linkedin.com/in/calebmkopp

---

#### Skills

- **Kafka:** Apache Kafka, Warpstream, Schema Registry, MirrorMaker 2, Cruise Control, Apache Beam, active-active/passive DR
- **Platform:** Kubernetes, custom operators (Go), CRDs, Helm, Terraform, GitHub Actions, Docker, GitOps
- **Observability:** Prometheus, Thanos, Grafana, PromQL, PagerDuty
- **Security:** mTLS, PKI, HashiCorp Vault, KMS, IAM, RBAC/ACLs, network policies
- **Languages:** Go, Python, Bash, TypeScript, Java, Linux, networking, JVM tuning
- **Cloud:** GCP, Azure, GKE, VPC, DNS, multi-AZ/region

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the deepest technical owners of a Kafka-as-a-Service platform: 1,000+ production nodes, 750+ clusters across GCP and Azure, five-nines reliability, zero customer data loss. Provision and operate multi-tenant Kafka clusters, single-broker clusters, and Warpstream (diskless, Cloud Storage-backed) clusters as self-service products built on custom Kubernetes operators in Go.
- Operate active-passive and active-active Kafka topologies with Apache Beam pipelines, MirrorMaker 2 for cross-cluster replication, and Cruise Control for automated partition rebalancing and capacity optimization. Maintain DR runbooks and participate in regular failover exercises across multi-AZ and multi-region deployments.
- Architect and operate production clusters at scale: upgrades, capacity planning, performance tuning, partition reassignment, ISR management, consumer group lag monitoring, broker certificate rotation, and zero-downtime rolling restarts across on-prem and cloud environments.
- Build and maintain custom Kubernetes operators in Go managing stateful Kafka and Warpstream workloads on GKE, handling full lifecycle automation from provisioning through decommission.
- Co-design and author all Terraform infrastructure (GCS, VPC, DNS, IAM, Vault); deliver IaC-driven automation with guardrails for repeatable, compliant provisioning via GitHub Actions CI/CD.
- Implement and manage Confluent Schema Registry as a Service: certificate/ACL-governed schema management, compatibility enforcement, and data governance on top of provisioned clusters.
- Drive reliability as on-call engineer: define SLOs and error budgets, maintain runbooks and alert playbooks, lead incident response and war rooms, conduct postmortems, and deliver automated remediation through operator self-healing logic.
- Extend the Prometheus/Thanos/Grafana observability stack: PromQL queries, Terraform-managed capacity dashboards for on-call engineers and customers, PagerDuty/ServiceNow alert routing for customer-facing SLAs.
- Secure the platform end-to-end: maintain the certificate authority rotating thousands of client mTLS certificates, enforce encryption at rest (GCP KMS) and in transit (TLS), implement RBAC/ACLs, and manage VPC-scoped network policies.
- Lead engineer and product owner; captain a team of 6, mentor junior engineers on distributed systems and Go, conduct code reviews, and contribute to platform roadmap and standards.
- Co-led an 8-week sprint delivering full-stack Warpstream cluster provisioning: net-new Go operator, all Terraform from scratch, self-service portal integration, and full observability. Projected ~80% annual Kafka infrastructure cost reduction for Optum's largest GCP customers.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Contributed to Kafka provisioning pipelines and custom Kubernetes operator frameworks in Go for automated deployment and configuration of streaming infrastructure at production scale.
- Led the platform's on-prem to cloud migration: discovered undocumented Azure API rate limits through network traffic analysis, built the cost case for GCP, and drove adoption of GCP as primary cloud host - cascading millions in infrastructure savings company-wide through "Data Gravity" as producers and consumers followed Kafka streams to GCP.

---

#### Education

B.S. Software Engineering, St. Cloud State University (GPA 3.79) &nbsp;|&nbsp; IEEE Publication: [OSNI](https://ieeexplore.ieee.org/document/9659615) - NLP/sentiment analysis

---

#### Certifications

- Google Cloud Certified - Cloud Digital Leader (Mar 2025 - Mar 2028)
