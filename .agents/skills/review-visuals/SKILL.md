---
name: review-visuals
description: Independently checks the visual based on references, UI theory and accessibility, even without tokens; creates VISUAL-QA.md.
---

# Check visual

Before review, apply [independence contract](../../roles/ROLE-CONTRACT.md) and [visual reviewer profile](../../roles/visual-reviewer.md). Convey the exact version of the screens, visual decisions made, and applicable UX inputs; The author's self-assessment does not replace inspection of the layouts.

Create `VISUAL-QA.md` for the exact version of the nodes. First, determine the real basis of the review: required assets, reference decisions, visual direction, user edits and already approved foundations/components. Don't ask for missing tokens.

Check with `EMERGING-SYSTEM-STATUS.md` only the rules and versions applicable to the `implemented`/`verified` screens being checked. Don't evaluate `candidate` as a required standard.

Just read the section “Visual QA” [interface techniques](../../../product-design/sources/INTERFACE-CRAFT-METHOD.md). It specifies the consolidation of comments and the boundaries of the verified scope; subject criteria remain in this skill and applicable methods.

First perform a read-only audit. Then check sequentially: structure/grouping and hierarchy; scan path/rhythm; typography and interface copy; color roles/contrast; grid/density; affordance/UI details; accessibility; content/state stress; clipping/overlap, responsiveness and Figma structure. Compare with UX takeaways: Visual emphasis should not conflict with the importance of the action. Use `review-interface-copy` and `stress-test-states` only for the applicable scope.

Use screenshot-loop, but reviewer remains read-only. Separate defects, improvements, and candidates for future formalization. For significant finding, give `QA-ID`, exact frame/state, severity, evidence and verdict; stop.
