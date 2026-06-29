# Variable Measurement Citation Rules

- Before drafting the Research Design chapter, build a variable measurement evidence map.
- Every variable must have:
  - variable role
  - Stata variable name
  - Chinese name
  - English name
  - measurement definition
  - measurement source
  - citekey or literature source
  - whether the source is user-provided, Zotero or MCP retrieved, Stata code, data dictionary, or common control variable reference
  - whether user confirmation is needed
- Variables include:
  - dependent variable
  - independent variable
  - mediators
  - moderators
  - control variables
  - heterogeneity grouping variables
  - robustness alternative variables
- For control variables, explain not only the formula but also why these controls are selected, supported by literature when available.
- If a variable measurement citation is missing, mark it as missing and ask the user to provide measurement literature.
- Do not invent literature, citekeys, authors, years, or measurement sources.
- In the Research Design chapter, avoid vague phrases such as `based on this project's measurement method`. Use citation-supported academic language instead.
- If the variable is constructed from Stata code but lacks literature support, write it as user-confirmed operationalization only after asking for confirmation, and do not present it as literature-established.

## Default Measurement-Backing Rule

- By default, every publishable variable measurement statement must have literature backing for the specific operationalization, proxy, coding rule, grouping logic, or measurement formula being used.
- Understanding how a variable is computed is necessary but not sufficient. The manuscript must also identify whose measurement approach, proxy choice, or operationalization it follows unless the variable is strictly confirmed to be self-developed.
- This rule applies to:
  - dependent variables
  - independent variables
  - mediators
  - moderators
  - control variables
  - heterogeneity grouping variables
  - robustness alternative measures
- If the assistant can reconstruct the variable from code, notes, or tables but still lacks literature support, it must not write the sentence as literature-backed. It must instead mark the item as missing support or ask the user to supplement the reference.

## Self-Developed Measurement Exception

- A variable may be described without external measurement citation only when it is strictly confirmed to be a genuinely self-developed or project-specific measure.
- This exception is narrow and should be used rarely.
- Before using the exception, confirm all of the following:
  - no directly relevant measurement support is available in the user's files, Zotero, MCP workflow, or justified external search
  - the variable is not simply a renamed, shortened, or slightly modified version of an established measure
  - the user confirms that the operationalization is intentionally author-constructed or project-specific
  - the manuscript will describe the construction transparently instead of implying prior-literature endorsement
- When the exception is used:
  - do not fabricate literature support
  - do not write the sentence as if the measure were standard in prior research
  - record the exception in the variable measurement evidence map or delivery log
- If any of these conditions is uncertain, do not use the exception.

## Prohibited Research Design Wording

The following expressions are prohibited in publishable Research Design drafts unless the user explicitly asks for internal notes rather than manuscript text:

- `based on this project's measurement method`
- `according to the measurement method in this project`
- `based on our project data`
- `constructed according to this project`
- `依据本项目的测量方式`
- `根据本项目数据进行测量`
- `变量根据本研究需要构建`
- `本文结合项目实际构建变量`
- `依据本项目变量口径`
- `根据数据可得性构建`

Reason: these expressions sound like internal project notes rather than publishable academic writing.

Use citation-supported academic wording instead. Examples:

Chinese:

- `参照 XX（年份）的研究，本文采用……衡量……`
- `借鉴 XX（年份）关于……的测度方法，本文将……定义为……`
- `参考既有研究的通行做法，本文选取……作为控制变量，并按照……进行测算 [citekey]。`
- `对于控制变量，本文参考相关研究，控制企业规模、资产负债率、盈利能力、成长性和公司治理特征等因素 [citekeys]。`

English:

- `Following [citekey], we measure ... as ...`
- `Consistent with prior studies [citekeys], we operationalize ... using ...`
- `We include a set of firm-level controls commonly used in prior research, including ... [citekeys].`
- `The measurement of ... follows the approach developed by ... [citekey].`

If no valid citekey or literature source is available, the assistant must not polish the sentence as if the measurement were literature-supported. It must ask the user for measurement literature or mark the item as requiring confirmation.

If the user confirms that a variable is genuinely self-developed, the assistant may write it without an external measurement citation only after clearly distinguishing it from literature-backed variables and recording the exception.
