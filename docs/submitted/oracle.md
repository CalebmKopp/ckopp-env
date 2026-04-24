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

- **Distributed Systems & Streaming:** Apache Kafka, WarpStream, Confluent Schema Registry, stateful distributed platforms, high-throughput data pipelines, stream processing, replication, fault tolerance, rolling upgrades
- **Infrastructure & Automation:** Terraform, Kubernetes (CRDs, custom operators), Helm, Docker, GCP, Azure, GKE, infrastructure as code, configuration management
- **Observability & Operations:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, capacity planning, SLO/SLA, incident response, runbooks
- **Security & Compliance:** mTLS, PKI, certificate authority management, HashiCorp Vault, IAM, GCP KMS, encryption at rest, PHI/PII compliance, disaster recovery
- **Languages & Scripting:** Go, Python, Bash, TypeScript, Java
- **CI/CD & DevOps:** GitHub Actions, JFrog Artifactory, Docker, GitOps, environment promotion

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. Own end-to-end reliability, scalability, and operability of shared data platforms consumed by multiple product teams and hundreds of downstream customers.

- Architect and operate custom Kubernetes operators in Go forming a two-tier distributed control plane for automated deployment and lifecycle management of stateful streaming infrastructure. Define platform standards, operational guardrails, and architectural direction across 500+ clusters in multi-tenant, multi-cloud environments.

- Own operations of large-scale stateful Kafka clusters: rolling restarts, partition reassignment, consumer lag monitoring, replication tuning, broker certificate rotation, compaction, and capacity planning. Reason about failure modes including backpressure, rebalancing, replication lag, and data placement to ensure predictable behavior under load and change.

- Own the platform's mTLS certificate authority: generate, distribute, and rotate thousands of client certificates. Manage VPC network security, DNS, IAM, and secure service-to-service communication. Ensure SSL/TLS transport and GCP KMS encryption at rest of PHI/PII healthcare data streams in compliance with data governance requirements.

- Extend Prometheus/Thanos/Grafana observability with PromQL queries, Go monitoring controllers, and Terraform-managed dashboards with PagerDuty/ServiceNow alert routing. Establish capacity models and scaling strategies. Author runbooks and alert playbooks for incident response.

- Co-led WarpStream cluster provisioning end to end in 8 weeks: net-new Go operator, all Terraform infrastructure from scratch (GCS, VPC, DNS, IAM), full observability integration; shipped to Optum's two largest GCP customers with projected ~80% annual cost reduction.

- Captain a team of 6 as lead engineer. Serve as escalation point for complex incidents across the 1,000+ node fleet. Eliminate operational toil through Python and Bash automation. Mentor engineers on distributed systems, Go, and operator patterns. Serve on-call across the full production fleet.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated Kafka deployment at production scale; shaped early architecture decisions during the platform's design phase. Managed 120 Azure VM ScaleSets via Terraform modules and Atlantis GitOps. Assumed SRE responsibilities Aug 2021, stabilizing production services, establishing performance thresholds aligned to SLAs, and running on-call incident response.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615)
