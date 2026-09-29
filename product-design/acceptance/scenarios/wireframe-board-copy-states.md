# Acceptance: review board, texts and states

## Goal

Check that the multi-screen flow receives an overview low-fi view without a new stage, and the copy/state methods are connected automatically.

## Script

1. Approve the architecture of a web or tablet product with the main flow, alternative, permission error and resume.
2. Ask to go to wireframes using the usual phrase.
3. Check that `build-wireframes` has selected platform-appropriate dimensions, called `render-wireframe-board`, saved `FLOW-ID`/`SCR-ID`, entry/exit and invisible logic.
4. Check that `review-interface-copy` parsed key actions and error copy, and `stress-test-states` parsed only applicable states.
5. Make sure that the result does not create tokens/components and is not declared as a clickable prototype.

## Expected result

- one `WIREFRAMES.md` and associated board;
- there is no fixed mobile-only restriction;
- review finds dead ends, copy gaps and state gaps;
- after the result, the environment stops at the user checkpoint.
