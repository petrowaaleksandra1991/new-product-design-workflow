# Scenario: routing, skip, resume

1. “Let's move on” starts exactly one stage and reads that stage's declared inputs.
2. An explicit skip records the user's decision, substitute input and risk without presenting the missing artifact as complete.
3. After an explicit approval, the agent updates `PROJECT-STATUS.md` and the applicable version links.
4. Change the version of an approved upstream artifact without first editing the status table. `show-project-status` must compare the downstream passport to the current input version, report the mismatch and identify the dependent result as `stale` before reuse.
5. Start a fresh task. It reconstructs the current stage from `PROJECT-STATUS.md`, `DECISION-LOG.md`, relevant durable context, the current/next artifact passports and targeted IDs; it does not reread the full artifact chain.
6. A fresh task is recommended after source-heavy context and required for an independent review. If fresh context is unavailable, the review is labeled `author-check`.

Pass requires accurate routing and stale reporting. The scenario does not claim a background watcher: status changes occur when a stage completes or an explicit status audit runs.
