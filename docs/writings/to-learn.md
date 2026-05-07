# To Learn

## Gaps

### Gaps - Solo.io Senior AI Software Engineer

#### Service Mesh (Istio and Ambient Mesh)
- Istio architecture: control plane (istiod), data plane (Envoy sidecars), xDS protocol for config distribution
- Ambient Mesh (sidecar-less): ztunnel (L4 proxy per node), waypoint proxies (L7), how it differs from sidecar model
- Traffic management: VirtualService, DestinationRule, Gateway resources; routing, retries, circuit breaking, fault injection
- mTLS in Istio: SPIFFE identity, automatic cert rotation, PeerAuthentication policies (vs your current manual cert management)
- AuthorizationPolicy: L4/L7 access control within the mesh
- Observability integration: how Istio generates metrics, traces, and access logs; integration with Prometheus/Grafana
- Multi-cluster mesh: primary-remote, multi-primary topologies; cross-cluster service discovery

#### Envoy Proxy
- Envoy architecture: listeners, filter chains, clusters, endpoints; how requests flow through the proxy
- xDS APIs: LDS, RDS, CDS, EDS, SDS - how control planes (like Istio) configure Envoy dynamically
- HTTP connection manager, route configuration, header manipulation
- Envoy filters: HTTP filters (ext_authz, rate limiting, RBAC), network filters, Lua/WASM filters
- Load balancing algorithms: round robin, least request, ring hash, Maglev
- Building and extending Envoy: Go or WASM extensions for custom filter logic
- Envoy as an API gateway: rate limiting, auth, TLS termination, gRPC transcoding

#### Kubernetes Gateway API
- Gateway API resources: GatewayClass, Gateway, HTTPRoute, TCPRoute, GRPCRoute, ReferenceGrant
- How Gateway API differs from Ingress: role-oriented design (infra provider vs cluster operator vs app developer)
- Gateway API implementations: kgateway (Solo/CNCF), Istio, Cilium, Contour
- Policy attachment: BackendTLSPolicy, timeouts, retries; how policies attach to Gateway API resources
- Gateway API for mesh: GAMMA initiative (Gateway API for Mesh Management and Administration)

#### AI Agentic Frameworks and Protocols
- MCP (Model Context Protocol): architecture, tool registration, resource exposure, how agents discover and invoke tools
- A2A (Agent-to-Agent): agent communication protocol, agent cards, task lifecycle, multi-agent orchestration patterns
- ADK (Agent Development Kit): Google's framework for building AI agents; tool use, memory, planning
- kagent (Solo.io): Kubernetes-native AI agent orchestration; CRDs for agent lifecycle, tool management, observability
- agentgateway (Solo.io): proxy/gateway patterns for AI agent traffic; routing, auth, rate limiting for agent-to-tool and agent-to-agent calls
- LLM serving on Kubernetes: vLLM, Ollama, TGI; GPU scheduling, model caching, autoscaling inference workloads
- RAG at production scale: vector databases (pgvector, Weaviate, Pinecone), chunking strategies, retrieval pipelines beyond the AI Dojo CSV project

#### API Gateway Patterns and Cloud Networking
- API gateway vs service mesh vs ingress controller: when to use each, how they overlap
- gRPC: protobuf, streaming, interceptors, gRPC-Web; Solo products heavily use gRPC
- Rate limiting architectures: local vs global rate limiting, token bucket, sliding window
- North-south vs east-west traffic: gateway (north-south) vs mesh (east-west) responsibilities
- WebSocket and HTTP/2 proxying; long-lived connection management

#### Open Source Contribution Workflow
- Contributing to CNCF projects: governance, SIGs, KEPs, review process, DCO sign-off
- OSS development cadence: public design docs, RFCs, issue triage, community meetings
- Building in public: balancing velocity with review thoroughness; working with external contributors

### Gaps - BeyondTrust Sr Software Development Engineer

#### AWS
- AWS core services: EC2, ECS/EKS, S3, IAM, VPC, Route 53, CloudWatch, CloudFormation/CDK
- AWS networking: VPC peering, Transit Gateway, PrivateLink, security groups vs NACLs
- AWS secrets management: AWS Secrets Manager, Parameter Store, KMS integration
- AWS container orchestration: EKS specifics vs GKE, Fargate, ECR
- AWS CI/CD: CodePipeline, CodeBuild, or how GitHub Actions integrates with AWS services

#### Secrets Management Domain
- Secrets management product patterns: vault architecture, secret rotation, dynamic secrets, lease management
- Privileged access management (PAM): session recording, just-in-time access, privilege elevation
- Identity security: service identity, machine identity, secrets sprawl detection
- BeyondTrust product suite: Password Safe, Privileged Remote Access, Endpoint Privilege Management
- Zero-trust secrets: how secrets management fits into zero-trust architectures

#### C#/.NET
- C# language fundamentals: async/await, LINQ, dependency injection, generics
- .NET ecosystem: ASP.NET Core, Entity Framework, NuGet, dotnet CLI
- C# in microservices: gRPC with C#, containerized .NET services

#### E2E Testing Frameworks
- Cypress: component testing, API testing, custom commands, CI integration
- Playwright: cross-browser testing, codegen, trace viewer, API testing
- Testing strategies for web-based enterprise applications at scale

### Kafka Internals (beyond operations)
- Kafka controller internals, partition leadership election, ISR mechanics
- KRaft consensus (replacing ZooKeeper) - how the quorum controller works, metadata topics, Raft log
- Replication protocol at depth: leader epoch, log truncation, high watermark advancement
- Exactly-once semantics and transactional APIs (idempotent producers, transactional consumers, read_committed isolation)
- Consumer group rebalancing protocols (eager vs cooperative sticky, static group membership)
- Log segment internals: indexing, compaction implementation, tiered storage

### Confluent Schema Registry (beyond infrastructure)
- Schema Registry REST API: registering, retrieving, and deleting schemas; subject-level vs global compatibility
- Compatibility modes in practice: BACKWARD, FORWARD, FULL, NONE, and TRANSITIVE variants; when to use each
- How Schema Registry relates to underlying CFK Kafka cluster (_schemas topic, leader election, single-primary architecture)
- Schema evolution strategies across Avro, Protobuf, and JSON Schema
- Schema references and schema contexts for complex multi-schema topologies
- Schema Registry in Confluent Cloud vs self-managed: architectural differences

### Confluent Platform and Products
- ksqlDB: streaming SQL engine, push/pull queries, persistent queries, state stores
- Kafka Connect: connector architecture, source vs sink, SMTs, distributed vs standalone mode, offset management
- Confluent Cloud architecture: multi-tenant cluster management, CKUs, networking (Private Link, VPC peering, Transit Gateway)
- Apache Flink on Confluent: Confluent acquired Immerok; Flink SQL, stream processing beyond Kafka Streams
- Confluent for Kubernetes (CFK): operator-based deployment, CR lifecycle, how it differs from Strimzi

### Kubernetes (beyond daily operator work)
- CNI (Container Network Interface): plugin architecture, pod networking, network policy enforcement
- CNS (Container Network Security): network segmentation, service mesh integration
- Building from scratch with kubectl create, edit, deploy - fluency beyond Helm/operator abstractions

### Databases and Storage (SQL and NoSQL)
- SQL at depth: query optimization, indexing strategies (B-tree, hash, composite), EXPLAIN plans, query profiling
- PostgreSQL: practical experience with a production relational DB beyond MSSQL
- NoSQL patterns: document stores (MongoDB), key-value (Redis, DynamoDB), wide-column (Cassandra); when to choose which
- Data modeling for scale: denormalization tradeoffs, partition key design, read/write optimization patterns
- Connection pooling, replication (leader-follower, multi-leader), sharding strategies
- Elasticsearch: deeper understanding beyond shared state store usage (query DSL, mappings, analyzer chains, cluster tuning)

### Distributed Systems Theory
- CAP theorem, PACELC: formal understanding vs intuitive operational knowledge
- Consensus protocols: Raft (in depth, since KRaft uses it), Paxos (conceptual)
- Consistent hashing, virtual nodes, ring-based partitioning
- Exactly-once delivery guarantees vs at-least-once vs at-most-once: formal definitions and implementation patterns
- Vector clocks, logical timestamps, causal ordering

### Gaps - Target Sr. Cloud Data Engineer

#### BigQuery
- BigQuery fundamentals: datasets, tables, views, materialized views, partitioned/clustered tables
- Scheduled queries: creating, monitoring, troubleshooting failed scheduled query jobs
- Recurring summary tables: patterns for building and maintaining rollup/aggregation tables
- Data transfers: BigQuery Data Transfer Service, scheduled transfers, monitoring transfer runs
- BigQuery SQL: differences from standard SQL (STRUCT, ARRAY, UNNEST, approximate aggregation functions)
- Cost management: on-demand vs capacity pricing, slot reservations, query optimization for cost
- BigQuery IAM: dataset-level, table-level, and row-level access controls; authorized views

#### Batch ETL and Data Transformation
- ETL vs ELT patterns: when to transform before vs after loading into BigQuery
- Data ingestion into Cloud Storage and BigQuery: batch loading, streaming inserts, Storage Write API
- Data pipeline orchestration for batch workloads (vs streaming-only experience with Kafka)
- Schema management in analytics contexts: schema evolution, backward compatibility in BigQuery
- Linearizability vs sequential consistency vs eventual consistency: formal definitions
- ETL vs ELT patterns in data streaming: formal definitions and tradeoffs

### Data Structures and Algorithms
- Interview-level DS&A prep: trees, graphs, dynamic programming, sliding window, two-pointer, backtracking
- System design interview format: structured approach to designing distributed systems on a whiteboard
- Time/space complexity analysis for common patterns

### Languages
- Go: deeper language internals (goroutine scheduler, GC, channels vs mutexes, interface satisfaction)
- Java: listed on resume but not primary; Confluent's core platform (Kafka, Schema Registry, Connect) is Java/Scala
- JVM internals: GC tuning, memory model, thread safety, concurrency primitives (CompletableFuture, ExecutorService)
- Modern Java: records, sealed classes, virtual threads (Project Loom), pattern matching
- Build tooling: Gradle (Confluent uses Gradle), Maven
- Rust
- Bloblang (Bento/Benthos stream processing DSL)

### Stream Processing Patterns (beyond Kafka ops)
- CDC pipelines: Debezium, Kafka Connect source connectors for database change capture
- Stream-table duality, KTable/GlobalKTable, interactive queries
- Windowing: tumbling, hopping, sliding, session windows; watermarks and late arrival handling
- Stream processing frameworks comparison: Kafka Streams vs Flink vs Spark Structured Streaming
- Bento stream processing: rebuilding OSNI with Bento (input tweets, output Warpstream, read buckets in a UI, filter by company for sentiment tracking)

### Gaps - Staff Go Engineer (CNCF K8s Developer Tools via Realm)

#### Open Source / CNCF Contribution
- Contributing to public CNCF projects: governance, SIGs, KEPs, review process, DCO sign-off (partially covered under Solo.io gaps)
- Building in public: balancing velocity with review thoroughness, working with external contributors
- Public API design for OSS projects: backward compatibility, deprecation policies, semantic versioning
- Community engagement: conference talks, blog posts, meetup participation, Discord/Slack community moderation

#### External SaaS Multi-Tenancy
- Multi-tenant Kubernetes SaaS for external customers vs internal enterprise platform
- Tenant isolation patterns: namespace-per-tenant, cluster-per-tenant, virtual clusters (vcluster)
- SaaS billing, onboarding, and self-service for untrusted external users
- Public API design: versioning, rate limiting, authentication for external consumers
- SLA contracts and incident management for external customers

#### AWS (see also BeyondTrust gaps)
- EKS specifics vs GKE: networking, IAM integration, add-ons, managed node groups
- AWS IAM: policies, roles, OIDC federation for Kubernetes service accounts (IRSA)
- AWS networking: VPC, security groups, PrivateLink, Transit Gateway

### Gaps - Wells Fargo Full Stack Engineer (via Judge Group)

#### Apache Spark / Spark Flow (critical)
- Spark architecture: driver, executors, cluster managers (YARN, Kubernetes, standalone)
- RDDs, DataFrames, Datasets: when to use each, lazy evaluation, transformations vs actions
- Spark SQL: structured data processing, catalyst optimizer, predicate pushdown
- PySpark: Python API for Spark, UDFs, pandas UDFs, integration with Python data ecosystem
- Spark Flow: SSIS-to-Spark migration patterns, ETL pipeline modernization
- Spark on Kubernetes: spark-submit, spark-operator, dynamic resource allocation
- Data lake ingestion patterns: file handling (Parquet, ORC, Delta Lake), partitioning strategies, access management

#### ETL Tools and Patterns
- SSIS (SQL Server Integration Services): architecture, data flow tasks, control flow, package deployment
- ETL vs ELT patterns: batch processing vs streaming, when to use each
- Data lake architecture: landing zones, bronze/silver/gold layers, data quality frameworks
- File format comparison: Parquet, Avro, ORC, Delta Lake, Iceberg

#### .NET / C#
- C# language fundamentals: async/await, LINQ, dependency injection, generics, records
- ASP.NET Core: Web API, middleware, routing, authentication, Entity Framework Core
- .NET ecosystem: NuGet, dotnet CLI, project structure, containerized .NET services
- FastAPI (Python): request/response models, dependency injection, async endpoints, OpenAPI generation

#### Angular
- Angular fundamentals: components, modules, services, dependency injection, RxJS
- Angular vs React: architectural differences, when to use each
- Angular CLI, testing with Jasmine/Karma, NgRx state management

### Other
- Web scraping (Selenium, etc)

### Gaps - SONIFI Health Solutions Architect

#### AWS (building on existing AWS gaps)
- ECS vs EKS: task definitions, Fargate launch type, service auto-scaling, ALB target groups, ECS service discovery
- ECS on Fargate specifically: SONIFI migrated their interactive TV system to ECS on Fargate
- AWS CloudFormation: template structure, stacks, change sets, drift detection (vs Terraform which you know deeply)
- AWS networking: VPC, security groups, NACLs, PrivateLink, Transit Gateway, hybrid on-prem connectivity (Direct Connect, VPN)
- AWS messaging: SQS, SNS, EventBridge - how they compare to Kafka for different use cases
- AWS IAM in depth: policies, roles, resource-based vs identity-based, cross-account access patterns

#### HL7 and Healthcare Interoperability
- HL7v2 message format: segments (MSH, PID, OBR, OBX), delimiters, message types (ADT, ORM, ORU)
- HL7 FHIR (newer REST-based standard): resources, bundles, SMART on FHIR
- ADT (Admit-Discharge-Transfer) feeds: how patient status flows from EHR to downstream systems
- EHR integration patterns: Epic, Cerner/Oracle Health, MEDITECH - how systems exchange patient data
- Healthcare data standards: HIPAA, HITRUST, HL7 security considerations
- HL7 transport: MLLP (Minimal Lower Layer Protocol), TCP sockets, how HL7 messages flow between systems

#### On-Prem and Hybrid Architecture
- On-prem to cloud communication patterns: VPN tunnels, message queues bridging on-prem and cloud, edge computing
- IoT/embedded device communication: MQTT, CoAP, device management at scale
- Hardware-software integration patterns: how software systems communicate with physical devices (TVs, room controls, sensors)
- RTLS (Real-Time Location Services): how location data flows in hospital environments
- Edge computing in hospitality: on-prem servers at each hotel site that communicate with cloud control plane

#### Hospitality and Media Domain
- PMS (Property Management Systems) integration: how hotel check-in/check-out events drive downstream systems; HTNG/HSIA standards
- POS (Point of Sale) system integration: room charge posting, billing workflows
- Room control systems: 3rd party on-prem and cloud integrations for lighting, HVAC, curtains, TV; protocols (RS-232, IP-based, REST APIs)
- VOD (Video on Demand) and digital media delivery: content management, DRM, RF vs IP distribution to in-room devices
- Interactive TV platforms: guest-facing applications, content delivery, personalization, multi-tenant content management
- Custom hardware vendor relationships: how software architects coordinate with hardware partners on firmware, APIs, and integration specs

#### Monolith to Microservices Patterns (interview prep)
- Strangler Fig pattern: incrementally replacing monolith components with microservices behind a facade
- API gateway and BFF (Backend for Frontend) patterns for routing during migration
- Service decomposition strategies: domain-driven design bounded contexts, database-per-service, shared database anti-pattern
- Data migration during decomposition: event sourcing, CQRS, dual-write pitfalls, change data capture
- Deployment strategies for zero-downtime migration: blue-green, canary, feature flags, rolling deployments
- Distributed transaction patterns: saga pattern (choreography vs orchestration), compensating transactions
- Service mesh for inter-service communication: sidecar proxy, circuit breaking, retries, timeouts
- Observability in microservices: distributed tracing (OpenTelemetry), centralized logging, service dependency maps
- Non-functional requirements as architecture drivers: how scalability, availability, latency, security, and compliance shape design decisions; trade-off documentation and stakeholder communication

#### Architecture Solutioning and Communication (interview prep)
- Structured architecture walkthrough: top-down (business problem, constraints, key decisions, components, data flow, trade-offs) vs bottom-up; practice narrating your biggest system clearly
- Live solutioning exercises: extracting requirements from vague prompts, asking clarifying questions, sketching components on a whiteboard, identifying integration points, calling out trade-offs proactively
- SONIFI-specific architecture study: interactive TV platform on ECS Fargate, on-prem headend servers at each hotel/hospital site, cloud control plane, multi-datacenter topology, patient engagement product