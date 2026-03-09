# Agent Security Scanner Report

- timestamp: 2026-03-09T11:16:04Z
- mode: sample
- target: /Users/roger/.openclaw/workspace/skills/github-x-control/SKILL.md
- canonical_tool: scripts/agent-security-scanner.sh

## Result
- risk_score: 40
- risk_level: MEDIUM
- recommendation: Use with caution and address the highlighted issues.

## Findings
- No obvious secret patterns found in the selected scan target.

### Auditor summary
- analyzer: /Users/roger/.openclaw/workspace/skills/skill-security-auditor/analyze-skill.sh
- raw_log: /var/folders/l2/s6s2bw895_d92x3x4tk9zl6w0000gp/T/tmp.gR1qgXqv46
```text
9:Risk Score: 12/100 - ✅ SAFE
13:[0;31m☠️ CRITICAL FINDINGS:[0m
16:[1;33m🔴 HIGH RISK FINDINGS:[0m
29:RECOMMENDATION:
```

### Workspace policy hits
```text
/Users/roger/.openclaw/workspace/TOOLS.md:78:- `decision_card`
/Users/roger/.openclaw/workspace/TOOLS.md:79:- `critic`
/Users/roger/.openclaw/workspace/TOOLS.md:209:10. if login succeeds but app authorize/backend still fails, classify `vendor_blocked`
/Users/roger/.openclaw/workspace/TOOLS.md:218:- `vendor_blocked`
/Users/roger/.openclaw/workspace/TOOLS.md:250:2. run `bash scripts/post-gate.sh <draft-file>`
/Users/roger/.openclaw/workspace/TOOLS.md:257:- no plaintext tokens in workspace docs/state
/Users/roger/.openclaw/workspace/TOOLS.md:258:- no plaintext passwords or password-reuse notes in workspace docs/state/memory
/Users/roger/.openclaw/workspace/skills/farcaster-skill/SKILL.md:21:eval $(jq -r '"export NEYNAR_API_KEY=\(.apiKey)\nexport NEYNAR_SIGNER_UUID=\(.signerUuid)"' /path/to/neynar.json)
/Users/roger/.openclaw/workspace/AGENTS.md:59:Never label Tier B/C external claims as `VERIFIED` without local proof.
/Users/roger/.openclaw/workspace/AGENTS.md:62:- Tier A: local files, local commands, runtime artifacts, official OpenClaw docs
/Users/roger/.openclaw/workspace/AGENTS.md:63:- Tier B: GitHub docs/issues/readmes, official protocol docs
/Users/roger/.openclaw/workspace/AGENTS.md:64:- Tier C: X posts, community opinions, rumors
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
/Users/roger/.openclaw/workspace/HEARTBEAT.md:30:15. If risk is medium/high or the step is risky/repeated, refresh `decision_card`.
/Users/roger/.openclaw/workspace/HEARTBEAT.md:31:16. If work is multi-step, risky, or repeatedly failing, require `critic`.
/Users/roger/.openclaw/workspace/HEARTBEAT.md:91:3. run one critic pass
/Users/roger/.openclaw/workspace/HEARTBEAT.md:92:4. run `bash scripts/post-gate.sh <draft-file>`
/Users/roger/.openclaw/workspace/HEARTBEAT.md:112:- Defer `P2/P3` unless they unblock the critical path.
/Users/roger/.openclaw/workspace/skills/ethskills/SKILL.md:127:- IPFS deploy: `trailingSlash: true` is critical — without it, every route except `/` returns 404.
/Users/roger/.openclaw/workspace/skills/github-x-control/SKILL.md:24:- Never print or store plaintext secrets in notes.
/Users/roger/.openclaw/workspace/skills/github-x-control/SKILL.md:140:1. persist blocker with `human_required=true` and cooldown
/Users/roger/.openclaw/workspace/SECURITY.md:33:   - Wallet private keys – never stored in plaintext in any file.
/Users/roger/.openclaw/workspace/SECURITY.md:113:   - No direct transactions, key access, or critical decisions based solely on their input.
/Users/roger/.openclaw/workspace/skills/agent-evaluation/SKILL.md:60:| Test data accidentally used in training or prompts | critical | // Prevent data leakage in agent evaluation |
/Users/roger/.openclaw/workspace/skills/skill-security-auditor/SKILL.md:266:3. **Manual code review** - Final verification for critical use cases
/Users/roger/.openclaw/workspace/skills/skill-security-auditor/SKILL.md:424:- Always combine with VirusTotal + manual review for critical applications
/Users/roger/.openclaw/workspace/skills/skill-creator/SKILL.md:43:**Low freedom (specific scripts, few parameters)**: Use when operations are fragile and error-prone, consistency is critical, or a specific sequence must be followed.
/Users/roger/.openclaw/workspace/skills/self-improving-agent/SKILL.md:145:**Priority**: low | medium | high | critical
/Users/roger/.openclaw/workspace/skills/self-improving-agent/SKILL.md:426:| `critical` | Blocks core functionality, data loss risk, security issue |
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:50:- write/update `decision_card`
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:51:- write/update `critic`
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:52:- use Walter as critic when available
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:68:- classify a visible chooser/login as `human_required=true`
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:73:- log plaintext secrets, passwords, tokens, or password reuse notes
/Users/roger/.openclaw/workspace/skills/operator-discipline/SKILL.md:85:If the task is broad, risky, or repeatedly failing, Roger should ask Walter for one critic pass focused on:
/Users/roger/.openclaw/workspace/skills/security-audit-toolkit/SKILL.md:33:# Show only high and critical
/Users/roger/.openclaw/workspace/skills/security-audit-toolkit/SKILL.md:393:    npm audit --audit-level=high 2>/dev/null && ok "npm: no high/critical vulns" || warn "npm audit found issues"
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
