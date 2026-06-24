# Zotero and MCP Citation Rules

Use this reference whenever the project involves Zotero, citekeys, BibTeX, or an MCP citation workflow such as cite-rag-mcp.

## Core Principle

Citation integrity is mandatory. References must be traceable, correctly identified, and tied to specific claims.

## Mandatory Rules

- Use Zotero citekeys for in-text citation placeholders when the project is configured that way.
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
