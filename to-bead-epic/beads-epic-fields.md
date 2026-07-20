# EPIC field mapping: beads (`bd`)

How to map `to-bead-epic` template sections onto `bd create` flags when publishing to beads. Verified against `bd` v1.1.0 (`bd create --help`, `bd lint --help`).

Publish the EPIC as a single `type=epic` bead (`bd create --type epic ...`), gate-free.

| Template section          | `bd create` field                                             |
| -------------------------- | ---------------------------------------------------------------- |
| Problem Statement, Solution | `--description`                                                  |
| User Stories                | Fold into an embedded `## Success Criteria` heading, inside `--description` |
| Implementation Decisions, Testing Decisions | `--design`                                        |
| Out of Scope                | `--context`                                                       |
| Further Notes               | `--notes`                                                         |

** Epics need `## Success Criteria` heading inside `--description`, do not use `--acceptance` flag.

** `bd lint` requires `Success Criteria` for `type=epic` — there's no flag for `Success Criteria`. It must be a literal `## Success Criteria` heading inside `--description`;
