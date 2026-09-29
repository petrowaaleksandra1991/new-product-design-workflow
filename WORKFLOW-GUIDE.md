# How to use the New Product Design Workflow

This is a portable folder for designing a product from scratch. It already contains instructions, roles, skills, templates and checks, but not a ready-made interface.

## Creating a project

1. In File Explorer, copy the entire repository folder.
2. Name the copy by product, for example `finance-assistant`.
3. Open this copy as a local project in Codex and create a new task.
4. Write an idea or add it to `product-design/INPUTS.md`.
5. Add links and files and indicate their purpose in `product-design/REFERENCE-MANIFEST.md`.
6. Say: “We are launching a new product.”

At the briefing stage, Codex checks whether the use context is clear. If the concept depends on missing context, it asks a few targeted questions. If answers are unavailable, it offers alternative scenarios as hypotheses and waits for your choice; it does not present assumptions as facts.

The brief and research plan now work in a fast mode: they read only the necessary inputs, do not scan the entire environment and do not access external services. A detailed methodology is automatically connected only for a complex, regulated or high-risk task, or at your request “do a complete analysis”. For speed at these stages, reasoning `low` or `medium` is usually sufficient; higher mode is more useful on deep research, architecture and QA.

There is no need to attach each `.md` to the chat: when the root folder of the project is open, Codex reads the necessary local files itself. The entire set is copied.

A new chat is not required for each stage: you can sequentially approve the results in one task. For the next step, the agent first reads the status, approved decisions and short summary of the input document, then opens the details by ID. `PRODUCT-CONTEXT.md` stores only stable decisions about the product, and `EMERGING-SYSTEM-STATUS.md` - the approved direction and state of the elements of the future design system; both files are updated as the decision changes, rather than after each formal approval.

## What can you give at the start?

The minimum is an idea, intended users and the desired result. Useful, but not required: business goal and metrics; research, reviews and analytics; competitors; Screen Gallery/Mobbin links; screenshots and moodboard; logos, icons, fonts and colors; technical limitations.

For each reference, say what exactly is important. If the intent is unclear, Codex will clarify it prior to visual assembly.

## Connected plugins

Plugins do not need to be launched manually at each stage. Codex checks available features and connects them according to the task:

- **Refero:** flows and screens - for benchmark UX; styles - for visual research.
- **UX Pilot:** flowchart, wireframe drafts and additional UX/accessibility diagnostics.
- **Miro:** optional board for cards and flow, only if its tools are actually available.

Refero and UX Pilot results are not automatically accepted. They are reviewed for research, PRD, user and business objectives, accessibility, technical and applicable legal/medical requirements, then independently reviewed and your decision made.

For multi-screen flow, Codex can automatically assemble an overview gray board: key screens, states and transitions are visible side by side before the visual design. This is part of the wireframe stage, and not a new mandatory document or a replacement for Figma. Interface texts and extreme states are also checked automatically using separate methods.

A new third-party skill or plugin is not automatically added to the workflow. First, its source, version, license, hooks/scripts, data access, installation scope, and safe fallback are checked.

## Results

After initialization, the status, logs, and product folder will appear. The main results are created gradually: `BRIEF.md`, `RESEARCH-PLAN.md`, `RESEARCH.md`, `RESEARCH-REVIEW.md`, `PATTERN-ANALYSIS.md`, `PRD.md`, `SCREEN-ARCHITECTURE.md`, `WIREFRAMES.md`, `WIREFRAME-REVIEW.md`, `VISUAL-REFERENCE-ANALYSIS.md`, `VISUAL-DIRECTION.md`, `EXPLORATORY-SCREENS.md`, `COMPONENT-CANDIDATES.md`, `DESIGN-SYSTEM-PLAN.md`, `PATTERN-QA.md`, `VISUAL-QA.md`.

## Management

Plain language is enough. Skills are selected automatically. You can explicitly call `$prepare-brief` or open `/skills`, but this is not necessary. “Move on” only performs one next step.

You can skip this step: Codex will explain the risk and write down the solution. You can go back; dependent results will be flagged for cross-checking.

If you test with participants and share observations, Codex analyzes the results separately and shows which decisions or screens may need revision. This is not a new mandatory stage. An independent review is assigned to a separate reviewer; if that is unavailable, the result is clearly labeled an author check.

The first detail screens are exploratory. After your edits, Codex may suggest candidates, but only the items you select go to foundations, tokens, and components.

Visual QA works without ready-made tokens: it checks internal consistency, composition, typography, color, grid, contrast and approved references.

## Checking the workflow

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\validate-new-product-workflow.ps1
```

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\initialize-new-product.ps1
```
