---
name: review-interface-copy
description: Checks interface copy by task, state, consequences and localization.
metadata:
  version: "1.0"
  type: "method"
---

# Check interface texts

Use inside architecture, wireframes, build or QA when the solution contains action signatures, forms, tooltips, errors, empty states, onboarding, confirmations or sensitive consequences. This is not a general documentation editor or marketing copywriting.

## Inputs

Define the user's task, component and state, what the user already knows, expected action and result, product terminology, language/locale, available space, tone of voice and legal or domain restrictions. Don't invent product behavior for the sake of good wording.

## First check if the text is a solution

If the problem is caused by bad state, weak hierarchy, hidden action, missing validation, or inappropriate component, send finding to architecture/build. Don't explain away a bad interface with an extra paragraph.

## Check

- the main action and consequence are clear without guessing;
- the button names the action, and the label names the data or choice;
- the error tells you what happened, what can be done and what to expect next, if known;
- loading, empty, error, success and permission copy correspond to the real state;
- the dangerous, financial, medical or irreversible effect is not mitigated or hidden;
- the texts do not force, do not shame or disguise refusal;
- terminology is consistent, facts are verifiable, tone matches the product;
- variables, numbers, plural forms, localization, long lines and text enlargement are taken into account;
- mandatory information is visible on the screen, but the tooltip remains optional.

## Exit

For review, return specific findings: `SCR-ID`/state, current text, problem, UX-impact, proposed version, reason and route. For an open decision, give no more than three different options and one recommendation. Do not change approved text or localization keys silently; the legally sensitive option is labeled `needs-domain-review`.
