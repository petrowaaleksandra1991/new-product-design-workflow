# Workflow version

- Workflow: New Product Design Workflow
- Version: `1.3.0-rc.4`
- Status: `release-candidate`
- Scope: greenfield product design with staged user checkpoints
- Existing-product workflow: separate; its own updates are versioned independently and never merged into this workflow
- Provider routing: Refero and UX Pilot optional-by-capability; Miro optional fallback
- Research quality: decision-ready narrative, traceable JTBD, adjacent limitations and regression scenario
- Brief quality: context-changing gaps trigger targeted questions or explicitly hypothetical scenarios; brief remains concise
- Wireframes: adaptive overview board for multi-screen flows without a new workflow stage
- Craft methods: interface copy and applicable state stress testing
- Extension safety: source, license, hooks/scripts, data access and fallback gate
- Structure: obsolete nested `.agents/.agents` skill copy removed from the active workflow
- Performance: brief and research plan use a compact fast path; deep references load only on risk/complexity triggers
- UI craft: an original stage-routed reference from wireframes through visual QA; no new active skills
- Quality follow-up: independent-review handoff is explicit; significant requirements connect to flows, screens and QA findings; user-provided usability results can reopen affected decisions without a new mandatory stage
- Hygiene: two overlapping methods and empty obsolete skill folders removed; validator rejects skill folders without `SKILL.md`
- Context handoff: downstream stages read approved summaries and targeted evidence; durable product and system decisions update compact context records only when affected
- Validation: Windows PowerShell reads UTF-8 explicitly, so discovery character counts are comparable with the source files

Release is allowed after validator, clean-copy initialization and acceptance scripts.
