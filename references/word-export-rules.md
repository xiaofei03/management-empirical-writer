# Word Export Rules

Use this reference whenever the workflow needs to export Markdown drafts into Word documents.

## Core Principle

- Markdown is the master draft.
- Word is the exported submission draft.

Default draft paths:

- Chinese Markdown: `drafts/cn/paper_cn.md`
- Chinese Word: `drafts/cn/paper_cn.docx`
- English Markdown: `drafts/en/paper_en.md`
- English Word: `drafts/en/paper_en.docx`

## Preferred Export Tool

- Use two export modes and do not confuse them:
  - `working-draft` mode: temporary local inspection draft
  - `formal-delivery` mode: user-facing main Word deliverable
- Default to Pandoc only for `working-draft` mode unless the user explicitly asks for a temporary plain export.
- If the user provides target-journal Word style templates, suggest storing them at:

```text
journal_samples/reference_cn.docx
journal_samples/reference_en.docx
```

- If a reference docx exists, use it in the relevant export pipeline.
- If no reference docx exists, record that gap in the export log.

## Formal Delivery Rule

For formal-delivery mode:

- Do not directly overwrite `drafts/cn/paper_cn.docx` or `drafts/en/paper_en.docx` with a plain `pandoc` export.
- If the project uses Zotero citekeys, cite-rag-mcp, or another citation-field workflow, formal delivery must use that citation-aware export path first.
- After citation-aware export, run DOCX post-processing if layout repair is needed.
- After post-processing, re-check that citation fields still exist before overwriting the main Word files.
- If citation fields are missing after export or after post-processing, treat the export as failed.

## Recommended Commands

Working-draft mode with reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.tmp.docx --reference-doc=journal_samples/reference_cn.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.tmp.docx --reference-doc=journal_samples/reference_en.docx
```

Working-draft mode without reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.tmp.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.tmp.docx
```

Formal-delivery mode:

- Export to temporary files first.
- Run citation-aware export when the project uses citekeys or citation fields.
- Run post-processing on those temporary files.
- Audit the resulting DOCX package before replacing:
  - `drafts/cn/paper_cn.docx`
  - `drafts/en/paper_en.docx`

## Citation-Field Audit

When the project uses Word citation fields, inspect the DOCX XML before formal delivery.

Minimum pass conditions:

- The exported DOCX contains citation-field markers such as `ADDIN ZOTERO_ITEM`, `CSL_CITATION`, or the project-approved equivalent.
- The field markers remain present after Word post-processing.
- The document does not contain replacement characters such as `�`.
- The document does not contain suspicious garbling markers such as `????`.

If any of these checks fail:

- do not overwrite the main Word files
- keep the temporary output only
- log the failure reason
- report that formal delivery is blocked

## Failure Handling

If Pandoc is not available:

- Do not pretend the Word export succeeded.
- Keep Markdown as the authoritative draft.
- Ask the user to choose one of the following:
  - Install Pandoc
  - Temporarily skip Word export
  - Use another available export tool

## Export Logging

After every export attempt, record the outcome in:

```text
logs/word-export-log.md
```

Each log entry should include:

- Export time
- Source Markdown file
- Target Word file
- Export mode
- Whether a reference docx was used
- Whether the export succeeded
- Failure reason if the export did not succeed
- Whether citation-field audit passed
- Whether post-processing was applied
- Whether the main deliverable was overwritten

Suggested log format:

```markdown
## Word Export Attempt
- Time:
- Source markdown:
- Target docx:
- Export mode:
- Reference docx used:
- Export tool:
- Success:
- Failure reason:
- Citation-field audit:
- Post-processing applied:
- Main deliverable overwritten:
```

## Workflow Rule

- Update Markdown first.
- If a quick preview is needed, export a temporary working draft second.
- For user-facing Word delivery, use citation-aware formal export third.
- Apply Word post-processing fourth.
- Run citation-field and garbling audits fifth.
- Overwrite the main Word deliverable only if all formal checks passed.
- Log the export attempt after the audit outcome is known.
- Clean up temporary files before Git commit or manual snapshot creation.
- If export fails, keep the Markdown update and mark the Word export as pending in the chapter note or project status.
