---
name: analyze-product-analytics
description: Analyzes metrics, events, funnels and segments with quality checks; does not invent baseline, target or causality.
metadata:
  version: "1.0"
  type: "method"
---

# Analyze product analytics

Use aggregated data by default. Personal uploads are allowed only using `DATA-POLICY.md` and after checking egress.

## Check the definition first

For each metric, record:

- name and exact formula;
- unit of analysis: user, account, session, order or event;
- event, source and owner;
- period, timezone, attribution window and segment;
- inclusion/exclusion, deduplication and omission processing;
- instrumentation changes, delay and known defects;
- baseline/target only if they are provided.

## Analysis

- Build a funnel only from events with a verified order and identity of the unit of analysis.
- Compare cohorts on the same horizon and with an explicit entry rule.
- Segment only by variables related to the decision; Don't look for random differences.
- Show the size of the base and uncertainty next to the fraction or average.
- Check survivorship, selection, seasonality, novelty and instrumentation bias.
- Formulate the correlation as a connection; causal inference requires an experiment, quasi-experimental design, or other strong basis.

## Interpretation

Divide:

1. measured result;
2. observed pattern;
3. possible explanations;
4. alternative explanations;
5. a decision that the data is or is not able to support.

Don't optimize a business metric without a user outcome and guardrail. Increasing completion while increasing coercion is not success.

## Exit

Return definitions table, data-quality notes, verified sections, findings, uncertainty, possible explanations and next measurements. Do not insert sensitive data strings into a product artifact.
