# Project Structure

This reference explains how the skill should guide setup inside a specific paper project.

## Principle

The skill folder is reusable infrastructure. The paper project folder is the workspace for data, drafts, evidence, and outputs.

Do not mix the two.

## Recommended Paper Project Layout

```text
paper-project/
├── inputs/
│   ├── data/
│   ├── literature/
│   └── advisor/
├── analysis/
│   ├── code/
│   ├── outputs/
│   └── tables/
├── drafts/
│   ├── cn/
│   │   ├── paper_cn.md
│   │   └── paper_cn.docx
│   └── en/
│       ├── paper_en.md
│       └── paper_en.docx
├── figures/{data,config,cn,en,manifest}/
├── submission_strategy/
├── journal_versions/<journal_slug>/{profile,manuscript,figures,audits,submission}/
├── workflow/
├── _work/<run_id>/{tmp,renders,logs}/
├── versions/
└── trash_pending_delete/
```

## Folder Roles

- `inputs/`: user-provided data, literature, advisor reports, and immutable source materials
- `analysis/`: executable analysis code, formal outputs, and editable result tables
- `drafts/`: bilingual main manuscripts
- `figures/`: paired final figures, plot data, specs, and manifests
- `workflow/`: state, artifact registry, decisions, and consolidated audits
- `_work/`: ignored class-D temporary artifacts; never a formal deliverable
- `versions/`: explicitly named frozen milestones only; Git owns ordinary history

## Initialization Actions

When asked to initialize a paper project:

1. Create the structure if it does not exist.
2. Create empty or starter Markdown drafts if the user wants them.
3. Check whether Git is available.
4. If Git is available, suggest repository initialization and use Git commits as the default versioning method.
5. If Git is unavailable, offer the three approved options from the skill rules.

## Boundary Rules

- Never copy actual confidential datasets into the reusable skill folder.
- Never ship real target-journal PDFs with the skill itself.
- Never embed real regression outputs as examples in the skill.
- Only include templates, checklists, and workflow instructions in the skill.
- Treat reference docx files as optional templates in the paper project, not as required materials.
