---
name: review-wireframes
description: Independently checks the flow, content, states and availability of wireframes; creates WIREFRAME-REVIEW.md.
---

# Check wireframes

Before review, apply [independence contract](../../roles/ROLE-CONTRACT.md) and [wireframe reviewer profile](../../roles/wireframe-reviewer.md). Provide the reviewer with the exact version of frames, `WIREFRAMES.md`, PRD, architecture and user decisions; do not convey the author's self-esteem instead of evidence.

Work read-only for the exact version. Check each `FLOW-ID`, `SCR-ID`, branch and state against the PRD and architecture. Check whether the continuous chain from input to result is readable, whether the main and next action, hierarchy of content, forms/errors, interruption/recovery, time changes, permissions and invisible business rules are clear.

Automatically use `review-interface-copy` for key labels and state copy, `stress-test-states` for applicable state matrix and `check-accessibility` for order, focus and interaction alternatives. Note dead ends, isolated screens, unsigned gestures, missing empty/loading/error/success and unreasonable visual design in low-fi.

To assess the purity of the structure, read the section “Wireframes” [interface techniques](../../../product-design/sources/INTERFACE-CRAFT-METHOD.md). Check what has been done in the layout, and not the presence of a formal item on the list; Do not judge color and decorative finishing before visual direction.

Separately, note architecture discrepancies, wireframes defects, copy/state gaps, and issues that can only be resolved by testing with users. Create `WIREFRAME-REVIEW.md` with severity, evidence, route and verdict. Don't go to visual direction.

For significant findings, indicate the `QA-ID`, the checked frame/state and the affected `REQ-ID`/`FLOW-ID`/`SCR-ID` where a relationship exists. Show uncovered requirements separately.
