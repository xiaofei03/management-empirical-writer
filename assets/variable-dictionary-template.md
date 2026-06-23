# Variable Dictionary Template

Use this template inside a paper project to document variable definitions before or during drafting.

Field notes:

- `matched_reference_variable` records whether the variable maps to an entry in `references/common-control-variables.md`.
- `confirmed_definition` is the final confirmed definition to use in paper drafting.
- `definition_source` can be `user_stata_code`, `user_data_dictionary`, `regression_table`, `common_control_reference`, `user_confirmation`, or another clearly labeled source.
- `need_user_confirmation` marks whether a conflict or uncertainty still requires user confirmation.

```markdown
# Variable Dictionary

## Project Basics
- Working title:
- Sample:
- Time period:
- Unit of analysis:

## Core Variables

| Variable name | Chinese label | English label | Role | matched_reference_variable | confirmed_definition | definition_source | Expected direction | need_user_confirmation | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| iv_main |  |  | Independent variable |  |  |  |  |  |  |
| dv_main |  |  | Dependent variable |  |  |  |  |  |  |
| med_1 |  |  | Mediator |  |  |  |  |  |  |
| mod_1 |  |  | Moderator |  |  |  |  |  |  |
| ctrl_1 |  |  | Control |  |  |  |  |  |  |

## Model Notes
- Fixed effects:
- Clustered standard errors:
- Lag structure:
- Winsorization or transformation:
- Variables needing confirmation:
```
