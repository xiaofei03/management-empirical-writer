# Project Structure

This reference explains how the skill should guide setup inside a specific paper project.

## Principle

The skill folder is reusable infrastructure. The paper project folder is the workspace for data, drafts, evidence, and outputs.

Do not mix the two.

## Recommended Paper Project Layout

```text
paper-project/
├── data/
├── stata/
├── results/
├── journal_samples/
│   ├── reference_cn.docx
│   └── reference_en.docx
├── literature/
│   ├── theory/
│   ├── variable_measurement/
│   └── benchmark_papers/
├── zotero/
├── drafts/
│   ├── cn/
│   │   ├── paper_cn.md
│   │   └── paper_cn.docx
│   └── en/
│       ├── paper_en.md
│       └── paper_en.docx
├── tables/
├── figures/
├── logs/
│   ├── tooling-check.md
│   ├── word-export-log.md
│   ├── literature-pool.md
│   ├── citation-plan.md
│   ├── target-journal-style-profile.md
│   ├── stata-mcp-inspection.md
│   ├── empirical-evidence-map.md
│   └── variable-measurement-evidence-map.md
└── versions/
```

## Folder Roles

- `data/`: raw or processed data provided by the user
- `stata/`: Stata scripts, logs, export helpers, and related notes
- `results/`: exported model outputs, summaries, and evidence snapshots
- `journal_samples/`: style reference papers supplied by the user, plus optional `reference_cn.docx` and `reference_en.docx` templates for Pandoc Word export
- `literature/`: theory references, variable measurement literature, benchmark papers, or imported bibliographic packages
- `zotero/`: citekey lists, exported bibliography files, or MCP sync artifacts
- `drafts/`: bilingual main manuscripts
- `tables/`: table source files or final display tables
- `figures/`: figures used in the manuscript
- `logs/`: writing-session notes, validation logs, tooling checks, literature pools, citation plans, target-journal style profiles, Stata MCP inspection notes, evidence maps, or conversion logs such as `tooling-check.md`, `word-export-log.md`, `literature-pool.md`, `citation-plan.md`, `target-journal-style-profile.md`, `stata-mcp-inspection.md`, `empirical-evidence-map.md`, and `variable-measurement-evidence-map.md`
- `versions/`: manual snapshots when Git is unavailable

## Initialization Actions

When asked to initialize a paper project:

1. Create the structure if it does not exist.
2. Create empty or starter Markdown drafts if the user wants them.
3. Check whether Git is available.
4. If Git is available, suggest repository initialization and milestone commits.
5. If Git is unavailable, offer the three approved options from the skill rules.

## Boundary Rules

- Never copy actual confidential datasets into the reusable skill folder.
- Never ship real target-journal PDFs with the skill itself.
- Never embed real regression outputs as examples in the skill.
- Only include templates, checklists, and workflow instructions in the skill.
- Treat reference docx files as optional templates in the paper project, not as required materials.
