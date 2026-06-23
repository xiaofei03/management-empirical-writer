# Git and Versioning Rules

Use this reference to manage writing milestones safely.

## Principle

Versioning is strongly recommended but not mandatory.

Preferred order:

1. Use Git if available
2. If Git is not available, use manual snapshots in `versions/`

Never install Git or change the system environment without explicit user confirmation.

## Git Availability Check

At project setup, check whether Git can be used in the paper project.

### If Git is available

- Initialize a repository if needed and if the user wants it
- Respect existing repositories and do not overwrite history
- Commit at meaningful checkpoints

### If Git is unavailable

Offer exactly these options:

1. Install Git
2. Skip Git
3. Use the `versions/` folder for manual snapshots

## Required Commit Moments

Use commits at these milestones when Git is active:

- Project initialization
- Alignment report completion
- Writing plan completion
- Completion of each Chinese chapter update
- Completion of each English chapter update
- Citation audit completion
- Word export refresh
- Full-paper consistency review

## Suggested Commit Messages

- `init: create empirical paper project structure`
- `align: complete understanding report`
- `plan: create bilingual chapter roadmap`
- `draft: write Chinese introduction`
- `draft: write English introduction`
- `cite: audit references for theory section`
- `format: regenerate Word drafts`
- `review: complete full-paper consistency check`

## Manual Snapshot Mode

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
- Do not commit unrelated private data outside the paper project
- Do not claim a versioning action happened unless it actually happened

## Minimal Status Log Template

```markdown
## Versioning Status
- Mode: Git / manual snapshots / none
- Latest milestone:
- Commit hash or snapshot folder:
- Pending versioning actions:
```
