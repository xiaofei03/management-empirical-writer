# management-empirical-writer

`management-empirical-writer` is a reusable Codex skill for empirical paper work in management, strategy, innovation, governance, digital transformation, ESG, and adjacent business-research domains.

It is designed for projects that need:

- bilingual Chinese and English manuscript maintenance
- empirical-evidence-grounded drafting
- citation-safe writing with Zotero or MCP citekeys
- Markdown-first source management
- Word submission packaging with explicit safety gates

## What This Skill Does

This skill is the manuscript workflow controller.

It helps the user:

- initialize a paper project structure
- inspect readiness before drafting
- align theory, data, variables, and journal target
- build a literature pool before writing
- draft chapter by chapter rather than in one unsafe pass
- keep Chinese and English versions factually aligned
- package final Word deliverables without losing citation integrity
- finalize paired Chinese and English submission Word files through a gated delivery chain

This skill is not a paper-specific storage location. Do not place datasets, private PDFs, raw Stata outputs, or confidential project materials inside the skill repository.

## Best Use Cases

Use this skill when the project involves one or more of the following:

- listed-firm or panel-data empirical research
- Stata-based tables, logs, and regression evidence
- management or business-journal writing
- bilingual Chinese and English output
- Zotero or cite-rag-mcp citation workflows
- Word submission files that must remain editable and citation-safe

## Standard Project Layout

```text
paper-project/
├── data/
├── stata/
├── results/
├── journal_samples/
│   ├── reference_cn.docx
│   └── reference_en.docx
├── literature/
├── zotero/
├── drafts/
│   ├── cn/
│   │   ├── paper_cn.md
│   │   └── paper_cn.docx
│   └── en/
│       ├── paper_en.md
│       └── paper_en.docx
├── tables/
├── figures/
├── logs/
└── versions/
```

## Workflow Overview

The skill uses a gated workflow:

1. Stage 0: project initialization
2. Stage 1: cognitive alignment
3. Stage 2: writing plan
4. Stage 3: chapter drafting
5. Stage 4: consistency review
6. Stage 5: pre-submission packaging

The core rule is simple:

- draft from evidence
- confirm before expanding
- export only after checks

## Formal Delivery Safety Valve

This repository now enforces a stronger formal-delivery rule set so later projects do not repeat the same Word-export mistakes.

### Non-negotiables

- Markdown is the only source of truth for manuscript content.
- When the user identifies the Chinese Markdown file as the mother manuscript, it becomes the only editable content master by default.
- User-facing final Word files must never be produced by a plain `pandoc` overwrite alone.
- Citation-managed manuscripts must use a citation-aware export path for formal delivery.
- Word post-processing must not destroy citation fields.
- If citation audit or garbling audit fails, the main `docx` files must not be overwritten.
- Temporary Word build artifacts must be cleaned up after delivery.
- Chinese and English final DOCX files must be finalized through the same rule set unless the user explicitly requests a controlled divergence.
- Figure, table, formula, pagination, and caption repairs must not be performed by directly patching an older final DOCX and calling it the new delivery.
- In the standard bilingual four-file workflow, `paper_cn.md` is the content mother manuscript, `paper_cn.docx` is its formatted derivative, `paper_en.md` is the translation derivative, and `paper_en.docx` is the formatted derivative of the English Markdown file.
- If those four files are not synchronized to the same substantive manuscript version, formal delivery is blocked.

### Working Draft vs Formal Delivery

`working-draft` mode:

- temporary local preview
- may use `pandoc`
- must write to temporary files such as `paper_cn.tmp.docx`
- may run Word finalization with `--citation-policy warn` only when explicitly labeled as a recovery or working draft

`formal-delivery` mode:

- user-facing final manuscript delivery
- must use the citation-aware pipeline when citekeys or Word fields are expected
- must pass audits before replacing the main `docx`
- must finalize both Chinese and English outputs under one synchronized delivery pass
- must run Word finalization with `--citation-policy strict`
- must be blocked if the citation-aware export backend cannot create live citation fields
- must treat Chinese Markdown as the mother manuscript by default when the user has designated it as the base manuscript
- must not allow any of the other three manuscript files to become an independent content source

`recovery-layout` mode:

- used after file loss, broken Zotero state, or temporary citation-export failure
- may repair typography, figures, tables, formulas, captions, and pagination
- must preserve Markdown as the source of truth
- must clearly report that the resulting Word file is not a formal submission file if citation fields are absent
- must record the missing citation-field issue in the delivery log

## Formal Delivery Flow

```mermaid
flowchart TD
    A["Update Markdown master drafts"] --> B["Run citation-aware Word export to temporary DOCX"]
    B --> C["Apply submission finalization post-processing"]
    C --> D["Audit citation fields in DOCX XML"]
    D --> E["Audit garbling and replacement characters"]
    E --> F["Run render QA when available"]
    F --> G["Log export outcome"]
    G --> H["Overwrite main DOCX deliverables only if all checks passed"]
```

For Zotero-based projects, insert a preflight gate before citation-aware export:

```bash
python3 "$HOME/.codex/skills/chinese-word-pro/scripts/zotero_preflight_recover.py" \
  --collection-key "<ZOTERO_COLLECTION_KEY>" \
  --timeout 90 \
  --strict
```

If this gate opens Zotero but cannot make the collection or Better BibTeX route usable, use Computer Use once to select the collection in the Zotero UI, then rerun the preflight. If it still fails, formal delivery must stop.

### Delivery Pass Conditions

Formal delivery passes only when all of the following are true:

- source Markdown is current
- citation-aware export succeeded
- citation fields still exist after post-processing
- no `�` replacement characters appear in `word/document.xml`
- no suspicious `????` garbling markers appear
- Chinese and English outputs both pass the same finalization checks
- numbered formulas use native Word formula objects, with the formula body centered and the number right-aligned on the same formula paragraph
- table-based numbered formula containers are absent unless an explicit fallback exception is approved and logged
- figures are inline, captions are independent and numbered, and image aspect ratios are preserved
- ordinary body paragraphs are left-aligned unless a journal profile explicitly requires another layout
- academic table-cell paragraphs are centered and explicitly zero-indented at OOXML level, including `firstLineChars=0`
- the four-file package is synchronized: Chinese Markdown current, Chinese Word derived from it, English Markdown translation-equivalent to it, English Word derived from the English Markdown file
- export result is logged in `logs/word-export-log.md`

### Delivery Failure Examples

Formal delivery is blocked if any of the following occurs:

- citation fields are flattened into plain text
- Zotero or Better BibTeX cannot be reached before citation-aware export
- cite-rag-mcp or the approved citation-aware Word export route fails with a missing dependency or missing file
- new references were added but no live-citation smoke test can generate fields for them
- old variable names reappear in final Word files
- figure captions lose numbering or merge into the interpretation paragraph
- equations degrade into raw pseudo-formula strings
- formula numbers appear below, centered under, or separated from the formula body
- numbered formulas silently fall back to table-based layout without an approved exception
- figures are floating, clipped, stretched out of aspect ratio, or resized merely to fill page whitespace
- academic table cells inherit body first-line indentation or WPS-visible two-character indentation
- table-cell paragraphs are not explicitly zero-indented and centered in the final DOCX XML
- chapter-open page breaks are missing
- figures or tables drift into structurally unsafe layout

## Citation Integrity

This skill assumes citation integrity is mandatory.

- never fabricate citekeys
- never fabricate bibliography records
- never cite metadata-only records for precise theoretical or measurement claims without confirmation
- do not treat a plain-text reference list as equivalent to preserved Word citation fields

For Word outputs that are expected to preserve Zotero-style fields, the minimum XML audit markers are:

- `ADDIN ZOTERO_ITEM`
- `CSL_CITATION`

## Literature and Evidence Rules

Before drafting, the project should have:

- writing-critical literature imported or confirmed
- valid citekeys for chapter-critical references
- a literature pool strong enough to support the manuscript
- an empirical evidence map
- an empirical results inventory

The skill prioritizes:

- recent high-quality English papers
- target-journal and benchmark-paper fit
- real variable-measurement support
- explicit use or accounting of all empirical outputs

For variable measurement, this skill treats `understanding the formula` and `having publishable literature backing` as two separate requirements. A measurement statement is not ready for manuscript drafting unless both conditions are satisfied, except in the rare case of a strictly confirmed self-developed measure that is transparently logged as such.

## Tooling Expectations

At initialization, the workflow should check:

```bash
git --version
pandoc --version
python3 --version
```

If any tool is missing, the skill must not silently pretend the related workflow passed.

## Relationship to Other Skills

This skill controls the manuscript workflow.

When Word layout repair is needed, it should delegate final Word-structure normalization to `chinese-word-pro`.

That means:

- `management-empirical-writer` decides whether formal delivery is allowed
- `chinese-word-pro` repairs and verifies submission Word structure without breaking citation fields

For formula-bearing manuscripts, this delegation is not optional. Formal delivery should explicitly require the downstream `Formula Finalization Pipeline` from `chinese-word-pro`:

- formula inventory
- inline symbol renderer
- OMML equation compiler
- formula delivery audit

The expected final visual contract is now fixed: native Word formula block, formula body visibly centered, equation number on the same formula paragraph and right-aligned. Overlong formulas should be fitted or natively wrapped before any fallback is considered. Table-based numbered formula containers are controlled recovery exceptions, not a normal formal-delivery strategy.

This requirement is meant to be general across projects, so future manuscripts do not regress when they introduce new variables, longer regression equations, or additional measurement formulas.

For submission-ready Word files, delegation also includes the downstream Figure Gate and Paragraph/Table Geometry Gate:

- Figure Gate: keep figures inline, preserve image aspect ratios, center figure paragraphs, and keep figure captions independent and numbered.
- Paragraph/Table Geometry Gate: keep ordinary body paragraphs left-aligned, center captions, center academic table-cell text, vertically center cells, remove fixed row-height clipping, and explicitly write zero table-cell indentation at OOXML level.

The table-cell rule is deliberately strict because Chinese Word/WPS can reapply inherited body first-line indentation inside cells unless `left`, `right`, `firstLine`, and `firstLineChars` are all neutralized in the DOCX XML.

## Bilingual Final Delivery Route

For submission-ready bilingual manuscripts:

1. Maintain `paper_cn.md` and `paper_en.md` as the only content sources.
2. Export temporary Chinese and English DOCX files via the citation-aware route.
3. Finalize both DOCX files with the Word-finalization authority.
   This includes the `chinese-word-pro` Formula Finalization Pipeline: formula inventory, inline symbol renderer, OMML equation compiler, and formula delivery audit.
   It also includes the `chinese-word-pro` Figure Gate and Paragraph/Table Geometry Gate for inline figures, captions, paragraph alignment, and table-cell indentation.
4. Audit both outputs for citation safety and structural integrity.
5. Remove temporary exports.
6. Replace the main deliverables only after both outputs pass.

For the reusable command template used to run this chain in a real project, see:

- `references/word-export-rules.md`

For a project-level shell wrapper that only requires changing one root-path variable, start from:

- `assets/formal-delivery-template.sh`

## Common Failure Modes This Skill Is Meant to Prevent

- exporting final Word files with plain `pandoc` and losing citation fields
- overwriting the main `docx` before checking garbling
- repairing one language version but forgetting to synchronize the other
- fixing display equations but forgetting explanation paragraphs that still expose `Y_it`, `CR_it`, `Resilienceit`, `w1`, or other pseudo-formula residue
- leaving long equations as one unbroken line so the formula overflows the page or pushes the number out of place
- allowing orphan equation-number-only paragraphs to survive after finalization
- editing one of the four manuscript files independently and letting it drift away from the Chinese Markdown mother manuscript
- treating an older healthy DOCX as the new editing baseline
- drafting without enough literature or variable-measurement support
- silently omitting robustness, mechanism, heterogeneity, or endogeneity outputs
- letting Chinese and English versions drift apart in facts or findings

## Repository Contents

- `SKILL.md`: main workflow rules and gate logic
- `references/`: checklists, alignment templates, export rules, and citation rules
- `assets/`: reusable writing templates
- `agents/openai.yaml`: metadata for the skill surface
