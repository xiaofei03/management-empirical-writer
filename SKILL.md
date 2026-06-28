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
- `references/empirical-results-coverage-rules.md` for mandatory inventory, use, placement, and audit of all empirical result tables, figures, and outputs before drafting empirical analysis chapters.
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

## Final Delivery Safety Valve

For any project that maintains both Markdown and Word drafts, this skill must enforce a final-delivery safety valve.

Core rules:

- Markdown remains the only source of truth for manuscript content.
- User-facing final Word files must never be produced by a plain `pandoc` overwrite alone.
- Formal delivery requires a gated chain:
  - Markdown update
  - Zotero or citation-manager preflight and recovery when live citation fields are required
  - citation-aware Word export
  - Word post-processing
  - citation-field audit
  - garbling audit
  - render QA
  - delivery logging
  - only then overwrite the main Word deliverables
- If any gate fails, do not overwrite the main Word deliverables.
- Temporary build artifacts must not be left mixed into the manuscript root or `drafts/` after delivery.
- Chinese and English final deliverables must pass the same finalization rule set unless the user explicitly requests divergence.

When Word layout repair is needed, invoke the `chinese-word-pro` rules as the downstream formatting authority for both Chinese and English submission DOCX finalization.

When the project depends on Zotero live citation fields, run a Zotero preflight before citation-aware export. The preflight must:

- locate and launch Zotero if it is closed
- try to open the target collection through the Zotero collection URI when a collection key is known
- confirm that Zotero's local connector or approved citation backend is reachable
- run or require a minimal live-citation smoke test before full delivery when Zotero state was previously unstable
- stop the formal delivery chain if Zotero or Better BibTeX remains inaccessible

If GUI collection recovery is needed after the script opens Zotero, use the `computer-use` plugin to select the target Zotero collection. If GUI recovery still fails, report the failure and do not overwrite final Word deliverables.

Formal-delivery prohibition:

- Do not hand-edit the previously exported "healthy" Word file and treat it as the new final manuscript.
- Do not fix figures, tables, formulas, pagination, captions, or paragraph layout directly in an old delivery file and overwrite the main deliverable.
- Any such repair must re-enter the gated chain:
  - update Markdown if content changed
  - re-export to temporary DOCX
  - re-run finalization
  - re-run audits
  - only then replace the final DOCX

Delivery failure conditions:

- citation fields lost
- Zotero or the approved citation backend cannot be reached before citation-aware export
- deprecated or old variable names reintroduced
- figure captions lose numbering or merge into interpretation paragraphs
- formal equations degrade into raw pseudo-formula text
- chapter pagination rules fail
- figure or table paragraphs drift into structurally unsafe layout

If any delivery failure condition is detected, final overwrite is blocked.

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
For formal Word delivery, do not skip the Stage 5 gates.

For bilingual projects, Stage 5 is not merely export. It is bilingual submission finalization.

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
- Candidate literature may begin with metadata, but writing-critical references must be checked for full-text readiness before Stage 2.

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

Literature full-text readiness rules:

- Candidate literature screening may begin with metadata.
- Writing-critical references require PDF files, reliable full-text notes, or user-confirmed summaries before Stage 2.
- Check full-text readiness for target journal benchmark papers, variable measurement literature, core theory references, and method or identification references.
- Do not download every candidate reference by default; prioritize writing-critical references first.
- Before Stage 2, generate `logs/fulltext-literature-readiness.md` and `logs/literature-synthesis-map.md`.
- Do not enter Stage 2 until writing-critical references are imported into Zotero or MCP with valid citekeys and summarized or classified.
- Before Stage 2, confirm that the literature pool supports 60 to 80 final references by default.
- The literature pool must prioritize high-quality English references, especially UTD24, FT50, ABS high-ranking, target-journal recent papers, and field-leading English journal articles.
- If the literature pool is insufficient, outdated, too narrow, or lacks enough high-quality English references, do not begin chapter drafting.
- MCP or web search may be used to expand the literature pool before drafting.
- The user may override the 60 to 80 target or English-literature quality preference, but the override must be recorded.

If Stata MCP is available:

- Use it during cognitive alignment to inspect empirical materials in read-only mode.
- Generate `logs/stata-mcp-inspection.md` and `logs/empirical-evidence-map.md` before writing the alignment report.
- Use the empirical evidence map to inform the alignment report, variable dictionary, control variable mapping, and chapter writing plan.

If Stata MCP is unavailable:

- Proceed with uploaded tables, logs, do-files, and user explanations.
- Clearly mark any unverified items in the evidence map and alignment report.

Empirical results coverage rules:

- Before drafting empirical results chapters, create `logs/empirical-results-inventory.md`.
- Every user-provided empirical table, figure, regression output, and result artifact must be inventoried.
- Every unused artifact must be listed in `logs/unused-empirical-results.md` with explicit reason and user confirmation status.
- Do not begin empirical analysis writing until empirical results coverage is clear.

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

## Stage 5: Bilingual Submission Finalization

Stage 5 should be treated as a distinct delivery stage rather than a simple export step.

Required chain:

1. Confirm Markdown is the only source of truth
2. Export temporary Chinese and English DOCX through the citation-aware route
3. Run downstream Word finalization
4. Audit citation fields in both outputs
5. Audit OOXML garbling markers
6. Run render QA when rendering is available
7. Log the delivery result
8. Clean temporary build artifacts
9. Overwrite the user-facing DOCX files only if all checks pass

Mandatory delivery audit items:

- live citation fields remain in both Chinese and English DOCX
- native equation objects remain present where formal models exist
- raw degraded pseudo-formulas such as `Y_it`, `CR_it`, or broken `z(...)` forms are absent from delivery outputs
- figures are inline and captions are separate numbered paragraphs
- tables preserve intended three-line formatting
- abstract, chapter openings, and references use required page-break rules
- temporary DOCX artifacts do not remain mixed into `drafts/`
- Before chapter drafting, build `logs/fulltext-literature-readiness.md` and `logs/literature-synthesis-map.md`.
- Do not rely mainly on ad hoc literature search during chapter writing.
- Use MCP or web search during writing only for specific gap filling.
- Default final reference target is 60 to 80 references, with most citations concentrated in the first four chapters.
- Treat the 60 to 80 target as a hard default unless the user explicitly overrides it and the override is recorded.
- Prioritize recent 5 to 10 year high-quality references, especially UTD24, FT50, ABS high-ranking, target-journal, or field-leading English journal papers for English SSCI or management drafts, except for classic theory, classic methods, and foundational measurement references.
- Do not begin chapter drafting if the literature pool does not yet support the default quantity and quality threshold.

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
- Do not continue to the next chapter until the current chapter change has been versioned through a commit or snapshot

For empirical results, robustness, endogeneity, mechanism, heterogeneity, further analysis, and appendix sections, follow `references/empirical-results-coverage-rules.md`.

After drafting empirical analysis chapters, generate `logs/empirical-results-coverage-audit.md`.

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
- Begin chapter drafting when the literature pool does not meet the default 60 to 80 reference target, unless the user explicitly waives this requirement
- Rely on a small, outdated, low-quality, or overly narrow reference pool for manuscript drafting
- Fill the reference list with citation padding or weakly related references
- Silently omit user-provided empirical results, tables, figures, or regression outputs
- Omit endogeneity, robustness, mechanism, or heterogeneity results without explicit reason and user confirmation
- Move important results to appendix without user confirmation

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
