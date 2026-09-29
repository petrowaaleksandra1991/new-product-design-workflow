---
name: frame-outcomes-and-metrics
description: Links the business problem, user and business outcomes to core and security metrics.
metadata:
  version: "1.0"
  type: "method"
---

# Create a frame of outcomes and metrics

## Decision chain

Collect and check:

```text
business problem/opportunity
→ whose behavior and in what situation should change
→ custom outcome
→ product outcome
→ business outcome
→ metrics and guardrails
```

Don't start with your desired screen or KPI. If the link is unknown, mark the question rather than completing the causal chain.

## Requirements for outcome

- A user outcome describes an improvement in a person's situation, not a feature usage.
- Product outcome describes an observable change in behavior or outcome within a product.
- Business outcome describes value to the organization and is not achieved at the expense of harm to the user.
- Output—the released screen, component, or function—is not an outcome.

## Metrics

For each significant metric, indicate:

- role: primary, secondary, diagnostic or guardrail;
- definition and unit of analysis;
- direction of change;
- baseline and target or `unknown`;
- segment, period and source;
- owner and data quality;
- expected relationship with outcome and alternative explanations.

Guardrails cover failure, errors, complaints, accessibility, trust, privacy, unintended use and long-term effects when applicable.

## Exit

Bring back a compact outcome map, metric table, assumptions, risks and questions. Formulate the expected impact as a hypothesis before obtaining a measured result. Do not create a separate document if the active step already has `BRIEF.md`, `RESEARCH-PLAN.md`, `PRD.md` or `SCREEN-ARCHITECTURE.md`.
