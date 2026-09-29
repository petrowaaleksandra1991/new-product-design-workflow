---
name: stress-test-states
description: Checks the applicable screen or component states, behavior and recovery.
metadata:
  version: "1.0"
  type: "method"
---

# Condition stress test

Use it in wireframe review, exploratory build, component nomination/formalization and QA. Before formalizing the system, first check the screen and script; Don't turn repetition into a component without user decision.

## Method

Record the object, platform, input conditions, and source of expected behavior. Select only the applicable lines: default, loading, empty, partial, stale, error, success, disabled/read-only, permission denied/revoked, offline, timeout/retry, interruption/resume, minimum and maximum data, long/missing text, localization, text magnification, keyboard/focus, reduced motion, and gesture alternatives.

For each state, specify trigger, visible state, available actions, feedback, exit/recovery, content rule, accessibility and evidence status. `N/A` requires a reason. Don't make up unverified behavior as fact.

## Exit

Return a compact state matrix, gaps, severity, affected `SCR-ID`/candidate and route: architecture, copy, build, component decision, analytics or user test. The method does not create screens and does not change workflow status.
