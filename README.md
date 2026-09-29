# New Product Design Workflow

A structured, checkpoint-driven environment for designing a new digital product from scratch with Codex—from brief and research through product requirements, screen architecture, wireframes, visual direction, design-system planning, and quality assurance.

Each stage produces a reviewable artifact. The user approves key decisions and controls stage transitions; this is not a one-prompt autonomous pipeline.

## What it covers

- Product brief and outcome framing
- Research planning, evidence analysis, and competitor research
- UX pattern analysis and product requirements
- Screen architecture and user flows
- Wireframes, interface copy, and state review
- Visual direction and exploratory interface design
- Component candidates and design-system planning
- Accessibility, visual QA, and release validation

## Requirements

- Codex with access to a local project folder
- Git or GitHub Desktop for cloning and version control
- Windows PowerShell 5.1 or PowerShell 7 for the included setup and validation scripts

External design and research integrations are optional. The core workflow remains usable when a particular integration is unavailable. Codex is the supported runtime for this release. Compatibility with other agentic development environments has not yet been validated.

## Start a project

1. Click **Use this template**, then select **Create a new repository**.
2. Create a private repository for real product work, especially when it may contain client information, research data, or internal materials.
3. Clone the new repository and open it as a local project in Codex.
4. Run `powershell -ExecutionPolicy Bypass -File .\scripts\initialize-new-product.ps1` once in the project.
5. Describe the product idea, intended users, and desired outcome. Add any available research, references, business goals, or constraints.
6. Ask Codex to start the brief. Review each stage’s result and choose whether to approve, revise, skip, or move to another stage.

See [WORKFLOW-GUIDE.md](WORKFLOW-GUIDE.md) for the full workflow. The root [AGENTS.md](AGENTS.md) contains the operating rules that Codex reads in the project.

## Validate the workflow

Run `powershell -ExecutionPolicy Bypass -File .\scripts\validate-new-product-workflow.ps1` from this folder. The initializer modifies a project copy, so do not run it in the master workflow folder.

## Release status

Current version: `1.3.0-rc.4` (release candidate). Static validation passes with all 38 active skills, no errors, and no warnings.

A complete end-to-end product pilot has not yet been conducted, so this release should be treated as a release candidate rather than a final stable version.

## License

This project is source-available under the [PolyForm Perimeter License 1.0.0](LICENSE.md), not open source.

You may use and modify it for personal, internal, and paid product-design work. You may not market, sell, or provide the workflow or a derivative as a competing product.
