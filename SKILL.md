---
name: management-empirical-writer
description: "Draft, revise, review and freeze a single empirical management manuscript, English by default, grounded in verified literature, Zotero citations and empirical evidence. Covers abstracts through Word-only refinement; bilingual output only when explicitly requested."
---

# Management Empirical Writer

Own the generic manuscript lifecycle. Delegate empirical computation to `empirical-analysis`, journal selection to `journal-selection-pro`, target adaptation to `journal-adapt`, and final Word geometry to `chinese-word-pro`.

## Default: one English mother

Maintain one active source file, English unless the user requests another language. Reuse the existing path; create only directories needed now. No automatic Chinese companion, anonymous manuscript, parallel Markdown/Word maintenance or submission package. After journal selection continue adapting this SAME file, with Git preserving earlier content; do not create a separate journal working copy. The active file may itself be anonymous. Any necessary unlinked upload export is a delivery artifact, never another maintained manuscript. Multiple-file synchronization requires an explicit request. This scope rule overrides all legacy bilingual/export instructions in supporting references.

## Lifecycle

`ALIGN -> PLAN -> DRAFT -> INTERNAL_REVIEW -> CONTENT_FREEZE -> WORD_ONLY -> SUBMISSION_MOTHER_FREEZE`

Use the project state managed by `academic-workflow-pro`; do not create a parallel state system.

## Entry Audit

Before writing, read the project rules and inspect:

- `Result_Index.md` and empirical-result inventory.
- Variable dictionary and measurement evidence.
- Literature pool, Zotero readiness, and citation plan.
- Active Chinese/English manuscript files and lifecycle mode.
- Target audience without prematurely adapting to an unselected journal.

Read these references as needed:

- Intake and evidence: `references/intake-checklist.md`, `references/empirical-results-coverage-rules.md`, `references/stata-evidence-map.md`.
- Abstract and Introduction: `references/abstract-introduction-writing-playbook.md`; when a reference paper is supplied, also read `references/journal-style-analysis.md`.
- Chapters 1-2 and hypothesis logic: `references/introduction-theory-writing-rules.md`.
- Research design through conclusion: `references/research-design-results-discussion-writing-rules.md`.
- Variable measurement: `references/variable-measurement-citation-rules.md` and `references/common-control-variables.md`.
- Citations: `references/literature-pool-rules.md` and `references/zotero-mcp-citation-rules.md`.
- Bilingual work: `references/bilingual-writing-rules.md`.
- Word and Git: `references/word-export-rules.md` and `references/git-versioning-rules.md`.
- Project layout: `references/project-structure.md`.

## Evidence Gate

Every empirical claim, table, and figure must map to a confirmed Evidence ID. Pending or conflicting evidence requires cautious prose and an explicit issue entry. Never infer unreported tests, samples, coefficients, thresholds, mediation, causality, or robustness.

Every variable measurement normally needs a real supporting reference and a precise construction description. An uncited original measure is allowed only when its novelty is explicit and its construction can be independently audited.

## Abstract and Introduction Gate

Before drafting either section:

1. Lock the construct definition, sample, model form, mechanisms, moderator interpretation, main findings, claim strength, and contribution boundary.
2. If a reference paper is provided, imitate only its rhetorical moves, sentence economy, and section pacing; never copy its substantive claims or unsupported sample attributes.
3. Build the Introduction from verified literature and evidence before writing the Abstract. Write or refresh the Abstract last.
4. Map every Abstract result sentence to a confirmed result and every Introduction literature-gap claim to adjacent supporting citations.
5. Keep ordinary citation groups at 1-3 sources and split larger groups by the exact claim they support.
6. For nonlinear moderation, distinguish slope, curvature, and turning-point movement. Do not infer a changed curvature from a significant linear interaction or claim a turning-point shift without the model-implied calculation.
7. Run the dedicated checklist in `references/abstract-introduction-writing-playbook.md` before delivery.

## Citation Gate

- Cite sources that support the exact claim; normal groups contain 1-3 references and should not exceed 5 without a claim-specific reason.
- Use verified Zotero items and live fields in formal Word manuscripts.
- Never flatten `ADDIN ZOTERO_ITEM`, `CSL_CITATION`, bibliography fields, or citekeys into ordinary text.
- Record item-field and bibliography-field counts before and after Word changes. Any unexpected decline stops delivery.

## Bilingual Contract (only when explicitly requested)

During Markdown-first drafting, Chinese is the content-control source and English is a full paragraph-aligned translation, not an abbreviated parallel paper. During Word-only refinement, the Chinese and English Word files are co-equal active deliverables and must remain substantively equivalent.

The pair must match in:

- sections, hypotheses, models, variables, equations, tables, figures, notes, appendices, citations, and references;
- numerical values, sample definitions, evidence strength, limitations, and contribution boundaries;
- figure data and geometry, with language and approved typography as the only default differences.

## Lifecycle Transition

Use Markdown-first mode for structural drafting and major argument reconstruction. Recommend the Word-only transition when structure, evidence, tables, figures, equations, and citation architecture are stable and repeated exports would create more risk than value.

At transition:

1. Record `content_freeze` in workflow state.
2. Produce and audit the single canonical Word manuscript; a bilingual pair is opt-in.
3. Mark Markdown as archival unless the user explicitly returns to structural drafting.
4. Use one temporary copy of the active Word manuscript under `_work/<run_id>/` for each later task.
5. Patch locally, audit touched features, then run one full final audit.

Never regenerate a mature Word manuscript from Markdown for a local wording, citation, formula, table, figure, or typography change.

## Submission Mother

Keep the pre-adaptation baseline in Git and continue editing the same active manuscript. An explicitly requested frozen milestone or actual submitted artifact may be archived read-only, but is not a second active mother. Separate journal branches require an explicit request; they are not a prerequisite for adaptation.

## Artifact Contract

- Canonical draft: one existing active path, or `manuscript.docx` for a new Word project; do not scaffold language directories unnecessarily.
- Temporary Word, probes, renders, and raw logs: `_work/<run_id>/` only.
- Durable evidence and final audits: canonical analysis/figure/workflow locations.
- One cumulative revision ledger per manuscript or journal version.
- No `_final2`, `_new`, `_revised`, round-number Word copies, or root-level process files.
- Use Git for history. Use `versions/` only for named frozen milestones.

## Review and Freeze Gates

Before declaring the generic manuscript ready:

1. Audit introduction/theory role separation and theoretical necessity.
2. Audit measurement validity, identification language, mechanism strength, and alternative explanations.
3. Audit every table/figure against `Result_Index.md`.
4. Audit citation density, metadata, and live fields.
5. Audit Chinese-English equivalence only when bilingual output was explicitly requested.
6. Invoke `chinese-word-pro` for formulas, figures, tables, paragraphs, references, and visual rendering.
7. Commit and push canonical outputs according to project rules.

## Prohibited Behaviors

- Writing from file names or memory instead of evidence.
- Citation stuffing or using a reference only to preserve bibliography count.
- Introducing unagreed theories or variable aliases.
- Overclaiming causal identification or unsupported mechanisms.
- Editing the frozen mother or another journal's version.
- Using duplicate files as version control.
- Delivering while Zotero, bilingual, or Word gates fail.
