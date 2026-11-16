# Run record: <project> <run name>

Append-only below the header, one line per event with a real time. On resume, read the header and every open item.

## Header (keep current)

- Goal and finish line: <what done means> — proved by <check>.
- Host: <T3 Code (thread id) | Claude desktop | Claude CLI | Codex> · lane runtime: Herdr session <name>, owned by this run · fallback lanes: <T3 child tasks, with the reason, or none> · run dir: <path> · tools root: <skill>/scripts
- Base: <branch> @ <sha> (fetched <time>, or "freshness unverified").
- Rule sources in force: <global rules>, <project CLAUDE.md/AGENTS.md>, <design rule file>, <run briefs>.

## Approvals (what each yes covers, in the user's words)

| When | User's exact words | Action it covers | Target / environment | Limits (budget, heads, SQL hash) | Source (chat time or file) |
| --- | --- | --- | --- | --- | --- |

## Holds (never-batch, waiting for the user's yes, unresolved inputs)

| Item | Held heads / SHAs | Why held | Releases when |
| --- | --- | --- | --- |

## Lanes

| Lane | Kind / model / effort | Herdr agent / pane / session id (or T3 taskId + link, fallback) | Worktree / branch | Brief | Hand-over | State |
| --- | --- | --- | --- | --- | --- | --- |

## Log
