# Research Design, Results, Further Analyses, and Discussion Writing Rules

Use this reference when drafting or revising the manuscript sections that explain how the study is tested, whether the predictions hold, why or when they hold, and what the findings change.

These rules apply by section function, not by fixed chapter number. A journal may combine, split, or reorder the sections.

## Contents

1. Cross-Section Logic
2. Research Design
3. Empirical Results
4. Further Analyses
5. Discussion and Conclusion
6. Shared Writing Rules
7. Final Audit

## 1. Cross-Section Logic

Maintain this division of labor:

```text
Research Design: How are the constructs measured and the hypotheses tested?
Empirical Results: Do the core theoretical predictions receive empirical support?
Further Analyses: Why, when, and under what boundaries does the relationship occur?
Discussion and Conclusion: What do the findings change in theory and practice?
```

Do not allow:

- Research Design to repeat theory or hypothesis logic.
- Empirical Results to repeat variable construction.
- Further Analyses to rerun or narrate the baseline results without a new theoretical purpose.
- Discussion to repeat regression tables or become a second results section.

Before rewriting these sections:

1. Identify the current function of every subsection and result artifact.
2. Map every empirical claim to an Evidence ID or an inventoried result artifact.
3. Identify duplicated material across sections and relocate it to the section that owns the function.
4. Preserve all verified data, models, results, and unsupported findings.
5. Do not strengthen causal, theoretical, or measurement claims beyond the evidence.

## 2. Research Design

### 2.1 Purpose and Default Structure

Answer only:

1. Where do the data come from?
2. How are the variables measured?
3. How are the hypotheses tested?

Use this default structure when it fits the target journal:

```text
Research Design
  Sample and Data
  Variable Measurement
    Dependent Variable
    Independent Variable
    Mediators
    Moderators
    Control Variables
  Model Specification
```

Add `Identification Strategy` or `Measurement Validation` only when the study contains evidence that warrants a separate subsection.

### 2.2 Sample and Data

Describe the sample in this order:

1. Research population or setting.
2. Sample period.
3. Unit and level of analysis.
4. One-to-three-sentence justification for the setting.

Describe data sources by variable category and state:

- database or source name;
- variables obtained from each source;
- matching keys and matching procedure;
- timing alignment across sources.

Report sample construction reproducibly:

```text
initial sample
-> matching rules
-> exclusion rules
-> missing-data treatment
-> outlier treatment
-> final estimation sample
```

State the initial and final sample sizes where evidence permits. Name the observations excluded, the reason, and the exact winsorization or trimming rule. Explain expected sample loss caused by fixed effects, lags, or missing model variables when relevant. Do not use `abnormal observations were deleted` as a substitute for a reproducible rule.

Check for look-ahead bias and inconsistent data periods before drafting.

### 2.3 Variable Measurement

Apply `references/variable-measurement-citation-rules.md` and require the variable measurement evidence map before drafting.

For each variable, state only:

1. What construct it represents.
2. Where the underlying data come from.
3. How it is calculated or coded.
4. What a higher value means.
5. Which literature or confirmed source supports the operationalization.

Use this pattern for core constructs:

```text
[Construct] is measured using [data source or indicator], following [prior literature].
Specifically, the measure is calculated as [formula or operational rule].
A higher value indicates [substantive meaning].
```

For a complex measure, present:

1. construct definition;
2. underlying data;
3. calculation logic and essential formula;
4. substantive interpretation.

Keep the construct logic, essential steps, necessary formula, and choice rationale in the main text. Move full dictionaries, parameters, algorithmic detail, variable lists, alternative constructions, and auxiliary figures to an appendix when appropriate.

Distinguish contribution types precisely:

- Use `develop a novel measure` only for a genuinely original method.
- Use `adapt`, `refine`, `build on`, `apply`, or `improve the operationalization` when extending or applying an existing method.
- Do not present a new application of an established method as algorithmic innovation.

Keep control-variable descriptions concise. State the measure and selection basis without deriving a separate theory for every control. Check that controls are not mediators, outcome components, post-treatment variables, or variables added only to obtain significance.

Use a variable-definition table for retrieval, not as a replacement for explaining core variables:

| Construct | Symbol | Measurement | Source |
|---|---|---|---|

### 2.4 Measurement Validation

Create a separate validation subsection only when genuine supplementary evidence exists, such as:

- convergence with an external benchmark;
- intercoder agreement;
- known-groups comparison;
- convergent or discriminant validity;
- alternative operationalizations;
- text-classification accuracy;
- factor analysis;
- survey reliability and validity.

Do not label keyword lists, network diagrams, or ordinary construction steps as strict validity evidence. Use labels such as `measurement details`, `construct operationalization`, or `supplementary measurement evidence` when appropriate.

### 2.5 Model Specification

For every main model, report:

- dependent variable;
- focal explanatory variables;
- controls;
- fixed effects;
- standard-error estimator;
- clustering level.

For nonlinear models, report the expected signs of the linear and squared terms, the turning-point calculation, whether the turning point lies within the effective data range, and preferably a formal U-shape test. Do not infer a U-shape only because one coefficient is positive and the other is negative.

For mediation, distinguish causal mediation from mechanism-consistent evidence. Stepwise regressions alone normally justify `evidence consistent with the proposed mechanism`, not proof of mediation. Consider bootstrap indirect effects, conditional indirect effects, temporal order, and nonlinear marginal effects when the design supports them.

For moderation, state which theoretical link changes, whether variables are centered, how interactions are constructed, and whether marginal effects, simple slopes, or regions of significance are tested.

### 2.6 Research Design Audit

Confirm:

- The sample can be reconstructed.
- Each core variable can be reproduced.
- Construct and operationalization are aligned.
- Indicator direction is explicit.
- Time windows are aligned and avoid look-ahead bias.
- Fixed effects and clustering match the data structure.
- Nonlinear, mediation, and moderation models match the hypotheses.
- Measurement novelty is not overstated.

## 3. Empirical Results

### 3.1 Purpose and Default Structure

Answer whether the core theoretical predictions receive empirical support. Keep mechanisms, boundary conditions, and contribution claims in their owning sections.

Use this default structure when it fits:

```text
Empirical Results
  Descriptive Statistics and Correlations
  Baseline Results
  Robustness Checks
  Endogeneity or Supplementary Tests
```

Apply `references/empirical-results-coverage-rules.md` before drafting.

### 3.2 Descriptive Statistics and Correlations

Use this subsection to establish:

1. sufficient variation in core variables;
2. plausible ranges and distributions;
3. absence or management of serious multicollinearity concerns.

Do not narrate every mean, median, minimum, and maximum. Discuss a statistic only when it is unusual, theoretically meaningful, or needed to interpret the design.

### 3.3 Baseline Results

Structure each result paragraph as:

```text
finding
-> substantive magnitude or meaning
-> link back to the theoretical prediction
```

Do not read regression tables column by column. Do not interpret every control coefficient.

Report economic or substantive significance where possible, using one or more of:

- a one-standard-deviation change;
- a shift from the 25th to the 75th percentile;
- marginal effects;
- predicted probabilities;
- the estimated turning point.

Do not call a statistically significant but substantively tiny coefficient important without qualification.

### 3.4 Nonlinear Results

For U-shaped or inverted-U relationships, report:

- directions of linear and squared terms;
- formal U-shape test when available;
- slopes at the lower and upper ends of the observed range;
- turning point and confidence interval;
- whether the turning point lies in the effective sample range;
- model-based marginal-effect or prediction figure.

Generate nonlinear figures from model predictions, not from an arbitrary hand-drawn curve.

### 3.5 Robustness and Endogeneity

Use robustness tests to address plausible alternative explanations, not to maximize table count. Relevant tests may include alternative independent or dependent variables, alternative operationalizations, necessary controls, sample exclusions, fixed effects, standard errors, construct thresholds, and time windows.

Summarize the risk each test addresses and the collective conclusion. Do not narrate every coefficient.

Distinguish robustness evidence from causal identification:

- Lagged variables, PSM, additional fixed effects, and alternative measures generally alleviate concerns.
- Natural experiments, credible DID or RDD designs, valid instruments, and external policy shocks may support stronger causal language after their assumptions pass.

Match language to identification strength. Prefer `is associated with`, `provides evidence consistent with`, and `helps alleviate concerns` when strong causal identification is absent. Avoid `proves`, `establishes causality`, and `causal effect` unless the design supports them.

For binary PSM applied to a continuous treatment, state:

- treatment threshold and its rationale;
- matching covariates;
- matching method;
- caliper;
- replacement rule;
- matching ratio;
- balance diagnostics;
- common-support assessment.

Treat PSM as additional robustness evidence unless the design justifies a stronger role.

### 3.6 Empirical Results Audit

Confirm:

- Every main hypothesis receives a clear answer.
- Prose interprets rather than recites coefficients.
- Substantive significance is reported when calculable.
- Nonlinear tests are complete.
- Robustness tests address actual risks.
- Causal language matches identification strength.
- Unsupported and nonsignificant results are reported honestly.
- Every claim agrees with its table or figure and Evidence ID.

## 4. Further Analyses

### 4.1 Purpose and Default Structure

Use further analyses to answer why the relationship occurs, when it changes, and which theoretical boundaries or alternative explanations matter.

```text
Further Analyses
  Mechanism Analyses
  Moderating Effects
  Boundary Conditions or Heterogeneity
  Additional Analyses
```

Retain only subsections with a clear theoretical function.

### 4.2 Mechanism Analyses

Do not reduce a mechanism to `X affects M and M affects Y`. Explain the organizational process represented by the mediator and why that process connects X to Y.

Use this sequence:

1. Define the mediator's theoretical role.
2. Report the X-to-M evidence.
3. Report the M-to-Y or indirect-path evidence.
4. Explain how the path bears on the theory.
5. Qualify the strength of the mechanism claim.

For multiple mechanisms, explain whether they are complementary or competing and whether they represent distinct resource, cognition, governance, behavioral, internal, or external processes. Do not merely list parallel mediators.

### 4.3 Moderation and Boundary Conditions

Explain which theoretical process the moderator changes, such as information acquisition, interpretation, monitoring, resource dependence, behavioral constraints, or environmental uncertainty.

Use this sequence:

1. Identify the affected theoretical link.
2. Report the interaction evidence.
3. Present simple slopes, marginal effects, or a region-of-significance test when appropriate.
4. Interpret how the relationship changes across moderator values.
5. State the resulting boundary condition.

Treat heterogeneity as boundary-condition analysis, not as an automatic set of subgroup regressions. Prefer theoretically meaningful sender, receiver, resource, information, institutional, capability, or uncertainty dimensions. Use ownership, size, region, or age only when they have an explicit theoretical role.

Do not infer a between-group difference from `significant in Group A but nonsignificant in Group B`. Test the coefficient difference using an appropriate method such as a bootstrap difference test, seemingly unrelated estimation, Chow test, or interaction model.

### 4.4 Exploratory Analyses

Label analyses without ex ante theoretical derivation as `exploratory`, `additional`, or `post hoc`. Do not rewrite an unexpected ex post finding as a preregistered or originally hypothesized prediction.

Do not invent a new theory only to rationalize an unsupported result. Preserve the result and discuss plausible boundaries or future tests cautiously.

### 4.5 Further Analyses Audit

Confirm:

- Every analysis answers a named theoretical question.
- Mechanisms explain why.
- Moderators explain when or through which link.
- Heterogeneity identifies a meaningful boundary.
- Group differences are formally tested.
- Exploratory analyses are labeled honestly.
- Unsupported findings remain visible.
- The section does not accumulate analyses only to add length.

## 5. Discussion and Conclusion

### 5.1 Purpose and Default Structure

Move from `what was found` to `why it matters`.

```text
Discussion and Conclusion
  Summary and Theoretical Interpretation
  Theoretical Contributions
  Practical Implications
  Limitations and Future Research
  Conclusion (optional)
```

Combine the final conclusion with the preceding subsection when the target journal or word limit favors a shorter ending.

### 5.2 Interpret the Findings

Select two to four central findings. Explain why they arise, how they relate to prior theory, whether they challenge linear, static, or single-mechanism assumptions, and what unsupported findings reveal about theoretical boundaries.

Do not repeat coefficients, significance levels, or a hypothesis-by-hypothesis checklist.

For unsupported results:

1. State the lack of support clearly.
2. Consider whether it reveals a theoretical boundary.
3. Distinguish measurement, statistical-power, design, and theory explanations.
4. Propose a future test without rewriting the current evidence.

### 5.3 Theoretical Contributions

Build every contribution as:

```text
prior understanding
-> limitation in that understanding
-> how this study changes, extends, or qualifies it
-> why the change matters
```

Retain the two or three strongest contributions. Possible contribution types include outcome boundary, mechanism, theoretical boundary, construct, measurement, and context contributions.

Avoid empty claims such as `enriches the literature`, `broadens the perspective`, `fills a gap`, or `provides a reference` unless the text specifies exactly what understanding changes, from what to what, and why.

Avoid `first` or `novel` claims unless they have been verified against the literature.

### 5.4 Practical Implications

Derive each implication directly from a supported result. Organize by actor where useful: managers, investors, customers, supply-chain partners, analysts, platforms, intermediaries, regulators, or policymakers.

For each implication, specify:

1. who should act;
2. what action to take;
3. why the evidence supports it;
4. under what conditions it applies.

Match recommendation strength to the sample, setting, and identification design. Do not infer broad institutional reform or universal policy prescriptions from evidence that cannot support them.

### 5.5 Limitations and Future Research

Frame limitations as researchable boundaries rather than a generic defect list. Consider measurement, causal identification, sample and context, temporal dynamics, mechanisms, and observability.

Write each limitation as:

```text
what the current study does
-> what remains unobserved or unresolved
-> why that boundary matters
-> how future research can address it
```

Replace vague statements such as `the sample, variables, and methods are limited` with a precise source of the limitation and a feasible future design.

### 5.6 Conclusion

Use one concise paragraph to restate the focal phenomenon, central theoretical mechanism, and most important boundary. Do not list all hypothesis results again. Do not introduce a theory that did not appear in the manuscript.

### 5.7 Discussion and Conclusion Audit

Confirm:

- The section explains what the findings change.
- Contributions identify the affected literature and precise advance.
- Unsupported findings are discussed honestly.
- Implications specify actor, action, rationale, and boundary.
- Recommendation strength matches evidence strength.
- Limitations are specific and generate testable future research.
- The ending states the core theoretical proposition concisely.
- No new theory appears only in the conclusion.

## 6. Shared Writing Rules

Use evidence-calibrated result language:

- `The results show...`
- `The findings indicate...`
- `The evidence is consistent with...`
- `The coefficient remains...`

Use theory-advancement language precisely:

- `This suggests...`
- `This extends...`
- `This qualifies...`
- `This reveals a boundary condition...`

Avoid `prove`, `demonstrate causally`, and `confirm conclusively` unless the research design warrants those claims.

Give each paragraph one main function:

```text
topic sentence
-> evidence or reasoning
-> substantive or theoretical implication
```

Do not make one paragraph simultaneously report results, review literature, derive implications, and list limitations.

## 7. Final Audit

Before accepting the four-section sequence, confirm:

- Research Design is transparent, reproducible, and modest about measurement novelty.
- Empirical Results answer the main predictions and calibrate causal language.
- Further Analyses explain mechanisms and boundaries rather than accumulate tests.
- Discussion identifies a precise theoretical change and evidence-grounded implications.
- Cross-section repetition has been removed without deleting unique evidence.
- Every empirical statement remains traceable to verified evidence.
- No statistical result, citation, test, or theoretical justification has been invented.
- Unsupported hypotheses are reported rather than hidden or rationalized away.
- The sections form a complete `how -> whether -> why/when -> what changes` chain.
