# Bilingual Writing Rules

Use this reference whenever the skill maintains both Chinese and English drafts.

## Goal

For bilingual manuscript projects, maintain one master manuscript and one translated manuscript by default.

Default authority:

- The Chinese draft is the master manuscript when the user identifies the Chinese version as the base.
- The English draft is an equivalent translation, not an independently rewritten paper.
- Only language differs; substantive content must remain aligned.

Language-specific journal style may shape wording, syntax, and academic idiom, but it must not change the content architecture unless the user explicitly approves a separate English adaptation mode.

## Non-Negotiable Consistency Rules

The Chinese and English drafts must agree on:

- Research question
- Theoretical logic
- Hypothesis direction
- Section and subsection structure
- Paragraph function and paragraph order
- Data facts
- Sample description
- Variable meanings
- Model specification
- Fixed effects
- Clustering level
- Regression interpretation
- Formula set and formula order
- Figure and table set, numbering, order, and captions
- Table numbering
- Citation set

For citation-managed bilingual manuscripts, `Citation set` means the two Markdown source files must have exactly the same de-duplicated citekey set by default. Citation placement should correspond to the same claim or paragraph function in both versions. Different citation frequency, sentence placement, and rhetorical pacing are not allowed in strict translation mode unless the user explicitly approves an adaptation exception. Any citekey that appears only in one language version is a bilingual consistency failure unless the user explicitly approves a language-specific reference exception and the exception is recorded in the delivery log.

## Translation Mode vs Adaptation Mode

Default mode is strict translation mode.

Strict translation mode:

- Preserve the master draft's section structure, paragraph sequence, evidence order, citation set, figure/table placement, formulas, hypotheses, and claims.
- Translate paragraph by paragraph or block by block.
- Polish English into fluent journal-style academic prose without adding, deleting, or rearranging substantive content.
- Do not shorten the English draft merely because English journals prefer tighter prose unless the Chinese master draft is revised first.
- Do not add English-only citations, claims, limitations, or implications.

Adaptation mode:

- May adjust pacing, emphasis, section sequence, and rhetorical framing for a target journal.
- Requires explicit user approval before work begins.
- Requires a bilingual divergence log explaining what changed and why.
- Still must preserve data facts, hypotheses, models, tables, figures, and empirical interpretations unless the user approves a substantive rewrite.

## Translation Quality Rules

Avoid these failure modes:

- Treating the English draft as a separate paper with independent structure
- Compressing or expanding the English version without updating the Chinese master draft
- Adding English-only citations or removing Chinese-version citations
- Moving figures, tables, formulas, hypotheses, or result interpretations to different sections
- Carrying Chinese discourse markers directly into English
- Flattening English contribution framing into generic Chinese prose

## Recommended Workflow

1. Confirm which language is the master draft.
2. Finalize the master draft content first.
3. Translate the master draft paragraph by paragraph or block by block.
4. Preserve heading hierarchy, figure/table order, formula order, hypotheses, and citations.
5. Polish the translated version for target-journal academic idiom without changing substance.
6. Run bilingual structural, citation-set, and evidence-order audits before Word export.
7. Resolve mismatches immediately.

## Mismatch Checklist

Check for these common problems:

- A hypothesis appears in one language but not the other
- Heading hierarchy or section order differs without an adaptation log
- Paragraph-level claim order differs without an adaptation log
- A coefficient is interpreted differently across languages
- A variable name is translated inconsistently
- A citekey appears in only one language version without a recorded user-approved exception
- A figure, table, equation, or hypothesis appears in only one language version
- Policy implications appear in Chinese without corresponding evidence in English
- The English draft claims theoretical contribution more strongly or differently than the master draft supports

## Bilingual Citation-Set Audit

Before formal Word delivery, compare the de-duplicated citekeys in the Chinese and English Markdown files.

Pass condition:

- Chinese and English citekey sets are identical.
- Citation placement corresponds to the same claim or paragraph function in both versions.

Failure handling:

- If one side has missing citekeys, revise the corresponding manuscript so the same reference pool supports both versions.
- Do not pad citations mechanically; place missing references only where they support the relevant claim.
- Normalize citekey spelling before export, especially for long Chinese-language citekeys.
- If the user explicitly wants language-specific references, record the approved exception in `logs/citation-plan.md` or the delivery log.
- Without a recorded exception, citation-set mismatch blocks formal Word delivery.

## Bilingual Structural Audit

Before formal Word delivery, compare the two Markdown source files.

Pass conditions:

- Heading levels and heading order match one-to-one after translation.
- Figure, table, formula, and hypothesis order match one-to-one.
- Empirical result paragraphs discuss the same model, coefficient direction, significance level, and interpretation.
- Discussion, implications, limitations, and conclusion contain the same substantive claims.

Failure handling:

- If the English version has been independently compressed or expanded, rebuild it from the Chinese master draft rather than patching isolated paragraphs.
- If the target journal requires a different English structure, ask the user to approve adaptation mode before diverging.

## Abstract Rule

Write the abstract last. The abstract must reflect the final aligned state of:

- research question
- design
- main findings
- contribution
- implications
