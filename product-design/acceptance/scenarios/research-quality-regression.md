# Acceptance: meaningful research after the first iteration

## Goal

Verify that the environment produces research suitable for a product solution and does not revert to a formal report of references, generic JTBDs, and unsupported recommendations.

## Login

- approved `BRIEF.md` and `RESEARCH-PLAN.md`;
- at least three research questions of different nature;
- one user idea for which there is no direct confirmation;
- one quantitative source with a limited sample;
- one official example of a competitor's function;
- one source that contradicts a convenient hypothesis;
- lack of direct participant research.

## Author verification

Run `run-research` and check that `RESEARCH.md`:

1. begins with the content block “The main thing in a minute”;
2. distinguishes between user input, evidence, implementation examples, inference and hypotheses;
3. builds chapters around questions and solutions rather than sources;
4. states the method, sample and limitation next to the quantitative conclusion;
5. does not pass off a competitor’s function as evidence of convenience;
6. preserves contradictory evidence;
7. Marks JTBD as provisional if there is no direct user data;
8. transfers the user-selected idea as `approved-for-design` with risk, rather than as proven finding;
9. concludes with a matrix of supported solutions, gaps and further checks;
10. does not design the final flow or UI.

## Iteration check

Give the author a significant correction to one topic and check that he:

- reassembled the entire associated evidence chain;
- saved the previous version;
- increased the version;
- double-checked dependent numbers and conclusions;
- did not extend the verdict of the old review to the new version.

## Check reviewer

An independent `review-research` should detect pre-introduced defects: unverified JTBD, statistics without context, product example as evidence of effect and conclusion without limitation. Reviewer does not rewrite research.

##Pass

All ten of the author's requirements are met, the iteration saves the history, and the reviewer finds the introduced defects and explains their impact on the decisions.
