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

## Required Literature Pool Outputs

Before drafting, generate or update:

- `logs/literature-pool.md`
- `logs/citation-plan.md`

If the user has a Zotero or MCP workflow, the literature pool should also indicate whether each reference has a valid citekey.

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

## Citation Plan

Before drafting, generate `logs/citation-plan.md`.

It should include:

| chapter_or_section | target_reference_count | planned_citekeys | citation_purpose | missing_literature_gap |
|---|---:|---|---|---|

The citation plan must explicitly show that references are mainly concentrated in the first four chapters.

## MCP and Web Search Rules

Use Zotero, MCP, or web search in two modes:

1. Literature pool construction mode:
   - Used before drafting.
   - Builds the candidate literature pool.
   - Screens for quality, recency, relevance, journal tier, and citation role.

2. Gap-filling mode:
   - Used during chapter drafting only when a specific literature gap is found.
   - Examples:
     - missing recent UTD24 or FT50 support for a theoretical mechanism
     - missing variable measurement reference
     - missing target-journal benchmark paper
     - missing control-variable selection justification
   - Any newly found reference must be added to Zotero or MCP and assigned a valid citekey before entering the draft.

Do not use ad hoc search as the main writing strategy.

## Readiness Gate

Do not enter chapter drafting until:

- `logs/literature-pool.md` exists or the user explicitly waives this requirement.
- `logs/citation-plan.md` exists or the user explicitly waives this requirement.
- Target journal and benchmark papers have been confirmed.
- Variable measurement literature has been mapped.
- Missing literature gaps have been listed.

If the user waives the literature-pool requirement, clearly mark the draft as lower-confidence in citation quality.
