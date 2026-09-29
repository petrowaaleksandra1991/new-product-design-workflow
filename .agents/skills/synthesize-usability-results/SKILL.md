---
name: synthesize-usability-results
description: Parses user-provided UX test results and shows which approved solutions or layouts require revision; does not conduct the test itself.
---

# Parse test results

Use only when the user has submitted actual observations, recordings, or test results. Check the tasks and conditions with the inspection plan, if there was one, but do not adjust the conclusions to the plan. Do not invent participants, statements, frequencies, or reasons for behavior.

Create a compact `USABILITY-RESULTS.md` as a conditional application, rather than a new mandatory stage: who participated and under what conditions, what was actually observed, deviations from the plan, repeated and contradictory signals, output boundaries and product consequences. Separate observation, interpretation and hypothesis. Don't generalize from a small sample to the entire audience.

For each significant finding, indicate the checked `FLOW-ID`/`SCR-ID`/frame/state, the affected `REQ-ID` or the solution, if there is a connection, and the recommended route: research, PRD, architecture, wireframes, copy, visual, or recheck. Match versions of inputs and name dependent asserted outputs that can become `stale`.

Propose changes to the user and stop. Do not edit approved PRDs, architecture, layouts or status silently; After a custom solution, update only the affected versions and associated entries.
