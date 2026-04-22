# Copilot Instructions for ckopp-env

## Repository Purpose
This repo has two primary responsibilities:
1. macOS environment bootstrap and package tracking via Homebrew + VS Code extension manifests.
2. Resume and cover letter authoring in Markdown, with local and CI PDF generation.

## Source of Truth by Area
- Environment setup and project usage: README.md and Makefile.
- Machine bootstrap scripts: hack/fresh_install.sh and hack/generate_install_lists.sh.
- PDF generation script: hack/generate_pdfs.sh.
- Package manifests: lists/Brewfile and lists/vsc_install_list.sh.
- Resume content: docs/ (top-level plus masters/, submitted/, prospectives/).
- CI workflows: .github/workflows/*.yml.

## Working Rules
- Prefer make targets over calling scripts directly.
	- Use `make fresh`, `make sync`, `make docs`, and `make docs FILE=<name>`.
- Keep changes minimal and scoped to the requested task.
- Do not rewrite large resume sections unless requested.
- Preserve established wording and quantified claims unless asked to update them.

## Resume and Cover Letter Editing Rules

### General
- Preserve YAML frontmatter and `pdf_options` blocks in Markdown files.
- Keep punctuation plain ASCII. Do not introduce em dashes or en dashes.
- Avoid fabrication:
	- Do not invent employers, dates, metrics, tools, certifications, or outcomes.
	- If a requested change needs missing facts, ask for them.
- Keep role-specific tailoring targeted to the company/job without changing core chronology.

### Margins (pdf_options)
Three margin tiers exist. Only `pdf_options.margin` is set; no other pdf_options are used.

| Tier | top/bottom | left/right | When to use |
|---|---|---|---|
| Standard | 10mm | 15mm | Default for all resumes and cover letters |
| Tight | 6mm | 12mm | Last resort when content still exceeds one page after all other compression |
| Wide | 15mm | 20mm | Cover letters with shorter content (more whitespace = more professional letter) |

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

## Cover Letter Structure

### Header Block
```
**Caleb Kopp**
Saint Paul, MN &nbsp;|&nbsp; [contact info]

[Month DD, YYYY]

[Company Name]
[Role Title]

---
```

### Greeting
- Personal name when known: `To [Name] at [Company],`
- Generic when not: `To the [Company] hiring team,`

### Paragraph Structure (5-6 paragraphs)
1. **Mission hook:** Open with the company's mission/values, state personal connection, declare interest.
2. **Platform credibility:** Stats-heavy paragraph establishing technical depth (1,000+ nodes, five nines, zero data loss).
3. **Featured differentiator:** Deep-dive into the most relevant experience for this specific role.
4. **Secondary strength:** Additional relevant skill area.
5. **Team leadership + culture:** Leadership, mentoring, and values alignment.
6. **Culture fit** (sometimes merged with para 5): Direct reference to company values.

### Sign-off
Always the same two lines, no variation:
```
Thank you for your time and consideration.

Caleb Kopp
```

## Resume Tailoring Workflow
When creating a new submitted/prospective resume from masters:
1. Shift heading hierarchy down two levels (h1->h3, h2->h4, h3->h5).
2. Embed title in name heading: `### Caleb Kopp - Senior Software Engineer`.
3. Drop Summary unless the JD emphasizes a holistic profile.
4. Rename, reorder, and prune Skills categories to mirror the job posting.
5. Reduce Senior role from 12+ bullets to 5-7. Drop bold lead-in labels and inline bold metrics.
6. Fold WarpStream featured section into a single compound bullet.
7. Drop Org Initiative Leadership as a standalone section; fold key initiatives into regular bullets if relevant.
8. Compress SE role to 1-2 bullets by merging related content.
9. Drop Intern and Sogeti roles entirely.
10. Compress Projects to 1 bullet or drop entirely (roll IEEE into Education line).
11. Compress Education to a single inline line.

### One-Page Compression Priority
Apply these in order. Exhaust each tactic before moving to the next:
1. Drop Summary section.
2. Drop Intern + Sogeti roles.
3. Compress SE role bullets.
4. Fold WarpStream into a single bullet.
5. Drop Org Initiative Leadership section.
6. Drop Projects section (move IEEE to Education line).
7. Tighten margins to 6mm/12mm (last resort).

## PDF Generation and Naming Constraints
- Local PDF output path is docs/pdf/.
- File naming convention is hardcoded in scripts/workflows as:
	- `caleb-kopp-resume-<name>.pdf`
- CI currently converts only top-level docs/*.md files.
	- Files under docs/masters/, docs/submitted/, and docs/prospectives/ are local-build only.

## Known Resume Constraints
- Huntingtonbank and Confluent resumes should remain one page after edits.
- When page count matters, prefer reliable local verification methods over Spotlight metadata.

## Environment Manifest Rules
- Treat lists/Brewfile and lists/vsc_install_list.sh as generated artifacts.
- When updating machine state manifests, prefer `make sync` to regenerate them.
- If editing lists manually is requested, preserve current format and ordering style as much as possible.

## Workflow Safety Rules
- Keep release tag formats unchanged unless explicitly requested:
	- `YY.MM.DD.HHMM-pdf`
	- `YY.MM.DD.HHMM-bundle`
- Keep use of `RESUME_PAT` and release upload behavior intact unless asked to change CI auth/release strategy.
- Do not broaden workflow trigger paths unless requested.

## Shell Script Conventions
- Use Bash-compatible syntax.
- Preserve script portability assumptions already in repo.
- Keep shebang style consistent with each file.

## Validation Checklist Before Finishing
1. If docs changed, run the relevant docs build command.
2. If lists changed, ensure generated scripts/manifests are syntactically valid.
3. If workflows changed, verify YAML syntax and trigger scope.
4. Confirm no accidental renames or output path changes.

