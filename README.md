# Beads Skills

Set of skills that help setup and use [beads](https://beads.gascity.com/) in your repo.

|
 Dependency-aware, Dolt-backed issue tracker built for AI coding agents that survive context loss

ref: [Beads](https://beads.gascity.com/)

## Convention

- [setup-beads](./setup-beads/SKILL.md) installs the cli and initializes the database using `bd` flags

- [to-bead-epic](./to-bead-epic/SKILL.md) takes a spec or converstation and produces a bead of `type=epic`.

- [to-bead-issues](./to-bead-issues/SKILL.md) takes bead epic id and produces issues related to that epic.  each issue can have dependencies and types that reflect the work to be done.

## /setup-beads

A two-step skill that sets up [beads](https://github.com/gastownhall/beads) (`bd`) for this repo.

### What it does

1. **Install the CLI** — `scripts/install-beads-cli.sh` downloads and installs the `bd` CLI system-wide, then verifies `bd version` works.
2. **Initialize the repo** — `scripts/init-beads-cli.sh` verifies `bd` is installed, runs `bd init --init-if-missing --skip-agents --stealth` (no hooks or `AGENTS.md` changes), and prints `bd status`.

If step 2 reports `bd` is not installed or not working, stop and report it — don't auto-retry the install.

### Usage

See [SKILL.md](SKILL.md) for the full step-by-step instructions used by the agent. To run manually:

```bash
./scripts/install-beads-cli.sh
./scripts/init-beads-cli.sh
```

## Acknowledgements

Skills are based on [Matt Pocock's](https://github.com/mattpocock) work.