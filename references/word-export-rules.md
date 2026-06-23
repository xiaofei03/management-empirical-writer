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

- Default to Pandoc for Markdown-to-Word export.
- If the user provides target-journal Word style templates, suggest storing them at:

```text
journal_samples/reference_cn.docx
journal_samples/reference_en.docx
```

- If a reference docx exists, export with Pandoc `--reference-doc`.
- If no reference docx exists, export with the default Word style.

## Recommended Commands

With reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.docx --reference-doc=journal_samples/reference_cn.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.docx --reference-doc=journal_samples/reference_en.docx
```

Without reference docx:

```bash
pandoc drafts/cn/paper_cn.md -o drafts/cn/paper_cn.docx
pandoc drafts/en/paper_en.md -o drafts/en/paper_en.docx
```

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
- Whether a reference docx was used
- Whether the export succeeded
- Failure reason if the export did not succeed

Suggested log format:

```markdown
## Word Export Attempt
- Time:
- Source markdown:
- Target docx:
- Reference docx used:
- Export tool:
- Success:
- Failure reason:
```

## Workflow Rule

- Update Markdown first.
- Attempt Word export second.
- Log the export attempt third.
- Only after that proceed to Git commit or manual snapshot creation.
- If export fails, keep the Markdown update and mark the Word export as pending in the chapter note or project status.
