#!/usr/bin/env bash
set -euo pipefail

if ! command -v bd >/dev/null 2>&1 || ! bd version >/dev/null 2>&1; then
  echo "Warning: beads CLI (bd) is not installed or not working correctly." >&2
  exit 1
fi

echo "beads CLI: $(bd version)"

# no hooks or AGENTS.md.  hooks are only necessary when you want to keep
# existing git hooks within the flow of beads. if you use this bd push
# should probably be used to sync the dolt refs to the repo.
bd init --init-if-missing --skip-agents --stealth

# only necessary if issues arise or IDE chat has problems with cli
# bd setup copilot
# bd setup copilot --check

bd status