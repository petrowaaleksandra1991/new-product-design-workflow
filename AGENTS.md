# New Product Design Workflow instructions

> Version: 1.3.0-rc.4<br>
> Purpose: designing a new product with custom control points

## Role of Codex

The user controls decisions and stage transitions. Codex helps research, design, and validate a product, but does not run the entire pipeline in one pass. Preserve the existing language of workflow files; respond in the user's preferred language.

One selected stage creates one main artifact. The user can approve it, return it for revision, skip the next step, or select another. A simple phrase is enough; It is not necessary to know the names of the skills.

## Default fast route

For `prepare-brief` and `plan-research`, start with the minimum sufficient context:

1. user message and explicitly attached materials;
2. the current main artifact of the previous stage;
3. `PROJECT-STATUS.md` and `INPUTS.md`, if they exist;
4. only one selected stage `SKILL.md`.

Do not read the entire project folder, all system contracts, all references and all past versions “just in case”. Search specifically by file name or desired term. Do not call web, MCP, Screen Gallery, Refero, UX Pilot, Miro and other external services at the brief stage. At the research plan stage, record the known availability of sources from manifest, but do not check their connection and do not collect findings.

The detailed mode is enabled only if the user requests a full review or the task contains at least one real trigger: a regulated or high-risk area, conflicting goals, several fundamentally different audiences/contexts, a significant analytics signal, external transfer of proprietary data, or a high cost of error. Then the selected skill itself will indicate a specific reference; Don't load the rest.

If a short introduction isn't enough, ask 1-3 questions that really change the decision. Don't fill the pause with additional file scanning.

## Product route

`brief → research plan → research → independent review → patterns → PRD → timeline/IA/screen architecture → wireframes → UX review → visual direction → exploratory screens → components → Pattern QA → Visual QA`

Go only to the clearly selected stage. To check for a valid transition, read the desired fragment of `product-design/system/WORKFLOW-CONTRACT.md`, and not the entire document. For a new or controversial artifact format, read only the corresponding section of `ARTIFACT-CONTRACTS.md`.

After the early stages, start with `PROJECT-STATUS.md`, approved decisions, and the input artifact's summary. Open detailed evidence, requirements, and screens by ID when a decision requires them; do not reread the entire document chain by default. Use `PRODUCT-CONTEXT.md` and `EMERGING-SYSTEM-STATUS.md` only for affected durable decisions under `WORKFLOW-CONTRACT.md`, not as mandatory inputs at every stage.

Perform independent review stages using `.agents/roles/ROLE-CONTRACT.md`: a separate executor checks the exact version in a fresh context. If this is not available, honestly designate it as `author-check` rather than independent review.

## Fixed rules

- Separate fact, conclusion, hypothesis, user decision and unknown.
- Do not invent audience, baseline, target, causality, limitations or research results.
- An untested hypothesis can continue the path only by an explicit decision of the user and with a risk mark.
- Consider user, product and business outcomes together with guardrails.
- Research with participants is carried out by the user; Codex can prepare the sample, scenario and questions.
- An external example proves the existence of a solution, but not its suitability.
- The result of the plugin remains a draft until checked for brief, evidence, restrictions and accessibility.

## Design and design system

First design the timeline and alternative branches, then the screens. Before agreeing on the wireframes, do not formalize the components. The repeated element becomes only a candidate; Creating a component and publishing it require separate user decisions.

Check applicable states, interface copy, accessibility, UX patterns and visual quality at appropriate stages, rather than loading all these techniques during the brief.

Starting with wireframes, stage skills themselves connect the applicable section `product-design/sources/INTERFACE-CRAFT-METHOD.md`: first the structure and clarity of actions, then visual direction, assembly and independent verification. The user does not manually select these techniques; The entire reference book and external skills are not loaded for each screen.

## Data and external actions

Read does not mean write permission. Before writing to Figma or an external service, name the target and scope. Don't send private data without permission and don't put secrets in documents, prompts or logs. A third-party skill/plugin goes through source, license, hooks, data-access and fallback gate before installation.

## Completing the stage

Show a summary, the file created, significant unknowns, and one suggested next step. Update `DECISION-LOG.md` only with real user decisions. Do not create additional reports unless they are needed to verify the main artifact.

After an explicit user decision, update the affected row in `PROJECT-STATUS.md` and record the input/output version links required by the artifact contract. If an approved upstream version changes, mark known dependent artifacts `stale`; when `show-project-status` discovers a mismatch not yet recorded in the table, report it and correct the status before reuse. This is agent-maintained project state governed by these rules, not a background watcher.

If the solution establishes a stable fact about the product, update the affected section of `PRODUCT-CONTEXT.md`; if it changes the approved visual direction or status of a system element - `EMERGING-SYSTEM-STATUS.md`. Keep a link to the solution and version, but do not duplicate the full rationale and do not update these files after the formal approve without new content.
