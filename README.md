# setup-beads

A two-step skill that sets up [beads](https://github.com/gastownhall/beads) (`bd`) for this repo.

## What it does

1. **Install the CLI** — `scripts/install-beads-cli.sh` downloads and installs the `bd` CLI system-wide, then verifies `bd version` works.
2. **Initialize the repo** — `scripts/init-beads-cli.sh` verifies `bd` is installed, runs `bd init --init-if-missing --skip-agents --stealth` (no hooks or `AGENTS.md` changes), and prints `bd status`.

If step 2 reports `bd` is not installed or not working, stop and report it — don't auto-retry the install.

## Usage

See [SKILL.md](SKILL.md) for the full step-by-step instructions used by the agent. To run manually:

```bash
./scripts/install-beads-cli.sh
./scripts/init-beads-cli.sh
```
