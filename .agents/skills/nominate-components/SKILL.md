---
name: nominate-components
description: Offers COMPONENT-CANDIDATES.md on stable screens; does not implement anything without user choice.
---

# Suggest candidates for the system

## Inputs

Read `PROJECT-STATUS.md`, the exact stable screen versions selected by the user, `EXPLORATORY-SCREENS.md`, and applicable implemented or verified entries in `EMERGING-SYSTEM-STATUS.md`. Do not nominate from superseded, stale, or merely experimental screens.

Use only screens that the user considers sufficiently stable. Find repeatable roles, not just similar forms. For each candidate, describe use cases, states, properties, content bounds, accessibility, responsive behavior, dependencies and support costs.

Classify: `foundation-candidate`, `component-candidate`, `pattern-only`, `keep-local`, `too-early`. Show the benefits and risks of abstraction. Create `COMPONENT-CANDIDATES.md` with a checkbox for the user's decision: select, defer or reject.

After selecting the user, update in `EMERGING-SYSTEM-STATUS.md` only the affected candidates and their decision (`candidate` or `approved-for-system`) with a link to the screen version and `DEC-ID`. Do not record a rejected or local solution as a system component.

Don't create component sets, variants, tokens or publications.
