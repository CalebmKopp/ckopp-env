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

- **Languages:** Go, Python, Bash, TypeScript, Java
- **Platform & Distributed Systems:** Custom Kubernetes operator frameworks, CRDs, workflow orchestration, two-tier control plane architecture, Helm, distributed state management (Elasticsearch)
- **IaC & Cloud:** Terraform (reusable modules, multi-env), Kubernetes, Docker, GCP, Azure, GKE, VPC, DNS, IAM
- **CI/CD & GitOps:** GitHub Actions, Jenkins, Ansible, Atlantis, JFrog Artifactory, Docker pipelines, environment promotion
- **Security:** mTLS, PKI, HashiCorp Vault, IAM, GCP KMS, encryption, Chainguard hardened images, vulnerability remediation
- **Databases & Observability:** MSSQL, TypeORM (migrations), Elasticsearch, Prometheus, Grafana, PromQL, PagerDuty

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners and builders of a Kubernetes-based platform-as-a-service: custom Kubernetes operators written in Go forming a two-tier distributed control plane for automated provisioning of infrastructure at production scale. The upper layer interfaces with external APIs and cloud provider hooks; a secondary operator layer generates all concrete Kubernetes resources. 1,000+ production nodes, 750+ clusters, five-nines reliability, zero customer data loss.

- Author and maintain reusable Terraform modules for cloud infrastructure across GKE, VPC, DNS, IAM, Vault, and Artifact Registry on GCP and Azure. Co-designed and built all Terraform for a net-new product from scratch (Cloud Storage, VPC, DNS, IAM), reducing annual infrastructure costs by approximately 80% for the two largest customers.

- Design and maintain CI/CD pipelines as engineered systems using GitHub Actions, Docker, JFrog Artifactory, and HashiCorp Vault secret injection. Enforce container image management, deployment automation, and environment promotion across lab/dev/stg/prd.

- Contribute to the platform's internal developer framework (analogous to Backstage) where provisioning workflows are expressed as typed API contracts (Kinds and Objects) decoupling the product experience from operator internals, enabling self-service deployment across GCP and Azure.

- Own security infrastructure: mTLS certificate authority rotating thousands of client certificates, Vault secrets management, secure transport (SSL/TLS) and storage (GCP KMS) of regulated data streams. Led Chainguard hardened image adoption and resolved hundreds of cloud security findings.

- Extend Prometheus/Grafana observability with Go monitoring controllers, PromQL dashboards, and Terraform-managed Grafana with PagerDuty/ServiceNow alert routing. Build Python and Bash tooling for debugging, certificate rotation, and operational automation.

- Captain a team of 6 engineers, conducting code reviews, writing user stories, and mentoring on distributed systems, Go, and operator development. Serve on-call across the full production fleet.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Implemented features in custom Kubernetes operator frameworks (Go) for automated resource deployment at production scale; shaped early architecture decisions during the platform's design phase. Managed 120 Azure VM ScaleSets via reusable Terraform modules and Atlantis GitOps with consistent environment promotion across lab/dev/stg/prd.

- Migrated 50 Terraform/Helm deployments from RedHat OpenShift to Google Anthos Kubernetes. Replaced Jenkins, Drone, Ansible, and Atlantis pipelines with GitHub Actions. Transitioned 300 customer namespaces from legacy GitOps to CRD-backed provisioning with minimal downtime.

- Built a full-stack web application (React, TypeScript, Express, TypeORM, MSSQL) with database schema migrations replacing spreadsheet-based server inventory management. Adopted by the Enterprise Security Resiliency Office.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615)
