# Example run

The production run this skill was distilled from: a public web app rebuilt from an older template (Next.js, hosted Postgres, a payments provider, an error tracker, preview and production builds on a hosting platform). One coordinator session in the Claude desktop app; Herdr workers for everything else.

Copybook ships with this coordinator. Its run of 25 to 26 Nov 2026 merged 10 changes after 16 review rounds, 3 of which sent the change back, at a median 28 minutes from the last commit to the merge.

## Layout

`<repo>` is the shared checkout, `<work-dir>` the folder beside it holding worktrees and the run, `<run-dir>` = `<work-dir>/fleet`.

| Path | What |
| --- | --- |
| `<repo>` | shared main checkout; lanes never switch its branch or edit there |
| `<work-dir>/wt/<lane>` | one worktree per writer lane |
| `<run-dir>/STATE.md` | append-only log (TICK, READY, SHIPPED, APPLIED, USER YES, SHIP-STOP lines) |
| `<run-dir>/common.md` | rules every lane reads first: worktree, checks, git, build budget, speed rules, load rule, lane ownership |
| `<run-dir>/<lane>.md` | lane briefs |
| `<run-dir>/handover-<lane>.md` | hand-overs ending with the READY line |
| `<run-dir>/review-*.md` | Astra and Sol reviews |
| `<run-dir>/gate/queue.md`, `gate/train-N.md` | standing gate queue and reports |
| `<run-dir>/ship.md` | ship lane brief with the never-batch list |
| `<run-dir>/<release>-packet.md` | release packets (short and long form) |
| `<run-dir>/overnight-<date>.md` | overnight checklist with decisions; morning list |
| `<run-dir>/taste.md` | the user's taste notes, given to second readers |

## Standing lanes (a throughput example for a run with many PR lanes, not a required count)

- Gate A and gate B: Codex Sol medium, read-and-test only, working down `gate/queue.md`.
- Ship: Codex Sol medium, a 10-minute monitor that writes `SHIP-QUEUED`, `SHIP-FROZEN`, `SHIPPED`, `SHIP-STOP` lines.
- Reviewers: Astra xhigh for payments, privacy, sign-in and a rename with a migration; Sol high for routine reviews.

## A release sequence that worked (payments, sales closed; other releases follow their own runbook)

1. Plan → Astra review → back end (Codex) and UI (Opus) in test mode → gate PASS → Astra pre-merge CHANGES NEEDED (three findings: a recovery cursor, an account-delete guard, a lost first response) → fixes → gate PASS → Astra round 2 SAFE TO MERGE.
2. Release packet → first item on the morning list → the user's yes for "run the migration first, then merge".
3. The migration alone: dry run listed only that migration, applied, read back (history, row-level security, grants, foreign keys, functions, triggers).
4. The exclusive ship stopped on 27 failures the gate's scope had missed → lane fix → gate with every affected suite + Astra round 3 on the delta → exclusive ship, remote readback.

## Kinds of grants the run had

Each was dated, quoted in the run record and limited to that run: ship ordinary gated batches; a fast fix loop for error-tracker incidents, including rollback to a version known to work with the current database; urgent fixes merged after the lane's own checks; the migrations named in one question; one night's delegation; an image budget for one design round; one payments release. None of them is a default.

## Files drift

Early rule files kept older instructions (a symlinked `node_modules`, 3 heavy slots) after later rules replaced them. Newer rules win; say which file you followed in the run record.
