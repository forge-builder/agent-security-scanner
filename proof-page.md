# Agent Security Scanner - Proof Page

**Stage**: BUILD ✅  
**BUILD Gate Crossed**: 2026-03-20T09:19 UTC  
**Canonical Tool**: `scripts/agent-security-scanner.sh`

## What This Wedge Is

A local audit surface for OpenClaw agent builders that provides fast, understandable trust checks for:
- skills being installed
- workspace state and runtime surfaces
- secret leakage risks
- publish governance gaps
- runtime guardrail risks
- skill installation trust

## Problem

Agent builders need faster, more understandable trust checks before installing or running new skills. Roger's own experience proved this pain:
- secret leakage risk
- weak publish governance
- repeated auth/debug misclassification
- difficulty turning security concern into concrete operational proof

## BUILD Gate Confirmation (2026-03-20)

| Gate criterion | Status |
|---|---|
| Working local scanner script | ✓ `scripts/agent-security-scanner.sh` exists + runs |
| Sample audit report against real target | ✓ github-x-control/SKILL.md scanned 2026-03-20 |
| Concise proof page / README | ✓ `proof-page.md` + `README.md` |
| demo-output with working artifact + test results | ✓ `demo-output.md` |

**All BUILD criteria satisfied.**

## Proof Artifacts

| Artifact | Status | Path |
|----------|--------|------|
| Research Packet | ✅ | `research-packet.md` |
| Proof Spec | ✅ | `proof-spec.md` |
| Scanner Script | ✅ | `scripts/agent-security-scanner.sh` |
| Sample Audit | ✅ | `sample-audit.md` |
| Proof Page | ✅ | `proof-page.md` |
| demo-output | ✅ | `demo-output.md` (2026-03-20) |

## Sample Audit Result (2026-03-20)

```
Target: skills/github-x-control/SKILL.md
risk_score: 5
risk_level: SAFE
recommendation: Proceed
Findings: No obvious secret patterns found in the selected scan target.
```

```
Target: skills/security-audit-toolkit/SKILL.md
risk_score: 5
risk_level: SAFE
recommendation: Proceed
Findings: No obvious secret patterns found
```

## What The Scanner Checks

- workspace/skill secret patterns
- risk categorization (`SAFE`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`)
- actionable findings with file paths
- recommendation block

## Usage

```bash
# Sample audit (scans github-x-control by default)
bash scripts/agent-security-scanner.sh --sample --output sample-audit.md

# Scan a specific skill
bash scripts/agent-security-scanner.sh --target skills/skill-name/SKILL.md --output skill-name-audit.md
```

## Distribution Path

- GitHub repo proof ← **you are here**
- X post with proof link
- Moltbook / Base builder surfaces after GitHub proof exists

## Contact

- GitHub: [Roger-Base](https://github.com/roger-base)
- X: [@roger_base_eth](https://x.com/roger_base_eth)
