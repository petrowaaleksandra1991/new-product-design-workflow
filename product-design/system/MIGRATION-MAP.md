# Adaptation map: existing-product workflow → greenfield workflow

The original set contained 31 active skills and was not changed when the greenfield workflow was released. During the initial migration, the greenfield workflow contained 36 skills; this is a historical number, not the composition of the current workflow. The current composition is determined by `scripts/validate-new-product-workflow.ps1` (38 active skills in version 1.3.0-rc.4).

## Reused without changing the main responsibility - 8

`evaluate-sources`, `analyze-user-evidence`, `analyze-product-analytics`, `frame-outcomes-and-metrics`, `research-market-competitors`, `check-accessibility`, `run-screenshot-loop`, `check-data-egress`.

## Adapted to the lack of a finished product - 13

`show-project-status`, `prepare-brief`, `plan-research`, `run-research`, `review-research`, `analyze-patterns`, `draft-prd`, `design-screen-architecture`, `review-patterns`, `review-visuals`, `source-ux-patterns`, `evaluate-pattern-fit`, `compare-design-concepts`.

Main changes: product scope instead of feature scope; external patterns instead of internal ones as a mandatory source; IA and timeline from scratch; QA based on real approved inputs, and not on a pre-existing system.

## Disabled or replaced - 10

| Was | greenfield solution |
|---|---|
| `start-product` | replaced by `start-greenfield-product` |
| `audit-design-system` | won't start without an existing system |
| `build-figma-screens` | replaced by `build-exploratory-screens` |
| `plan-components` | replaced by the managed connective nomination → formalization |
| `propose-component` | included in the selected scope formalization |
| `sync-design-system` | not needed until several layers are implemented |
| `index-figma-foundations` | foundations arise after user choice |
| `index-figma-components` | component inventory occurs after formalization |
| `map-figma-to-code` | turns on later when the code appears; not part of the starter workflow |
| `derive-design-playbook` | replaced by reference analysis, UI theory and visual direction |

## Added - 15

Stages: `start-greenfield-product`, `build-wireframes`, `review-wireframes`, `analyze-visual-references`, `define-visual-direction`, `build-exploratory-screens`, `nominate-components`, `formalize-design-system`.

Initial migration methods: `map-information-architecture`, `plan-usability-validation`, `interpret-visual-references`, `inventory-supplied-assets`, `evaluate-ui-quality`, `detect-reusable-candidates`, `trace-ux-to-ui`. Later, `interpret-visual-references` and `detect-reusable-candidates` were combined with the corresponding stage skills; after testing, a conditional method `synthesize-usability-results` was added.
