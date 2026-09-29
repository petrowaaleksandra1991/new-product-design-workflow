---
name: review-research
description: Independently checks the exact version of RESEARCH.md for quality of evidence, JTBD, synthesis and suitability for solutions; research does not rewrite.
metadata:
  version: "1.1"
  type: "stage"
  stage: "review-research"
  primary-artifact: "RESEARCH-REVIEW.md"
---

# Check the study independently

Before review, apply [independence contract](../../roles/ROLE-CONTRACT.md) and [research reviewer profile](../../roles/research-reviewer.md). The main agent transmits the exact version of `RESEARCH.md`, its plan and sources; reviewer does not receive the author's self-assessment as proof of quality.

Work as a read-only reviewer of the exact version of `RESEARCH.md`. The author of the version being reviewed cannot pass off the self-test as an independent review. Create `RESEARCH-REVIEW.md`, but do not edit the original document.

## What to check

- whether the approved plan has been implemented and deviations have been explained;
- whether significant findings are traceable to `SOURCE-ID`/`evidence-id`;
- whether the sources, methods, samples and dates correspond to the statements;
- whether restrictions are located next to the limited conclusions;
- are user input, direct evidence, adjacent evidence, implementation examples, inference and hypotheses separated?
- whether contradictions, negative cases and alternative explanations are preserved;
- whether preference, behavior, outcome, correlation and causation are mixed;
- whether the competitor’s function is presented as evidence of convenience;
- whether JTBD/needs are traceable to direct evidence and whether provisional jobs are marked;
- whether the chapters address user questions and solutions;
- is it clear what can be decided now and what the research does not prove;
- whether the user-selected hypotheses are saved with risk and future verification;
- whether user, product and business outcomes are covered;
- whether the length of the document imitates the quality of the analysis.

Double-check all decision-critical, quantitative and causal statements. Check other sources by risk and explain the actual coverage review.

## Result

First, explain in ordinary language: what can be trusted, what cannot yet be trusted, what decisions are supported, what must be corrected, and what risks can be taken consciously.

Then give findings with exact location, severity, evidence and impact on the decision. Verdict: `pass`, `pass-with-notes` or `fail`. One defect that destroys a key solution is enough for a `fail`.

After fixing, check the new version separately. Verdict of the old version is not automatically transferred. Pass review to `in-review` and stop for the user to decide.
