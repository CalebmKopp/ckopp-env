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

April 29, 2026

Confluent
Senior Software Engineer II

---

To the Confluent hiring team,

"We're rewriting how data moves and what the world can do with it." That line describes exactly what I have spent the last six years doing at Optum, the technology arm of UnitedHealth Group, and Confluent's platform has been at the center of it. The chance to bring that depth directly to the foundational streaming platform I build on every day is what draws me to the Senior Software Engineer II role.

I serve as one of the deepest technical owners of Optum's Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. The platform is built on custom Kubernetes operators I write and maintain in Go, forming a two-tier distributed control plane that automates deployment and configuration of streaming infrastructure across multi-tenant, multi-cloud environments. I personally design and maintain typed API contracts that decouple the product experience from operator internals, run Confluent Schema Registry-as-a-Service with certificate-governed schema management, and own a secure mTLS certificate authority that generates and rotates thousands of client certificates. Every day I make architecture decisions that balance reliability, scalability, security, and operability across distributed backend services carrying PHI/PII data streams for one of the largest healthcare organizations in the world.

Warpstream is the work I am most proud of, and now that it is part of Confluent, it is also what excites me most about this role. I co-led the full-stack delivery of Warpstream-based cluster provisioning in an 8-week sprint: I wrote a net-new Go operator from scratch, co-authored all Terraform cloud infrastructure (GCS, VPC, DNS, IAM), and delivered full observability integration with PromQL dashboards and PagerDuty/ServiceNow alert routing. Warpstream's Cloud Storage-backed architecture eliminates local disk I/O from the data path, projected to reduce annual Kafka infrastructure costs by approximately 80%. Before that sprint, I solely owned a head-to-head Warpstream vs Apache Kafka performance comparison, coordinating directly with Confluent engineering and Optum leadership. I stood up a bespoke environment in GKE, iterated on methodology when initial results were questioned, and produced a comprehensive report that directly informed the decision to offer Warpstream as a production product at Optum. I already know the product, have coordinated with your engineering team, and have shipped it to production customers.

I define and enforce SLOs/SLAs across customer-facing services, extend the Prometheus/Thanos/Grafana observability stack with Go monitoring controllers and Terraform-managed dashboards, author runbooks and incident response playbooks, and own day-to-day Kafka operations across the production fleet. I also led the platform's first cloud migration from on-prem to GCP, discovering undocumented Azure API rate limits through hands-on investigation and presenting analysis that steered the decision to adopt GCP, a shift that drove millions in infrastructure savings across Optum. I build Python and Bash tooling that reduces operational toil, and I identify and drive platform improvements that raise the bar for the broader engineering organization. That drive to improve developer productivity through better tooling and automation is something I would bring to Confluent from day one.

I captain a team of 6 engineers, conducting code and design reviews, mentoring on distributed systems and Go, and coordinating across engineering, product, security, and compliance stakeholders. I consistently serve as the first-responder when company-wide mandates land before any established path exists, from Chainguard hardened image adoption to triaging hundreds of cloud security findings in days to driving our Cloud Native 2029 migration. I volunteer for Optum Early Careers each year, running technical bootcamp lectures and conducting candidate interviews, because growing the team's capabilities matters as much as shipping features.

No egos, no solo acts; just smart, curious people pushing toward something bigger, together. That is not just Confluent's culture statement. It is exactly how I work, and it is exactly the kind of team I want to be part of.

Thank you for your time and consideration.

Caleb Kopp
