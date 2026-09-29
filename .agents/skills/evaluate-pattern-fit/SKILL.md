---
name: evaluate-pattern-fit
description: Checks the suitability of the UX pattern for the task, evidence and constraints; does not design the screen.
metadata:
  version: "1.0"
  type: "method"
---

# Check the applicability of the UX pattern

Use pattern analysis, architecture or Pattern QA inside.

## Normalize pattern family

Combine implementations of the same model, even if they are visually different. Share examples if the decision structure, control, consequences, states or recovery change. Assign a stable `PF-ID`; it does not change when moving to architecture, wireframes, Figma and QA.

## Rate fit

For each family, check:

- user task, context and expected progress;
- audience, mental model, frequency and cost of error;
- platform conventions and accessibility;
- entry point, states, permissions, time behavior and recovery;
- data, privacy, regulation and business model;
- compliance with navigation and internal patterns of the product;
- supporting, contradicting and missing evidence;
- reversibility and cost of selection error.

Do not calculate the overall score without approved weights. Use `strong-fit`, `conditional-fit`, `weak-fit`, `reject` or `unknown` with justification.

## Heuristic diagnostics

Use only relevant NN/g lenses:

- `NN-H01` status visibility;
- `NN-H02` corresponds to the real world;
- `NN-H03` control and freedom;
- `NN-H04` consistency and standards;
- `NN-H05` error prevention;
- `NN-H06` recognition instead of memorization;
- `NN-H07` flexibility and efficiency;
- `NN-H08` minimization of irrelevant;
- `NN-H09` recognition and recovery from errors;
- `NN-H10` help and documentation.

These are local shorthand notations, not a copy of the NN/g text. A heuristic is an `expert-guidance`, not a user evidence, measured outcome or normative standard. Don't automatically attach all ten.

## Exit

Return `PF-ID`, structural definition, applicable contexts, anti-pattern contexts, evidence, heuristic risks, trade-offs, fit status, confidence and review conditions. The user or architecture choice is stored separately as `decision-id`.
