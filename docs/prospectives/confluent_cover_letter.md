---
pdf_options:
  margin:
    top: 15mm
    bottom: 15mm
    left: 20mm
    right: 20mm
---

**Caleb Kopp**
Saint Paul, MN &nbsp;|&nbsp; 507-299-0445 &nbsp;|&nbsp; caleb.m.kopp@outlook.com &nbsp;|&nbsp; linkedin.com/in/calebmkopp

April 15, 2026

Confluent
Senior Software Engineer II

---

To the Confluent hiring team,

Confluent's mission to set data in motion is personal to me. For the past six years at Optum, the technology arm of UnitedHealth Group, data streaming has been the center of everything I do, and Confluent's platform has been at the center of that. I am writing to express my strong interest in the Senior Software Engineer II role.

I serve as one of the deepest technical owners of Optum's Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. The platform is built on custom Kubernetes operators in Go forming a two-tier distributed control plane, a self-service developer platform with typed API contracts decoupling the product experience from operator internals, and Confluent Schema Registry-as-a-Service providing certificate-governed schema management and data governance. Our platform carries PHI/PII data streams for one of the largest healthcare organizations in the world, requiring end-to-end SSL/TLS transport, GCP KMS encryption at rest, and active disaster recovery. Every day I make architecture and technical decisions that balance reliability, scalability, security, and operability across this system, and I am eager to bring that depth directly to the foundational data streaming platform I have been building on.

WarpStream is the work I am most proud of. When the opportunity came to bring WarpStream's serverless Kafka to Optum, I co-led the full-stack delivery end to end in an 8-week sprint: a net-new Go operator, all Terraform cloud infrastructure from scratch (GCS, VPC, DNS, IAM), and full observability integration with PromQL dashboards and PagerDuty/ServiceNow alert routing. WarpStream's Cloud Storage-backed, diskless architecture eliminates local disk I/O from the data path, enabling roughly 80% infrastructure cost reduction. We shipped it to Optum's two largest GCP Kafka customers. Now that WarpStream is part of Confluent, the chance to contribute to its evolution and the broader data streaming platform from the inside is what draws me most to this role.

I also bring deep Terraform and cloud infrastructure experience. I co-designed and maintain all of our platform's Terraform across GCP and Azure with consistent IAM policies, resource tagging, and reusable module patterns. On the SE side I managed 120 Azure VM ScaleSets through Terraform and Atlantis GitOps with disciplined environment promotion. I also coordinated the migration of 300 customer namespaces to CRD-backed provisioning with minimal downtime. Building well-structured IaC that scales predictably across providers is something I care about deeply and have built from scratch more than once.

Beyond backend systems, I captain a team of 6 engineers on our Kafka-on-Cloud micro-frontend (TypeScript, React, NextJS), drive continuous improvement across product, security, and compliance, and extend the Prometheus/Thanos/Grafana observability stack with SLO/SLA-aligned dashboards and alert routing. I consistently serve as the first-responder when company-wide mandates land before any golden path exists, from Chainguard hardened image adoption to triaging hundreds of cloud security findings in days to driving our Cloud Native 2029 migration. I also volunteer for Optum Early Careers each year, running technical bootcamp lectures and conducting candidate interviews, because mentoring the next generation of engineers matters to me.

What resonates most about Confluent is the culture: ask hard questions, give honest feedback, show up for each other. No egos, no solo acts, just smart, curious people pushing toward something bigger, together. That is exactly how I work, and I would be grateful for the opportunity to bring that energy to your team.

Thank you for your time and consideration.

Caleb Kopp
