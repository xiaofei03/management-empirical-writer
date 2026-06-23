# Stata MCP Workflow

## Purpose

Stata MCP is used to help inspect empirical materials in Stata-based research projects, including `.dta`, `.do`, `.log`, `.smcl`, regression outputs, variable labels, summary statistics, and model commands.

## When to Use Stata MCP

Use Stata MCP when:

- The user provides Stata `.dta` files.
- The user provides `.do` files and wants the AI to understand variable construction or model specification.
- The user provides Stata logs or regression outputs.
- The user asks the AI to inspect sample years, panel structure, missing values, variable labels, fixed effects, clustering levels, or model commands.
- The user asks for an empirical evidence map before paper drafting.

## What to Inspect

When available, inspect:

### Dataset structure

- number of observations
- number of variables
- panel identifier
- time identifier
- sample years
- firm identifiers
- industry identifiers
- region identifiers
- duplicate observations
- missing values

### Variable metadata

- Stata variable names
- variable labels
- value labels
- variable types
- user-defined variable construction
- matched control-variable reference, if any

### Do-file logic

- data cleaning
- sample restrictions
- winsorization
- variable construction
- fixed-effect setup
- regression commands
- output commands
- table names or result file names

### Empirical models

- dependent variable
- independent variable
- mediators
- moderators
- controls
- fixed effects
- clustering level
- model type
- estimation command, such as `reg`, `xtreg`, `reghdfe`, `ivreghdfe`, `xtabond`, `logit`, `probit`, `psmatch2`, `did`, and related commands

### Empirical table roles

- descriptive statistics
- correlation matrix
- baseline regression
- robustness checks
- mechanism tests
- heterogeneity analysis
- endogeneity treatment
- further analysis
- appendix or supplementary analysis

## Safety and Integrity Rules

- Do not modify the original dataset unless the user explicitly asks for transformation.
- Prefer read-only inspection.
- Do not overwrite `.dta`, `.do`, `.log`, `.xlsx`, `.docx`, `.tex`, or `.rtf` files.
- Do not fabricate regression results.
- Do not infer significance if the table does not report coefficients, standard errors, t-statistics, p-values, or significance stars.
- Do not silently change variable definitions.
- If the Stata MCP output conflicts with user notes, report the discrepancy and ask for confirmation.
- If Stata MCP is unavailable or fails, fall back to reading user-provided tables, logs, code snippets, and documentation.
- Keep a record of what was inspected and what could not be inspected.

## Output

The main output of the Stata MCP workflow is:

```text
logs/stata-mcp-inspection.md
logs/empirical-evidence-map.md
```

`stata-mcp-inspection.md` records inspection steps and tool availability.

`empirical-evidence-map.md` records the structured understanding of data, variables, models, and result tables.
