# To Learn

## Gaps

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