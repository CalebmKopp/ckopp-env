---
pdf_options:
  margin:
    top: 10mm
    bottom: 10mm
    left: 15mm
    right: 15mm
---

**Caleb Kopp**
Saint Paul, MN &nbsp;|&nbsp; 507-299-0445 &nbsp;|&nbsp; caleb.m.kopp@outlook.com &nbsp;|&nbsp; linkedin.com/in/calebmkopp

April 23, 2026

Oracle
Principal Site Reliability Engineer

---

To Candace at Oracle,

Oracle Health's mission to modernize healthcare through data and platform engineering is deeply personal to me. For the past six years at Optum, the technology arm of UnitedHealth Group, I have built and operated the streaming data infrastructure that healthcare organizations depend on to move PHI/PII data reliably and securely at scale. The chance to bring that depth to Oracle Health's Data and Analytics Platform, where the same problems exist at even greater scale, is exactly the kind of challenge I am looking for.

I serve as one of the deepest technical owners of Optum's Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. The platform is built on custom Kubernetes operators in Go forming a two-tier distributed control plane for automated deployment and lifecycle management of stateful streaming infrastructure consumed by multiple product teams and hundreds of downstream customers. Every day I make architectural decisions that balance reliability, scalability, cost, and complexity across shared platforms with broad blast radius, defining platform standards, operational guardrails, and capacity models that enable downstream teams to use the infrastructure safely and effectively. That is the exact scope this role describes.

The distributed systems depth you are looking for is central to my daily work. I own operations of large-scale stateful Kafka clusters at production scale: rolling restarts, partition reassignment, consumer group lag monitoring, replication tuning, capacity planning, and broker certificate rotation. I reason about failure modes including backpressure, rebalancing, replication lag, and data placement to ensure predictable platform behavior under load, failure, and change. Most recently, I co-led Warpstream cluster provisioning end to end in an 8-week sprint, delivering a net-new Go operator, all Terraform cloud infrastructure from scratch, and full observability integration. I co-designed and maintain all of the platform's Terraform across GCP and Azure, including VPC, DNS, IAM, Cloud Storage, and CI/CD pipelines.

Security and automation are first-class concerns in everything I build. I own and operate the platform's mTLS certificate authority, generating, distributing, and rotating thousands of client certificates with end-to-end encryption and secure service-to-service communication. I manage VPC-scoped network security, IAM policies, and HashiCorp Vault secrets across all cloud environments. The platform carries PHI/PII healthcare data streams requiring SSL/TLS transport, GCP KMS encryption at rest, and legally-approved data governance workflows. I treat Terraform as production software: versioned, reviewed, tested, and continuously improved. I co-designed and authored all Terraform backing the Warpstream product from scratch, including GCS bucket provisioning, VPC, DNS, IAM, and CI/CD pipelines, and I maintain reusable module patterns and consistent IAM policies across GCP and Azure. That same infrastructure-as-code discipline is what I would bring to Oracle Health's Terraform-driven automation framework.

I captain a team of 6 engineers, serving as lead engineer and escalation point for complex or ambiguous incidents across the production fleet. I conduct architecture and design reviews, write user stories, mentor engineers on distributed systems and Go, and coordinate across engineering, product, security, and compliance stakeholders. I consistently serve as the first-responder when company-wide mandates land before any golden path exists, from Chainguard hardened image adoption to triaging hundreds of cloud security findings in days to driving our Cloud Native 2029 migration. I also represent platform engineering in high-visibility forums, communicating platform strategy and reliability posture to engineering leadership and partner teams. I would bring that same ownership, technical leadership, and bias toward eliminating entire classes of failure to Oracle Health's data platform.

Thank you for your time and consideration.

Caleb Kopp
