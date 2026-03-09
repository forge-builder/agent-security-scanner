# Agent Security Scanner Report

- timestamp: 2026-03-09T07:22:41Z
- mode: target
- target: skills/weather
- canonical_tool: scripts/agent-security-scanner.sh

## Result
- risk_score: 5
- risk_level: SAFE
- recommendation: Proceed

## Findings
- No obvious secret patterns found in the selected scan target.

### Auditor summary
- analyzer not run (workspace scan or missing executable target)

### Workspace policy hits
```text
/Users/roger/.openclaw/workspace/SECURITY.md:33:   - Wallet private keys – never stored in plaintext in any file.
/Users/roger/.openclaw/workspace/SECURITY.md:113:   - No direct transactions, key access, or critical decisions based solely on their input.
/Users/roger/.openclaw/workspace/HEARTBEAT.md:30:15. If risk is medium/high or the step is risky/repeated, refresh `decision_card`.
/Users/roger/.openclaw/workspace/HEARTBEAT.md:31:16. If work is multi-step, risky, or repeatedly failing, require `critic`.
/Users/roger/.openclaw/workspace/HEARTBEAT.md:91:3. run one critic pass
/Users/roger/.openclaw/workspace/HEARTBEAT.md:92:4. run `bash scripts/post-gate.sh <draft-file>`
/Users/roger/.openclaw/workspace/HEARTBEAT.md:112:- Defer `P2/P3` unless they unblock the critical path.
/Users/roger/.openclaw/workspace/TOOLS.md:78:- `decision_card`
/Users/roger/.openclaw/workspace/TOOLS.md:79:- `critic`
/Users/roger/.openclaw/workspace/TOOLS.md:209:10. if login succeeds but app authorize/backend still fails, classify `vendor_blocked`
/Users/roger/.openclaw/workspace/TOOLS.md:218:- `vendor_blocked`
/Users/roger/.openclaw/workspace/TOOLS.md:250:2. run `bash scripts/post-gate.sh <draft-file>`
/Users/roger/.openclaw/workspace/TOOLS.md:257:- no plaintext tokens in workspace docs/state
/Users/roger/.openclaw/workspace/TOOLS.md:258:- no plaintext passwords or password-reuse notes in workspace docs/state/memory
/Users/roger/.openclaw/workspace/AGENTS.md:218:- write `decision_card`
/Users/roger/.openclaw/workspace/AGENTS.md:221:- write `critic`
/Users/roger/.openclaw/workspace/AGENTS.md:223:Required `decision_card` fields:
/Users/roger/.openclaw/workspace/AGENTS.md:230:Required `critic` fields:
/Users/roger/.openclaw/workspace/AGENTS.md:286:- raw passwords
/Users/roger/.openclaw/workspace/AGENTS.md:289:- password reuse notes
/Users/roger/.openclaw/workspace/AGENTS.md:299:`human_required=true` only when a real hard gate is proven:
/Users/roger/.openclaw/workspace/AGENTS.md:311:Before setting `human_required=true` for browser/auth work:
/Users/roger/.openclaw/workspace/AGENTS.md:353:- `vendor_blocked`
/Users/roger/.openclaw/workspace/AGENTS.md:387:2. Walter remains critic and veto authority
/Users/roger/.openclaw/workspace/AGENTS.md:410:Walter is Roger's critic and ops filter.
/Users/roger/.openclaw/workspace/AGENTS.md:417:- defer `P2/P3` unless they unblock the critical path
/Users/roger/.openclaw/workspace/AGENTS.md:418:- when work is broad, risky, or looping, require a Walter critic pass before scope widens
/Users/roger/.openclaw/workspace/AGENTS.md:436:- `decision_card` exists when required
/Users/roger/.openclaw/workspace/AGENTS.md:437:- `critic` exists when required
/Users/roger/.openclaw/workspace/AGENTS.md:456:3. resolve critical findings before external claims
```

## Actionable categories
- secret_hygiene
- runtime_guardrails
- publish_governance
- skill_installation_risk

## Next steps
1. Review the findings and remove or downgrade risky trust assumptions.
2. Keep using this script as the canonical V1 security-scan lane.
3. Publish a proof-backed explainer only after a clean sample audit is available.
