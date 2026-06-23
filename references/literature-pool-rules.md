# Literature Pool and Citation Quality Rules

## Purpose

This file defines how the Skill should build, screen, and use a paper-level literature pool before chapter drafting.

The goal is to avoid random, outdated, low-quality, or overly narrow references, and to ensure that the paper has enough high-quality literature support before drafting begins.

## Main Principle

The Skill should not rely mainly on ad hoc literature search during chapter writing.

Default workflow:

1. Build a literature pool during Stage 1 or Stage 2.
2. Screen and classify the literature.
3. Import or confirm references in Zotero or MCP and obtain valid citekeys.
4. Create a chapter-level citation plan.
5. Draft chapters using the confirmed literature pool.
6. Use MCP or web search during drafting only to fill specific gaps, not as the main literature strategy.

Use this rule:

`Build the pool first; search during drafting only to fill gaps.`

## Full-Text Literature Readiness Rules

### Main Principle

The Skill should not rely only on metadata for writing-critical references.

Before entering chapter drafting, the Skill must check whether writing-critical references have PDF files or reliable full-text notes, are imported into Zotero or MCP with valid citekeys, and have been summarized and classified.

Metadata alone is acceptable for candidate-pool screening, but not sufficient for benchmark style analysis, variable measurement justification, core theoretical argumentation, or method or identification explanation.

### Four Writing-Critical Literature Categories

The following categories require PDF files or reliable full-text notes before entering Stage 2:

1. Target journal benchmark papers
   Required because the Skill must analyze writing style, section structure, word length, Research Design conventions, table presentation, citation density, and contribution framing. Metadata alone is not enough.
2. Variable measurement literature
   Required for dependent variables, independent variables, mediators, moderators, control variables, heterogeneity grouping variables, and robustness alternative variables. These sources support the Research Design chapter and variable measurement evidence map.
3. Core theory references
   Required for theory foundation, hypothesis development, mechanism explanation, research gap, and contribution framing. Classic theory references may be retained when justified, but they must still have reliable metadata, citekeys, and either PDF or full-text notes or user-confirmed summaries.
4. Method or identification references
   Required when the paper uses specific empirical strategies or measurement methods, such as DID, PSM-DID, IV, Heckman, `reghdfe`, high-dimensional fixed effects, financing constraint indices, text-based measurement, machine learning measures, mechanism tests, moderation tests, or other specialized methods. If the project only uses standard OLS or fixed-effects regressions, this category may be lighter, but any nonstandard method must have support.

### Metadata-Only References

Metadata-only references are allowed only for:

- candidate literature pool screening
- optional background references
- low-priority supplementary references
- references not yet planned for manuscript use

Metadata-only references must not be used for detailed variable measurement, benchmark paper style analysis, or precise theoretical claims unless the user explicitly confirms the source content.

## Required Literature Pool Outputs

Before drafting, generate or update:

- `logs/literature-pool.md`
- `logs/citation-plan.md`
- `logs/fulltext-literature-readiness.md`
- `logs/literature-synthesis-map.md`

If the user has a Zotero or MCP workflow, the literature pool should also indicate whether each reference has a valid citekey.

`logs/fulltext-literature-readiness.md` should track PDF or full-text readiness.

Required table:

| citekey | title | year | journal | literature_category | pdf_status | zotero_status | summary_status | required_for_stage2 | need_user_action |
| ------- | ----- | ---: | ------- | ------------------- | ---------- | ------------- | -------------- | ------------------- | ---------------- |

Allowed `pdf_status` values:

- `pdf_provided_by_user`
- `pdf_downloaded`
- `full_text_note_available`
- `metadata_only`
- `pdf_missing`
- `not_required`

Allowed `zotero_status` values:

- `imported_with_citekey`
- `imported_without_citekey`
- `not_imported`
- `duplicate_candidate`
- `needs_user_confirmation`

Allowed `summary_status` values:

- `summarized`
- `partially_summarized`
- `not_summarized`
- `not_required`

`logs/literature-synthesis-map.md` should summarize and classify the literature.

Required table:

| literature_category | citekeys | key_claims | usable_arguments | chapter_use | remaining_gap |
| ------------------- | -------- | ---------- | ---------------- | ----------- | ------------- |

## Recommended Reference Quantity

Default final reference target:

- Full paper: 60 to 80 references.
- Candidate literature pool before screening: 100 to 150 references.
- Core must-use references: 20 to 30 references.
- Variable measurement references: 10 to 20 references.
- Target journal or benchmark papers: 5 to 10 papers.

The user may override these ranges, but if no preference is given, use these defaults.

## Citation Distribution Across Chapters

The majority of references should appear in the first four chapters or sections:

- Introduction: 15 to 25 references.
- Literature Review and Theoretical Background: 25 to 40 references.
- Theory and Hypotheses: 20 to 35 references.
- Research Design: 10 to 20 references.
- Empirical Results, Robustness, Mechanism, Heterogeneity, Discussion, and Conclusion: usually only limited additional references, unless required.

Do not overpopulate empirical result sections with unnecessary literature. Later empirical sections should primarily explain results, tables, robustness, mechanisms, and implications.

## Literature Quality Rules

For English SSCI or management-journal drafts:

- Prioritize recent literature from the last 5 to 10 years.
- Prioritize UTD24, FT50, ABS high-ranking journals, target-journal recent papers, and recognized field-leading journals.
- Older references are allowed when they are classic theory, classic method, classic measurement, or foundational context references.
- Mark older references as classic or foundational when they are retained.
- Avoid relying heavily on outdated non-classic references.

For Chinese management or economics journal drafts:

- Prioritize target-journal papers, high-quality CSSCI or recognized Chinese management or economics journals, and recent field-relevant studies.
- Allow Chinese-context papers when they are important for institutional background, data setting, variable measurement, or local research conversation.
- Do not use low-relevance Chinese papers simply to increase citation count.

For both languages:

- Avoid excessive concentration in only one or two journals.
- Avoid irrelevant, low-quality, or weakly connected references.
- Avoid citation padding.
- Do not invent references, authors, years, journals, DOIs, or citekeys.

## Literature Pool Classification

Each reference in `logs/literature-pool.md` should be classified with these fields when available:

| citekey | authors | year | title | journal | journal_tier | language | topic_role | chapter_use | is_recent | is_classic | is_benchmark | is_variable_measurement_source | must_use_or_optional | notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|

Recommended `topic_role` values:

- target_journal_benchmark
- theory_foundation
- research_gap
- institutional_context
- independent_variable
- dependent_variable
- mediator
- moderator
- control_variable
- variable_measurement
- method_or_identification
- robustness
- heterogeneity
- managerial_implication
- classic_foundation

Writing-critical items should also be marked for PDF or full-text readiness, Zotero import status, and synthesis status before Stage 2.

## Citation Plan

Before drafting, generate `logs/citation-plan.md`.

It should include:

| chapter_or_section | target_reference_count | planned_citekeys | citation_purpose | missing_literature_gap |
|---|---:|---|---|---|

The citation plan must explicitly show that references are mainly concentrated in the first four chapters.

Before Stage 2, the literature synthesis map should show which references support:

- target-journal style benchmarking
- theory foundation and research gap
- hypothesis development and mechanism logic
- variable measurement and control-variable justification
- method or identification explanation
- chapter-level argument structure

## MCP and Web Search Rules

Use Zotero, MCP, or web search in two modes:

1. Literature pool construction mode:
   - Used before drafting.
   - Builds the candidate literature pool.
   - Screens for quality, recency, relevance, journal tier, and citation role.
   - Candidate literature may begin with metadata only.
   - Do not download every candidate reference by default.

2. Gap-filling mode:
   - Used during chapter drafting only when a specific literature gap is found.
   - Examples:
     - missing recent UTD24 or FT50 support for a theoretical mechanism
     - missing variable measurement reference
     - missing target-journal benchmark paper
     - missing control-variable selection justification
   - Any newly found reference must be added to Zotero or MCP and assigned a valid citekey before entering the draft.

Do not use ad hoc search as the main writing strategy.

## PDF Download Skill or MCP Integration

If the user has a separate PDF download Skill or MCP workflow, the Skill may request using it after literature screening.

Recommended sequence:

1. Build candidate literature pool using metadata.
2. Screen and classify references.
3. Mark writing-critical references.
4. Use the PDF download Skill or MCP to obtain PDFs only for writing-critical references first.
5. Import downloaded PDFs into Zotero.
6. Confirm citekeys.
7. Summarize and classify the literature.
8. Generate literature synthesis map.
9. Enter Stage 2 only after user confirmation.

Do not download every candidate reference by default.

## Readiness Gate

Do not enter chapter drafting until:

- `logs/literature-pool.md` exists or the user explicitly waives this requirement.
- `logs/citation-plan.md` exists or the user explicitly waives this requirement.
- `logs/fulltext-literature-readiness.md` exists.
- `logs/literature-synthesis-map.md` exists.
- Target journal and benchmark papers have been confirmed.
- Variable measurement literature has been mapped.
- Target journal benchmark papers have PDF or full-text notes.
- Variable measurement literature has PDF or full-text notes.
- Core theory references have PDF, full-text notes, or user-confirmed summaries.
- Method or identification references are available when nonstandard methods are used.
- Writing-critical references have valid Zotero or MCP citekeys.
- Missing literature gaps have been listed.
- Missing full-text items have been resolved or explicitly waived by the user.

If the user waives the literature-pool or full-text readiness requirement, clearly mark the draft as lower-confidence in citation quality and explain which chapters may be affected.
