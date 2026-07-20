# Issue field mapping and dependencies: beads (`bd`)

How to map `to-bead-issues` template sections onto `bd create` flags when publishing to beads. Verified against `bd` v1.1.0 (`bd create --help`, `bd lint --help`).

Publish each issue as a single bead that is a non-epic `--type` and gate-free. `bd types` lists all available. Do not use the `--type=epic` for these beads.

**Dependencies**

When dependencies or blockers exist between issues use the beads native `bd dep` command.  Example with parent and two child issues:

- `bd create "Item A" --parent bd-a3f8e9`
- `bd create "Item B" --parent bd-a3f8e9`
- `bd dep add <item-b-id> <item-a-id>` 

This shows the correct `--parent` usage on both, the correct dependency-order sequencing (blocker created before the dependent) and correct `bd dep add <blocked-id> <blocker-id>` argument order.  Use `bd dep -h` if you need more details.


| Template section          | `bd create` field                                             |
| -------------------------- | ---------------------------------------------------------------- |
| Parent | `--parent` |
| What to build | `--description` |
| Acceptance Criteria | `--acceptance` |
| Out of Scope                | `--context`                                                       |
| Further Notes               | `--notes`                                                         |

** When `Acceptance Criteria` is required use `--acceptance` flag.

** use `bd lint` to determine which flags and markers are required based on the `--type`