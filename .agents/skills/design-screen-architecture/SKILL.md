---
name: design-screen-architecture
description: Designs IA, timeline, flows, screens and states; Compares concepts first and doesn't draw the UI.
---

# Design screen architecture

Start with `PROJECT-STATUS.md`, the approved version of `PRD.md`, and its critical `REQ-ID` entries. Include the selected patterns and the relevant sections of `PRODUCT-CONTEXT.md` as inputs. If the user chose to skip the PRD, identify the substitute input and the risk without calling it a PRD. Open full research by a specific evidence ID only when the PRD does not support an architectural choice. Check that key inputs are not `stale` or superseded by a later user decision.

If there is a meaningful choice, first compare 2-3 concepts in text: principle, main differences, pros/cons, technical issues and risks. Stop for user selection until full detail.

After selection, create `SCREEN-ARCHITECTURE.md`: IA, objects and navigation; timeline from trigger to result; main flow; alternatives, interrupt, cancel, return, async/time changes; states and permissions; registry `SCR-ID`; transitions; critical content; accessibility; analytics; open questions.

Associate the applicable `REQ-ID` from the PRD with the `FLOW-ID` and `SCR-ID`. Show requirements without coverage and explain whether they are postponed, require another channel, or remain an issue; don't add dummy screens for the sake of a complete table.

Take into account the user-selected competitor patterns with provenance. At the end, briefly convey to the wireframes: the selected principle, key `FLOW-ID`/`SCR-ID`, uncovered `REQ-ID`, states and questions that can still change the layouts. Don't create Figma frames or components. Submit the architecture to `in-review` and stop.
