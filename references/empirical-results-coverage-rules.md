# Empirical Results Coverage Rules

## Purpose

This file defines mandatory rules for using empirical result tables, figures, regression outputs, and evidence artifacts in empirical results chapters.

The goal is to prevent incomplete empirical writing, selective reporting, or lazy omission of user-provided evidence.

## Main Principle

Every user-provided empirical result artifact must be inventoried before drafting empirical results chapters.

Default rule:

- Use every relevant empirical table, figure, regression output, and result artifact in the manuscript body or appendix.
- If an artifact is not used, explicitly list it in an unused-results log and explain why.
- Do not silently omit endogeneity analysis, robustness checks, heterogeneity figures, mechanism tables, or further analysis results.

## What Counts as an Empirical Result Artifact

Include all of the following:

- descriptive statistics tables
- correlation matrices
- baseline regression tables
- robustness check tables
- robustness check figures
- endogeneity analysis tables
- instrumental-variable tables
- DID, PSM-DID, Heckman, placebo, or parallel-trend figures
- mechanism test tables
- mediation analysis results
- moderation analysis results
- heterogeneity analysis tables
- heterogeneity analysis figures
- further analysis tables
- further analysis figures
- appendix regression tables
- Stata logs containing regression outputs
- LaTeX, RTF, Word, Excel, PNG, JPG, PDF, or other exported empirical result files
- user-written result summaries

## Required Outputs Before Drafting Empirical Results Chapters

Before drafting empirical results chapters, generate or update:

`logs/empirical-results-inventory.md`

Required table:

| artifact_id | file_name | file_path | artifact_type | empirical_role | related_model_id | related_hypothesis | key_variables | result_summary | recommended_location | use_status | need_user_confirmation |
| ----------- | --------- | --------- | ------------- | -------------- | ---------------- | ------------------ | ------------- | -------------- | -------------------- | ---------- | ---------------------- |

Allowed `artifact_type` values:

- `table`
- `figure`
- `regression_output`
- `stata_log`
- `appendix_table`
- `appendix_figure`
- `user_summary`
- `unknown`

Allowed `empirical_role` values:

- `descriptive_statistics`
- `correlation_analysis`
- `baseline_regression`
- `robustness_check`
- `endogeneity_analysis`
- `mechanism_test`
- `moderation_test`
- `mediation_test`
- `heterogeneity_analysis`
- `further_analysis`
- `appendix`
- `diagnostic`
- `unknown`

Allowed `recommended_location` values:

- `main_text`
- `appendix`
- `online_appendix`
- `not_recommended`
- `need_user_decision`

Allowed `use_status` values:

- `planned_for_main_text`
- `planned_for_appendix`
- `planned_for_online_appendix`
- `not_used_with_reason`
- `duplicate_or_superseded`
- `unclear_need_user_confirmation`

Also generate or update:

`logs/unused-empirical-results.md`

Required table:

| artifact_id | file_name | empirical_role | reason_not_used | risk_if_omitted | user_confirmation_status |
| ----------- | --------- | -------------- | --------------- | --------------- | ------------------------ |

## Mandatory Coverage Gate

Do not draft empirical results chapters until:

- `logs/empirical-results-inventory.md` exists.
- Every provided empirical artifact has a `use_status`.
- Every unused artifact appears in `logs/unused-empirical-results.md`.
- Unused artifacts have explicit reasons.
- The user has confirmed whether important unused artifacts may be omitted.

## Default Use Rule

Default to using the artifact unless there is a clear reason not to.

Valid reasons for not using an artifact:

- exact duplicate of another included result
- superseded by a clearer or more complete result
- failed specification or abandoned test, confirmed by user
- exploratory result not intended for manuscript, confirmed by user
- inconsistent with final model design, confirmed by user
- low-quality or unreadable figure or table, requiring user replacement
- not relevant to final research question, confirmed by user

Invalid reasons:

- the assistant did not mention it
- the assistant considered it inconvenient
- the table or figure is hard to explain
- the result is non-significant but still part of the planned empirical design
- the result complicates the story

## Chapter Writing Rules

When drafting empirical analysis chapters:

- Use the empirical results inventory as the source of truth.
- Each empirical artifact planned for main text must be referenced in the appropriate chapter.
- Each artifact planned for appendix must be mentioned when relevant.
- Do not skip endogeneity analysis if the user provided endogeneity tables or figures.
- Do not skip robustness checks if the user provided robustness tables or figures.
- Do not skip heterogeneity figures or tables if the user provided them.
- Do not skip mechanism tests if the user provided them.
- Non-significant results must be reported accurately and not hidden.
- If a result is weak, mixed, or non-significant, explain it honestly.
- Do not fabricate stronger results to simplify the narrative.
- Do not move important empirical results to appendix without user confirmation.

## Figure and Table Placement Rules

For every used artifact, specify:

- table or figure number
- suggested title
- chapter or section placement
- paragraph where it should be discussed
- key conclusion
- whether it belongs in main text or appendix

Suggested placement table:

| artifact_id | manuscript_label | title | location | discussion_point | source_file |
| ----------- | ---------------- | ----- | -------- | ---------------- | ----------- |

## Coverage Audit After Drafting

After drafting empirical results chapters, generate or update:

`logs/empirical-results-coverage-audit.md`

Required table:

| artifact_id | planned_location | actually_used_location | discussed_in_text | result_interpreted_correctly | omission_risk | action_needed |
|---|---|---|---|---|---|---|

The Skill must explicitly state whether all provided empirical results were used, assigned to appendix, or listed as unused with reasons.

## Prohibited Behavior

The Skill must not:

- silently omit user-provided empirical tables or figures
- omit endogeneity analysis because it is harder to write
- omit robustness checks because they are numerous
- omit heterogeneity analysis figures because they require interpretation
- omit non-significant results that are part of the planned empirical design
- write vague statements such as `other tests are omitted for brevity` unless the user confirms
- claim a table or figure supports a conclusion without checking the result
- invent table contents or figure interpretations
- treat unused results as irrelevant without explaining why
