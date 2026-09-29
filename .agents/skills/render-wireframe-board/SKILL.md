---
name: render-wireframe-board
description: Creates a low-fi review board of an approved flow; does not set a visual style.
metadata:
  version: "1.0"
  type: "method"
---

# Show flow with review board

Connect automatically inside `build-wireframes` when the script is multi-screen, branching, contains comparison options, or is useful for the user to see the entire path side by side. For one obvious screen, the method is optional.

## Rules

The approved `SCREEN-ARCHITECTURE.md` remains canonical; the board is its verifiable representation. Declare scope, platform and version. One board shows 2-4 main threads for readability, but this is not the product limit: the add-on gets the next board.

Each frame must have an `SCR-ID`, state, flow marker, short caption, main action and transition. Show entry/exit, main path, applicable alternatives, interruption/recovery and states. Set aside invisible rules, data, limits, permissions and open questions separately. Write key labels in real words; secondary text accepts placeholders.

Don't add brand styling, decorative images, final tokens or componentization. Select frame size by platform; a fixed mobile size is not a universal rule.

## Format and fallback

If Figma/UX capability is available, you can assemble the board there. Otherwise, copy `assets/board-template.html` and `assets/board.css` into the project and adapt the content. Static HTML is not a clickable prototype. Return links/paths, `FLOW-ID`/`SCR-ID` coverage, unknown and restrictions in `WIREFRAMES.md`.
