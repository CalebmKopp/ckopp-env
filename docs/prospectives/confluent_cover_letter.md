---
pdf_options:
  margin:
    top: 6mm
    bottom: 6mm
    left: 12mm
    right: 12mm
---

**Caleb Kopp**
Saint Paul, MN &nbsp;|&nbsp; 507-299-0445 &nbsp;|&nbsp; caleb.m.kopp@outlook.com &nbsp;|&nbsp; linkedin.com/in/calebmkopp

April 23, 2026

Confluent
Senior Software Engineer II

---

To the Confluent hiring team,

Confluent's mission to set data in motion is personal to me. For the past six years at Optum, the technology arm of UnitedHealth Group, data streaming has been the center of everything I build, and Confluent's platform has been at the center of that. The chance to bring that depth directly to the foundational streaming platform I have been building on is what draws me to the Senior Software Engineer II role.

I serve as one of the deepest technical owners of Optum's Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. The platform is built on custom Kubernetes operators in Go forming a two-tier distributed control plane, a self-service developer platform with typed API contracts decoupling the product experience from operator internals, and Confluent Schema Registry-as-a-Service providing certificate-governed schema management and data governance. Every day I make architecture decisions that balance reliability, scalability, security, and operability across distributed backend services carrying PHI/PII data streams for one of the largest healthcare organizations in the world, requiring end-to-end SSL/TLS transport, GCP KMS encryption at rest, and active disaster recovery. That is the exact scope this role describes, and it is what I do.

WarpStream is the work I am most proud of. When the opportunity came to bring WarpStream's serverless Kafka to Optum, I co-led the full-stack delivery end to end in an 8-week sprint: a net-new Go operator, all Terraform cloud infrastructure from scratch (GCS, VPC, DNS, IAM), and full observability integration with PromQL dashboards and PagerDuty/ServiceNow alert routing. WarpStream's Cloud Storage-backed architecture eliminates local disk I/O from the data path, enabling roughly 80% infrastructure cost reduction. We shipped it to Optum's two largest GCP Kafka customers. Now that WarpStream is part of Confluent, the chance to contribute to its evolution from the inside is what excites me most.

I define and enforce SLOs/SLAs across customer-facing services, extend the Prometheus/Thanos/Grafana observability stack with Go monitoring controllers and Terraform-managed dashboards, and own day-to-day Kafka operations across the production fleet. I also co-designed and maintain all of our platform's Terraform across GCP and Azure with consistent IAM policies, resource tagging, and reusable module patterns. I identify and drive platform tooling improvements, building Python and Bash utilities that reduce operational toil, increase consistency, and raise the bar for the broader engineering organization. That drive to improve developer productivity through better tooling and automation is something I would bring to Confluent from day one.

I captain a team of 6 engineers, conducting code and design reviews, mentoring on distributed systems and Go, and coordinating across engineering, product, security, and compliance stakeholders. I consistently serve as the first-responder when company-wide mandates land before any golden path exists, from Chainguard hardened image adoption to triaging hundreds of cloud security findings in days to driving our Cloud Native 2029 migration. I also volunteer for Optum Early Careers each year, running technical bootcamp lectures and conducting candidate interviews, because growing the team's capabilities matters as much as shipping features.

Ask hard questions, give honest feedback, show up for each other. No egos, no solo acts, just smart, curious people pushing toward something bigger, together. That is not just Confluent's culture statement; it is exactly how I work. I would be grateful for the opportunity to bring that energy to your team.

Thank you for your time and consideration.

Caleb Kopp
