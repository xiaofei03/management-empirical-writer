# management-empirical-writer

`management-empirical-writer` is a reusable ChatGPT Skill project for planning, drafting, revising, and reviewing empirical papers in management and related business-research domains.

## Positioning

- This skill is a general tool and should be stored separately from any specific paper project.
- Specific paper materials should not be placed inside the skill folder.
- Do not store datasets, Stata outputs, journal sample PDFs, private literature files, or real regression tables in this skill.

## Core Capabilities

- Cognitive alignment before drafting
- Bilingual Chinese and English empirical paper drafting
- Markdown as the master draft and Word as the exported submission draft
- Stata empirical-material interpretation
- Zotero or MCP citekey-based citation workflow
- Literature-pool construction and chapter-level citation planning before drafting
- Git-aware version management
- Pandoc-based Markdown-to-Word export
- Built-in common control variable reference

## How It Is Intended to Be Used

- Run the skill inside a concrete paper project folder.
- Use the skill to initialize project structure, perform cognitive alignment, plan bilingual drafting, and write chapter by chapter.
- Recommended workflow: cognitive alignment first, then chapter-by-chapter writing.

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
│   └── word-export-log.md
└── versions/
```

## Draft and Export Rules

- Markdown is the main working draft.
- Word is the exported submission draft.
- The skill is designed to support both Chinese and English empirical-paper drafting.
- The two language versions share the same evidence base but should not be literal translations of each other.
- `journal_samples/reference_cn.docx` and `journal_samples/reference_en.docx` are optional Word style templates.
- If reference docx files exist, the skill should prefer Pandoc export with `--reference-doc`.
- If reference docx files do not exist, the skill should export with the default Word style.
- If Pandoc is unavailable, the skill must not pretend that Word export succeeded.

Recommended export commands with reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.docx --reference-doc=journal_samples/reference_cn.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.docx --reference-doc=journal_samples/reference_en.docx
```

Recommended export commands without reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.docx
```

## Tooling Checks

At project initialization, the skill should check:

```bash
git --version
pandoc --version
python3 --version
```

- Git is used for version management.
- Pandoc is used for Markdown-to-Word export.
- Python is optional and may later be used for parsing Stata logs, tables, or generating helper files.
- The skill must not install any tool without explicit user confirmation.
- Tooling check results should be recorded in `logs/tooling-check.md`.

## Stata MCP and Evidence Map

- If Stata MCP is available, the skill can use it during cognitive alignment to inspect Stata empirical materials in read-only mode.
- Stata MCP may help inspect `.dta`, `.do`, `.log`, `.smcl`, regression outputs, variable labels, sample years, panel structure, fixed effects, clustering levels, and model commands.
- The Stata MCP workflow should generate:
  - `logs/stata-mcp-inspection.md`
  - `logs/empirical-evidence-map.md`
- The empirical evidence map is a structured bridge between inspected empirical materials and the alignment report.
- The evidence map is not a substitute for user confirmation.
- Recommended workflow order:
  1. inspect empirical materials when possible
  2. generate empirical evidence map
  3. generate alignment report
  4. ask the user to confirm
  5. only then begin chapter drafting
- If Stata MCP is unavailable or fails, the skill should fall back to user-provided tables, logs, do-files, and explanations, and clearly mark unverified items.

## Empirical Results Coverage

- The skill inventories all empirical result artifacts before drafting empirical analysis chapters.
- User-provided empirical tables, figures, and regression outputs are used by default in the main text or appendix.
- Any unused empirical result must be listed with a reason in `logs/unused-empirical-results.md`.
- The skill should not silently omit endogeneity, robustness, mechanism, heterogeneity, or further analysis results.

## Control Variable Reference

- `references/common-control-variables.md` is a built-in general reference rather than a mandatory variable specification.
- In any specific paper project, the user-provided Stata code, data dictionary, and regression tables remain the primary source of truth.
- If the built-in control-variable reference conflicts with project-specific evidence, the skill must surface the discrepancy and ask the user to confirm the intended definition.

## Literature Pool and Citation Quality

- Candidate literature screening can start from metadata.
- Writing-critical references require PDFs or full-text notes before drafting.
- The skill prioritizes downloading or importing PDFs for benchmark papers, variable measurement literature, core theory references, and method or identification references.
- The skill does not download every candidate reference by default.
- Before drafting, the skill should generate `logs/fulltext-literature-readiness.md` and `logs/literature-synthesis-map.md`.
- The skill builds a literature pool before drafting.
- The skill enforces a default 60 to 80 final reference target.
- The skill prioritizes high-quality English references, especially UTD24, FT50, ABS high-ranking, target-journal, and field-leading journal papers.
- The skill should not start drafting until the literature pool and citation plan are sufficient.
- Recent, high-quality references are prioritized, while classic references are allowed when justified.
- MCP or web search during writing is for gap filling, not the main citation strategy.

## Versioning

- Every meaningful manuscript or project-log change should be committed with Git by default.
- If Git is unavailable, the skill uses timestamped snapshots under `versions/`.

## Included Files

- `SKILL.md`: core workflow and guardrails
- `agents/openai.yaml`: UI metadata
- `references/`: process guides, checklists, and writing rules
- `assets/`: reusable drafting templates
