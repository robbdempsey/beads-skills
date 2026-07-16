#!/usr/bin/env bash
set -euo pipefail

# Install beads CLI (system-wide)
curl -fsSL https://raw.githubusercontent.com/gastownhall/beads/main/scripts/install.sh | bash

if ! command -v bd >/dev/null 2>&1 || ! bd version >/dev/null 2>&1; then
  echo "Warning: beads CLI (bd) is not installed or not working correctly." >&2
  exit 1
fi

echo "beads CLI (bd) installed successfully: $(bd version)"