---
name: run-research
description: Executes the approved research plan and creates decision-ready RESEARCH.md with verifiable sources, JTBD, boundaries and product hypotheses; does not invent data and does not design UI.
metadata:
  version: "1.1"
  type: "stage"
  stage: "run-research"
  primary-artifact: "RESEARCH.md"
---

# Do research

## Inputs and role

Read `PROJECT-STATUS.md`, the approved `RESEARCH-PLAN.md`, and only the registered sources needed by that plan. Apply the [research author profile](../../roles/research-author.md). Open broader context or additional sources only when a plan question requires them; do not inherit unapproved conclusions from an earlier task.

Execute the approved `RESEARCH-PLAN.md` as completely as real sources, permissions and tools allow. Create one main `RESEARCH.md`; appendices and raw tables are acceptable only as verifiable supporting materials.

Before synthesizing, be sure to read [RESEARCH.md content standard](references/research-deliverable-standard.md). It sets the quality and logic of the document, but does not require the same headings for different products.

## Boundaries

- Do not make up participants, reviews, analytics, numbers, quotes, market or test results.
- Don't turn user input into research finding.
- Do not pass off a competitor's implementation example as evidence of convenience or effect.
- Don't design the final architecture, flow or UI.
- Do not hide contradictions and evidence against the desired idea.
- Do not run independent review automatically.

If the research with participants is to be conducted by a user, prepare the applicable package and leave the line `awaiting-user-research`. Desk synthesis can continue within the approved boundaries; JTBD without direct data should be marked as provisional.

## Execution

1. Build a map of plan questions with statuses `completed`, `partial`, `blocked`, `changed` or `not-applicable`.
2. Connect only the necessary methodological skills: sources, user evidence, analytics, business/market, competitors and patterns.
3. For each significant fragment, create a `SOURCE-ID` and `evidence-id`.
4. Record the type of source, author/owner, date, method, sampling, context, directness, limitations, and what the source does not support.
   If there are a large number of sources, process them according to the plan and submit compact cards `SOURCE-ID`/`evidence-id` with the thesis and the limit of applicability to the synthesis; do not add raw pages and long dumps into the final document.
5. Process each line according to its method, then compare the independent signals.
6. Look for inconsistencies, negative cases, segment differences, and alternative explanations.
7. Formulate confidence based on the quality and directness of the evidence, and not on the number of links.
8. Translate conclusions into principles, opportunities and hypotheses only after evidence.

## Users and JTBD

First, highlight the situation, trigger, desired progress, current method, workaround, barrier, consequences and outcome criterion. Create JTBD only for a justified cluster and associate it with supporting/contradicting/missing evidence.

If there is no direct user material, use `provisional JTBD` or `desk-research hypothesis`. A user story is a requirement format, not a proof of need.

## Result structure

Adapt chapters to the task. Be sure to include:

- “The main thing in a minute”;
- what was specified by the user and what was examined;
- method, coverage and limitations;
- thematic evidence chains on main issues;
- problems/JTBD and context differences when warranted;
- user, product and business implications;
- hypotheses/opportunities with explicit status;
- what can be decided and what the research does not prove;
- matrix of questions, confidence, gaps and next checks;
- links to `SOURCE-REGISTER.md` and history of changes.

For each decision-critical topic, put next to it: user question, evidence, method/sample, applicability limit, synthesis, confidence, product implication and solution status.

If the user saves the idea with insufficient evidence, write down `evidence-status`, `decision-status: approved-for-design`, `validation-status: deferred`, risk and future review. Don't call it a proven need.

## Iterations

After significant feedback, rebuild the entire affected evidence chain. Save the previous version in archive, increase the version, recheck the dependent numbers and conclusions, write down the change. Review of the old version does not apply to the new one.

## Transfer

Pass `RESEARCH.md` to `in-review` and explain in ordinary language: the main meaning, strong reasons, weak points, contradictions, chosen hypotheses and user decisions. Stop to agree.
