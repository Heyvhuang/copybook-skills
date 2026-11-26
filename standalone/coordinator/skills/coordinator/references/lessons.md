# Lessons from the example run

Each: what happened → the rule. Times are from the run record, gate reports and playbook.

## Authorization

- The ship lane took a gate PASS on the payment PRs as permission to ship and had the batch ready to push (01:36). Stopped before the push. → PASS is evidence, not authorization; never-batch list in the ship brief; exclusive batches only on a written `SHIP-EXCLUSIVE-AUTHORIZED` line carrying the user's words.
- A UI PR contained its back-end PR (twice). Leaving the back-end PR number out of a batch does not keep its commits out. → Before freezing a batch, check no candidate contains a held head (`git merge-base --is-ancestor`).
- The first draft of this skill turned one run's grants (ship per batch, fast rollback, imagery without a cap) into general rules. → Grants live in the run's approval record with source and scope; examples grant nothing.
- Production steps were sometimes proposed as if checks were approval. → Passing checks is not approval; every production change names the exact commit, SQL or setting and waits for the user's yes for that change.
- Creating paid or account-level resources (a database project, an error-tracker project) can be refused to an agent. → Put it on the user's list with the page to open; never work around it.

## Gate and tests

- One gate passed the payment PRs with a scope that missed the admission route suites; the ship lane's wider checks found 27 failures. → Boundary changes add every caller's suite (`rg` the changed function).
- One train ran every test file for a change to a few files. → Scope = changed tests + tests beside changed source; full suite once a day.
- One train stopped at the first conflict and tested nothing. → Conflict rule: abort that merge only, test the rest.
- Two trains failed on tests main had already broken; another failed a required layout-shift ceiling that main also failed. → Reproduce on the exact base, classify contract drift vs product defect; a test-only fix needs a decision behind it; baseline exceptions are explicit and scoped and never waive a required acceptance target.
- Name filters skipped every control assertion and still exited 0 with passing counts; a changed-file design check read uncommitted `git status` and was empty on a committed merge. → Verify selection against the real diff; whole-file control runs; per-assertion executed/pass/fail/skip evidence.
- One train failed on 8 stale test names; the payment batch failed on a real behaviour change. → Decide stale vs real before editing a test.
- Load made tests time out at random (a 5 s timeout failed once, passed once on plain main). → Rerun alone twice under the run's documented criteria; intermittent timeouts may be load-sensitive, a single isolated assertion failure is real.
- Stale generated types (`.next/types`) produced type errors that were not real. → Clear generated output before trusting a red check.

## Shipping and builds

- Main took a push for every merge, each a production build. → One push per batch; docs ride the next batch.
- A batch kept growing while its checks ran and went 40 minutes without a push. → Freeze at check start.
- The ship monitor stopped on a failing file and sat idle three times. → Standing lanes write a STOP line; every tick reads their panes; attribute, drop the causal PR, ship the rest.
- Two merges in a row started two production builds. → Cancel the earlier one at once.
- A docs commit pushed while the previous production build was queued built in full. → Never push docs to main alone.
- Hosted preview builds kept failing, each billed in full. → Local build before any preview push; at most two local builds at once.
- Hosted CI ran a 70-minute matrix per push and used the month's allowance in one morning. → No paid CI on that run; the local gate is the merge check.
- The framework's build rejected a `node_modules` symlinked to the main checkout, and removing the link needed a permission prompt. → Real install per worktree with the project's package manager (for pnpm: `pnpm install --frozen-lockfile --prefer-offline`).
- Local `main` was a day behind `origin/main` during review. → Writer lanes branch from a fetched, recorded SHA.
- The SSH agent stopped signing at 03:20. → Per-command HTTPS with the gh credential helper; change no git config.
- `git add docs/brand` committed 119 local working files (~33 MB). → Add explicit paths; ignore rules for working folders.

## Watching lanes (Herdr runtime; T3 child tasks, Orca workers under a coordinator hosted in Orca, and Paseo agents under a coordinator hosted in Paseo wake the coordinator themselves)

- Herdr's `done` flickers; a hand-over is a report. → Completion = the READY line plus your own check of the diff and checks.
- A READY word inside a sentence woke the watcher; two READY lines were missed while no watcher ran; a stray second watcher ran beside the first; reviews ending `VERDICT:` and gate reports ending `GATE-COMPLETE` never woke it at all. → One completion contract that the watcher reads exactly; line-start match; seen state kept; one watcher per run.
- The watcher lapsed after a long review and lines piled up. → Re-arm after every fire; a lapse means a catch-up tick at once.
- A brief sat unsent in a lane's input; two coordinator messages stayed queued after their lanes' turns ended; a lane sat on an auto-mode dialog. → Read the pane after every send and on every tick.
- `agent_name_taken` on restarting a reviewer. → Reuse it or choose a new name.

## Machine and quota

- Load above 300, later 500–1000 on 10 cores, swap nearly full, with six heavy workers and full test runs; 32 Claude and 19 Codex sessions were alive. → `heavy.sh` slots (3, then 2; configurable), one full suite per machine, close finished lanes.
- "Wait while load > 150" left a lane waiting 2 h 45 m. → Slots, not thresholds.
- An Opus `max` round took over an hour. → `max` only on request, with the duration stated.
- Overnight the second reader's key was missing. → Decide alone, mark it, put it on the morning list; at the start of the next overnight run check that the second reader starts.

## Working with the user

- A day was lost to questions that waited for the user. → Decide routine choices, log them, keep going.
- One-PR-at-a-time merging felt slow. → Waves.
- References the user gave were not used in a footer. → Every reference into the brief; hand-overs map each one.
- Placeholder prices (3, 12, 20 credits) reached copy drafts. → Prices and limits come from the source module, never from memory.
- Clean-up removed routes a lane had just hardened (18 fixed, 9 then scheduled for removal). → Decide removals before hardening.
- On the money lane two reviewers on different models each found a high-severity defect the other missed. → Two reviewers for money and auth; adopt it per run.
- A long-lived design session was auto-archived after a PR merged. → Never archive owner sessions; unarchive and say so.
- Error-tracker issues stayed open after their fixes shipped. → Resolve on SHIPPED, same turn.
