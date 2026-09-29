---
name: prepare-brief
description: Creates a concise new-product brief and asks only questions that could change the concept; does not conduct research.
metadata:
  version: "2.0"
  type: "stage"
  stage: "prepare-brief"
  primary-artifact: "product-design/products/<product-id>/BRIEF.md"
---

# Prepare a brief

Create one short `BRIEF.md` for approval. By default, work in fast mode.

## Fast mode

Read the user's message, the explicitly attached materials, `INPUTS.md` and `PROJECT-STATUS.md`, if any. Do not open system contracts, past versions, all references or external services unless specifically necessary.

1. State in one paragraph what is being created and why it is important.
2. Record users, situation/trigger, current solution, expected user and business outcomes.
3. Separate the known, hypotheses, mandatory restrictions, scope and non-goals.
4. If a gap could change the audience, use scenario, channel, or value, ask 1-3 questions and explain why each answer matters.
5. If the answer is not available, offer 2-3 clearly hypothetical contexts and wait for the choice of mode of working with them.

Don't ask for the sake of filling out categories. Don't come up with a baseline, target, market or proof of the problem.

## Result format

The brief should be approximately 1-2 pages and contain:

- the purpose and basis of the product;
- for whom, when and under what conditions;
- user, product and business outcomes;
- knowns, hypotheses and critical unknowns;
- scope, non-goals and restrictions;
- 3–7 questions that the next stage should cover.

Create `product-design/products/<product-id>/BRIEF.md` with the status `in-review`, show the user a short summary and stop. Update `DECISION-LOG.md` only with decisions already made.

## When you need verbose mode

If there is a regulated/high-risk area, conflicting stakeholders, several fundamentally different contexts, a high cost of error, or the user asks for a full analysis, read [deep-brief-checks.md](references/deep-brief-checks.md). In a normal task, do not open this reference.
