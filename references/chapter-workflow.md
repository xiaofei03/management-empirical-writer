# Chapter Workflow

Use this reference for every chapter or section drafting round.

## Principle

One chapter or one section at a time. No full-manuscript one-shot drafting.

## Required Sequence

### Step 1: Confirm chapter target

Before drafting, state:

- Chapter or section name
- Chinese target purpose
- English target purpose
- Evidence inputs to be used
- Planned references and citekeys
- Risks or unresolved issues
- Check `logs/citation-plan.md`
- Use planned citekeys first
- If a citation gap is found, use MCP or web search only for that specific gap
- Newly found references must receive valid citekeys before being cited
- Do not exceed the planned citation role or add low-relevance references only to increase citation count

### Step 2: Build chapter evidence map

For the current chapter, identify:

- Which tables or results the chapter depends on
- Which theory references the chapter depends on
- Which claims are descriptive, theoretical, or empirical
- Which statements require user confirmation before use

Before drafting any empirical analysis section, check `logs/empirical-results-inventory.md`.

Use every artifact marked `planned_for_main_text`.

Mention relevant appendix artifacts when appropriate.

If an artifact is not used, ensure it appears in `logs/unused-empirical-results.md`.

If the current chapter is `Research Design / 研究设计`, confirm all of the following before drafting:

- Confirm `logs/variable-measurement-evidence-map.md` exists
- Confirm every variable measurement has a source or is marked as needing user confirmation
- Confirm control variable selection has literature support when available
- Do not draft Research Design if variable measurement literature is missing
- Do not use vague project-based measurement wording

If the current chapter is an empirical analysis chapter such as `Empirical Results`, `Robustness Checks`, `Endogeneity Analysis`, `Mechanism Tests`, `Heterogeneity Analysis`, `Further Analysis`, or `Appendix`, confirm all of the following before drafting:

- Confirm `logs/empirical-results-inventory.md` exists
- Confirm every user-provided empirical artifact has a `use_status`
- Confirm every unused artifact appears in `logs/unused-empirical-results.md`
- Confirm important omitted artifacts have explicit reasons and user confirmation status
- Do not proceed until empirical results coverage is clear

### Step 3: Draft Chinese Markdown first pass

Chinese drafting should:

- Match Chinese management or economics writing logic
- Avoid direct translation from English
- State the practical problem clearly
- Keep evidence-grounded claims tied to actual results

### Step 4: Draft English Markdown first pass

English drafting should:

- Match SSCI or management-journal rhetoric
- Highlight research gap and contribution where appropriate
- Avoid translating the Chinese version line by line
- Preserve all empirical facts and variable meanings

### Step 5: Harmonize the two versions

Check that both versions agree on:

- Research question
- Hypothesis direction
- Variable definitions
- Regression interpretation
- Table numbering
- Citation set

### Step 6: Update Markdown deliverables

Ensure both Markdown drafts are updated:

- Update `drafts/cn/paper_cn.md`
- Update `drafts/en/paper_en.md`

### Step 7: Export or refresh Word drafts

Always update Markdown first.

Then:

- Attempt to regenerate `paper_cn.docx` from `paper_cn.md` under `references/word-export-rules.md`
- Attempt to regenerate `paper_en.docx` from `paper_en.md` under `references/word-export-rules.md`
- Write the export result to `logs/word-export-log.md`

If export tooling fails:

- Keep Markdown updates
- Report the failed export honestly
- Log the missing export step
- Mark Word export as pending in the chapter note

### Step 8: Produce chapter deliverables

For each chapter round, output:

- Chapter revision note
- Citation audit
- Version action taken

After drafting an empirical analysis section, update `logs/empirical-results-coverage-audit.md`.

Suggested revision note format:

```markdown
## Chapter Revision Note
- Chapter:
- Chinese draft updated:
- English draft updated:
- Word export status:
- Main additions:
- Claims requiring later confirmation:
- Remaining issues:
```

### Step 9: Version the work

If Git is available:

- Commit after the Word export attempt has been logged
- After every chapter or section change, commit the change if Git is available
- Each chapter revision should have its own commit unless the user explicitly asks to batch commits

If Git is unavailable:

- Create a timestamped snapshot inside `versions/` after the Word export attempt has been logged
- Snapshot at least the Markdown drafts and chapter notes
- After every chapter or section change, create a version snapshot

Do not continue to the next chapter until the current chapter change has been versioned.

Do not proceed to the next empirical section until coverage audit is complete for the current section.

## Recommended Chapter Order

1. Introduction / 引言
2. Literature Review and Theoretical Background / 文献综述与理论基础
3. Theory and Hypotheses / 理论机制与研究假设
4. Research Design / 研究设计
5. Empirical Results / 实证结果分析
6. Robustness Checks / 稳健性检验
7. Mechanism Tests / 机制检验
8. Heterogeneity Analysis / 异质性分析
9. Discussion / 讨论
10. Conclusion / 结论
11. Abstract / 摘要

## Common Failure Modes

- Writing the English version as a literal Chinese translation
- Introducing a variable meaning that is absent from the evidence
- Referring to a mechanism test before the mechanism design is actually understood
- Using citations without a clear argumentative role
- Updating one language version but not the other
