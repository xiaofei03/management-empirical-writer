# Git and Versioning Rules

Use this reference to manage writing milestones safely.

## Principle

Versioning is mandatory.

Preferred order:

1. Use Git if available
2. If Git is not available, use manual snapshots in `versions/`

Never install Git or change the system environment without explicit user confirmation.

## Git Availability Check

At project setup, check whether Git can be used in the paper project.

### If Git is available

- Initialize a repository if needed and if the user wants it
- Respect existing repositories and do not overwrite history
- Commit at every meaningful checkpoint

### If Git is unavailable

Offer exactly these options:

1. Install Git
2. Skip Git
3. Use the `versions/` folder for manual snapshots

## Mandatory Git Commit Rules

### Main Rule

Every meaningful change to the paper project must be versioned.

By default, after every modification to manuscript drafts, logs, evidence maps, citation plans, variable measurement maps, literature pool files, Word exports, or project configuration, the Skill must create a Git commit if Git is available.

### Files That Require Versioning

A commit is required after changes to:

- `drafts/cn/paper_cn.md`
- `drafts/cn/paper_cn.docx`
- `drafts/en/paper_en.md`
- `drafts/en/paper_en.docx`
- `logs/empirical-evidence-map.md`
- `logs/target-journal-style-profile.md`
- `logs/literature-pool.md`
- `logs/citation-plan.md`
- `logs/fulltext-literature-readiness.md`
- `logs/literature-synthesis-map.md`
- `logs/empirical-results-inventory.md`
- `logs/unused-empirical-results.md`
- `logs/empirical-results-coverage-audit.md`
- `logs/variable-measurement-evidence-map.md`
- `logs/equation-export-audit.md`
- variable dictionary files
- chapter plan files
- citation audit files
- any generated or updated paper-project file that affects manuscript writing, evidence interpretation, citations, or formatting

### Commit Timing

Commit after:

- project initialization
- tooling check
- empirical evidence map generation
- target journal style profile generation
- literature pool generation or update
- citation plan generation or update
- full-text literature readiness update
- variable measurement evidence map update
- alignment report generation
- each chapter or section draft
- each chapter or section revision
- each Word export
- each citation audit
- each equation export audit
- each quality audit
- each user-confirmed major change

## Suggested Commit Messages

- `init: create empirical paper project structure`
- `tooling: record environment checks`
- `evidence: update empirical evidence map`
- `journal: update target journal style profile`
- `literature: update literature pool`
- `citation: update citation plan`
- `measurement: update variable measurement evidence`
- `align: update alignment report`
- `draft: revise Chinese research design`
- `draft: revise English introduction`
- `format: export Word drafts`
- `audit: update equation export audit`
- `audit: update citation audit`
- `quality: update manuscript quality review`

## Manual Snapshot Mode

If Git is unavailable, not initialized, or cannot commit, the Skill must not silently skip versioning.

It must offer or use the fallback snapshot workflow:

- create a timestamped snapshot under `versions/`
- record what changed
- record why Git was unavailable
- ask the user whether to install or configure Git

Snapshot folder pattern:

- `versions/YYYYMMDD-HHMMSS-short-description/`

If Git is not used, create manual snapshots in `versions/`.

Recommended naming:

- `versions/2026-06-22-align-report/`
- `versions/2026-06-22-cn-introduction/`
- `versions/2026-06-22-en-introduction/`

Each snapshot should contain at least:

- Current `paper_cn.md`
- Current `paper_en.md`
- Any chapter note from the current round
- Any citation audit from the current round

If Word drafts exist, include them too.

## Safety Rules

- Do not rewrite version history unless the user explicitly asks
- Do not delete old snapshots casually
- Do not commit files containing private datasets, private PDFs, or unrelated temporary files
- Do not claim a versioning action happened unless it actually happened
- Do not make manuscript changes without either committing them or creating a version snapshot
- Do not silently skip Git commits
- Do not batch too many unrelated changes into one commit when the changes belong to different workflow stages

## Minimal Status Log Template

```markdown
## Versioning Status
- Mode: Git / manual snapshots / none
- Latest milestone:
- Commit hash or snapshot folder:
- Pending versioning actions:
```
