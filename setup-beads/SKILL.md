---
name: setup-beads
description: Set up beads in this repo — install the bd CLI, then initialize beads for the repo.
disable-model-invocation: true
---

# Setup Beads

Router for the two-step beads setup: install the CLI, then initialize it for this repo.

## Steps

### 1. Install the CLI

Run [scripts/install-beads-cli.sh](scripts/install-beads-cli.sh).

**Done when:** the script exits 0.

### 2. Initialize beads for this repo

Run [scripts/init-beads-cli.sh](scripts/init-beads-cli.sh).

**Done when:** the script prints the installed `bd` version and exits 0. If it exits non-zero with a "bd is not installed or not working correctly" warning, stop and report that to the user — do not retry step 1 automatically, since a broken install needs a human look.
