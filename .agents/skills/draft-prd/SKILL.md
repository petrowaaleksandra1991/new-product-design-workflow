---
name: draft-prd
description: Collects evidence and solutions in PRD with MVP, requirements, metrics and risks; does not design screens.
---

# Prepare PRD

Start with `PROJECT-STATUS.md`, the accepted brief, the “Main in a minute” in `RESEARCH.md`, the verdict `RESEARCH-REVIEW.md` and the selected solutions `PATTERN-ANALYSIS.md` - for those inputs that are actually completed. Omission or continuation at risk is taken from the user's decision, rather than replacing a missing document. Read the applicable sustainable solutions in `PRODUCT-CONTEXT.md` if they are already approved there. Open detailed evidence and unselected alternatives by `SOURCE-ID`/`evidence-id` or question, and not entirely, just in case. If there is a conflict between versions or solutions, show it before synthesis.

Create one `PRD.md` according to the artifact contract. Include only supported conclusions, selected solutions, and explicitly stated hypotheses.

Define the MVP through user and business value; out-of-scope items; functional and non-functional requirements; objects, data, and permissions; states, errors, and edge cases; events and metrics; guardrails; dependencies; risks; and acceptance criteria.

Give a strong `REQ-ID` only to significant requirements and acceptance criteria. Next to it, indicate evidence or an explicit user decision; Don't pass off a hypothesis as a proven fact.

Check internal consistency and traces to brief/research/pattern decisions. Before handing over, briefly show what decisions have been made for the MVP, what `REQ-IDs` are critical for the next stage, what remains a hypothesis and what issues can change the architecture; the links lead to the full justification in the PRD. Don't come up with technical implementation and don't draw screens. Pass it to `in-review` and stop.
