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

- **Go and Backend:** Golang, Python, TypeScript, Bash, Java, systems design, API design, scalable web applications
- **Kubernetes and Operators:** Kubernetes, custom Kubernetes operator development (Go), CRDs, controllers, Helm, Docker, GKE, EKS, multi-region multi-cluster deployments, Chainguard hardened images
- **Cloud Infrastructure:** Terraform, GCP, Azure, AWS, VPC, DNS, IAM, Cloud Storage, infrastructure as code, GitOps-driven infrastructure management
- **Data Streaming:** Apache Kafka, Warpstream, Confluent Schema Registry, Elasticsearch, high throughput, low latency, stream processing
- **Observability and CI/CD:** Prometheus, Thanos, Grafana, PromQL, OpenTelemetry, PagerDuty, ServiceNow, GitHub Actions, CI/CD pipelines
- **Security and Compliance:** mTLS, PKI, certificate authority management, HashiCorp Vault, GCP KMS, encryption at rest, SOC 2 compliance patterns, disaster recovery

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of KRM, a federated network of custom Kubernetes operators written in Go forming a two tier control plane for automated deployment and configuration of streaming infrastructure across 1,000+ nodes and 750+ clusters at production scale with five nines reliability and zero customer data loss
- Design, build, and extend CRD driven operator frameworks in Go that generate concrete Kubernetes resources, connect to external APIs and CSP provisioning hooks, and maintain full state synchronization through a shared Elasticsearch backing store for recovery and visibility
- Co-led end to end delivery of Warpstream cluster provisioning: authored a net new Go operator, designed all Terraform cloud infrastructure (GCS, VPC, DNS, IAM), and shipped to Optum's two largest GCP customers, projecting approximately 80% annual Kafka infrastructure cost reduction
- Extend the Prometheus/Thanos/Grafana observability stack, writing PromQL queries, updating Go monitoring controllers, and delivering Terraform managed dashboards with PagerDuty and ServiceNow alert routing for customer facing SLAs
- Contribute deep Terraform expertise to infrastructure as code and GitOps driven cloud infrastructure provisioning across GKE, VPC, DNS, IAM, Vault, and CI/CD pipelines on GCP and Azure
- Lead a team of 6 engineers, conduct code and design reviews, write user stories, and mentor junior engineers on distributed systems, operator framework development, and Go best practices
- Consistently first responder when company wide mandates land before any golden path exists: absorb directives, decompose into tightly scoped engineering tasks, and drive execution across teams. Led Chainguard hardened image adoption across the container supply chain, triaged and resolved hundreds of cloud security findings in days when a new detection system hard launched, drove accelerated cloud native migration of customers off legacy infrastructure, and led platform side Grafana consolidation to a centralized observability offering
- Ensure compliance adjacent infrastructure patterns including mTLS certificate management, GCP KMS encryption at rest, PHI/PII data governance workflows, and disaster recovery exercises across multi-region deployments

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Contributed to custom Kubernetes operator frameworks in Go and Kafka operations supporting thousands of streaming clients across multi-tenant deployments on GCP and Azure; led the platform's migration from on premises to GCP through investigation of cloud provider API limitations and cost analysis that drove millions in infrastructure savings

---

#### Education

- B.S. Software Engineering, St. Cloud State University (2020, GPA 3.79) | IEEE Publication: [OSNI](https://ieeexplore.ieee.org/document/9659615) | Google Cloud Certified, Cloud Digital Leader (2025)