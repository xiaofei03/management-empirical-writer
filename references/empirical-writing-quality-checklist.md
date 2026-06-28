# Empirical Writing Quality Checklist

Use this checklist for chapter review and full-paper review.

## Evidence Integrity

- Is every empirical claim tied to actual user-provided evidence?
- Are insignificant results described cautiously and accurately?
- Are causal claims limited to what the design can support?
- Are fixed effects, clustering, and model choices described consistently?
- Are mechanism and heterogeneity claims backed by actual analyses?
- Whether `logs/empirical-evidence-map.md` exists before drafting.
- Whether sample years, sample size, model specifications, fixed effects, and clustering levels are consistent across the evidence map, alignment report, and drafts.
- Whether every empirical claim in the draft can be traced to a regression table, Stata log, do-file, or user-confirmed result.

## Empirical Results Coverage Audit

- Whether `logs/empirical-results-inventory.md` exists before empirical chapters are drafted.
- Whether every user-provided empirical artifact has a `use_status`.
- Whether every unused artifact is listed in `logs/unused-empirical-results.md`.
- Whether omitted artifacts have explicit reasons and user confirmation status.
- Whether endogeneity analysis is included when provided.
- Whether robustness checks are included when provided.
- Whether mechanism tests are included when provided.
- Whether heterogeneity tables and figures are included when provided.
- Whether non-significant results are reported honestly when part of the planned design.
- Whether important results were not moved to appendix without user confirmation.
- Whether `logs/empirical-results-coverage-audit.md` exists after drafting empirical sections.
- Whether the final manuscript uses or accounts for all provided empirical result artifacts.

## Theory Integrity

- Is the theoretical main line stable across chapters?
- Are hypotheses aligned with the stated mechanisms?
- Are competing explanations acknowledged when needed?
- Are claims of contribution proportional to the evidence?

## Citation Integrity

- Does each chapter have a planned-reference list?
- Does each chapter have a citation audit?
- Are all citekeys valid and non-fabricated?
- Are must-cite core references present where needed?
- Are references used for the right argumentative purpose?

## Literature Quality Audit

- Whether total references are within or near the 60 to 80 target range, unless user overrides.
- Whether most references appear in the first four chapters.
- Whether recent 5 to 10 year high-quality references are prioritized.
- Whether older references are justified as classic, foundational, method, or measurement references.
- Whether references are not overly concentrated in too few journals.
- Whether each cited reference has a clear role in the argument.
- Whether any citation appears to be padding.
- Whether all citekeys are valid and traceable to Zotero, MCP, or user-provided references.
- Whether writing-critical references have PDF files or full-text notes.
- Whether writing-critical references are imported into Zotero or MCP with citekeys.
- Whether metadata-only references are not used for precise variable measurement or theoretical claims.
- Whether `logs/fulltext-literature-readiness.md` exists before Stage 2.
- Whether `logs/literature-synthesis-map.md` exists before Stage 2.
- Whether missing full-text items are resolved or explicitly waived by the user.

## Reference Quantity and Quality Audit

- Whether final references are planned at 60 to 80 by default.
- Whether the user explicitly overrode the 60 to 80 target if not followed.
- Whether high-quality English references dominate the pool.
- Whether UTD24, FT50, ABS high-ranking, target-journal, or field-leading references are prioritized.
- Whether recent 5 to 10 year references are prioritized.
- Whether older references are justified as classic or foundational.
- Whether the reference list avoids citation padding.
- Whether `logs/literature-pool.md` and `logs/citation-plan.md` are complete before drafting.

## Bilingual Consistency

- Do Chinese and English drafts ask the same research question?
- Is one language explicitly treated as the master draft and the other as an equivalent translation?
- If the user did not approve adaptation mode, do section hierarchy and section order match one-to-one after translation?
- If the user did not approve adaptation mode, do paragraph function and evidence order match across languages?
- Do they describe the same sample and years?
- Do they use the same variable meanings?
- Do they interpret the same findings consistently?
- Do formulas, hypotheses, figures, tables, and captions match in order and substance?
- Do table numbers and citation sets match?
- Do Chinese and English Markdown drafts have exactly the same de-duplicated citekey set, unless a user-approved language-specific citation exception is recorded?
- Are long or non-English citekeys normalized consistently across both language versions?

## Control Variable Consistency

- Whether the control variable mapping table has been completed.
- Whether confirmed control variable definitions are consistent across the variable table, model description, regression interpretation, Chinese draft, and English draft.
- Whether discrepancies between user-provided definitions and `references/common-control-variables.md` have been flagged and confirmed.
- Whether Chinese variable names, English variable names, Stata variable names, and table labels are synchronized.

## Journal Fit

- Whether target journal benchmark papers were confirmed before drafting.
- Whether target journal style profile exists.
- Does the Chinese draft fit its intended domestic journal style?
- Does the English draft fit SSCI or management-journal expectations?
- Is the contribution framing appropriate to the target audience?
- Are implications handled in the expected style?

## Structural Quality

- Does each chapter have a clear purpose?
- Are transitions between sections coherent?
- Is the research design described before results interpretation depends on it?
- Whether variable measurement evidence map exists before Research Design drafting.
- Whether every variable measurement statement in Research Design has citation support or a user-confirmed source.
- Whether vague expressions such as `based on this project's measurement method` were avoided.
- Whether control variable selection is supported by literature or explicitly confirmed by the user.
- Check that prohibited project-based measurement expressions do not appear.
- Check that variable measurement sentences use citekeys or confirmed sources.
- Check that control variable selection is justified with literature when available.
- Is the abstract written last and aligned with the final manuscript?

## Output Quality

- Whether Markdown remains the master draft.
- Are Markdown drafts current?
- Are Word drafts regenerated if tooling is available?
- Whether Word files were regenerated from the latest Markdown.
- Whether reference docx files were used when available.
- Whether the delivery distinguished between temporary working draft export and formal Word delivery.
- Whether formal Word delivery avoided plain `pandoc` overwrite of the main Word files.
- Whether citation-aware export was used when the project requires citekeys or Word citation fields.
- Whether bilingual citekey-set audit passed before citation-aware export.
- Whether bilingual structural audit passed before citation-aware export.
- Whether Word post-processing was completed before formal delivery.
- Whether citation-field audit passed after export.
- Whether citation-field audit passed again after post-processing.
- Whether garbling audit passed after final save.
- Whether inline explanatory variables and formulas are rendered as readable Word math or true subscript/superscript runs rather than raw strings such as `Y_it`, `CR_it`, `K_{it}`, `PR_{kt}`, or broken `z(...)`.
- Whether academic table cells have zero inherited first-line, left, and right paragraph indentation.
- Whether academic tables are centered, fit the available page width, and are not clipped by fixed row heights.
- Whether the final main Word files were overwritten only after all gates passed.
- Whether temporary DOCX artifacts were cleaned up after delivery.
- If Word export failed, is that failure clearly reported?
- Whether failed Word exports were clearly marked.
- Whether `logs/word-export-log.md` records the latest export attempt.
- Are versioning records current?

## Versioning Audit

- Whether every meaningful manuscript or log change has a Git commit.
- Whether changes without Git have timestamped snapshots in `versions/`.
- Whether commit messages clearly describe the workflow stage.
- Whether unrelated or private files were excluded from commits.
- Whether the latest draft state is recoverable from Git history or snapshots.

## Final Review Decision

Use one of these labels:

- `Ready for next chapter`
- `Ready for consistency review`
- `Ready for submission packaging`
- `Not ready; revision required`
