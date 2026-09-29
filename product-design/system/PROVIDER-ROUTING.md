# Routing Refero, UX Pilot, Miro and other providers

## Principle

Provider speeds up search, visualization, generation or automatic diagnosis. It does not own the product solution and does not replace the main workflow.

Before using, check that the capability is actually available in the current session. If not, use a safe fallback and write down the restriction. Don't force the user to manually select a provider when the task and access allow this to be done automatically.

## Mandatory checks on top of any result

Every significant finding or option generated is checked against:

1. approved brief, research, PRD and user decisions;
2. user tasks, evidence and real context;
3. business output and protective metrics;
4. applicable legal, medical, financial, privacy, safety and industry requirements;
5. WCAG, platform restrictions and availability;
6. UX heuristics and authoritative methodological sources, including Nielsen Norman Group, when applicable;
7. technical limitations and available data;
8. independent review of the relevant stage.

Competitive example, Refero reference, UX Pilot generation or automatic score cannot override these checks. If the results conflict, save the conflict and pass the solution to the user.

## Refero

Use automatically when tools are available and the appropriate layer is needed:

- `flows` — benchmark of multi-step journeys on pattern/architecture stages;
- `screens` - specific structures, controls, content hierarchy and states;
- `styles` - visual research before visual direction.

Don't copy one source entirely and don't homogenize incompatible styles. Select the main reference, record its role, acceptable borrowings and what cannot be transferred. All findings receive a source ID and undergo a fit-check.

## UX Pilot

Use for acceleration only after approval of the corresponding input:

- flowchart - as a visualization of the approved architecture;
- wireframe generation - as `generated-draft` according to the exact architecture version;
- UX/persona/accessibility review - as an additional diagnostic input.

Save page/design/job IDs, prompt and login version. Do not automatically apply fixes, create a fixed version, or publish without a separate solution. Your own UX Pilot review is not considered an independent reviewer: its findings are cross-checked by a person/separate role against PRD, research and limitations.

## Miro

Miro can be used as an external representation of a research map, timeline, IA or flow only if there is a really accessible write/read tool. Canonical solutions remain in local `.md` and related artifacts. If Miro is not available, use UX Pilot flowchart, FigJam/Figma or local diagram; workflow is not blocked.

##Fallback

The absence of a specific provider does not reduce the obligation of the stage. Only the execution method changes:

- reference search → other directories, official sources or web;
- flow visualization → local scheme/accessible canvas;
- wireframes → Figma/FigJam, HTML or text specification;
- automated review → independent manual review and applicable checklists.
