# Copilot Instructions for ckopp-env

## About Caleb Kopp

### Who I Am
Senior Software Engineer at Optum, the technology arm of UnitedHealth Group. Six years at UHG (two as SE, four as Senior). Based in Saint Paul, MN. B.S. Software Engineering from St. Cloud State University, GPA 3.79. IEEE-published researcher in NLP/sentiment analysis. Former president of the Student Organization of Software Engineers (SOSE).

### What I Work On
I am one of the deepest technical owners of Optum's Kafka-as-a-Service platform: 1,000+ production nodes, 750+ high-throughput clusters across GCP and Azure, five-nines reliability, zero customer data loss. The platform is built on custom Kubernetes operators in Go (KRM - Kubernetes Resource Manager) forming a two-tier distributed control plane, a CRD-driven internal provisioning framework (PRM - Platform Resource Manager, analogous to Spotify Backstage), Terraformed cloud infrastructure, and a self-service developer portal micro-frontend embedded in HCP Console.

### Full-Stack Platform Engineering
I own the full-stack self-service developer portal experience for Kafka Clusters as a Service, embedded in Optum's enterprise-wide HCP Console. I lead every layer:
- **UI/UX:** TypeScript, React, NextJS micro-frontend; responsive, informative, intuitive interface
- **API layer:** Provisioning pipeline bridging the portal to real Kubernetes StatefulSet infrastructure
- **Portal integration:** Meeting UX, accessibility, and security standards of the central developer portal team
- **Infrastructure security:** Enforcing security posture on every cluster the portal provisions (mTLS, Vault, KMS)
- **Observability & alerting:** Ensure platform metrics are exposed and surfaced in Grafana dashboards used by both on-call engineers and customers. Write runbooks and alert playbooks for platform-specific alerts and customer engagement procedures during war rooms and incident response.

The product is one of the highest-regarded developer experience offerings at Optum due to the quality of its automation, ease of self-service, and responsiveness of its UI. Developers across the enterprise can provision production-grade streaming infrastructure in minutes.

### Key Value Created
- **On-prem to cloud migration and GCP advocacy (SE role, 2021-2022):** See detailed narrative below. This work directly led to my promotion to Senior.
- **WarpStream delivery (Q4 2024 - Q1 2025):** See detailed narrative below. Projected ~80% annual Kafka infrastructure cost reduction.
- **Platform scale:** 1,000+ nodes, 750+ clusters, five-nines reliability, zero customer data loss across the platform's history.
- **Organizational first-responder:** Consistently first to absorb company-wide mandates before golden paths exist: Chainguard hardened image adoption, cloud vulnerability remediation (hundreds of findings in days), Cloud Native 2029 migration, Grafana consolidation, Vault and break-glass CLI.
- **Confluent Schema Registry as a Service:** Certificate/ACL-governed schema management and data governance on top of provisioned Kafka clusters.
- **Full-stack web app (SE role):** Built a React/TypeScript/Express/MSSQL app replacing spreadsheet-based datacenter inventory management. Adopted by the team.

### Key Narratives for Resume Tailoring
These are detailed stories to draw from when generating tailored resumes and cover letters. Condense, reword, and adapt them to the target role; do not copy verbatim into tailored documents.

#### On-Prem to Cloud Migration and GCP Advocacy (SE role, 2021-2022)
The KaaS platform initially only offered Kafka clusters in Optum's own datacenter. The first cloud venture was a pilot program using GitOps automation to generate customer Terraform and create Azure VM ScaleSets. This proved operationally unfeasible for two reasons: (1) GCP offered dramatically lower compute pricing for equivalent storage/memory/CPU specs, and (2) Azure imposed undocumented per-3-minute and per-30-minute API call rate limits on large-scale Terraform operations, with no documentation, no usage dashboard, and no forewarning in official engagements. I discovered these rate limits by personally digging into network traffic and request/response headers to the Azure API. This investigation, combined with cost analysis, led the team to adopt GCP as the primary KaaS cloud host. The decision cascaded across all of Optum's data platforms through "Data Gravity" - where Kafka streams land, producers and consumers follow with their compute and services. The push for GCP over Azure has saved the company millions of dollars in comparable infrastructure costs. I owned the UI/UX of the KaaS GCP self-service portal throughout, accelerating customer adoption. The following year was spent migrating customers off on-prem shared-tenant clusters, bespoke MSK instances, and self-hosted Kafka deployments onto the automated self-service GCP product. This body of work directly led to my promotion to Senior Software Engineer.

#### WarpStream Delivery (Senior role, Q4 2024 - Q1 2025)
Co-led an 8-week sprint delivering full-stack WarpStream-based cluster provisioning. Built a net-new Go operator (WarpStream DME), authored all Terraform cloud infrastructure from scratch (GCS, VPC, DNS, IAM), integrated into the self-service portal, and delivered full observability. Shipped to Optum's two largest GCP Kafka customers as beta. WarpStream's diskless, Cloud Storage-backed architecture eliminates local disk I/O from the streaming data path, projected to reduce annual Kafka infrastructure costs by approximately 80%. This was the platform's most impactful cost-reduction initiative and demonstrated the team's ability to deliver net-new infrastructure products end-to-end in compressed timelines.

### Technical Identity
- **Primary languages:** Go, TypeScript, Python, Java, Bash
- **Infrastructure:** Kubernetes (CRDs, custom operators, Helm), Terraform (GCP, Azure), Docker, GKE, VPC, DNS, IAM
- **Data streaming:** Apache Kafka, WarpStream, Confluent, Schema Registry, Elasticsearch
- **Frontend:** React, NextJS, micro-frontend architecture, self-service provisioning UI
- **CI/CD:** GitHub Actions, Jenkins, JFrog Artifactory, Azure DevOps, HashiCorp Vault secret injection
- **Security:** mTLS, PKI, certificate authority management, GCP KMS, encryption at rest, PHI/PII data compliance, Chainguard hardened images, disaster recovery
- **Observability:** Prometheus, Thanos, Grafana, PromQL, PagerDuty, ServiceNow
- **Databases:** Elasticsearch (shared state store), MSSQL, TypeORM

### Professional Intersection
I sit at the intersection of: Healthcare (regulated, PHI/PII workloads), Data Streaming (Kafka at enterprise scale), Developer Experience Portals (full-stack self-service for internal developers), Platform Engineering (Kubernetes operators, IaC, cloud infrastructure), Security (mTLS, Vault, compliance, certificate management), and Go/TypeScript full-stack development. I captain a team of 6 engineers, mentor through Optum Early Careers, and lead through technical depth, not title.

### Hands-On Coding Identity
I am a senior engineer who still writes production code every day. I personally implement React UI components, API integrations, and backend service logic - I am in the codebase daily writing features, fixing bugs, and reviewing pull requests. I also co-design and author all of the platform's Terraform infrastructure across GCP and Azure, from VPC and IAM to Cloud Storage and DNS - not delegating IaC to a separate infrastructure team but writing and maintaining it myself alongside application code. When tailoring for roles that emphasize hands-on engineering over pure architecture/oversight, lead with language like "write and ship production code daily," "personally wrote," "implement directly," and "stay hands-on." Avoid framing that sounds like pure management ("own," "serve as," "lead") without pairing it with concrete coding activity.

### Regulated Data Handling
My platform carries PHI/PII healthcare data streams requiring end-to-end SSL/TLS transport, GCP KMS encryption at rest, mTLS certificate management, strict IAM controls, and legally-approved data governance workflows. I implement these security patterns directly in the code I write and maintain the platform's certificate authority that generates and rotates thousands of client certificates. When tailoring for regulated industries (financial services, insurance, government), emphasize: PHI/PII handling, encryption at rest and in transit, certificate management, IAM, auditability, compliance workflows, and coordination with data governance teams. Frame healthcare compliance as directly transferable to financial data sensitivity.

### Leadership Style
Lead engineer and product owner. Captain a team of 6. Write user stories, conduct code reviews, mentor junior engineers on distributed systems, Go, and secure development. Coordinate across engineering, product, security, and compliance stakeholders. Volunteer for Optum Early Careers each year (technical bootcamp lectures, candidate interviews). Serve on-call across the full production fleet.

### Certifications
- **Google Cloud Certified - Cloud Digital Leader** (Mar 2025 - Mar 2028): Validates foundational knowledge across six GCP domains: (1) Digital Transformation with Google Cloud (cloud adoption frameworks, lift-and-shift, brownfield/greenfield strategies, TCO analysis, hybrid/multi-cloud), (2) Exploring Data Transformation, (3) Innovating with Google Cloud AI, (4) Modernizing Infrastructure and Applications (VMs vs. containers vs. serverless, monolith-to-microservice decomposition, GKE, Anthos, Google Compute Engine, App Engine, Cloud Run, rehosting legacy apps, APIs/Apigee), (5) Trust and Security, (6) Scaling with Google Cloud Operations. The digital transformation and infrastructure modernization domains are directly relevant when tailoring for roles involving cloud migration, monolith-to-microservice initiatives, or GCP hosting strategy decisions.

---

## Resume and Cover Letter Rules

### Terminology
- When Caleb says "add to the masters," this means docs/masters/ats.md and docs/visual.md. If the content is also relevant as initial context for future resume/cover letter generation (e.g., narratives, facts, identity details), also update .github/copilot-instructions.md.

### Working Rules
- Prefer make targets over calling scripts directly.
	- Use `make fresh`, `make sync`, `make docs`, and `make docs FILE=<path>` where `<path>` is relative to `docs/` (e.g., `make docs FILE=prospectives/nintendo`).
- Keep changes minimal and scoped to the requested task.
- Do not rewrite large resume sections unless requested.
- Preserve established wording and quantified claims unless asked to update them.

### Source of Truth
- Resume content: docs/ (top-level plus masters/, submitted/, prospectives/).
- PDF generation script: hack/generate_pdfs.sh.
- CI workflows: .github/workflows/*.yml.

### General Editing Rules
- Preserve YAML frontmatter and `pdf_options` blocks in Markdown files.
- Keep punctuation plain ASCII. Do not introduce em dashes or en dashes.
- Avoid fabrication:
	- Do not invent employers, dates, metrics, tools, certifications, or outcomes.
	- If a requested change needs missing facts, ask for them.
- Keep role-specific tailoring targeted to the company/job without changing core chronology.

### Margins (pdf_options)
Three margin tiers exist (small, medium, large). Only `pdf_options.margin` is set; no other pdf_options are used. Always start with Large. Step down only when content exceeds one page.

| Tier | top/bottom | left/right | When to use |
|---|---|---|---|
| Large | 15mm | 20mm | Default starting point for all resumes and cover letters |
| Medium | 10mm | 15mm | First step down when Large does not fit one page |
| Small | 6mm | 12mm | Last resort when Medium still exceeds one page |

### Heading Hierarchy
Master resumes (visual.md, ats.md) use h1 for the name and h2 for section titles.
Submitted/prospective resumes shift the entire hierarchy down two levels:
- h3: Name - Title
- h4: Section titles (Skills, Experience, Projects, Education)
- h5: Job title - Company

Cover letters use no heading levels at all - just bold name, plain text, and paragraphs.

### Contact Line
- **Master visual:** `&nbsp;&nbsp;|&nbsp;&nbsp;` (double nbsp each side of pipe)
- **Master ATS:** plain ` | ` (space-pipe-space, zero HTML entities)
- **Submitted/prospective resumes and cover letters:** `&nbsp;|&nbsp;` (single nbsp each side)

Master files use `# Caleb Kopp`. Submitted/prospective resumes use `### Caleb Kopp - Senior Software Engineer`. Cover letters use `**Caleb Kopp**` (bold, no heading).

### Resume Section Order
Canonical order: **Name > Summary > Skills > Experience > Projects > Education**.
- Summary is included in masters but dropped in most tailored files. Keep it only when the role posting emphasizes a holistic profile.
- When Summary is dropped, Skills immediately follows the contact block + `---`.
- visual.md calls it "Core Skills" (table format). All others call it "Skills".

### Voice and Tense
- **Resume bullets:** Third-person implied (no "I" pronoun). Every bullet leads with a strong action verb.
	- Current role (Present): "Serve", "Own", "Maintain", "Extend", "Build", "Lead", "Captain", "Drive".
	- Past roles: "Contributed", "Implemented", "Assumed", "Designed", "Partnered", "Led".
	- Completed projects under the current role use past tense: "Co-led", "Delivered", "Shipped".
- **Cover letters:** First person throughout ("I serve...", "I am writing..."). Confident and direct but not arrogant. State credentials as facts with metrics, not self-praise.

### Skills Section Format
Format varies by document type:

- **visual.md:** Markdown table with `**Category & Subcategory**` headers using `&`.
- **ats.md:** Bold header paragraph style: `**Category and Subcategory:** skill, skill, ...` using "and".
- **Submitted/prospective:** Dash-led list: `- **Short Category:** skill, skill, ...` with abbreviated category labels.

When tailoring, skills categories are renamed, reordered, and pruned to mirror the job posting. The first 2-3 categories should be the most relevant to the target role. Skills within each category are reordered to front-load the most relevant terms.

### Experience Entry Format
- **Master visual:** `### Title at Company (Parent)` then bold subtitle with `&middot;`, 4x`&nbsp;` gap, italic dates.
- **Master ATS:** `### Title` then `Company, Parent | Location | Dates` (plain pipes), then bold subtitle.
- **Submitted/prospective:** `##### Title - Company, Parent` then `*Dates* &nbsp;|&nbsp; Location` on the next line.

### Bold and Italic Rules
- **Bold lead-in labels** (e.g., `**KRM SME:**`) and **inline bold metrics** (e.g., `**80%**`) appear only in master resumes. Submitted/prospective resume bullets use plain text with no bold.
- **Italic** is used only for date ranges in submitted/prospective files. Never used for emphasis.
- `&middot;` is exclusive to visual.md. Do not use it in any other file.

### Horizontal Rules
`---` appears after the contact block in every file and between major sections in masters. Submitted files use 3-4 rules; masters use more. Cover letters use one `---` after the header block (company/role line).

### Link Format
- Inline links only: `[text](url)`. Never reference-style.
- IEEE publication is linked in most resumes.
- LinkedIn is a markdown link only in ats.md. All other files use plain text.
- Cover letters contain zero links.

### Cover Letter Structure

#### Header Block
```
**Caleb Kopp**
Saint Paul, MN &nbsp;|&nbsp; [contact info]

[Month DD, YYYY]

[Company Name]
[Role Title]

---
```

#### Greeting
- Personal name when known: `To [Name] at [Company],`
- Generic when not: `To the [Company] hiring team,`

#### Paragraph Structure (5-6 paragraphs)
1. **Mission hook:** Open with the company's mission/values, state personal connection, declare interest.
2. **Platform credibility:** Stats-heavy paragraph establishing technical depth (1,000+ nodes, five nines, zero data loss).
3. **Featured differentiator:** Deep-dive into the most relevant experience for this specific role.
4. **Secondary strength:** Additional relevant skill area.
5. **Team leadership + culture:** Leadership, mentoring, and values alignment.
6. **Culture fit** (sometimes merged with para 5): Direct reference to company values.

#### Sign-off
Always the same two lines, no variation:
```
Thank you for your time and consideration.

Caleb Kopp
```

### Resume Tailoring Workflow

#### End-to-End Flow
1. User provides the full text of a job description.
2. Read docs/masters/ats.md and docs/masters/linkedin.md as source material.
3. Generate a tailored resume markdown file applying the content rules below.
4. Write the file to docs/prospectives/ (or docs/submitted/ if applying).
5. Run `make docs FILE=<path>` to produce the PDF, where `<path>` is relative to `docs/` (e.g., `make docs FILE=prospectives/*newresume*`).
6. Check the PDF page count. If it exceeds one page, apply the One-Page Compression Priority in order, regenerate, and recheck until it fits.

#### Content Rules
When generating the tailored resume from masters:
1. Shift heading hierarchy down two levels (h1->h3, h2->h4, h3->h5).
2. Embed title in name heading: `### Caleb Kopp - Senior Software Engineer`.
3. Drop Summary unless the JD emphasizes a holistic profile.
4. Rename, reorder, and prune Skills categories to mirror the job posting. Front-load the most relevant terms within each category.
5. Reword bullets for culture fit - echo the JD's language and priorities while preserving factual accuracy.
6. Highlight experience that directly maps to JD requirements; de-emphasize or drop bullets with no JD relevance.
7. Reduce Senior role from 12+ bullets to 5-7. Drop bold lead-in labels and inline bold metrics.
8. Fold WarpStream featured section into a single compound bullet.
9. Drop Org Initiative Leadership as a standalone section; fold key initiatives into regular bullets if relevant.
10. Compress SE role to 1-2 bullets by merging related content.
11. Drop Intern and Sogeti roles entirely.
12. Compress Projects to 1 bullet or drop entirely (roll IEEE into Education line).
13. Compress Education to a single inline line.

#### One-Page Compression Priority
Always start at Large margins (15mm/20mm). Apply these steps in order, regenerating and rechecking after each:
1. Reduce margins from Large to Medium (10mm/15mm).
2. If a cover letter is also being generated, drop Summary section. If no cover letter, keep Summary and continue to step 3.
3. Drop Intern + Sogeti roles.
4. Compress SE role bullets.
5. Fold WarpStream into a single bullet.
6. Drop Org Initiative Leadership section.
7. Drop Projects section (move IEEE to Education line).
8. Reduce margins from Medium to Small (6mm/12mm) (last resort).

### PDF Generation and Naming
- Local PDF output path is docs/pdf/.
- File naming convention is hardcoded in scripts/workflows as:
	- `caleb-kopp-resume-<name>.pdf`
- CI currently converts only top-level docs/*.md files.
	- Files under docs/masters/, docs/submitted/, and docs/prospectives/ are local-build only.

### Known Resume Constraints
- All resumes for roles should fit on one page. If content exceeds one page, apply the compression tactics in the specified order. The Masters can exceed one page, but all submitted/prospective resumes should be one page.
- When page count matters, prefer reliable local verification methods over Spotlight metadata.

### Validation Checklist
1. If docs changed, run the relevant docs build command.
2. If workflows changed, verify YAML syntax and trigger scope.
3. Confirm no accidental renames or output path changes.

---

## Environment and Machine Setup

### Source of Truth
- Environment setup and project usage: README.md and Makefile.
- Machine bootstrap scripts: hack/fresh_install.sh and hack/generate_install_lists.sh.
- Package manifests: lists/Brewfile and lists/vsc_install_list.sh.

### Environment Manifest Rules
- Treat lists/Brewfile and lists/vsc_install_list.sh as generated artifacts.
- When updating machine state manifests, prefer `make sync` to regenerate them.
- If editing lists manually is requested, preserve current format and ordering style as much as possible.

### Workflow Safety Rules
- Keep release tag formats unchanged unless explicitly requested:
	- `YY.MM.DD.HHMM-pdf`
	- `YY.MM.DD.HHMM-bundle`
- Keep use of `RESUME_PAT` and release upload behavior intact unless asked to change CI auth/release strategy.
- Do not broaden workflow trigger paths unless requested.

### Shell Script Conventions
- Use Bash-compatible syntax.
- Preserve script portability assumptions already in repo.
- Keep shebang style consistent with each file.

### Validation Checklist
1. If lists changed, ensure generated scripts/manifests are syntactically valid.
2. If workflows changed, verify YAML syntax and trigger scope.
3. Confirm no accidental renames or output path changes.

