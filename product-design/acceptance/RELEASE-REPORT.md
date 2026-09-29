# Release report: New Product Design Workflow 1.3.0-rc.4

> Status: release candidate<br>
> Static validation: 2026-09-29

## Release scope

This release candidate provides a complete staged workflow with 38 active skills, supporting roles, templates, PowerShell utilities, acceptance scenarios, and root documentation. Static validation found `38/38` active skills, `0` errors, `0` warnings, and `4882/8000` discovery characters. Technical identifiers, links, YAML keys, code fences, and HTML structure were checked. Key operating instructions and research guidance received targeted editorial review. A live end-to-end pilot is still outstanding.

## Changes rc.4

- Inputs and short transfer of solutions for pattern analysis, PRD and screen architecture have been clarified. Detailed studies are opened by ID, and not by default along the entire chain.
- `PRODUCT-CONTEXT.md` and `EMERGING-SYSTEM-STATUS.md` record durable decisions; a formal approval or temporary visual experiment alone does not create a new entry.
- Research consolidates large sets of sources into verifiable cards instead of transferring raw dumps to the final document.
- Windows PowerShell validator reads UTF-8 explicitly. Checking this version in a working copy: `38/38` active skills, `0` errors, `0` warnings, discovery `4723/8000` characters. This is a character count, not a token measurement.
- Mandatory stages and providers have not been changed; a live pilot has not yet been conducted to evaluate speed and quality.

## History of rc.3

- Review skills now refer to the general transfer protocol and the corresponding role profile. Self-testing is not called independent.
- Significant requirements receive stable IDs and are associated with flow, screens, frames and significant QA findings without numbering each note.
- The results of testing carried out by the user are analyzed using a conditional method and do not rewrite approved materials without the user’s decision.
- Two overlapping methodological skills have been removed; their work remains in stage skills. Empty folders of the old set are excluded; validator checks for the absence of skill folders without `SKILL.md`.
- Active composition: 18 stage/service and 20 methodical skills. Verification of real behavior on product tasks is still needed; a static validator does not replace it.

## History of rc.2

An original stage-routed interface-craft reference is provided in `product-design/sources/INTERFACE-CRAFT-METHOD.md` and connected to the existing stages of wireframes, visual direction, exploratory screens and Visual QA. There were no new active skills in rc.2. The old discovery values are not comparable to rc.4 due to the corrected read encoding. Live quality testing was not carried out on real screens; the behavioral outcome remains the task of the pilot. The previously performed checks below apply to rc.1 unless otherwise noted.

## Summary

The greenfield workflow remains a separate environment and is not mixed with the logic of the existing product. One current branch `.agents/skills` is saved in the active structure; the deprecated subcopy of `.agents/.agents` has been removed.

## Compound

- 18 stage/service skills;
- 20 automatically connected methodological skills;
- 12 roles;
- 9 starter templates;
- adaptive wireframes review board as an optional view;
- automatic checking of interface text and applicable states;
- gate for securely connecting external skills and plugins;
- Refero and UX Pilot as optional performers, not sources of truth;
- Miro as an optional visualization tool.
- fast path for brief/research plan and conditionally downloadable deep references.

## Checks

| Check | Status | Evidence |
|---|---|---|
| Static integrity rc.4 | `pass` | Windows PowerShell: `38/38` active skills; `0` errors; `0` warnings; discovery `4723/8000` characters UTF-8 text |
| Clean copy and initialization (past check) | `pass` | the product `fast-path-greenfield` has been created; for rc.4 did not start again |
| Performance budgets | `pass` | `AGENTS.md`, brief and research-plan skill remain within the limits set by the validator; actual speed will be checked by the pilot |
| Deprecated sub-branch | `pass` | validator rejects any files inside `.agents/.agents`; there are no such files in the candidate |
| Board assets | `pass` | HTML is structurally parsed, CSS braces are balanced |
| Skill-creator quick validator | `unavailable` | launch repeated for changed skills; bundled Python does not contain the `yaml` module; frontmatter and names are checked by a local validator |

## Candidate Key Rules

- The board does not create a new stage and does not replace `SCREEN-ARCHITECTURE.md` or `WIREFRAMES.md`.
- Checking copy and states is called automatically by stages; the user is not required to remember the names of methodological skills.
- In early screens, repeatable elements remain candidates until the user explicitly allows component formalization.
- The results of Refero, UX Pilot and other generators are considered drafts until logic, evidence, accessibility, copy and states are checked.
- An external package cannot be incorporated into the workflow without checking the source, version, license, hooks/scripts, data access, cross-responsibility, and fallback.
- Brief and research plan do not scan the entire workflow and do not call providers; a complex technique is read only by a justified trigger.

## Release-gate

Current verdict: `release-candidate-pass` for static structure and clean initialization. For the `ready` status, all that remains is to conduct a live pilot with a real greenfield brief, provider routing and independent QA passes.
