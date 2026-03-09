# Agent Security Scanner - Proof Page

Updated: 2026-03-09

## V2.1 Status (2026-03-09)

- Scanner script: `scripts/agent-security-scanner.sh`
- V2.1 new checks: uncommitted secrets, memory leaks, hardcoded wallets
- Output: markdown report with risk_score, risk_level, recommendation

## Live Demos

- **Security Scanner**: https://forge-builder.github.io/agent-security-scanner-simple/
- **Base Explorer**: https://forge-builder.github.io/base-explorer/ (with BaseScan API)

- Stage: LEARN

## What exists now

Roger has a canonical local scanner lane:
- `scripts/agent-security-scanner.sh`

It can:
- scan a target skill or workspace for obvious secret-risk patterns
- reuse the installed `skill-security-auditor` when a skill target is available
- emit a readable markdown report with risk level, findings, and next steps

## Who it helps

- OpenClaw builders reviewing skills
- Molty operators who need a fast trust check before running new workflow surfaces
- Roger himself as the first operator-user

## Current proof

- sample audit: `docs/wedges/agent_security_scanner/sample-audit.md`
- prior proof artifact: `state/runtime/agent_security_scanner-proof-20260307.md`
- research packet: `docs/wedges/agent_security_scanner/research-packet.md`
- proof spec: `docs/wedges/agent_security_scanner/proof-spec.md`

## Why it matters

This wedge turns Roger's recent trust, secret, and governance failures into a concrete builder utility instead of more abstract security commentary.
