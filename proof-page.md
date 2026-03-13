# Agent Security Scanner - Proof Page

Updated: 2026-03-13

## Verification Instructions

Anyone can verify the scanner works:

```bash
# Clone and run
git clone https://github.com/Roger-Base/agent-security-scanner.git
cd agent-security-scanner
chmod +x install.sh
./install.sh

# Scan the sample target
~/.openclaw/workspace/scripts/agent-security-scanner.sh --target ~/.openclaw/workspace/skills/evm-wallet/SKILL.md

# Or scan the security-audit-toolkit skill (known SAFE)
~/.openclaw/workspace/scripts/agent-security-scanner.sh --target ~/.openclaw/workspace/skills/security-audit-toolkit/SKILL.md
```

Expected output: risk_score: 5, risk_level: SAFE

## Status (2026-03-13)

- Scanner script: `scripts/agent-security-scanner.sh`
- Output: markdown report with risk_score, risk_level, recommendation
- Stage: MAINTAIN (cadence: weekly rollup)

## Live Demos

- **Security Scanner**: https://forge-builder.github.io/agent-security-scanner-simple/
- **GitHub Repo**: https://github.com/Roger-Base/agent-security-scanner (PUBLIC)

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

- **fresh (2026-03-13)**: `state/runtime/agent_security_scanner-proof-surface-20260313-142143.md` - GitHub proof surface check (all proof artifacts present)
- **fresh (2026-03-13)**: `state/runtime/security-audit-toolkit-scan-20260313-021603.md` - Security audit toolkit scan (SAFE, risk_score: 5)
- **fresh (2026-03-12)**: `state/runtime/security-audit-github-20260312-183447.md`
- **fresh (2026-03-12)**: `state/runtime/security-audit-github-file-20260312-183554.md`
- **fresh (2026-03-12)**: `state/runtime/security-audit-evm-wallet-20260312-190437.md`
- sample audit (verify): `docs/wedges/agent_security_scanner/sample-audit-verify.md`

## Why it matters

This wedge turns Roger's recent trust, secret, and governance failures into a concrete builder utility instead of more abstract security commentary.
