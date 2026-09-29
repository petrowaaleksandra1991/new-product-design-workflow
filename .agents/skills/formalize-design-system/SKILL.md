---
name: formalize-design-system
description: Formalizes only the selected foundations and components; Figma-write and publishing require separate permissions.
---

# Formalize the selected system

An explicit `approved-for-system` list is required. Create `DESIGN-SYSTEM-PLAN.md` with primitives/semantic roles, foundations, component contracts, variants/states, naming, accessibility, migration, governance and QA.

First, propose the minimum basis required for the selected elements. Don't build a complete catalog "for the future."

Execute Figma-write only after separate confirmation of target and scope, using the available provider skills. Create variables/foundations before dependent components, check each set and save IDs. Approving a plan is not the same as publishing; after implementation the status is `implemented`, after verification - `verified`.

After the actual build or verification, update the affected `EMERGING-SYSTEM-STATUS.md` lines: `SYS-ID`, status, Figma address and verification version. Do not change the status of candidates who were not within the permitted scope.
