---
name: management-empirical-writer
description: Use this skill when the user needs to write, plan, revise, or review an empirical paper in management, strategy, corporate governance, innovation, digital transformation, ESG, firm performance, or related business research, especially when the project is based on Stata, firm-level or listed-company data, panel data, and requires bilingual Chinese and English drafts, Markdown and Word outputs, Zotero or MCP-assisted citation workflows, and Git-aware version management.
---

# Management Empirical Writer

## Purpose

This skill supports reusable, evidence-grounded writing workflows for empirical management and business research papers.

Default scope:

- Produce and maintain both a Chinese management-journal draft and an English SSCI or management-journal draft.
- Treat Markdown as the source of truth and Word as the exported submission format.
- Keep the two language versions factually aligned while adapting rhetoric, structure, and tone to their target publication environments.

Default output files in the target paper project:

- `drafts/cn/paper_cn.md`
- `drafts/cn/paper_cn.docx`
- `drafts/en/paper_en.md`
- `drafts/en/paper_en.docx`

Read these references before acting:

- `references/intake-checklist.md` for required inputs and missing-material handling
- `references/alignment-report-template.md` for the alignment report schema
- `references/project-structure.md` for project initialization rules
- `references/chapter-workflow.md` for per-chapter writing and update sequencing
- `references/stata-evidence-map.md` for interpreting common Stata evidence artifacts
- `references/stata-mcp-workflow.md` for using Stata MCP to inspect datasets, do-files, logs, regression outputs, and model specifications.
- `references/empirical-evidence-map-template.md` for structuring the empirical evidence map before drafting.
- `references/target-journal-selection-rules.md` for selecting or confirming target journals, benchmark papers, style expectations, and word-length constraints before drafting.
- `references/variable-measurement-citation-rules.md` for measurement-source rules, citation expectations, and Research Design wording constraints.
- `references/variable-measurement-evidence-template.md` for structuring the variable measurement evidence map before Research Design drafting.
- `references/literature-pool-rules.md` for building a high-quality literature pool, controlling reference quantity, prioritizing recent UTD24/FT50 or high-quality journal articles, and planning chapter-level citation use.
- `references/common-control-variables.md` for common listed-company control variables, definitions, Stata-style variable names, bilingual naming, and heterogeneity grouping references.
- `references/word-export-rules.md` for Markdown-to-Word export rules, Pandoc usage, reference-doc handling, and export logging.
- `references/tooling-checklist.md` for checking Git, Pandoc, Python, and other local tooling before running project workflows.
- `references/journal-style-analysis.md` for target-journal style profiling
- `references/zotero-mcp-citation-rules.md` for citekey and citation-audit rules
- `references/bilingual-writing-rules.md` for Chinese and English co-drafting rules
- `references/git-versioning-rules.md` for Git and non-Git snapshot policy
- `references/empirical-writing-quality-checklist.md` for final quality checks

Use these assets when the user asks for reusable templates inside a paper project:

- `assets/variable-dictionary-template.md`
- `assets/chapter-plan-template.md`
- `assets/citation-audit-template.md`

## Workflow Overview

This skill uses a gated workflow. Do not skip gates without explicit user confirmation when the gate requires it.

Stages:

1. Stage 0: Project initialization
2. Stage 1: Cognitive alignment
3. Stage 2: Writing plan
4. Stage 3: Chapter-by-chapter drafting
5. Stage 4: Full-paper consistency review
6. Stage 5: Pre-submission packaging

Never generate the entire paper in a single pass. Work chapter by chapter or section by section.

## Stage 0: Project Initialization

When the user is working on a specific paper project, guide them to create this structure:

```text
paper-project/
├── data/
├── stata/
├── results/
├── journal_samples/
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
└── versions/
```

Project initialization rules:

- This skill itself must remain a general reusable tool and must not store paper-specific data, datasets, regression outputs, journal sample PDFs, or private literature files.
- Perform writing work in the paper project, not inside the skill folder.
- Check whether Git and Pandoc are available before proposing version control or Word-export steps.
- Git is used for version management.
- Pandoc is used for Word export.
- If Git is available, initialize or use an existing repository and commit at key milestones.
- If Pandoc is available, use it for Markdown-to-Word export under `references/word-export-rules.md`.
- If Git is not available, do not install it or modify the system environment without explicit user confirmation.
- If Git or Pandoc is not available, ask the user whether to install the tool, skip the related step, or use an alternative tool.
- If Git is unavailable, offer exactly these three options:
  - Install Git
  - Skip Git
  - Use the `versions/` folder for manual snapshots

Follow `references/project-structure.md`, `references/git-versioning-rules.md`, and `references/tooling-checklist.md` during this stage.

## Stage 1: Cognitive Alignment

Before any body-text drafting begins, require the user to provide all four material groups below.

Required material groups:

1. Complete empirical materials
2. Target journal and benchmark papers
3. Core theory references
4. Variable measurement literature

Minimum expectations:

- Complete empirical materials may include Stata `.dta`, `.do`, regression tables, result summaries, variable notes, descriptive statistics, correlation analysis, baseline regressions, robustness checks, mechanism tests, heterogeneity analysis, appendices, and related evidence.
- Target journal and benchmark papers may include the user-selected target journal, target-journal article samples, benchmark paper PDF or Word files, and journal submission-format guidance.
- Core theory references may include theoretical foundations, research-question references, hypothesis references, and mechanism references.
- Variable measurement literature may include measurement papers for each variable, definition-source files, control-variable selection references, citekeys for measurement literature, variable measurement tables, or user-organized variable literature folders.

If any of the four groups is incomplete:

- Do not enter full drafting.
- Do not fabricate missing evidence.
- Only help the user organize a missing-material checklist and next-step plan.

Use `references/intake-checklist.md` to assess readiness.

Target-journal gate rules:

- If the user has not provided target-journal benchmark papers, do not proceed to drafting.
- If no target journal has been selected, recommend candidate target journals and benchmark papers based on the paper topic, method, data type, and field.
- Ask the user to select or confirm the target journal and benchmark papers before moving to Stage 2.
- If target-journal benchmark papers are unavailable, clearly mark the style profile as incomplete and stop before drafting.

Variable-measurement gate rules:

- If variable measurement literature is missing or incomplete, do not draft the Research Design chapter.
- Every variable measurement statement in the Research Design chapter must be traceable to one of:
  - user-provided variable measurement literature
  - user-provided Stata code or data dictionary, confirmed by the user
  - built-in common control variable reference, confirmed by the user
  - Zotero or MCP returned citekey
- The Research Design chapter must not describe variable measurement using unsupported phrases such as:
  - `based on this project's measurement method`
  - `according to the measurement method in this project`
  - `依据本项目的测量方式`
  - `本文根据项目数据进行测量`
  - `变量根据本研究需要构建`

If Stata MCP is available:

- Use it during cognitive alignment to inspect empirical materials in read-only mode.
- Generate `logs/stata-mcp-inspection.md` and `logs/empirical-evidence-map.md` before writing the alignment report.
- Use the empirical evidence map to inform the alignment report, variable dictionary, control variable mapping, and chapter writing plan.

If Stata MCP is unavailable:

- Proceed with uploaded tables, logs, do-files, and user explanations.
- Clearly mark any unverified items in the evidence map and alignment report.

## Alignment Report Requirement

After receiving the materials, produce a cognitive alignment report before drafting.

The report must include at least:

- Paper topic understanding
- Restated research question
- Main theoretical line
- Data structure identification
- Research sample
- Sample years
- Unit or level of analysis
- Core independent variables
- Dependent variables
- Mediators
- Moderators
- Controls
- Fixed effects
- Standard-error clustering level
- Model specification
- Functional role of each empirical table
- Target-journal style profile
- Core literature usage map
- Recommended Chinese paper outline
- Recommended English paper outline
- Chapter-level writing plan
- Open questions requiring user confirmation

Use `references/alignment-report-template.md`.

Do not begin body-text drafting until the user has explicitly confirmed the alignment report.

## Stage 2: Writing Plan

After alignment is confirmed, create a bilingual writing plan.

Planning rules:

- The Chinese version should fit Chinese management or economics journal conventions.
- The English version should fit SSCI or management-journal conventions.
- Both versions must share the same facts, models, data, and empirical findings.
- The two versions must not be sentence-by-sentence translations of each other.
- Chinese drafting should emphasize problem orientation, theoretical mechanism, policy implications, and managerial implications when relevant.
- English drafting should emphasize research gap, theoretical contribution, identification, robustness, and managerial implications when relevant.
- Before chapter drafting, build `logs/literature-pool.md` and `logs/citation-plan.md`.
- Do not rely mainly on ad hoc literature search during chapter writing.
- Use MCP or web search during writing only for specific gap filling.
- Default final reference target is 60 to 80 references, with most citations concentrated in the first four chapters.
- Prioritize recent 5 to 10 year high-quality references, especially UTD24, FT50, or target-journal papers for English SSCI or management drafts, except for classic theory, classic methods, and foundational measurement references.

Use:

- `references/bilingual-writing-rules.md`
- `references/journal-style-analysis.md`
- `references/literature-pool-rules.md`
- `assets/chapter-plan-template.md`

## Stage 3: Chapter-by-Chapter Drafting

Draft one chapter or one section at a time.

Recommended order:

1. `Introduction / 引言`
2. `Literature Review and Theoretical Background / 文献综述与理论基础`
3. `Theory and Hypotheses / 理论机制与研究假设`
4. `Research Design / 研究设计`
5. `Empirical Results / 实证结果分析`
6. `Robustness Checks / 稳健性检验`
7. `Mechanism Tests / 机制检验`
8. `Heterogeneity Analysis / 异质性分析`
9. `Discussion / 讨论`
10. `Conclusion / 结论`
11. `Abstract / 摘要`, finalized last

For each completed chapter or section, do all of the following:

- Update the Chinese Markdown draft
- Update the English Markdown draft
- Export or refresh the Chinese Word draft
- Export or refresh the English Word draft
- Output a chapter revision note
- Output a citation audit
- If Git is available, create a commit
- If Git is not available, create a manual snapshot in `versions/`

If Word export is unavailable, preserve the Markdown update and clearly tell the user that Word export is pending. Never pretend the export succeeded.

Use `references/chapter-workflow.md` and `assets/citation-audit-template.md`.

## Zotero and MCP Citation Rules

This skill supports collaboration with Zotero-backed or MCP-assisted citation workflows, including cite-rag-mcp style systems.

Mandatory rules:

- All in-text references must use valid Zotero citekeys when the workflow is configured that way.
- Never fabricate citekeys.
- Newly discovered references from network search must be added into Zotero and assigned a citekey before entering the draft.
- Prioritize user-provided core references over supplemental network references.
- Before drafting each chapter, list the intended references and the argumentative role of each.
- After drafting each chapter, output a citation audit that maps each citekey to the claim it supports.
- If citekeys are missing, ask the user to supplement them or call the relevant MCP workflow. Do not invent them.

Read `references/zotero-mcp-citation-rules.md`.

## Stata Evidence Rules

This first version does not need to automatically parse every data artifact. It must, however, infer the research design from the materials the user provides.

Be prepared to interpret these common Stata-related materials:

- `.dta`
- `.do`
- `.log`
- `.smcl`
- `.tex`
- `.rtf`
- `.xlsx`
- `.docx`
- regression tables
- descriptive-statistics tables
- correlation tables

From these materials, identify when possible:

- Data structure
- Variable construction
- Model specification
- Fixed effects
- Clustering level
- Baseline regressions
- Robustness checks
- Mechanism tests
- Heterogeneity analysis
- Further analyses

Use `references/stata-evidence-map.md`.

## Variable Dictionary and Control Variable Rules

When identifying control variables, first consult `references/common-control-variables.md`.

Variable-mapping rules:

- Use the reference to map Stata variable names to Chinese names, English names, and formula definitions.
- Do not assume every paper must use all variables in the reference.
- Do not silently overwrite user-provided variable definitions.
- If the user's Stata code, data dictionary, regression table, or variable notes define a variable differently from `common-control-variables.md`, report the discrepancy and ask the user to confirm the intended definition.
- During cognitive alignment, include a control variable mapping table that compares user variables with this reference.
- During chapter drafting, use the confirmed variable dictionary rather than guessing variable meanings.

Treat `references/common-control-variables.md` as a reusable baseline reference, not as a mandatory specification for every project.

## Bilingual Output Rules

The default behavior is to maintain both Chinese and English drafts.

Bilingual drafting rules:

- Chinese is not a literal translation of English.
- English is not a literal translation of Chinese.
- Each version should fit its own target-journal rhetoric and section emphasis.
- The two versions must remain consistent in:
  - research question
  - theoretical logic
  - hypothesis direction
  - data facts
  - model specification
  - regression interpretation
  - table numbering
  - variable naming
  - cited literature

Read `references/bilingual-writing-rules.md`.

## Stage 4: Full-Paper Consistency Review

After chapter drafting is complete:

- Review consistency across Chinese and English drafts
- Check whether every claim is traceable to evidence or literature
- Check whether table numbering, variable names, and hypothesis references are synchronized
- Check whether journal-style requirements are consistently reflected
- Check whether citation audits cover every chapter
- Update Markdown first, then refresh Word drafts if tooling allows

Use `references/empirical-writing-quality-checklist.md`.

## Stage 5: Pre-Submission Packaging

Before submission or advisor review:

- Ensure required output files exist or clearly mark missing exports
- Prepare a short change log of the latest round
- Confirm citation integrity
- Confirm version history or snapshots are current
- Confirm unresolved issues that still need user attention

Follow `references/git-versioning-rules.md` and `references/empirical-writing-quality-checklist.md`.

## Prohibited Behaviors

This skill must not:

- Start drafting body text before cognitive alignment is complete
- Enter Stage 2 before the user confirms the alignment report
- Fabricate data, regression outputs, coefficients, significance, or empirical claims
- Describe non-significant findings as significant
- Invent references, authors, years, DOIs, or citekeys
- Change variable meaning without user confirmation
- Change the research question or theoretical mechanism without user confirmation
- Overwrite or mutate original Stata datasets or do-files during inspection
- Treat Stata MCP output as final if it conflicts with user-provided notes without asking for confirmation
- Write the Research Design chapter without a variable measurement evidence map
- Describe variable measurement without citations when citations are expected
- Replace literature-supported measurement with vague project-based wording
- Use internal project logic as a substitute for publishable measurement justification
- Generate the full paper in one shot
- Ignore target-journal style samples
- Install Git or modify the system environment without user confirmation

## File Update Principles

- Markdown is the master draft.
- Word is the exported submission draft.
- Always update Markdown before generating Word.
- Word export must follow `references/word-export-rules.md`.
- If export tooling is unavailable, keep Markdown current and report the export gap honestly.
- If Word export fails, keep Markdown as the authoritative draft and report the failure clearly.

## Git Rules

If Git is available, commit at each key milestone.

Recommended milestones:

- Project initialization
- Alignment report completion
- Writing plan completion
- Chinese chapter completion
- English chapter completion
- Citation audit completion
- Word export refresh
- Full-paper consistency review

Recommended commit message patterns:

- `init: create empirical paper project structure`
- `align: complete understanding report`
- `draft: write Chinese introduction`
- `draft: write English introduction`
- `cite: audit references for theory section`
- `format: regenerate Word drafts`

Read `references/git-versioning-rules.md` for detailed branching, commit timing, and snapshot fallbacks.
