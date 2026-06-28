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

## Formal Delivery Command Template

Use this template when the project requires the full gated delivery chain for paired Chinese and English submission drafts.

If you want a reusable project-level shell wrapper where only `PROJECT_ROOT` needs to change, start from:

- `assets/formal-delivery-template.sh`

### Step 1. Citation-aware temporary export

Before export, run Zotero preflight when the project uses Zotero or Better BibTeX live citation fields:

```bash
"/Users/xiaofei/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3" \
  "$HOME/.codex/skills/chinese-word-pro/scripts/zotero_preflight_recover.py" \
  --collection-key "<ZOTERO_COLLECTION_KEY>" \
  --timeout 90 \
  --strict
```

If the target collection is in a group library, add `--group-id "<GROUP_ID>"`.

If Zotero opens but the collection is not selected or Better BibTeX still cannot export live citation fields, use `computer-use` to select the target collection in Zotero and rerun this preflight. If it still fails, stop the formal delivery. Do not use plain Pandoc as a substitute.

Chinese temporary export:

```text
mode=export_only
markdown_path=/ABSOLUTE/PROJECT/PATH/drafts/cn/paper_cn.md
output_filename=/ABSOLUTE/PROJECT/PATH/drafts/cn/paper_cn_export_tmp.docx
```

English temporary export:

```text
mode=export_only
markdown_path=/ABSOLUTE/PROJECT/PATH/drafts/en/paper_en.md
output_filename=/ABSOLUTE/PROJECT/PATH/drafts/en/paper_en_export_tmp.docx
```

When using `cite-rag-mcp`, these map to:

- Chinese: export `paper_cn.md` to `paper_cn_export_tmp.docx`
- English: export `paper_en.md` to `paper_en_export_tmp.docx`

### Step 2. Submission finalization post-processing

Recommended bundled Python path:

```bash
/Users/xiaofei/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3
```

Recommended finalization script:

```bash
~/.codex/skills/chinese-word-pro/scripts/finalize_submission_docx.py
```

Chinese finalization:

```bash
"/Users/xiaofei/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3" \
  "$HOME/.codex/skills/chinese-word-pro/scripts/finalize_submission_docx.py" \
  --input-docx "/ABSOLUTE/PROJECT/PATH/drafts/cn/paper_cn_export_tmp.docx" \
  --output-docx "/ABSOLUTE/PROJECT/PATH/drafts/cn/paper_cn.docx" \
  --lang cn \
  --mode journal_submission
```

English finalization:

```bash
"/Users/xiaofei/.cache/codex-runtimes/codex-primary-runtime/dependencies/python/bin/python3" \
  "$HOME/.codex/skills/chinese-word-pro/scripts/finalize_submission_docx.py" \
  --input-docx "/ABSOLUTE/PROJECT/PATH/drafts/en/paper_en_export_tmp.docx" \
  --output-docx "/ABSOLUTE/PROJECT/PATH/drafts/en/paper_en.docx" \
  --lang en \
  --mode journal_submission
```

### Step 3. Delivery audit expectations

Before the main deliverables are considered passed, confirm:

- citation fields remain present in both DOCX files
- no `�` or `????` markers appear in `word/document.xml`
- formulas remain native Word math objects where expected
- inline explanatory formulas and variables are not exposed as raw source-like strings such as `Y_it`, `CR_it`, `K_{it}`, `PR_{kt}`, or broken `z(...)`
- figure captions remain separate numbered paragraphs
- figures remain inline rather than floating
- table-cell paragraphs do not inherit body first-line, left, or right indentation
- academic tables are centered and fit the available page width unless the journal profile explicitly requires another layout
- abstract, chapter openings, and references obey the page-break rules

### Step 4. Temporary-file cleanup

After a successful delivery pass:

```bash
rm -f \
  "/ABSOLUTE/PROJECT/PATH/drafts/cn/paper_cn_export_tmp.docx" \
  "/ABSOLUTE/PROJECT/PATH/drafts/en/paper_en_export_tmp.docx"
```

### Practical rule

For future projects, this should be treated as the standard formal-delivery SOP:

1. update Markdown
2. citation-aware export to temporary DOCX
3. run submission finalization
4. run audits
5. clean temporary files
6. keep only the four main manuscript files in `drafts/cn` and `drafts/en`

### Shell-template note

The bundled shell template can fully automate:

- path resolution
- finalization post-processing
- temporary-file cleanup

In the current setup, the citation-aware export step still depends on the MCP route rather than a stable standalone CLI. Therefore the shell template pauses unless:

- the temporary export files already exist, or
- the user later adds a local CLI wrapper for cite-rag export and replaces the placeholder block

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
