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

- **Backend & Distributed Systems:** Go, Java, Python, TypeScript, Bash; event driven architecture, high throughput data pipelines, fault tolerance, consistency and availability tradeoffs, system design
- **Streaming & Data:** Apache Kafka, Warpstream, Confluent Schema Registry, Elasticsearch, MSSQL, Cloud Storage, data modeling
- **Cloud & Orchestration:** GCP, GKE, Kubernetes (CRDs, custom operators), Docker, Helm, Terraform, infrastructure as code
- **Observability & Operations:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, SLO/SLA definition, incident response, postmortems, runbooks
- **CI/CD & Security:** GitHub Actions, JFrog Artifactory, HashiCorp Vault, mTLS/PKI, IAM, GCP KMS, encryption at rest

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a streaming platform built on open source Apache Kafka with custom Kubernetes operators in Go, forming a two tier distributed control plane. The platform manages 1,000+ nodes and 750+ clusters across GCP with five nines reliability and zero customer data loss. Make architecture decisions that balance reliability, scalability, performance, and operability across multitenant environments, and communicate tradeoffs to engineering and product stakeholders.

- Led end to end delivery of Warpstream based cluster provisioning in an 8 week sprint: wrote a net new Go operator from scratch, coauthored all Terraform cloud infrastructure (GCS, VPC, DNS, IAM), and delivered full observability integration with Prometheus, Grafana dashboards, and PagerDuty/ServiceNow alert routing. Warpstream's Cloud Storage backed architecture eliminates local disk I/O, projected to reduce annual Kafka infrastructure costs by approximately 80% for two of the platform's largest customers.

- Solely owned a Warpstream vs Apache Kafka benchmark comparison in GCP, coordinating directly with Confluent engineering and Optum leadership. Stood up a bespoke environment in GKE, iterated methodology after initial results were questioned, and produced a comprehensive report. Results directly informed the decision to offer Warpstream as a production product.

- Design and maintain backend services and cross team integration points: typed API contracts decoupling the product experience from operator internals, Confluent Schema Registry as a Service with certificate/ACL governed schema management, and a secure mTLS certificate authority generating and rotating thousands of client certificates. Collaborate across teams to define data models and API boundaries that keep the platform coherent and evolvable.

- Extend the Prometheus/Thanos/Grafana observability stack with PromQL queries, Go monitoring controllers, and Terraform managed dashboards. Define and enforce SLOs/SLAs across customer facing services. Author runbooks, incident response playbooks, and participate in on call across the production fleet.

- Captain a team of 6 engineers: conduct code and design reviews, mentor on distributed systems and Go, and coordinate across engineering, product, security, and compliance. Identify and drive platform tooling improvements (Python, Bash) that reduce operational toil and raise the bar for the broader organization.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operators (Go) for automated Kafka cluster deployment and lifecycle management. During the platform's migration from on prem to GCP, discovered undocumented Azure API rate limits through hands on investigation and presented cost analysis that steered the team's cloud vendor decision, driving millions in cumulative infrastructure savings.

- Assumed SRE responsibilities, establishing performance thresholds aligned to SLAs and running on call incident response. Migrated 300 customer namespaces to CRD backed provisioning with minimal downtime.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615) &nbsp;|&nbsp; Google Cloud Certified Digital Leader
