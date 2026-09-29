# Greenfield-workflow contract

## Principle

A stage is a manageable decision point, not a single method. One step creates one main artifact, which can contain multiple studies, tables, maps, and appendices. After each stage, a user checkpoint is needed.

## Performance and progressive disclosure

`prepare-brief` and `plan-research` run in fast mode by default. They read the main entry, state and minimal context; do not load all contracts, references and external providers. The detailed mode is launched only at the user’s request or with a real risk/complexity trigger specified in the corresponding skill. This does not reduce the depth of late research and QA.

The system contract is read point by point when a transition or exception needs to be checked. The artifact contract is read pointwise for an unfamiliar format. The mere fact of a document's existence is not a requirement to load it at every stage.

## Stages

| No. | Skill | Main result | Minimum entry | Next normal stage |
|---:|---|---|---|---|
| 0 | `start-greenfield-product` | syslogs and context | idea or request | prepare brief |
| 1 | `prepare-brief` | `BRIEF.md` | idea, goals, known limitations | plan research |
| 2 | `plan-research` | `RESEARCH-PLAN.md` | brief | run research |
| 3 | `run-research` | `RESEARCH.md` | approved research plan | review research |
| 4 | `review-research` | `RESEARCH-REVIEW.md` | research | analyze patterns |
| 5 | `analyze-patterns` | `PATTERN-ANALYSIS.md` | research/review | draft PRD |
| 6 | `draft-prd` | `PRD.md` | accepted evidence and decisions | screen architecture |
| 7 | `design-screen-architecture` | `SCREEN-ARCHITECTURE.md` | approved PRD | build wireframes |
| 8 | `build-wireframes` | `WIREFRAMES.md` + linked frames | architecture | review wireframes |
| 9 | `review-wireframes` | `WIREFRAME-REVIEW.md` | exact wireframe version | visual references |
| 10 | `analyze-visual-references` | `VISUAL-REFERENCE-ANALYSIS.md` | reference manifest | visual direction |
| 11 | `define-visual-direction` | `VISUAL-DIRECTION.md` | analysis and user choices | exploratory screens |
| 12 | `build-exploratory-screens` | `EXPLORATORY-SCREENS.md` + linked frames | approved UX and direction | user iteration or QA |
| 13 | `nominate-components` | `COMPONENT-CANDIDATES.md` | stable screen sample | formalize system or skip |
| 14 | `formalize-design-system` | `DESIGN-SYSTEM-PLAN.md` + approved Figma scope | selected candidates | QA |
| 15 | `review-patterns` | `PATTERN-QA.md` | exact built version | visual QA |
| 16 | `review-visuals` | `VISUAL-QA.md` | exact built version and supplied rules | user decision |

`show-project-status` is a service read-only stage and does not advance the workflow.

## Connecting auxiliary providers

- On pattern research Refero `screens` and `flows` can extend benchmark, but do not replace research and suitability testing.
- On architecture Refero flows and UX Pilot flowchart are acceptable as comparative views. The approved `SCREEN-ARCHITECTURE.md` remains canonical.
- On wireframes, UX Pilot can create a `generated-draft` based on the approved architecture. Before review, the result is not considered a design solution.
- For a multi-screen, branching or comparison flow, `render-wireframe-board` creates an overview view inside the `build-wireframes` stage; it is not a new stage and not a separate source of truth.
- On visual reference/direction Refero, `styles` is used first for visual research, then `screens` for specific UI solutions. The result passes synthesis and a custom checkpoint.
- UX Pilot UX/persona/accessibility review is allowed as an additional automated signal. An independent reviewer re-checks the findings and may reject them.
- Miro is used only when the corresponding capability is actually available; its absence does not block any stage.
- `review-interface-copy` and `stress-test-states` are automatically connected in architecture/build/review by content; the user does not control them manually.
- Starting with wireframes, build and review only read the section of their stage in `product-design/sources/INTERFACE-CRAFT-METHOD.md`; This is a general method within existing skills, without a new stage or set of auto-triggered external skills.

Complete selection and fallback rules are in `PROVIDER-ROUTING.md`.

## Branching and skipping

- A study with participants can be planned but carried out by the user. Until the data is available, you can continue with the obvious risk and the chosen hypothesis.
- `analyze-visual-references` can be started earlier in parallel as a collection of inputs, but `VISUAL-DIRECTION.md` is not approved until the UX is stabilized.
- Steps 13–14 are optional: the product can be verified before the library is created.
- After changing an approved upstream artifact, all dependent results receive `stale` until rechecked.
- If the user has submitted the results of a UX test they ran, `synthesize-usability-results` creates a conditional application and a map of the affected solutions. This is not a new mandatory step: the user chooses which changes to accept, then only dependent versions are revised.
- The user can go to any stage. The agent calls missing inputs and risk, but does not block an explicitly accepted exception if the action is safe.

## Statuses

`not-started`, `draft`, `in-review`, `approved`, `approved-with-risks`, `changes-requested`, `stale`, `skipped`, `blocked`.

Only the user converts the main product artifact to `approved`, `approved-with-risks` or `skipped`. Technical success of a recording does not equal product approval.

## Versions

Do not rewrite a significant approved decision without leaving a trace. Create a new version or write a change to `DECISION-LOG.md`, indicating the affected downstream artifacts.

## Compact context between stages

`PROJECT-STATUS.md` shows where the work is located; `DECISION-LOG.md` stores user decisions; major artifacts retain full justification. These files do not replace each other.

- Update `product-design/context/PRODUCT-CONTEXT.md` when the user approves or changes a durable decision about users, use context, value, business model, platform, constraints, or terminology. Keep a link to the `DEC-ID` and the source artifact version. Do not copy the entire brief or research into it, and do not record an open hypothesis as fact.
- `product-design/design-system/EMERGING-SYSTEM-STATUS.md` update only after deciding on the visual direction, the status of a candidate for the system or the actual creation/verification of the foundation or component. The `exploratory` element does not automatically become a system element. Provide `SYS-ID`, solution and tested version where they exist.
- At the next stage, read only the sections of these notes that are relevant to the task. If the entry is missing or still contains `unknown`/`none`, do not rescan it and do not replace the approved artifact with it.

## Automatic routing

Stage skills and narrow methodological skills are selected automatically based on request, status and inputs. The user does not activate the methods manually. Explicit `$skill-name` is just a shortcut.
