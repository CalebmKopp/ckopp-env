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
- **Cloud Migration & IaC:** Terraform (reusable modules, multi-env promotion), on-prem to cloud migration, GCP, Azure, GKE, VPC, DNS, IAM, Cloud Storage
- **Platform & Orchestration:** Custom Kubernetes operators, CRDs, Helm, distributed state management (Elasticsearch), workflow orchestration
- **CI/CD & GitOps:** GitHub Actions, Jenkins, Ansible, Atlantis, JFrog Artifactory, Docker, pipeline migration
- **Security & Compliance:** mTLS, PKI, HashiCorp Vault, IAM, GCP KMS, encryption at rest, Chainguard, vulnerability remediation, PHI/PII
- **Observability & Incident Response:** Prometheus, Grafana, PromQL, PagerDuty, ServiceNow, alert playbooks, war room runbooks

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Drive the ongoing Cloud Native 2029 migration: migrate customers off on-prem shared multi-tenant clusters toward cloud-native GCP and Azure deployments. Decompose company-wide mandates into tightly-scoped user stories, run focused cross-team engineering calls to resolve blockers, and deliver migration milestones on compressed timelines. The platform manages 1,000+ production nodes, 750+ clusters, five-nines reliability, zero customer data loss.

- Co-led an 8-week sprint delivering a net-new cloud-native product end to end: wrote the Go backend service, authored all Terraform from scratch (Cloud Storage, VPC, DNS, IAM), integrated observability, and shipped to production. Reduced annual infrastructure costs by approximately 80% for the two largest customers.

- Author and maintain reusable Terraform modules across GKE, VPC, DNS, IAM, Vault, and Artifact Registry on GCP and Azure. Enforce consistent environment promotion (lab/dev/stg/prd) and IAM policies. Personally write and maintain all platform IaC alongside application code.

- First-responder for company-wide mandates before golden paths exist. Rebuilt container supply chain for Chainguard hardened image adoption. Triaged and resolved hundreds of cloud security findings in days when an internal security tool hard-launched. Led Grafana consolidation from self-hosted pods to centralized enterprise monitoring, migrating dashboards, alert routing, and data sources.

- Extend Prometheus/Grafana observability with Go monitoring controllers, PromQL dashboards surfaced to on-call engineers and customers, and PagerDuty/ServiceNow alert routing. Author alert playbooks and war room runbooks for incident response and customer engagement. Own CI/CD using GitHub Actions, Docker, JFrog Artifactory, and Vault.

- Own security infrastructure: mTLS certificate authority rotating thousands of client certificates, Vault secrets management, SSL/TLS transport and GCP KMS encryption at rest for regulated PHI/PII data. Captain a team of 6, conduct code reviews, mentor on distributed systems and Go, serve on-call.

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Led the platform's on-prem to cloud migration. Piloted Azure VM ScaleSet provisioning via Terraform/Atlantis GitOps, discovered undocumented Azure API rate limits through hands-on network investigation, combined with cost analysis showing GCP's lower pricing, and steered leadership to adopt GCP as the primary cloud host. This decision cascaded across Optum's data platforms, driving millions in infrastructure savings. Spent the following year migrating customers off on-prem and bespoke deployments onto the self-service GCP product.

- Executed parallel platform migrations: 50 Terraform/Helm deployments from OpenShift to Anthos Kubernetes, 300 customer namespaces from legacy GitOps to CRD-backed provisioning with minimal downtime, 87 repos from on-prem GitHub Enterprise to cloud, and pipeline replacement (Jenkins/Drone/Ansible/Atlantis to GitHub Actions). Assumed SRE responsibilities stabilizing production services and running on-call incident response.

---

#### Education

B.S. Software Engineering &nbsp;|&nbsp; St. Cloud State University &nbsp;|&nbsp; GPA 3.79 &nbsp;|&nbsp; [IEEE Publication](https://ieeexplore.ieee.org/document/9659615)
