# Lane <name> (<model>, <effort>)

Read <run-dir>/common.md (the rules every lane shares) first.

## Goal
<one paragraph; the user's words quoted where they set the target>

## References the user gave (use each; say where in the hand-over)
- <link or saved file> — <what the user said about it>

## Boundaries
- May edit: <paths>. Must not touch: <other lanes' paths>, production settings, migrations on any hosted database, paid generation, account settings.
- Base: <sha> (do not rebase onto anything newer unless told). T3 fallback lanes only: in a fresh T3 worktree, start with `git fetch origin && git switch -c <branch> <sha>`, then install dependencies.

## Done means
- <exact checks, scoped>; evidence paths for each; for UI: shots at <widths> in every theme from the PR preview or a local dev server.

## Delivery
- Branch <branch>, draft PR, never merge.
- Hand-over <run-dir>/handover-<name>.md: what changed, checks with commands and real results, evidence paths, open questions. For each missing input, unavailable tool or skipped check, say what remains unverified.
- Its last line, at the start of a line: `<NAME>-READY <PR> <head>` (add URGENT only if the run has an urgent-release grant and users are hit now).

## Delivery (review lanes, instead of the above)
- State what blocks this review (`references/pipeline.md`, Gate) and which checks the project requires. Put other findings under Later.
- No branch or PR. Review file <run-dir>/review-<name>.md, in this order: can merge or cannot merge, with every blocking finding (or "no blocking finding"); the scope actually reviewed (heads, paths, checks run); what was left unchecked; other findings under Later, most serious first.
- Its last line, at the start of a line: `REVIEW-READY <name> <verdict>`.
