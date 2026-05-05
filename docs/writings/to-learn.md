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

### Other
- Web scraping (Selenium, etc)