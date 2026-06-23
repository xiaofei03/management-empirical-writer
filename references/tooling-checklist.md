# Tooling Checklist

Use this reference during project initialization and before workflows that depend on local tools.

## Goal

Check whether the local environment has the tools needed for version control, Word export, and optional helper workflows.

Record the results in:

```text
logs/tooling-check.md
```

## Required Checks

Check Git:

```bash
git --version
```

Check Pandoc:

```bash
pandoc --version
```

Optional check for Python:

```bash
python3 --version
```

## Decision Rules

- If a tool exists, record the detected version and its role in the workflow.
- If a tool does not exist, do not install it automatically.
- Ask the user whether to:
  - install the tool,
  - skip the tool-dependent step, or
  - use an alternative available tool or workflow.

## Permission Rule

- Never install Git, Pandoc, Python, or any other system tool without explicit user confirmation.

## Suggested Logging Format

```markdown
# Tooling Check

## Check Time
- Time:

## Git
- Command: `git --version`
- Available:
- Version:
- Notes:

## Pandoc
- Command: `pandoc --version`
- Available:
- Version:
- Notes:

## Python
- Command: `python3 --version`
- Available:
- Version:
- Notes:

## User Decisions
- Install requested:
- Skip requested:
- Alternative workflow selected:
```
