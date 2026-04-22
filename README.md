# ckopp-env

A portable toolkit for **macOS machine setup** and **resume automation**. Fork it, swap in your own Brewfile and resume docs, and you get reproducible dev environments plus a markdown-to-PDF resume pipeline with CI/CD.

---

[![Resume to PDF Release](https://github.com/CalebmKopp/ckopp-env/actions/workflows/docs-to-pdf.yml/badge.svg)](https://github.com/CalebmKopp/ckopp-env/actions/workflows/docs-to-pdf.yml)
[![Brewfile/VSCode Extension Bundle and Release](https://github.com/CalebmKopp/ckopp-env/actions/workflows/bundle-to-release.yml/badge.svg)](https://github.com/CalebmKopp/ckopp-env/actions/workflows/bundle-to-release.yml)
[![GitHub Actions Security Analysis with zizmor 🌈](https://github.com/CalebmKopp/ckopp-env/actions/workflows/zizmor.yml/badge.svg)](https://github.com/CalebmKopp/ckopp-env/actions/workflows/zizmor.yml)

---

## Table of Contents

- [ckopp-env](#ckopp-env)
  - [Table of Contents](#table-of-contents)
  - [Quick Start](#quick-start)
  - [Repository Structure](#repository-structure)
  - [Machine Setup (Brewfile)](#machine-setup-brewfile)
    - [Fresh Install (new machine)](#fresh-install-new-machine)
    - [Syncing Your Current Machine State](#syncing-your-current-machine-state)
  - [Resume Automation](#resume-automation)
    - [Resume Document Hierarchy](#resume-document-hierarchy)
    - [Generating PDFs Locally](#generating-pdfs-locally)
    - [Customizing PDF Output](#customizing-pdf-output)
  - [Makefile Targets](#makefile-targets)
  - [CI/CD Workflows](#cicd-workflows)
  - [Windows Support](#windows-support)
    - [Setup](#setup)
    - [Usage](#usage)
  - [Forking This Repo for Your Own Use](#forking-this-repo-for-your-own-use)
    - [Tips for Colleagues](#tips-for-colleagues)
  - [TODO](#todo)

## Quick Start

```sh
# Clone the repo
git clone https://github.com/CalebmKopp/ckopp-env.git
cd ckopp-env

# Install everything (Homebrew, brew packages, VSCode extensions)
make fresh

# Generate resume PDFs locally
make docs
```

If `make` is not recognized, run `./hack/fresh_install.sh` directly (or install `make` via the options presented in your terminal).

## Repository Structure

```
ckopp-env/
├── .github/workflows/       # CI/CD pipelines
│   ├── docs-to-pdf.yml      # Markdown resume -> PDF GitHub Release
│   ├── bundle-to-release.yml # Brewfile + VSCode list -> GitHub Release
│   └── zizmor.yml            # GitHub Actions security scanning
├── docs/                     # All resume content
│   ├── visual.md             # Visual/rich resume (tables, formatting)
│   ├── masters/              # Source-of-truth resume variants
│   │   ├── ats.md            # ATS-optimized (plain text friendly)
│   │   └── linkedin.md       # LinkedIn profile content
│   ├── submitted/            # Company-specific submitted resumes & cover letters
│   ├── prospectives/         # Draft resumes for prospective applications
│   └── pdf/                  # Generated PDFs (gitignored, built locally or via CI)
├── hack/                     # Shell scripts backing the Makefile
│   ├── fresh_install.sh      # Full machine bootstrap
│   ├── generate_install_lists.sh  # Dump current brew/vscode state
│   ├── generate_pdfs.sh      # Markdown -> PDF conversion (Bash)
│   └── generate_pdfs.ps1     # Markdown -> PDF conversion (PowerShell/Windows)
├── lists/                    # Declarative install manifests
│   ├── Brewfile              # Homebrew bundle (taps, formulae, casks, vscode extensions)
│   └── vsc_install_list.sh   # VSCode extension install script
├── Makefile                  # Automation entry point
└── README.md
```

## Machine Setup (Brewfile)

The `lists/Brewfile` is a [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) file that declaratively captures your entire dev environment: taps, formulae, casks, and VSCode extensions.

### Fresh Install (new machine)

```sh
make fresh
```

This runs `hack/fresh_install.sh`, which:
1. Installs Homebrew (if not already present)
2. Runs `brew bundle --file=./lists/Brewfile` to install all packages
3. Runs `lists/vsc_install_list.sh` to install all VSCode extensions

### Syncing Your Current Machine State

After installing new tools or extensions, capture your current state back into the repo:

```sh
make sync
```

This runs `hack/generate_install_lists.sh`, which:
1. Regenerates `lists/Brewfile` from your current `brew` state via `brew bundle dump`
2. Regenerates `lists/vsc_install_list.sh` from `code --list-extensions`
3. Runs `brew update && brew upgrade` to keep everything current

Commit and push the updated files to keep your setup tracked in git.

## Resume Automation

Resumes are written in Markdown with YAML frontmatter controlling PDF layout (margins, page size). PDFs are generated via [`md-to-pdf`](https://github.com/simonhaenisch/md-to-pdf).

### Resume Document Hierarchy

| Directory | Purpose |
|---|---|
| `docs/masters/` | Source-of-truth resumes. `ats.md` is keyword-dense, plain-text friendly for applicant tracking systems. `linkedin.md` is structured for LinkedIn profile copy-paste. |
| `docs/visual.md` | Richly formatted resume with tables, HTML entities, and horizontal rules -- designed for human readers and PDF output. |
| `docs/submitted/` | Tailored resumes and cover letters for specific companies you've applied to. |
| `docs/prospectives/` | Draft resumes for companies you're considering applying to. |
| `docs/pdf/` | Generated PDF output. Gitignored -- build locally or download from GitHub Releases. |

### Generating PDFs Locally

```sh
# Generate PDFs for all docs/*.md files
make docs

# Generate a PDF for a specific file (by name, without extension)
make docs FILE=visual
```

Output lands in `docs/pdf/caleb-kopp-resume-{name}.pdf`.

**Prerequisite:** `npx` must be available (install Node.js via `nvm` or the Brewfile).

### Customizing PDF Output

Each markdown file can include YAML frontmatter to control PDF options:

```yaml
---
pdf_options:
  margin: 10mm 15mm
  format: Letter
---
```

See the [md-to-pdf docs](https://github.com/simonhaenisch/md-to-pdf#readme) for all available options.

## Makefile Targets

| Target | Usage | Description |
|---|---|---|
| `help` | `make help` | Print all available targets with descriptions |
| `fresh` | `make fresh` | Bootstrap a new machine: install Homebrew, brew packages, and VSCode extensions |
| `sync` | `make sync` | Capture current machine state into `lists/`, update and upgrade all packages |
| `docs` | `make docs` | Convert all `docs/*.md` to PDF (macOS/Linux) |
| `docs` | `make docs FILE=visual` | Convert a single file to PDF (macOS/Linux) |
| `windocs` | `make windocs` | Convert all `docs/*.md` to PDF (Windows/PowerShell) |
| `windocs` | `make windocs FILE=visual` | Convert a single file to PDF (Windows/PowerShell) |

## CI/CD Workflows

All workflows trigger on pushes to `main` and can also be run manually via `workflow_dispatch`.

| Workflow | Trigger | What It Does |
|---|---|---|
| `docs-to-pdf.yml` | Changes to `docs/*.md` | Converts top-level `docs/*.md` to PDF and creates a GitHub Release (tag: `YY.MM.DD.HHMM-pdf`) |
| `bundle-to-release.yml` | Changes to `lists/` | Creates a GitHub Release with the Brewfile and VSCode install script (tag: `YY.MM.DD.HHMM-bundle`) |
| `zizmor.yml` | Every push and PR | Runs GitHub Actions security analysis with [zizmor](https://github.com/woodruffw/zizmor) |

**Note:** The PDF workflow only processes `docs/*.md` at the top level (currently just `visual.md`). Subdirectory files (`masters/`, `submitted/`, `prospectives/`) are only built locally via `make docs`.

Both release workflows require a `RESUME_PAT` repository secret with permission to create releases.

## Windows Support

The machine bootstrap scripts (`make fresh`, `make sync`) are macOS-only (Homebrew, zsh). However, the resume PDF pipeline works on Windows via `make windocs`.

### Setup

```powershell
winget upgrade -r
winget install -e --id CoreyButler.NVMforWindows
winget install -e --id GnuWin32.Make
```

After installation, open a new terminal and install Node.js via nvm:

```powershell
nvm install lts
nvm use lts
```

### Usage

```powershell
# Generate PDFs for all docs/*.md files
make windocs

# Generate a PDF for a specific file
make windocs FILE=prospectives/<company>
```

The `windocs` target calls `hack/generate_pdfs.ps1`, which verifies that `nvm` and `npx` are available before running. If a prerequisite is missing, it prints the install command needed.

## Forking This Repo for Your Own Use

1. **Fork** this repo on GitHub
2. **Clone** your fork locally
3. **Replace the resume content** in `docs/` with your own markdown resumes
4. **Replace the Brewfile** -- either edit `lists/Brewfile` directly, or:
   - Install your tools via `brew install`, `brew install --cask`, etc.
   - Run `make sync` to regenerate the Brewfile from your machine
5. **Set up the `RESUME_PAT` secret** in your fork's GitHub Settings > Secrets if you want the CI/CD release workflows to work
6. **Update the badge URLs** in this README to point to your fork
7. Commit, push, and your workflows will handle the rest

### Tips for Colleagues

- **Rename the PDF output:** The script `hack/generate_pdfs.sh` hardcodes the output filename as `caleb-kopp-resume-{name}.pdf`. Change `caleb-kopp` to your own name in that script so your PDFs are named correctly.
- You can delete the `docs/submitted/` and `docs/prospectives/` directories and start fresh
- Keep your `ats.md` as the plain-text master and derive tailored versions from it
- Use `docs/masters/linkedin.md` as a structured reference for updating your LinkedIn profile
- Run `make sync` periodically to keep your Brewfile current as you install new tools

## TODO

- Add a pause in the script to run the `brew` shellenv setup commands:
  ```sh
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/<MY-USER>/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
  ```
- Make Windows-compatible scripts/package fetcher (chocolatey, winget, or similar) for `make fresh` and `make sync`
- Sync up job-specific `.zshrc` and kubeconfigs (encrypted in repo, decrypted locally)
