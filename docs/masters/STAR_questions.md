---
pdf_options:
  margin:
    top: 15mm
    bottom: 15mm
    left: 20mm
    right: 20mm
---

# STAR Interview Questions/Answers

## 1. Solving unstructured problems across various enterprise infrastructure automation needs is required. Describe a time when you were given a vague problem with minimal direction and had to build a solution from scratch

**Warpstream vs Apache Kafka Performance Testing (Mar 2025)**

- **Situation:** Optum was evaluating Warpstream as a new product offering alongside traditional Apache Kafka in GCP. No testing framework or benchmarks existed. I was coordinating on dual timelines with Confluent (external vendor) and Optum leadership, both wanting results quickly.

- **Task:** I was solely assigned to stand up a bespoke Warpstream environment in GKE (navigating corporate image pull restrictions), design a fair head to head methodology, execute tests, and produce a report for both Confluent engineering and Optum leadership.

- **Action:** My first test plan (producer only, sequential runs) produced results both sides questioned as unexpected. Rather than defending it, I spent another week completely redesigning: added consumer workloads (10 and 20 consumers), end to end latency tests, continuous 30 minute runs with 10 minute interval metrics, and updated properties per Warpstream benchmarking docs.

- **Result:** The second report was comprehensive and credible. Warpstream showed competitive concurrent throughput, autoscaling worked as expected (3 to 7 agents), with a clear and expected latency tradeoff inherent to Cloud Storage backed architecture. Presented to Confluent and Optum leadership; directly informed the decision to offer Warpstream as a production product.

---

## 2. Walk me through a backend service or platform system you built

**Warpstream DME Operator (Q4 2025 - Q1 2026)**

- **Situation:** Optum's two largest GCP Kafka customers had significant infrastructure spend driven by local disk I/O on stateful broker nodes in the cloud. Warpstream offered a diskless, Cloud Storage backed architecture that could reduce that cost, but no integration existed with our platform. The team needed to deliver a net new product offering across the full stack in a compressed timeline.

- **Task:** Champion an 8 week sprint to deliver end to end Warpstream cluster provisioning, from cloud infrastructure and Kubernetes operators through observability and the self-service portal.

- **Action:** I contributed to every layer of the platform stack. At the interaction layer, I built the self-service portal UI/UX for Warpstream cluster management, integrated the internal CLI, and co-authored all Terraform modules from scratch (VPC, DNS, IAM, Cloud Storage) so customers could provision clusters through any of the three interfaces. At the API layer, I integrated Warpstream into PRM so provisioning requests flow through typed API contracts with business validation before reaching infrastructure. At the KRM operator layer, I extended the framework with net new Go resource kinds to represent Warpstream clusters in our two tier control plane, provision GCS buckets, register clusters with the Warpstream API, and generate a final CRD passed down to GKE. At the final layer, I personally wrote a net new Go operator from scratch that reconciles that CRD into all GKE specific resources: StatefulSets, Services, ConfigMaps, HPAs, and Warpstream agent configurations. Built the monitoring integration across all layers with Prometheus metrics, Grafana dashboards, and PagerDuty/ServiceNow alert routing.

- **Result:** Shipped to two of Optum's largest Kafka customers as beta. Projected approximately 80% annual infrastructure cost reduction. Delivered a net new cloud product end to end in 8 weeks.

---

## 3. What kind of systems have you built using Go, and how recently?

Go is my production systems language; I write it daily.

- **Warpstream DME Operator (Q4 2025-Q1 2026):** Net new Go operator from scratch to manage and reconcile Warpstream Kafka Clusters. Generates all Kubernetes resources, connects to GCS, Warpstream API/Control Plane, and sets up monitoring sidecars.
- **KRM Operators (2021-present):** Primary technical owner of a federated network of Kubernetes operators in Go forming a two tier control plane. Upper layer interfaces with external APIs, cloud provisioning, billing. Lower layer generates concrete Kubernetes resources.

---

## 4. Have you built anything on top of Kubernetes like controllers, operators, or platform tooling?

- **Upper tier:** Operators connecting to external APIs (cloud provisioning, billing, Vault, DNS), creating meta-resources representing logical intent.
- **Lower tier:** Operators in a separate cluster reconciling meta-resources into concrete Kubernetes objects (StatefulSets, Services, ConfigMaps, PVCs).
- **Shared state:** Both tiers share an Elasticsearch cluster as single source of truth, enabling full state recovery.
- Also built the Warpstream DME operator from scratch following the same pattern.

Platform manages 500+ Kafka clusters, 1,000+ nodes, five nines reliability, zero customer data loss. Customers provision production infrastructure in minutes through a self-service portal.

---

## 5. How have you built reusable Terraform modules or CI/CD systems used across teams?

**Terraform:** I maintain and review all platform Terraform. Modules are parameterized for reuse across environment tiers (lab/dev/stg/prd) with consistent IAM/RBAC policies. For Warpstream, authored all Terraform from scratch (Cloud Storage, VPC, DNS, IAM). Specific reusable modules include bootstrapping our GKE clusters that host custom Kubernetes operators, and Terraform modules for the operators themselves so that they have consistent permissions and inputs for their Helm Charts. We also expose a Terraform Module interface for customers to provision and manage Kafka Clusters directly instead of using the self service portal.

**CI/CD:** Led the migration from Jenkins/Drone/Ansible/Atlantis to GitHub Actions. Built standardized workflow templates (Docker builds to JFrog Artifactory, Vault secret injection, environment promotion gates) - as well as implemented new reusable github action templates as they were published internally here at Optum. Every platform service uses the same patterns, and custom shared pipeline changes are reviewed as code before being imported and utilized by our services.

---

## 6. Have you worked on workflow orchestration or distributed systems?

**Workflow orchestration:** I contribute to PRM (Platform Resource Manager), an internal developer platform analogous to Spotify Backstage. Provisioning workflows are expressed as typed API contracts. When a customer requests a cluster, be it through our internal CLI, the UI portal, or Terraform module, it creates a new resource in PRM. Business validation happens at this layer and then the request is passed to the KRM operator tier which generates all Kubernetes resources to fulfill the request. I have designed and built multiple workflow steps in PRM, including a multi-step cluster provisioning workflow that integrates with our billing system, Vault, DNS, and GCS.

**Distributed systems:** The KRM operator tiers and PRM agent layer share an Elasticsearch cluster as single source of truth. Every state change is written to ES; if an operator restarts, it reconciles from stored state. If PRM goes down, KRM continues and vice versa. Beyond this, our operators themselves live in our on-prem environment since they need to talk to PRM, reconcile with downstream GKE clusters, then talk to our GKE prod customer environments where StatefulSets and Services are created.
