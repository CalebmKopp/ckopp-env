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

- **Go:** Golang (primary language), idiomatic production Go, performance optimization, testing, benchmarking, concurrency patterns
- **Distributed Systems:** Kubernetes, custom operator frameworks, high availability, fault tolerance, state synchronization, multi-region deployments, disaster recovery
- **Data Streaming:** Apache Kafka, object storage backed diskless Kafka, Confluent Schema Registry, high throughput low latency stream processing, exactly once semantics, topic management, consumer group operations, producer transactions
- **Infrastructure:** Terraform, GCP, Azure, Cloud Storage, VPC, DNS, IAM, Docker, Helm, CI/CD pipelines, GitHub Actions
- **Observability:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow, monitoring controllers, alert routing

---

#### Experience

##### Senior Software Engineer - Optum, UnitedHealth Group
*Sep 2022 - Present* &nbsp;|&nbsp; Saint Paul, MN

- Serve as one of the primary technical owners of a distributed Kafka-as-a-Service platform spanning 1,000+ nodes and 750+ high throughput clusters with five nines reliability and zero customer data loss, built on custom Kubernetes operators in Go forming a two tier control plane for automated streaming infrastructure deployment
- Co-led delivery of a diskless, object storage backed Kafka compatible streaming product: authored a net new K8s operator from scratch, designed all Terraform infrastructure (GCS, VPC, DNS, IAM), integrated observability, and shipped to production customers with projected 80% annual infrastructure cost reduction by eliminating local disk I/O from the streaming data path
- Solely owned design and execution of a head to head performance comparison between diskless S3 based Kafka and traditional Apache Kafka in GCP; designed structured test scenarios with concurrent producer/consumer workloads and end to end latency measurements, iterated on methodology after initial results were challenged, and produced findings that directly informed the production launch decision
- Extend the Prometheus/Thanos/Grafana observability stack, writing PromQL queries, updating Go monitoring controllers, and delivering dashboards with PagerDuty and ServiceNow alert routing for customer facing SLAs
- Own day to day Kafka operations at production scale including topic configuration, partition reassignment, consumer group lag monitoring, throughput tuning, and broker certificate rotation across multi-cloud environments
- Maintain the platform's certificate authority and mTLS pipeline: generate, distribute, and rotate thousands of client certificates with end to end encryption, ensuring zero trust security posture across all broker endpoints and VPC scoped network boundaries
- Consistently first responder when company wide priorities shift without warning: absorb directives, decompose into tightly scoped tasks, and drive execution across teams. Led Chainguard hardened image adoption, triaged hundreds of cloud security findings in days, and drove accelerated customer migration off legacy infrastructure
- Lead a team of 6 engineers, write user stories, conduct code and design reviews, mentor engineers on distributed systems and best practices; coordinate across engineering, product, and security stakeholders

##### Software Engineer - Optum, UnitedHealth Group
*Jun 2020 - Aug 2022* &nbsp;|&nbsp; Saint Paul, MN

- Contributed to custom Kubernetes operator frameworks in Go and high scale Kafka operations supporting thousands of streaming clients; led the platform's migration from on premises to GCP through hands on investigation of cloud provider limitations and cost analysis that drove millions in infrastructure savings

---

#### Education

- B.S. Software Engineering, St. Cloud State University (2020, GPA 3.79) | IEEE Publication: [OSNI](https://ieeexplore.ieee.org/document/9659615) | Google Cloud Certified, Cloud Digital Leader (2025)