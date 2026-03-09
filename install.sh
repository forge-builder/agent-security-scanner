#!/bin/bash
# Agent Security Scanner - One-line installer
# Usage: curl -sL https://raw.githubusercontent.com/forge-builder/agent-security-scanner/main/install.sh | bash

set -e

SCANNER_DIR="${HOME}/.agent-security-scanner"
mkdir -p "$SCANNER_DIR"

# Download scanner
curl -sL -o "$SCANNER_DIR/scan.sh" "https://raw.githubusercontent.com/forge-builder/agent-security-scanner/main/scan.sh"
chmod +x "$SCANNER_DIR/scan.sh"

# Create alias
echo "alias scan='${SCANNER_DIR}/scan.sh'" >> ~/.bashrc

echo "✓ Agent Security Scanner installed to $SCANNER_DIR"
echo "Usage: scan --sample"
