---
name: build-exploratory-screens
description: Collects high-fidelity changeable screens according to approved UX and visual direction; does not create components automatically.
---

# Collect research screens

Before recording, fix the target, exact `SCR-ID`, states, visual direction version, write scope and rollback. Apply the provided assets according to manifest. Include `review-interface-copy` for meaningful texts and `stress-test-states` for applicable scope before the final screenshot-check.

If `EMERGING-SYSTEM-STATUS.md` already contains `implemented` or `verified` elements for this scope, read only their entries and use with the specified version; candidates and local experiments do not become required components.

Automatically use the “Exploratory screens” section [interface techniques](../../../product-design/sources/INTERFACE-CRAFT-METHOD.md) during the assembly of each semantic block. Open the section on options only if there is a real unresolved fork; Do not multiply the options of the entire screen automatically.

Collect one semantic block at a time. Before editing, do a read-only audit; then check the structure/hierarchy, typography/copy, color roles, UI details, accessibility and state/content stress, then repeat the screenshot. Local styles/groups are allowed at this stage; Don't create library components, variables or exhaustive tokens without a separate solution. Just mark repeated elements with observation.

Create `EXPLORATORY-SCREENS.md`: links/IDs, version of inputs, local decisions, deviations, user edits and checks. Stop for user iterations.
