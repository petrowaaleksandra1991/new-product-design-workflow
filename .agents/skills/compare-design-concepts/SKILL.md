---
name: compare-design-concepts
description: Compares real UX/UI concepts in terms of outcomes, usability, risks and costs; does not create fictitious options.
metadata:
  version: "1.0"
  type: "method"
---

# Compare design concepts

Use PRD or screen architecture inside only for real decision fork.

## First check if there is a choice

The concepts differ in the way they achieve the outcome: entry point, information architecture, control model, automation/delegation, navigation, state model or recovery. A difference in color, radius, illustration, or rearrangement of one element does not constitute a separate concept.

If one option obviously satisfies the constraints, don't create the others "for quantity."

## Option passport

Describe in text before Figma:

- principle of solution and sequence;
- covered by `TL-ID`/`PF-ID`;
- inputs, states, branches, exit/recovery;
- value for the user and business;
- fit to the product strategy and approved visual direction, if it already exists;
- data, privacy, accessibility and technical constraints;
- cost, reversibility and method of verification;
- weaknesses and conditions under which the option is not suitable.

## Unified matrix

Compare all options using the same criteria: task success, cognitive load, control/trust, error cost, accessibility, user outcome, business outcome, guardrails, platform fit, implementation risk, governance, time/cost and learnability.

Do not add scores without agreed upon weights. Show trade-offs and sensitivity of the recommendation to unknowns.

## Exit

Return 2-3 passports, comparison matrix, questions for product/engineering/research, recommendation, confidence and conditions for choosing another option. Stop for user decisions down to detailed architecture or visual assembly.
