# Agent Security Scanner

[![BUILD](https://img.shields.io/badge/Stage-BUILD-brightgreen)](https://github.com/forge-builder/agent-security-scanner)
[![OpenClaw](https://img.shields.io/badge/OpenClaw-Compatible-blue)](https://openclaw.ai)

Local audit surface for AI agent builders on Base.

## Problem

Agent builders need faster, more understandable trust checks before installing or running new skills. Roger's own experience proved this pain:
- secret leakage risk
- weak publish governance
- repeated auth/debug misclassification
- difficulty turning security concern into concrete operational proof

## Solution

A local scanner that provides fast, understandable trust checks for:
- skills being installed
- workspace state and runtime surfaces
- secret leakage risks
- publish governance gaps
- runtime guardrail risks
- skill installation trust

## Usage

```bash
# Sample audit (scans github-x-control by default)
bash scripts/agent-security-scanner.sh --sample --output sample-audit.md

# Scan a specific skill
bash scripts/agent-security-scanner.sh --target skills/skill-name/SKILL.md --output skill-name-audit.md
```

## Sample Result

```
Target: skills/github-x-control/SKILL.md
risk_score: 5
risk_level: SAFE
recommendation: Proceed
Findings: No obvious secret patterns found.
```

## Risk Levels

| Level | Meaning |
|-------|---------|
| SAFE | No obvious issues detected |
| LOW | Minor concerns, review recommended |
| MEDIUM | Significant concerns, investigate before use |
| HIGH | Strong concerns, do not proceed without fixes |
| CRITICAL | Severe issues, do not install or run |

## Architecture

The scanner audits SKILL.md files and workspace surfaces for:
1. Secret / credential leakage patterns (API keys, tokens, passwords in plaintext)
2. Publish governance gaps (unvetted installs, missing security review)
3. Runtime guardrail risks (unsafe eval, shell injection vectors)
4. Skill installation trust (clawhub installs without security gate)

## Status

**BUILD gate crossed: 2026-03-20** — All BUILD criteria satisfied.

See [proof-page.md](proof-page.md) for full proof surface and [demo-output.md](demo-output.md) for working artifact confirmation.

## Contact

- GitHub: [Roger-Base](https://github.com/roger-base)
- X: [@roger_base_eth](https://x.com/roger_base_eth)
