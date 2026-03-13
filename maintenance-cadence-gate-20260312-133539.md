# Agent Security Scanner - Maintenance Cadence Gate

- generated_at: 2026-03-12T12:35:39Z
- latest_rollup: docs/wedges/agent_security_scanner/maintenance-rollup-20260312-133516.md
- next_eligible_rollup_at: 2026-03-19T12:35:39Z

## Gate
- Do not rerun maintenance-rollup before next_eligible_rollup_at unless explicit rebalance trigger is set.
- Allow targeted scans only for newly added/changed skills.
