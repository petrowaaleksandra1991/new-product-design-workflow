---
name: check-accessibility
description: Checks applicable accessibility against WCAG 2.2 and platform rules; does not declare compliance without evidence.
metadata:
  version: "1.0"
  type: "method"
---

# Check availability

## Define scope

Specify platform, device/input, screens/states to be checked, scanning level and available tools. Divide:

- design review;
- semantic/code review;
- automated test;
- keyboard/screen-reader test;
- user test.

A completed design review does not mean WCAG compliance of the entire product.

## Check what's applicable

###Perceivable

- text/non-text contrast, use of color and focus visibility;
- text resize, reflow, spacing and orientation;
- alternatives for icons, images, audio and sensory cues;
- labels, instructions and error identification.

###Operable

- keyboard path, focus order, traps and skip/escape;
- target size and alternatives to gestures;
- timing, pause/extend and motion/reduced motion;
- safe cancel, undo and recovery.

### Understandable

- consistent terminology and predictable behavior;
- visible state, validation and explainable errors;
- prevention of irreversible/financial error;
- authentication and help in the applicable scope.

### Robust

- semantic roles, names, values and states in the code, if available;
- compatibility with assistive technology is not derived only from Figma.

## Findings

Each finding contains a criterion/official guidance, node/component/state, evidence, affected users, severity, confidence, route and a retest method. Don't use disability as a single segment and don't limit yourself to contrast.

## Exit

Return pass/fail/not-tested for each applicable criterion and explicit restrictions. A product or platform requirement may be more stringent than WCAG; fix both. Don't weaken accessibility for the sake of legacy pattern consistency.
