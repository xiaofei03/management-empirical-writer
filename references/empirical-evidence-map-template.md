# Empirical Evidence Map Template

Use this template to produce `logs/empirical-evidence-map.md` before drafting.

```markdown
# Empirical Evidence Map

## 1. Inspection Status

| Item | Status | Source | Notes |
|---|---|---|---|
| Dataset inspected |  |  |  |
| Do-files inspected |  |  |  |
| Regression outputs inspected |  |  |  |
| Variable dictionary inspected |  |  |  |
| Stata MCP available |  |  |  |

## 2. Dataset Overview

| Item | Value | Source | Notes |
|---|---|---|---|
| Dataset file |  |  |  |
| Number of observations |  |  |  |
| Number of variables |  |  |  |
| Unit of analysis |  |  |  |
| Panel identifier |  |  |  |
| Time identifier |  |  |  |
| Sample years |  |  |  |
| Sample firms |  |  |  |
| Industry classification |  |  |  |
| Region classification |  |  |  |

## 3. Sample Construction

| Step | Rule | Observations before | Observations after | Source |
|---|---|---:|---:|---|
| 1 |  |  |  |  |

## 4. Variable System

| Role | User variable | Chinese name | English name | Definition | Source | Need confirmation? |
|---|---|---|---|---|---|---|
| Dependent variable |  |  |  |  |  |  |
| Independent variable |  |  |  |  |  |  |
| Mediator |  |  |  |  |  |  |
| Moderator |  |  |  |  |  |  |
| Control |  |  |  |  |  |  |

## 5. Control Variable Mapping

| User variable | Matched reference variable | Chinese name | English name | Confirmed definition | Source | Need user confirmation? |
|---|---|---|---|---|---|---|

## 6. Model Specifications

| Model ID | Purpose | Dependent variable | Key independent variable | Controls | Fixed effects | Cluster level | Stata command | Source |
|---|---|---|---|---|---|---|---|---|

## 7. Empirical Table Map

| Table | File or source | Role | Model ID | Key result | Significance | Interpretation status | Need user confirmation? |
|---|---|---|---|---|---|---|---|
| Table 1 |  | Descriptive statistics |  |  |  |  |  |
| Table 2 |  | Correlation matrix |  |  |  |  |  |
| Table 3 |  | Baseline regression |  |  |  |  |  |
| Table 4 |  | Robustness checks |  |  |  |  |  |
| Table 5 |  | Mechanism tests |  |  |  |  |  |
| Table 6 |  | Heterogeneity analysis |  |  |  |  |  |

## 8. Identification and Endogeneity

| Issue | Current treatment | Evidence source | Remaining concern | Need user confirmation? |
|---|---|---|---|---|

## 9. Robustness Checks

| Check | Purpose | Variable or model change | Result summary | Source | Status |
|---|---|---|---|---|---|

## 10. Mechanism Tests

| Mechanism | Mediator or channel variable | Model | Result summary | Source | Status |
|---|---|---|---|---|---|

## 11. Heterogeneity Analysis

| Grouping variable | Group definition | Theoretical reason | Result summary | Source | Status |
|---|---|---|---|---|---|

## 12. Open Questions for User Confirmation

- [ ] 
```
