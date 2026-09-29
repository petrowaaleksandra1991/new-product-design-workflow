---
name: run-screenshot-loop
description: Performs a limited loop screenshot → finding → resolved fix → recheck.
metadata:
  version: "1.0"
  type: "method"
---

# Execute screenshot loop

## Before you start

Fix the target node, file revision, viewport/scale, state, platform, baseline/expected rules, write permission and mutation scope. If the screenshot is being passed to an external provider, use `check-data-egress` first.

## Loop

1. Get a screenshot and save a reference to the exact node/state.
2. First check gross defects: clipping, overlap, missing content, wrong state, broken layout.
3. Then hierarchy, alignment, spacing, typography, color, contrast, imagery and responsive relations.
4. Link finding to the component/token/playbook/UX contract, and not just to subjective taste.
5. Record before evidence and severity.
6. Fix only a defect within the allowed scope; in independent Visual QA fixes build-author, not reviewer.
7. Get an after screenshot with the same conditions.
8. Close finding or leave it with a reason and route.

## Limitations

- Do not change the UX architecture, component contract, tokens or official library.
- Don't detach instances for the sake of a quick fix.
- Do not compare screenshots with different viewports as pixel difference.
- Do not declare pass on invisible structures, semantics or interactions.
- After three repetitions of the same problem, stop and return the root cause/blocker.
- Save node IDs so that repetition does not create duplicates.

## Exit

Return loop receipt: verified nodes, screenshot conditions, findings, before/after references, changes, unresolved issues and restrictions. The built-in build loop does not replace the independent Visual QA verdict.
