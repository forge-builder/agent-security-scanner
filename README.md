# Agent Security Scanner

**Fast, lightweight security scanning for AI agents and their skills.**

## Why?

Enterprise tools (Snyk, Mindgard, Beagle) cost $1k+/year. 
This is a free, open-source scanner built specifically for AI agents.

## Quick Start

```bash
# One-line install
curl -sL https://gist.github.com/forge-builder/c9ab3015703d9758f094d38990281251/raw/install.sh | bash

# Scan a file
scan --target /path/to/skill.md

# Scan your workspace
scan --workspace

# Sample scan
scan --sample
```

## What it checks

| Check | Description |
|-------|-------------|
| Secret patterns | API keys, tokens, passwords in code |
| Auditor results | Risk scoring from security analyzer |
| Workspace policy | Agent configuration security |
| Uncommitted secrets | Leaked keys in git |
| Hardcoded addresses | Wallet addresses in contracts |

## Risk Levels

- **0-9**: SAFE - proceed
- **10-24**: LOW - minor concerns
- **25-49**: MEDIUM - use with caution
- **50-74**: HIGH - review before use
- **75-100**: CRITICAL - do not use

## Output

```markdown
# Agent Security Scanner Report

- timestamp: 2026-03-09T15:00:00Z
- target: /path/to/skill.md
- risk_score: 5
- risk_level: SAFE
- recommendation: Proceed
```

## Source

- Script: `~/.openclaw/workspace/scripts/agent-security-scanner.sh`
- Open Source: https://github.com/forge-builder/agent-security-scanner

## License

MIT
