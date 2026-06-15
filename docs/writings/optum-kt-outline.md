# Knowledge Transfer Outline - Kafka-as-a-Service Platform

Outline only. To be filled in by Caleb before handoff.

## 1. Platform Overview
- High-level architecture summary
- Scale stats (nodes, clusters, environments)
- Open-source Apache Kafka vs. Confluent licensed components (Schema Registry, Warpstream)

## 2. KRM (Kubernetes Resource Manager)
- Two-tier control plane architecture
- Repo locations and code structure
- Key CRDs and reconciliation loops
- Deployment/upgrade process
- Known edge cases and gotchas

## 3. PRM (Platform Resource Manager)
- Provisioning framework overview
- How it integrates with KRM and the self-service portal
- Repo locations and code structure
- Known edge cases and gotchas

## 4. Warpstream Operator and Infrastructure
- Operator architecture and repo location
- Terraform modules (GCS, VPC, DNS, IAM)
- Current rollout status (beta customers, next steps)
- Confluent licensing/coordination notes

## 5. Schema Registry (Self-Hosted)
- Helm chart location and structure
- Certificate/ACL setup
- Upgrade and maintenance process

## 6. Self-Service Developer Portal
- Frontend repo structure (TypeScript/React/NextJS)
- API layer / provisioning pipeline
- HCP Console integration points
- Current roadmap items / in-flight features

## 7. CI/CD Pipelines
- GitHub Actions workflows overview
- Docker build pipeline and JFrog Artifactory
- HashiCorp Vault secret injection setup
- Environment promotion process

## 8. Certificate Authority / mTLS
- CA structure and location
- Certificate generation, distribution, and rotation process
- Rotation schedule and upcoming renewals
- VPC/DNS configuration for broker endpoints

## 9. Observability Stack
- Prometheus/Grafana/Elasticsearch architecture
- Custom Go monitoring controllers
- Key dashboards and PromQL queries
- Runbook and alert playbook locations

## 10. On-Call
- On-call rotation and escalation process
- Common incident types and mitigation steps
- War room procedures
- Links to existing runbooks

## 11. Open Initiatives and In-Flight Work
- Active projects and their status
- Upcoming deadlines/commitments
- Stakeholders to keep informed

## 12. Risks, Tech Debt, and Outstanding TODOs
- Known issues and workarounds
- Areas needing refactor or cleanup
- Single points of knowledge (things only I know)

## 13. Key Contacts
- Team members and their areas of ownership
- Cross-team stakeholders (product, security, compliance, central portal team)
- External vendor contacts (Confluent)

## 14. Team and Mentorship
- Current team structure and responsibilities
- Early Careers / mentee status
- Code review and onboarding norms
