# Artifact Contracts

## General passport

Each main artifact contains: product and scope; version; status; author/role; date; inputs and their versions; access restrictions; user decisions; unknowns; links to appendices; and the next checkpoint. For plugin-assisted work, also record the provider, result type (`observed-reference` or `generated-draft`), source/design/flow ID, date, verified coverage, and limitations.

Approval applies to the exact artifact version. Appendices do not become separate stages.

## Relationships between solutions and screens

Assign stable `REQ-1`, `REQ-2`, etc. only to requirements and acceptance criteria whose loss would change a decision; do not number every note. In architecture, link each applicable `REQ-ID` to `FLOW-ID` and `SCR-ID`. When accepting layouts, link each `SCR-ID` to the exact frame/node and state. A significant QA finding receives a `QA-ID` and identifies the affected `REQ-ID`/`FLOW-ID`/`SCR-ID`, where applicable, plus the checked frame. Show missing links or uncovered requirements as gaps; do not create a screen merely to complete a table. Keep IDs stable across edits and record the new input version in the artifact metadata.

## Contents of main results

### `BRIEF.md`

Brief coherent statement: problem/opportunity, user and use case, business goal, outcomes, applicable metrics and guardrails, constraints, scope/out-of-scope and issues on which the next decision depends. Before approval, check to see if there is any missing context that could change the concept or underlying scenario. Such a gap requires a targeted question; if the answer is not available - several clearly hypothetical contextual scenarios and the user's decision about the further course. Don't replace this with filling out `unknown` and don't create a long generic questionnaire.

### `RESEARCH-PLAN.md`

Decisions to be made; knowledge gaps; hypotheses; methods; sources; sample; analysis plan; limitations; user participation plan; connection of each question to a hypothesis and decision; expected themes and the approach to building evidence chains in the subsequent research.

By default, this is a compact decision-to-evidence plan of 1-3 pages, and not a pre-completed study. Detailed sampling, analytics, data-egress and multi-method blocks are added only when applicable.

### `RESEARCH.md`

A single decision-ready synthesis of completed directions. The structure adapts to the questions, but must include:

- “The main thing in a minute” with a meaningful conclusion;
- separation of user input, internal data, research evidence, implementation examples, inference and hypotheses;
- method, actual coverage and limitations;
- thematic chapters on user issues;
- chains `question → evidence → method/sampling → boundary → synthesis → confidence → product implication`;
- JTBD/needs only with evidence; in the absence of direct data - provisional marking;
- supporting, contradicting and missing evidence;
- user-selected hypotheses with evidence-status and future verification;
- matrix of supported solutions, unproven and subsequent checks;
- sources, reproducibility and history of significant iterations.

The methodological disclaimer is located next to the limited conclusion. An official example of the product confirms the presence of the mechanics, but not its convenience or effect. Detailed standard: `.agents/skills/run-research/references/research-deliverable-standard.md`.

### `RESEARCH-REVIEW.md`

Independent review of coverage, quality of sources, logic of conclusions, origin of JTBD, proximity of restrictions to statements, omissions, over-generalizations, and what decisions are acceptable to base on the result.

### `PATTERN-ANALYSIS.md`

User tasks, interaction patterns found, sources, states, benefits/risks, accessibility, suitability, what was rejected and what solutions the user chose for adaptation. Refero/Mobbin/Screen Gallery evidence is separate from recommendations and does not replace domain verification.

### `PRD.md`

Problem, outcomes, MVP and out-of-scope, requirements, rules, data, permissions, states, edge cases, metrics, risks, dependencies and acceptance criteria. Significant requirements and acceptance criteria receive a `REQ-ID` and a reference to the basis or explicit decision of the user. Hypotheses are labeled.

### `SCREEN-ARCHITECTURE.md`

Text comparison of concepts before selection; chosen principle; IA and navigation; user timeline; main and alternative flows; interruption and return; timing; conditions; screen map; transitions; data; accessibility; analytics events; domain, legal, and medical gates where applicable; and questions for developers. Core `FLOW-ID`/`SCR-ID` entries link to applicable `REQ-ID` values; uncovered requirements remain visible. A diagram in UX Pilot or Miro represents the architecture but does not replace it.

### `WIREFRAMES.md`

Format and IDs of low-fidelity frames; architecture version; `FLOW-ID`/`SCR-ID` mapping; critical content; primary action; states; transitions; entry and exit; interaction annotations; invisible logic; and open questions. The overview board may be in Figma, provider-assisted, or static responsive HTML. It represents the architecture, is not necessarily a clickable prototype, and does not establish a visual style. For provider-assisted work, record page/design IDs, prompt, result type, and input version.

### `WIREFRAME-REVIEW.md`

Coverage architecture/flows, path continuity, dead ends, clarity of actions, content priority, interface copy, applicable state matrix, errors and recovery, alternative branches, accessibility, data and domain restrictions, findings, route and verdict. Provider review is saved as a separate input: the reviewer double-checks significant findings and does not accept the score as a verdict.

### `VISUAL-REFERENCE-ANALYSIS.md`

For each `REF-ID`: purpose and weight, provider/source ID, analysis of composition, typography, color, grid, shape, image/icons, motion, accessibility, portable principles, non-portable details and conflicts. Refero styles, screens and flows are not mixed into one category.

### `VISUAL-DIRECTION.md`

Selected visual principles, connection to UX and brand, assets used, preliminary foundations, rules for key patterns, examples/counterexamples and open questions. This is a guide, not a complete design system.

### `EXPLORATORY-SCREENS.md`

Links/IDs high-fidelity frames and states, direction version, accepted deviations, local decisions, user changes, technical limitations and built-in screenshot check. The elements remain `exploratory`.

### `COMPONENT-CANDIDATES.md`

Candidates, reuses, states, properties, boundaries, risks of premature abstraction and recommendation. Separately, the user’s decision: select, postpone, reject.

### `DESIGN-SYSTEM-PLAN.md`

Only the selected scope: primitives/semantic tokens, foundations, component contracts, variants/states, naming, migration, governance, Figma target, verification and publish gate.

### `PATTERN-QA.md`

Exact version checked; PRD/architecture compliance; states; errors; alternatives; content; accessibility; domain, legal, and medical constraints; manipulation risks; findings with `QA-ID`, affected links, severity, and verdict. Findings from automated reviewers are marked `corroborated`, `contradicted`, or `not-verified`.

### `VISUAL-QA.md`

Tested version, screenshots/nodes, compliance with provided assets and visual direction, composition, typography and interface copy, color, grid, contrast, clipping, responsiveness, consistency, applicable state/content stress checks, findings with `QA-ID` and exact frame/state and verdict. Missing tokens are flagged as a formalization opportunity, not a defect in itself.
