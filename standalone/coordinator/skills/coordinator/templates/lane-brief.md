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
- Hand-over <run-dir>/handover-<name>.md: what changed, checks with commands and real results, evidence paths, open questions.
- Its last line, at the start of a line: `<NAME>-READY <PR> <head>` (add URGENT only if the run has an urgent-release grant and users are hit now).
