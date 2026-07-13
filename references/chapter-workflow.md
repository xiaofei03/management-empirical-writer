# Chapter Workflow

Use this reference for every chapter or section drafting round.

Before Step 1, read `references/full-manuscript-writing-rules.md`. Treat it as the primary writing authority for every substantive section. Use section-specific references only afterward for additional detail.

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
- State how the section advances the integrated `problem -> theory -> design -> evidence -> mechanism and boundary -> contribution` chain
- Identify the upstream premise the section inherits and the downstream claim it must support

### Step 2: Build chapter evidence map

For the current chapter, identify:

- Which tables or results the chapter depends on
- Which theory references the chapter depends on
- Which claims are descriptive, theoretical, or empirical
- Which statements require user confirmation before use

If the current chapter is `Introduction / 引言`, `Theoretical Background / 理论基础`, `Theory Development / 理论发展`, `Research Hypotheses / 研究假设`, or a literature-review section that directly supports hypotheses, use `references/introduction-theory-writing-rules.md` as supplementary detail after the full-manuscript rules. The chapter evidence map must additionally identify:

- the practical phenomenon and focal tension
- the research gap and its direct connection to the research question
- the theory chosen and why it is preferable to plausible alternatives
- the theory-to-variable mapping
- the planned hypothesis logic for main effects, mediation, moderation, and nonlinearity where applicable
- the citation role of each core reference, avoiding citation padding and one-shot citation piles

Before drafting any empirical analysis section, check `logs/empirical-results-inventory.md`.

Use every artifact marked `planned_for_main_text`.

Mention relevant appendix artifacts when appropriate.

If an artifact is not used, ensure it appears in `logs/unused-empirical-results.md`.

If the current chapter is `Research Design / 研究设计`, confirm all of the following before drafting:

- Use `references/research-design-results-discussion-writing-rules.md` as supplementary detail after the full-manuscript rules
- Confirm `logs/variable-measurement-evidence-map.md` exists
- Confirm every variable measurement has a source or is marked as needing user confirmation
- Confirm control variable selection has literature support when available
- Do not draft Research Design if variable measurement literature is missing
- Do not use vague project-based measurement wording

If the current chapter is an empirical analysis chapter such as `Empirical Results`, `Robustness Checks`, `Endogeneity Analysis`, `Mechanism Tests`, `Heterogeneity Analysis`, `Further Analysis`, or `Appendix`, confirm all of the following before drafting:

- Use `references/research-design-results-discussion-writing-rules.md` as supplementary detail for every main-text empirical section after the full-manuscript rules
- Confirm `logs/empirical-results-inventory.md` exists
- Confirm every user-provided empirical artifact has a `use_status`
- Confirm every unused artifact appears in `logs/unused-empirical-results.md`
- Confirm important omitted artifacts have explicit reasons and user confirmation status
- Do not proceed until empirical results coverage is clear

If the current chapter is `Discussion / 讨论`, `Theoretical Contributions / 理论贡献`, `Practical Implications / 管理启示`, `Limitations and Future Research / 局限与未来研究`, or `Conclusion / 结论`, use `references/research-design-results-discussion-writing-rules.md` as supplementary detail after the full-manuscript rules. Confirm that:

- discussion interprets two to four central findings rather than repeating regression results
- every contribution names the prior understanding, its limitation, the study's precise advance, and why it matters
- practical implications identify an actor, action, evidence-based rationale, and boundary
- unsupported findings are handled honestly
- limitations are framed as specific researchable boundaries with feasible future designs
- no new theory appears only in the ending

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
- Full argument chain from the opening problem to the final contribution
- Section boundaries and transitions across adjacent chapters

### Step 6: Update Markdown deliverables

In Markdown-first drafting mode, ensure both Markdown drafts are updated:

- Update `drafts/cn/paper_cn.md`
- Update `drafts/en/paper_en.md`

### Step 7: Export or refresh Word drafts

In Markdown-first drafting mode, always update Markdown first.

Then:

- Attempt to regenerate `paper_cn.docx` from `paper_cn.md` under `references/word-export-rules.md`
- Attempt to regenerate `paper_en.docx` from `paper_en.md` under `references/word-export-rules.md`
- Write the export result to `logs/word-export-log.md`

If export tooling fails:

- Keep Markdown updates
- Report the failed export honestly
- Log the missing export step
- Mark Word export as pending in the chapter note

If the project has entered Word-only refinement, do not use Steps 6 and 7 for localized polish. Work directly on temporary copies of the active Chinese and English Word files through `chinese-word-pro`, audit the touched regions, and treat Markdown as archival unless the user requests a full rebuild.

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
