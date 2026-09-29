---
name: check-data-egress
description: Checks provider, data class, target, minification and resolution before external transfer; does not send the data itself.
metadata:
  version: "1.0"
  type: "method"
---

# Check external transmission

External transfer is sending text, file, screenshot, asset, design context or derived data outside the current permitted environment to another provider/target.

## Check

Before surgery, record:

- provider and specific target;
- action: read, derived-text transfer, file upload, cross-provider transfer, write or publish;
- the goal and why the problem cannot be solved without transfer;
- data class: `public`, `internal`, `confidential`, `personal` or `secret`;
- minimum required fragment;
- anonymization/redaction;
- retention, secondary use and available provider controls;
- existing provider-policy or exact `decision-id`;
- data owner and license restrictions.

## Solution

- `allowed-by-policy` - the operation exactly matches the current policy;
- `allowed-once` — the user has allowed a specific operation;
- `needs-decision` - provider, class, goal or action new/incomplete;
- `prohibited` — secret, prohibited material or violation of policy;
- `not-egress` - data does not leave the current boundary.

Technical connection is not a permit. Public does not mean free license. Read permission does not allow write/publish. Never put passwords, tokens or session secrets in a prompt, document or log.

## Magazine

For an allowed operation, update `DATA-EGRESS-LOG.md`: timestamp, category without sensitive content, source environment, destination, purpose, action, decision/policy and result. Do not copy the transferred material there.

## Exit

Return decision, required minimization/redaction, allowed scope and blocker. The method does not perform the transfer itself and does not make the resolution repeatable without an explicit provider-policy written down.
