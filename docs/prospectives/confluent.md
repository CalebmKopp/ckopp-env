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

- **Languages:** Go, Java, Python, TypeScript, Bash
- **Distributed Systems & Streaming:** Apache Kafka, Warpstream, Confluent Schema Registry, event-driven architecture, high-throughput data pipelines, stream processing, fault tolerance, consistency tradeoffs
- **Cloud & Orchestration:** GCP, Azure, GKE, Kubernetes (CRDs, custom operators), Docker, Helm, Terraform, infrastructure as code
- **Observability & Operations:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, SLO/SLA definition, incident response, postmortems, runbooks
- **CI/CD & Security:** GitHub Actions, JFrog Artifactory, HashiCorp Vault, mTLS/PKI, IAM, GCP KMS, encryption at rest
- **Data & Storage:** Elasticsearch, MSSQL, Cloud Storage, data modeling, performance optimization

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a Kafka-as-a-Service platform built on custom Kubernetes operators in Go forming a two-tier distributed control plane for automated deployment of streaming infrastructure at production scale. The platform manages 1,000+ nodes, 750+ high-throughput clusters across GCP with five-nines reliability and zero customer data loss. Make architecture decisions that balance reliability, scalability, performance, and operability across multi-tenant, multi-cloud environments.

- Implemented end to end delivery of Warpstream-based cluster provisioning in an 8-week sprint: wrote a net new Go operator from scratch, co-authored all Terraform cloud infrastructure (GCS, VPC, DNS, IAM), and delivered full observability integration with Prometheus, Grafana dashboards, and PagerDuty/ServiceNow alert routing. Warpstream's Cloud Storage-backed architecture eliminates local disk I/O, projected to reduce annual Kafka infrastructure costs by approximately 80% for Optum's two largest GCP customers.

- Solely owned a Warpstream vs Apache Kafka benchmark comparison in GCP, coordinating on dual timelines with Confluent engineering and Optum leadership. Stood up a bespoke environment in GKE, iterated methodology after initial results were questioned, and produced a comprehensive report with architecture diagrams, scaling timelines, and raw data. Results directly informed the decision to offer Warpstream as a production product here at Optum.

- Design and maintain distributed backend services and integration points: typed API contracts decoupling the product experience from operator implementation details, Confluent Schema Registry-as-a-Service with certificate/ACL-governed schema management, and a secure mTLS certificate authority generating, distributing, and rotating thousands of client certificates at five-nines reliability.

- Extend the Prometheus/Thanos/Grafana observability stack with PromQL queries, Go monitoring controllers, and Terraform-managed dashboards. Define and enforce SLOs/SLAs across customer facing services. Author runbooks and incident response playbooks.

- Captain a team of 6 engineers, conducting code and design reviews, mentoring on distributed systems and Go, and coordinating across engineering, product, security, and compliance stakeholders. Identify and drive platform tooling improvements (Python, Bash) that reduce operational toil and raise the bar for the broader organization.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated Kafka deployment at production scale; shaped early architecture decisions during the platform's design phase. Led the platform's first cloud migration from on-prem to GCP by discovering undocumented Azure API rate limits through hands-on investigation and presenting cost analysis that steered the team to adopt GCP, driving millions in cumulative infrastructure savings.

- Assumed SRE responsibilities, establishing performance thresholds aligned to SLAs and running on-call incident response. Migrated 300 customer namespaces to CRD-backed provisioning with minimal downtime.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615) &nbsp;|&nbsp; Google Cloud Certified Digital Leader
