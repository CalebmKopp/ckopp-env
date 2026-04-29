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

- The situation was that Optum was evaluating Warpstream as a new product offering alongside traditional Apache Kafka in GCP. No testing framework or benchmarks existed that our company could whole heartedly trust at face value. I was coordinating on dual timelines with Confluent (external vendor) and Optum leadership, both wanting results quickly.
- My task became standing up a bespoke Warpstream environment in GKE (navigating corporate image pull restrictions), designing a fair head to head methodology, executing tests, and producing a report for both Confluent engineering and Optum leadership. I was the sole person assigned.
- The actions I took were:
  - Producing my first test plan (producer only, sequential runs) and presenting results which both sides questioned as unexpected.
  - Taking in their feedback, I spent another week completely redesigning the methodology.
  - Added consumer workloads (10 and 20 consumers), end to end latency tests, continuous 30 minute runs with 10 minute interval metrics, and updated properties per Warpstream benchmarking docs.
- As a result, the second report was considered comprehensive and credible.
  - Warpstream showed competitive concurrent throughput, autoscaling worked as anticipated for business cost needs, and it had a clear and expected latency tradeoff inherent to Cloud Storage backed architecture.
  - This was presented to Confluent and Optum leadership, and directly informed the decision to offer Warpstream as a Service here at Optum.

---

## 2. Can you walk me through a backend service or platform system you built for infrastructure? What did you personally design and code?

**Warpstream DME Operator (Q4 2025 - Q1 2026)**

- The situation was that Optum's two largest GCP Kafka customers had significant infrastructure spend driven by local disk I/O on stateful broker nodes in the cloud. Warpstream offered a diskless, Cloud Storage backed architecture that could reduce that cost, but no integration existed with our platform. The team needed to deliver a net new product offering across the full stack in a compressed timeline.
- My task became championing an 8 week sprint to deliver end to end Warpstream cluster provisioning, from cloud infrastructure and Kubernetes operators through observability and the self-service portal.
- The actions I took spanned every layer of the platform stack:
  - At the interaction layer, I built the self-service portal UI/UX for Warpstream cluster management, integrated with our internal company CLI, and co-authored all Terraform modules from scratch (VPC, DNS, IAM, Cloud Storage) so customers could provision clusters through any of the three interfaces.
  - At the API layer, I integrated Warpstream into PRM so provisioning requests flow through typed API contracts with business validation before reaching infrastructure.
  - At the KRM operator layer, I extended the framework with net new Go resource kinds to represent Warpstream clusters in our two tier control plane, provision GCS buckets, register clusters with the Warpstream API, and generate a final CRD passed down to GKE.
  - At the final layer, I personally wrote a net new Go operator from scratch that reconciles that CRD into all GKE specific resources: StatefulSets, Services, ConfigMaps, HPAs, and Warpstream agent configurations.
  - Built the monitoring integration across all layers with Prometheus metrics, Grafana dashboards, and PagerDuty/ServiceNow alert routing.
- As a result, we shipped to two of Optum's largest Kafka customers as beta. Projected approximately 80% annual infrastructure cost reduction. Delivered a net new cloud product end to end in 8 weeks.

---

## 3. What kind of systems have you built using Go, and how recently have you worked with it in production?

- From Q4 of last year until now, I wrote the previously mentioned net new Go operator from scratch (Warpstream DME) to manage and reconcile Warpstream Kafka Clusters. It generates all Kubernetes resources, connects to GCS, Warpstream API/Control Plane, and sets up monitoring sidecars.
- Since 2021 I have been the primary technical owner of our federated network of Kubernetes operators in Go forming a two tier control plane. Upper layer interfaces with external APIs, cloud provisioning, billing. Lower layer generates concrete Kubernetes resources.

---

## 4. Have you built anything on top of Kubernetes like controllers, operators, or platform tooling?

- Yes I have. The prior mentioned custom Kubernetes operators, as well as scripts for our customers and our engineers to quickly triage issues with Kafka resources and take common actions like approving nuanced specs from customers, generating permissions for cross-team data access, and all the tooling around our metrics and observability stack.

---

## 5. Can you describe how you've built reusable Terraform modules or CI/CD systems used across teams?

On the Terraform side:
- I maintain and review as much platform Terraform that I can (which is, almost all of it).
- Modules are parameterized for reuse across environment tiers (lab/dev/stg/prd) with consistent IAM/RBAC policies.
- For Warpstream, I co-authored all Terraform from scratch (Cloud Storage, VPC, DNS, IAM).
- Specific reusable modules include bootstrapping our GKE clusters that host custom Kubernetes operators, and Terraform modules for the operators themselves so that they have consistent permissions and inputs for their Helm Charts.
- We also expose a Terraform Module interface for customers to provision and manage Kafka Clusters directly instead of using the self service portal.

On the CI/CD side:
- I led the migration from Jenkins/Drone/Ansible/Atlantis to GitHub Actions.
- Built standardized workflow templates (Docker builds to JFrog Artifactory, Vault secret injection, environment promotion gates).
- Implemented new reusable GitHub Actions templates as they were published internally at Optum.
- Every platform service uses the same patterns, and custom shared pipeline changes are reviewed as code before being imported and utilized by our services.

---

## 6. Have you worked on workflow orchestration or distributed systems? What kind of problems were you solving?

For workflow orchestration:
- I contribute to PRM (Platform Resource Manager), an internal developer platform analogous to Spotify Backstage.
- Provisioning workflows are expressed as typed API contracts.
- When a customer requests a cluster, be it through our internal CLI, the UI portal, or Terraform module, it creates a new resource in PRM.
- Business validation happens at this layer and then the request is passed to the KRM operator tier which generates all Kubernetes resources to fulfill the request.
- I have designed and built multiple workflow steps in PRM, including a multi-step cluster provisioning workflow that integrates with our billing system, Vault, DNS, and GCS.

For distributed systems:
- One example would be how our KRM operator layer and PRM agent layer share an Elasticsearch cluster as single source of truth.
- Every state change is written to ES such that when an operator restarts, it reconciles from stored state. If PRM goes down (which is not managed by our team), KRM continues to work as a customer control interface without affecting our vital business functions (VBF).
- Beyond this, our operators themselves live in our on-prem environment since they need to talk to PRM, reconcile with downstream GKE clusters, then talk to our GKE prod customer environments where StatefulSets and Services are created. This was a challenge to setup architecturally due to needing to integrate with standard infrastructure platform features of our company, while also being able to manage and reconcile a lot of GKE resources at scale.
**
