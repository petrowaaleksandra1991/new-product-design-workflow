---
name: review-patterns
description: Independently checks the script for PRD, states, errors and availability; creates PATTERN-QA.md without corrections.
---

# Check behavior

Before review, use [independence contract](../../roles/ROLE-CONTRACT.md) and [pattern reviewer profile](../../roles/pattern-reviewer.md). Convey the exact version of the screens, PRD, architecture and user-selected solutions; The reviewer should not rely on the author's self-assessment.

Create `PATTERN-QA.md` for a precise version of wireframes or high-fidelity frames. Trace the requirements, `FLOW-ID` and `SCR-ID` to the nodes/screens. Use `stress-test-states` for the applicable scope and `review-interface-copy` if the text affects action, feedback, failure or recovery.

Check happy path, alternatives, abort/return, loading/empty/error/permission/success, time, content, feedback, prevent/recover, accessibility and risk dark patterns. Check with the selected patterns, but do not consider the discrepancy a defect without context.

Record for significant finding `QA-ID`, evidence, severity, affected `REQ-ID`/`FLOW-ID`/`SCR-ID` and exact frames/states, recommendation and verdict. Reviewer doesn't change anything and stops.
