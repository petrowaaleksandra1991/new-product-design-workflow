---
name: source-ux-patterns
description: Finds UX-flow and screens in available products, Screen Gallery, Mobbin and web; does not copy someone else's UI.
metadata:
  version: "1.0"
  type: "method"
---

# Find UX patterns

## Check available sources first

1. internal screens and product documentation;
2. connected directories, for example Screen Gallery or Mobbin;
3. official platform guidelines and product docs;
4. open web and public case studies.

The absence of a specific MCP does not block the search. Name fallback and reduction in coverage. Before transferring materials externally, check the data egress.

## Search frame

Search by user task and situation, and not just by the name of the future function. Formulate:

- actor, trigger and desired progress;
- flow stage and key fork;
- necessary states and recovery;
- platform, market and restrictions;
- what differences can change the decision.

## Fixing an example

For each flow, save product, platform, source URL/reference, review date, entry point, sequence of steps, alternative branches, states, permissions, time behavior, content model and observed restrictions.

Screenshots of a single product are not considered independent verification. Combine implementations of the same model into a candidate pattern family, but the final `PF-ID` and fit are assigned to `evaluate-pattern-fit`.

## Rules

- The gallery shows the implementation, not the outcome.
- Do not restore a closed design system and do not copy the proprietary UI.
- Cite the source and respect image usage restrictions.
- Separate observed behavior from inferred intent.
- Don't download the entire catalog if a narrow request is enough.

## Exit

Return a list of flows, normalized structural notes, source references, coverage, gaps and candidates for comparison. Don't pick a winner and don't design the screen.
