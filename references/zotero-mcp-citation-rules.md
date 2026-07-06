# Zotero and MCP Citation Rules

Use this reference whenever the project involves Zotero, citekeys, BibTeX, or an MCP citation workflow such as cite-rag-mcp.

## Core Principle

Citation integrity is mandatory. References must be traceable, correctly identified, and tied to specific claims.

## Mandatory Rules

- Use Zotero citekeys for in-text citation placeholders when the project is configured that way.
- If the final Word deliverable is expected to preserve Zotero or citation fields, do not use a plain export path that flattens those fields into ordinary text.
- Never fabricate a citekey.
- Never fabricate a bibliographic record to fill a gap.
- Newly found papers must be imported into Zotero or the approved bibliography workflow before entering the manuscript.
- User-provided core references take precedence over ad hoc web-discovered supplements.
- The Zotero or MCP workflow should support both literature pool construction and gap-filling search.
- Literature pool construction should happen before drafting.
- Gap-filling search during drafting should be narrow and purpose-driven.
- Newly retrieved references must be added to Zotero or MCP and assigned citekeys before citation.
- Zotero or MCP literature retrieval should help build a 60 to 80 reference pool by default.
- Retrieval should prioritize high-quality English references, especially UTD24, FT50, ABS high-ranking journals, target-journal recent papers, and field-leading English journals.
- Writing-critical references must be imported into Zotero or MCP and have valid citekeys before drafting.
- PDF files or full-text notes should be attached or linked for benchmark papers, variable measurement literature, core theory references, and method or identification references.
- Metadata-only references may remain in the candidate pool, but must not be used for detailed measurement or theoretical claims without user confirmation.
- Do not add weakly related references just to reach 60 to 80 references. Relevance and quality remain mandatory.

## Formal Word Delivery Rule

When the manuscript is delivered as a Word file and the project uses citekeys or citation fields:

- run Zotero or citation-backend preflight before citation-aware export
- export through the approved citation-aware workflow first
- if Word post-processing is required, re-audit the resulting DOCX after post-processing
- do not approve final delivery if citation fields disappeared during export or post-processing

Minimum audit markers for Zotero-based Word outputs:

- `ADDIN ZOTERO_ITEM`
- `CSL_CITATION`
- real Word field structure such as `w:fldChar` and `w:instrText`
- no visible unresolved citekey placeholders such as `[@...]` in body text
- a non-empty bibliography/reference list consistent with the de-duplicated citekey set

Equivalent markers may be used only if the project has a different approved citation workflow.

Do not treat marker strings alone as a successful live-citation audit. Zotero metadata can survive as plain XML text while the visible manuscript still shows citekeys or the reference list remains empty. Formal delivery must fail closed in that situation.

## Zotero Preflight and Recovery Rule

Use this rule before formal Word delivery whenever the project depends on Zotero live citation fields.

Required checks:

1. Confirm Zotero is installed or locatable.
2. Launch Zotero automatically if it is not running.
3. Wait until Zotero's local connector or approved MCP backend is reachable.
4. If a target collection key is known, open it through a `zotero://select/.../collections/...` URI.
5. If the collection is still not available, use the `computer-use` plugin for one GUI recovery attempt to focus Zotero and select the target collection.
6. If the connector, collection, Better BibTeX, or MCP citation workflow still fails, stop and report an export-blocking error.

Recommended helper:

```bash
python3 "$HOME/.codex/skills/chinese-word-pro/scripts/zotero_preflight_recover.py" \
  --collection-key "<COLLECTION_KEY>" \
  --timeout 60
```

For group libraries, add `--group-id "<GROUP_ID>"`. If a project has an explicit Zotero select URI, use `--select-uri "zotero://select/..."`.

If Zotero state was recently unstable or if new references were added, also require a tiny live-citation smoke export and inspect it with `--smoke-docx` before overwriting final manuscripts.

Failure rule:

- If Zotero cannot be opened or the citation backend cannot be reached, do not attempt a plain Pandoc substitute for formal delivery.
- If new references exist and live citation-field generation fails, do not use an old Word-file fallback as the final manuscript.
- If only existing citation fields are being preserved and no new references are introduced, a citation-safe structural fallback may be used only after explicitly auditing that live fields remain present.

## Pre-Drafting Citation Routine

Before drafting a chapter:

1. List the intended references for the chapter.
2. For each reference, state its role:
   - theory anchor
   - hypothesis support
   - measurement precedent
   - empirical comparison
   - mechanism support
   - discussion or implication support
3. Verify whether each item has a valid citekey.
4. If citekeys are missing, stop and ask for Zotero or MCP completion.

Suggested pre-drafting list:

```markdown
## Planned Chapter References
- `citekey-a`: theory anchor for ...
- `citekey-b`: evidence precedent for ...
- `citekey-c`: mechanism support for ...
```

## Post-Drafting Citation Audit

After drafting a chapter, produce a citation audit.

Minimum audit contents:

- Citekey
- Short reference label if available
- Claim or paragraph supported
- Function in argument
- Whether the use is direct support, contrast, or background
- Any unresolved citation gap

Suggested audit structure:

```markdown
## Citation Audit
- `citekey-a`
  - supports:
  - role:
  - notes:
- `citekey-b`
  - supports:
  - role:
  - notes:
```

## Missing Citekey Rule

If a needed source lacks a citekey:

- Do not draft it as if the citation is settled
- Mark it as pending
- Ask the user to add it through Zotero or the relevant MCP flow

Suggested wording:

`Pending citation: source identified but no valid citekey available yet.`

## Claim Discipline

- Do not attribute a claim to a paper you have not verified
- Do not cite a paper as direct evidence if it only provides theory background
- Do not inflate novelty by selectively omitting close prior work
- Do not use a reference outside its actual topic or method scope

## Chapter Completion Rule

A chapter draft is not fully complete until:

- its planned references have been reviewed,
- its in-text citations are traceable, and
- its citation audit has been produced.
