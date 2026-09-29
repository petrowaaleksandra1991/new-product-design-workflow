---
name: build-wireframes
description: Collects low-fidelity wireframes according to the approved architecture and creates WIREFRAMES.md; does not set a visual style.
---

# Collect wireframes

## Inputs and role

Read `PROJECT-STATUS.md`, the approved `SCREEN-ARCHITECTURE.md`, its referenced `REQ-ID`/`FLOW-ID`/`SCR-ID` entries, and applicable user decisions. Apply the [wireframe builder profile](../../roles/wireframe-builder.md). Open earlier evidence only by a specific unresolved ID.

Create a low-fidelity representation of the approved architecture and one `WIREFRAMES.md`. The stage checks the structure to the visual direction and settles on the user's decision.

## Before assembly

Record the `SCREEN-ARCHITECTURE.md` version, scope, platform, `FLOW-ID`/`SCR-ID`, target, write permission and fallback. Don't start if the architecture is ambiguous or outdated without the user's explicit decision to continue at risk.

Connect the minimum applicable methods:

- `render-wireframe-board` - for multi-screen, branching or comparison flow;
- `review-interface-copy` - for key labels, actions, forms and state copy;
- `stress-test-states` - for the applicable state matrix;
- `check-accessibility` - for order, focus, touch/keyboard and gesture alternatives;
- `check-data-egress` - before transferring the non-public context to an external provider.

For structure and hierarchy, automatically use only the “Wireframes” section from [interface techniques](../../../product-design/sources/INTERFACE-CRAFT-METHOD.md). This tests grouping, reading order, action salience, hidden content, and robustness to real content; Don't load the rest of the sections yet.

## Assembly

Collect neutral frames in portions. Show critical content, hierarchy, controls, states, transitions and recovery; don't add brand styling, illustrations, final tokens or componentization. Key text must be real, secondary text can remain a placeholder.

For an overview board, display the entry, main path, applicable alternatives, and result next to each other. Each frame must have a `SCR-ID`, state, flow marker, signature, main action and transition. Move invisible rules, data, permissions, limits and time into a separate block.

Figma, UX Pilot or Miro are used only if the capability and resolution are available. Otherwise, create responsive static HTML from assets `render-wireframe-board`; it is not a clickable prototype. Sizes are selected by platform.

## Result

Create `WIREFRAMES.md` as receipt: format and paths/IDs, architecture version, `FLOW-ID/SCR-ID → frame` map, covered states, invisible logic, provider provenance, open questions and restrictions. Save screenshots after semantic blocks and stop to view the user.

For key frames, save the connection `REQ-ID → FLOW-ID → SCR-ID → frame/state` via architecture; treat inconsistencies and missing states as gaps, do not mask them with a visual placeholder.
