# Intake Checklist

Use this checklist before any body-text drafting.

## Goal

Confirm whether the project is ready for cognitive alignment and later drafting. The workflow requires four complete input groups:

1. Empirical evidence package
2. Target-journal and benchmark-paper package
3. Core theory literature package
4. Variable measurement literature package

If any group is incomplete, do not draft the paper body. Instead, return a missing-material report.

## Intake Procedure

### Step 1: Confirm project identity

Record:

- Working paper title or temporary title
- Research topic
- Intended language outputs: Chinese, English, or both
- Intended target journals, advisors, or thesis context
- Whether the user wants Markdown only or Markdown plus Word
- Whether Git is available in the paper project

### Step 2: Check empirical evidence package

Ask for or verify the presence of:

- Stata data files: `.dta`
- Stata scripts: `.do`
- Cleaning, merge, or variable-construction notes
- Variable dictionary or variable descriptions
- User-specific variable dictionary
- User-provided variable dictionary or control variable mapping table, if already available
- Materials needed for the skill to build a draft control variable mapping table during cognitive alignment, such as Stata code, variable labels, regression tables, and user notes
- Any deviations from the built-in common control variable reference
- Descriptive statistics
- Correlation analysis
- Baseline regression results
- Robustness checks
- Mechanism tests
- Heterogeneity analysis
- Additional analyses if used
- Regression tables, screenshots, logs, or exported outputs
- Notes on fixed effects and clustering choices

Readiness questions:

- Can the AI identify the sample?
- Can the AI identify the time period?
- Can the AI identify the unit of analysis?
- Can the AI identify the main variables?
- Can the AI distinguish baseline, robustness, mechanism, and heterogeneity results?

### Step 3: Check target-journal style package

Ask for or verify the presence of:

- Preferred target journal name or journal set
- 2 to 5 target-journal or benchmark papers in PDF or Word format if available
- Any explicit formatting rules from the user, advisor, or journal
- Target-journal submission guidance or word-limit information if available
- Any language preferences, such as more policy-oriented Chinese framing or more theory-oriented English framing

Readiness questions:

- Is there enough style evidence to infer section structure?
- Is there enough style evidence to infer paragraph density and contribution framing?
- Is the English target closer to management, strategy, governance, innovation, entrepreneurship, or applied economics?
- Has the user confirmed the target journal or target-journal group?

### Step 4: Check core theory literature package

Ask for or verify the presence of:

- Core theoretical references
- Core empirical references
- Literature review notes
- PDFs, BibTeX, Zotero export, or citekey list
- User-specified must-cite works
- Theory keywords or schools of thought
- User-provided core references
- Target-journal benchmark papers
- Variable measurement references
- Zotero or MCP citekeys
- Candidate literature pool, if already available
- Missing literature areas requiring MCP or web search

Readiness questions:

- Can the AI identify the main theory line?
- Can the AI identify the reference clusters for hypotheses and mechanisms?
- Are citekeys available if the project uses Zotero or MCP citation workflows?

### Literature Pool Readiness

Check whether:

- A reusable candidate literature pool already exists
- Benchmark papers for the target journal are available
- Variable measurement references are available
- Citekeys are ready or can be completed through Zotero or MCP
- Missing literature gaps have been identified before drafting

### Step 5: Check variable measurement literature package

Ask for or verify the presence of:

- Variable measurement literature folder
- Measurement support for each key variable
- Control variable selection support
- Zotero citekeys or BibTeX entries for measurement references
- If no citekeys are available, at least PDFs or a literature list for measurement references

Readiness questions:

- Can the AI identify measurement support for dependent, independent, mediator, moderator, control, heterogeneity, and robustness variables?
- Can the AI distinguish literature-supported measurement from user-confirmed operationalization?
- Can the AI build a variable measurement evidence map before Research Design drafting?

## Decision Rules

### Ready for alignment

Mark the project as ready for Stage 1 only if:

- All three input groups are present in usable form
- All four input groups are present in usable form
- There is enough evidence to identify the research design
- There is enough literature material to map theory and citations
- There is enough journal-style material to infer writing targets
- There is enough variable measurement support to draft Research Design rigorously

### Not ready for alignment

If not ready:

- Do not start drafting
- Do not pretend the missing materials are optional
- Produce a gap report with concrete missing items

Suggested gap-report format:

```text
Missing materials summary
- Empirical package: [complete / incomplete]
- Journal-style package: [complete / incomplete]
- Literature package: [complete / incomplete]
- Variable measurement package: [complete / incomplete]

Critical blockers
- ...

Nice-to-have supplements
- ...

Next user actions
1. ...
2. ...
3. ...
```

## Common Red Flags

- Only a topic idea is provided, but no results
- Only one regression table is provided, with no variable definitions
- The user asks for full drafting before the theory line is clear
- The user provides target journals but no sample papers and no stylistic preference
- References are mentioned but not provided in any usable form
- The project uses citekeys, but the citekey list is unavailable
- Variable measurement literature is missing for key variables
- Control-variable formulas are available, but selection justification is unsupported

## Output of This Step

Return one of the following:

- `Ready for cognitive alignment`
- `Not ready; missing-material checklist attached`

If variable measurement literature is incomplete, the skill may help organize the missing-measurement checklist, but it must not draft the Research Design chapter.
