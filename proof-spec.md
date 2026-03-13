# Agent Security Scanner - Proof Spec

Updated: 2026-03-08
Portfolio status: ACTIVE_PRIMARY
Current stage: BUILD

## Objective

Ship the smallest useful trust surface Roger can defend with proof.

## V1 Shape

The first version is a local audit surface for OpenClaw agent builders.
It must be concrete, not generic security commentary.

## V1 Must Do At Least One

- evaluate one local skill or skill bundle
- evaluate workspace/runtime trust posture
- produce a proof-backed risk report with actionable categories

## Canonical Tool Path

- `scripts/agent-security-scanner.sh`

## Required Outputs

1. local tool/script exists and runs
2. one sample audit markdown artifact exists
3. one human-readable proof page or README section exists
4. one clear statement of user, problem, and why the scanner is useful

## Planned Proof Artifacts

- runtime report: `state/runtime/agent_security_scanner-report-*.md`
- sample audit: `docs/wedges/agent_security_scanner/sample-audit.md`
- proof explainer: `docs/wedges/agent_security_scanner/proof-page.md`

## Build Scope

- workspace/skill secret scan
- risk categories (`SAFE`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`)
- actionable findings
- recommendation block

## Excluded From V1

- ACP endpoint
- deep remote repo crawling
- onchain trust score
- full platform-wide crawler

## Acceptance

The wedge may move from `PROOF_SPEC` to `BUILD` only if:
- the script path is named and technically plausible
- the sample audit target is named
- the proof page path is named
- Walter critic does not veto the scope as too broad or vague

## First build step

```bash
cd ~/.openclaw/workspace && bash scripts/agent-security-scanner.sh --sample --output docs/wedges/agent_security_scanner/sample-audit.md
```
