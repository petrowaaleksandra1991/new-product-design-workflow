# Plugin integration report

> Verified: 2026-09-09

| Provider | Status in the current session | Use in the workflow | Is the source of truth |
|---|---|---|---|
| Refero | available | styles, screens, flows for research and visual references | no |
| UX Pilot | available | flowchart, wireframe generation, additional UX/persona/accessibility review | no |
| Miro | connection manager shows `not installed`; callable tools not found | optional board for future access | no |

Integration is built through capability check and fallback. No main stage depends on a single external provider. All outputs undergo product, domain and independent verification using `PROVIDER-ROUTING.md`.
