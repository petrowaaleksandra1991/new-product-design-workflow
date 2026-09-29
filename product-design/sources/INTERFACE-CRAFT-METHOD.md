# Techniques for building and testing an interface

This reference applies within the selected stage, starting with wireframes. It does not create a new step or a separate result. Read only the current step section and applicable questions; the user does not enable techniques manually. Basis: UX contract, approved user solutions, platform and accessibility. Numbers and technical recipes from external sources are starting points, not universal values for Figma.

## Wireframes: structure before style

Rely on `SCREEN-ARCHITECTURE.md` and check each semantic block:

- Are related data and actions grouped? Is there enough distance between different groups to prevent them from being confused?
- Does the viewing order match the importance of the information and the next action? Are the primary effects and secondary effects visible?
- Are the controls distinguishable from static content even without color or decorative details?
- Is there a clear indication of hidden content, a list continuation, or a drop-down block?
- What happens with long text, localization, empty data, errors, and a narrow screen? Do undo and recovery work in this flow?
- Are the labels for actions, errors and conditions clear without an additional explanatory paragraph?

Report a structural or behavioral defect in the current `WIREFRAMES.md`; Don’t come up with branding, numeric tokens, or components. For meaningful forks, first compare the options in words within the framework of the approved UX, then draw only the option chosen by the user.

## Visual direction: rules that can be checked

For the chosen direction, determine the roles of typography and color, density, alignment principles, the nature of surfaces, icons and motion. For each rule, indicate which user task it supports, where it applies and where it does not. Color should differentiate roles and states, and not serve as the only signal. Typography must support actual text lengths. Choose color notation and numbers for the future method of implementation; `OKLCH` is useful when creating a new digital palette, but is not a required Figma or product format.

## Exploratory screens: create and check blocks by block

After choosing the visual direction, assemble the screen into semantic blocks and immediately check:

1. **Structure:** grouping, general alignment lines, readable gaze path, visibility of the main action and indication of hidden content.
2. **Text:** limited scale of sizes and styles, distinguishable heading levels, hyphens, long lines, changing numbers, localization and availability of full meaning when trimming.
3. **Color:** one role for each accent, distinguishable states and measured contrast of real pairs; do not declare the contrast verified by the appearance of the layout.
4. **Details:** Consistent nested surface geometry, optical icon alignment, distinguishable controls, and ample clickable area. Motion supports feedback and has a static equivalent.
5. **Resilience:** applicable empty/loading/error/permission states, narrow screen, text enlargement and content extremes.

These clauses clarify the assembly, but do not mandate the same radii, shadows, padding, or animation for all products. When conducting a screenshot test, separate the observed defect from taste preference and hypothesis.

## When you need options and a stress test

If the text selection leaves a real fork in one element, show 2-3 options along **one main axis**: structure, density, visual emphasis, typography or wording. Compare in the context of the actual screen and pass the choice to the user. Variants are not needed for each block by default.

Until the library is approved, test applicable worst-case conditions at screen and flow level via `stress-test-states`. After selecting a candidate component, check its variants and states in a real context; do not create a library component or test page merely because a method mentions one.

## Visual QA: one summary for reasons

An independent reviewer checks the approved scope and the actual visible states. It reports one finding on the root cause, lists the affected screens, shows the evidence, the impact on the user's task, and how to recheck. An unverified state is marked as `not-verified`; No comments do not mean that the entire product has been reviewed. UX violations are routed to Pattern QA or architecture. Reviewer does not correct its own comments.

## Origin and boundaries

This method is an original stage-routed synthesis written for this workflow. External UI references were reviewed during its development, but no external files, wording, scripts, commands, or executable recipes are copied into the workflow. Source provenance is recorded in `UI-METHOD-SOURCES.md`.
