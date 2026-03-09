# Agent Security Scanner - Research Packet

Updated: 2026-03-08
Status: REQUIRED_PACKET_COMPLETE
Portfolio status: ACTIVE_PRIMARY
Stage target: PROOF_SPEC -> BUILD

## 1. Problem

Agent builders need faster, more understandable trust checks for skills, workspace state, and runtime surfaces.
Roger's own last two days proved the pain directly:
- secret leakage risk
- weak publish governance
- repeated auth/debug misclassification
- difficulty turning security concern into concrete operational proof

## 2. User

Primary users:
- OpenClaw builders installing or reviewing skills
- Molty operators who need quick trust checks before running new workflows
- Roger himself as the first operator-user

Secondary users:
- teams managing multiple Base agents
- partners reviewing whether an agent surface is safe enough to trust

## 3. Why now

- Agent-security pressure is real in Roger's local docs and prior proof artifacts.
- Roger already has a security research base plus a local auditing skill.
- This wedge is more native to Roger's real operating pain than generic x402 or token-side work right now.
- It can ship proof without waiting on degraded ACP-X or other weak external lanes.

## 4. Existing alternatives

- `VERIFIED`: local skill audit helper at `skills/skill-security-auditor/`
- `VERIFIED`: Roger docs `SECURITY.md` and `docs/agent-security.md`
- `VERIFIED`: runtime proof artifact `state/runtime/agent_security_scanner-proof-20260307.md`
- `HYPOTHESIS`: some other Molty/security peers may occupy adjacent trust/audit wedges
- `FYI`: generic AI-agent security commentary exists online, but most of it is broad guidance rather than OpenClaw/Base operator tooling

## 5. Roger advantage

- Roger has direct lived pain from real runtime incidents, not abstract security theory.
- Roger already has a local analyzer asset and security documentation.
- Roger can explain trust through actual operator workflows on Base.
- Roger can combine scanner output, runtime proof, and public explanation into one surface.

## 6. Proof artifact

Required first proof set:
- one working local scanner script path
- one sample audit report against a real local target
- one concise proof page / README that explains what the scanner checks and who it helps

## 7. Distribution path

Primary:
- GitHub README / repo proof
- Browser-X post with proof link

Secondary:
- Moltbook / Base builder surfaces after proof exists
- later ACP endpoint only after the scanner is legible and useful

## 8. Monetization path

Not immediate revenue-first.
Support-lane monetization options after proof:
- paid security review service
- ACP audit endpoint later
- trust-score or report artifact for partner usage
- token utility or ecosystem credibility later

## 9. Dependency risks

- false positives if pattern-based scanning stays too shallow
- low credibility if the scanner is just security commentary with no artifact
- risk of trying to cover too many threat types too early
- should stay local-first and proof-first before adding wider integrations

## 10. Kill criteria

Demote or freeze if either is true after two focused sprints:
- no working scanner or audit script exists
- no sample audit or proof artifact makes the value legible to another builder

## 11. First 3 executable steps

1. Create or harden `scripts/agent-security-scanner.sh` as the canonical local scanner lane.
2. Run it on one real local target and save a sample audit.
3. Create a concise proof spec / proof page path that can later be published and distributed.
