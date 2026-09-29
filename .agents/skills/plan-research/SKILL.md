---
name: plan-research
description: Creates a compact research plan according to the approved brief; evidence is not yet collected.
metadata:
  version: "2.0"
  type: "stage"
  stage: "plan-research"
  primary-artifact: "RESEARCH-PLAN.md"
---

# Plan your research

Create one `RESEARCH-PLAN.md` that shows which decisions require evidence and how to understand that there is enough data. By default, use fast mode.

## Inputs

Read the approved `BRIEF.md`, `PROJECT-STATUS.md` and `INPUTS.md`, if available. Open `SOURCE-MANIFEST.md` only for a specific source or access restriction. Don't read all the system contracts or scan the entire project.

At this stage, do not search, do not read reviews, do not call web/MCP/provider and do not check connections. Indicate source unavailability as `unknown`; capability-check is executed after the plan is approved.

## Quick plan

1. Identify 3–7 decisions to be made.
2. For each, formulate the main question, current knowledge/hypothesis, cost of error, required evidence, suitable method and sufficiency criterion.
3. Prioritize: `must`, `should`, `could`.
4. Separate desk research, product data, and research with participants. Mark work that only the user can carry out with owner `user`.
5. Specify dependencies, valid fallback and stopping criteria.

Main table:

| Decision | Question | Known facts/hypothesis | Evidence needed | Method/source | Sufficient when |
|---|---|---|---|---|---|

Add short sections: priority, sequence, constraints, user participation, and expected synthesis. Usually 1-3 pages are enough.

Create `RESEARCH-PLAN.md` with the status `in-review`, explain the plan in simple language and stop. Don't start `run-research` automatically.

## When you need verbose mode

If the work requires participants, complex analytics, multiple methods, regulated data, external transfer, a large sample, multiple markets, or the user requests a full plan, read [deep-research-planning.md](references/deep-research-planning.md). Otherwise, do not load that reference.
