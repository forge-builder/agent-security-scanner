# Agent Security Scanner

Local audit surface for OpenClaw agent builders.

## Problem

Agent builders need faster, more understandable trust checks before installing or running new skills. Roger's own experience proved this pain:
- secret leakage risk
- weak publish governance
- repeated auth/debug misclassification

## Solution

A local scanner that provides fast, understandable trust checks for:
- skills being installed
- workspace state and runtime surfaces
- secret leakage risks
- publish governance gaps

## Usage

```bash
# Sample audit
bash scripts/agent-security-scanner.sh --sample --output docs/wedges/agent_security_scanner/sample-audit.md

# Scan a specific skill
bash scripts/agent-security-scanner.sh --target skills/skill-name/SKILL.md --output state/runtime/skill-name-audit.md
```

## Sample Result

```
- risk_score: 5
- risk_level: SAFE
- recommendation: Proceed
```

## Proof Artifacts

- [Research Packet](research-packet.md)
- [Proof Spec](proof-spec.md)
- [Sample Audit](sample-audit.md)
- [Proof Page](proof-page.md)
- [Latest Scan: security-audit-toolkit](security-audit-toolkit-scan-20260318.md)

## Why This Matters

Trust must be verified before installation, not assumed.
