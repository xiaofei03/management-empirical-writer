# Stata Evidence Map

This reference helps the skill interpret common empirical materials without requiring full automatic parsing.

Use this file together with:

- `references/stata-mcp-workflow.md`, which defines how to inspect Stata materials when MCP is available
- `references/empirical-evidence-map-template.md`, which defines the evidence-map output structure

Together, these three files should be used during cognitive alignment.

## Goal

Infer the study design from user-provided evidence and organize the evidence into writing-ready categories.

This file defines how to interpret empirical evidence after inspection.

## Common Input Types

- `.dta`: data files
- `.do`: Stata scripts
- `.log`: plain-text execution logs
- `.smcl`: Stata viewer logs
- `.tex`: exported tables or appendix fragments
- `.rtf`: exported tables or formatted notes
- `.xlsx`: summary tables, descriptive statistics, coding sheets
- `.docx`: research notes or exported results
- image or PDF tables

## What to Extract

### Data structure

Try to identify:

- Cross-sectional, panel, or repeated cross-section
- Firm-level, executive-level, patent-level, or other sample level
- Time range
- Industry scope
- Data source composition

### Variable construction

Try to identify:

- Main independent variable
- Main dependent variable
- Mechanism variables
- Moderator variables
- Control variables
- Transformations such as logs, lags, winsorization, or standardization

### Model structure

Try to identify:

- Estimator type
- Fixed effects
- Clustered standard errors
- Lag structure
- Interaction terms
- Instrumental variables or endogeneity designs if present

### Evidence modules

Sort results into:

- Descriptive statistics
- Correlation analysis
- Baseline regression
- Robustness checks
- Mechanism tests
- Heterogeneity analysis
- Additional or extension analyses

Stata evidence interpretation must not stop at model identification.

It must also identify all exported result artifacts and classify them by empirical role.

If result files include figures, tables, logs, images, Word tables, Excel tables, LaTeX tables, RTF files, or PDFs, they must be included in the empirical results inventory.

Ambiguous artifacts must be marked as `unknown` and require user confirmation.

## Interpretation Rules

- Treat table titles and notes as clues, not as guaranteed truth
- Prefer user-confirmed definitions over inferred ones
- Do not infer significance where the evidence is ambiguous
- Do not treat alternative specifications as baseline unless the user materials support that interpretation
- Surface uncertainty explicitly

## Writing Use

When summarizing empirical evidence for drafting:

- Link every interpretation to a specific results artifact
- Separate observed patterns from causal claims
- Flag where identification is suggestive rather than conclusive
- Keep wording consistent with the actual model design
- Use the evidence map as the structured bridge between inspected materials and the alignment report

## Minimal Evidence Summary Template

```markdown
## Evidence Summary
- Data structure:
- Sample and years:
- Main independent variable:
- Main dependent variable:
- Fixed effects:
- Cluster level:
- Baseline result summary:
- Robustness summary:
- Mechanism summary:
- Heterogeneity summary:
- Open identification concerns:
```
