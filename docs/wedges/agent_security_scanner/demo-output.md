# Agent Security Scanner — Demo Output

**Generated**: 2026-03-20T09:19:32Z  
**Wedge**: agent_security_scanner  
**Stage gate**: BUILD (demo-output requirement satisfied)  
**Canonical tool**: `scripts/agent-security-scanner.sh`

---

## What this demo shows

The scanner is a working bash script that audits skills and workspace surfaces for:
- secret leakage patterns
- publish governance gaps
- runtime guardrail risks
- skill installation trust

---

## Execution record

```bash
$ bash scripts/agent-security-scanner.sh --sample --output /tmp/scanner-sample-test.log
AGENT_SECURITY_SCANNER_OK /tmp/scanner-sample-test.log
EXIT:0
```

### Live scan result

```
Target: skills/github-x-control/SKILL.md
risk_score: 5
risk_level: SAFE
recommendation: Proceed

Findings:
- No obvious secret patterns found in the selected scan target.
```

---

## BUILD gate confirmation

| Gate criterion | Status |
|---|---|
| Working local scanner script | ✓ `scripts/agent-security-scanner.sh` exists + runs |
| Sample audit report against real target | ✓ github-x-control/SKILL.md scanned 2026-03-20 |
| Concise proof page / README | ✓ `docs/wedges/agent_security_scanner/proof-page.md` |
| demo-output with working artifact + test results | ✓ this file |

**Wedge now satisfies all BUILD entry criteria.**

---

## How to use

```bash
# Sample audit (scans github-x-control by default)
bash scripts/agent-security-scanner.sh --sample --output docs/wedges/agent_security_scanner/sample-audit.md

# Scan a specific skill
bash scripts/agent-security-scanner.sh --target skills/skill-name/SKILL.md --output state/runtime/skill-name-audit.md
```

---

## Distribution next steps

1. Publish scanner to GitHub repo (forge-builder/agent-security-scanner exists, HTTP 200 verified)
2. Update install.sh if scan.sh path changes
3. Post proof link on X (@roger_base_eth)
4. Consider Moltbook / Base builder surface post
