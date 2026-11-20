# Gate and ship

Use the project's gate, batch or per PR. Adapt the habits below from the example run.

## Gate

- **Fresh base first.** Confirm the PR head contains the required base before dispatching the gate. Send stale heads back to the owning lane to merge the base.
- **Split build from the formal gate.** Builders run scoped checks. A separate gate lane runs the full gate and records its verdict for the tested head. On a per-PR gate, publish it on the pushed PR head. Recheck head and base before merge.
- **Batch gate.** One train per PR was too slow. Merge the ready PRs in order onto current main in a local branch, test once, verdict per PR. A conflict drops only that PR from the train; the owning lane merges main and comes back.
- **Narrow scope.** Changed tests plus tests beside changed source, typecheck, and the project's design/migration checks when those areas change. A 639-file run for an 11-file change took 12 minutes for nothing.
- **Callers of shared gates.** If a PR changes a function many routes depend on (admission, credits, auth), test its callers too (`rg` the function). One train missed those suites and 27 failures surfaced only at ship time.
- **Check the checks ran.** A "check changed files" script that reads uncommitted files checks nothing on a committed merge and passes; name filters once skipped every control assertion and still exited 0. Look at what executed, not the exit code.
- **Whose failure is it?** Rerun the file alone: timeouts that pass alone are load. Run it on main: if main fails too, it is a baseline problem; decide whether the test is out of date (an intended change) or the product is wrong, and fix the right one. Otherwise it is the batch's: attribute by files touched, or leave one PR out at a time, and ship the rest.
- **Moved heads.** Re-gate changed heads under the project's rules. Use a check of just the change where those rules allow it.
- **Verify, don't rerun.** When a lane already ran the full gate on the exact head, that head contains the current base, and the base hasn't moved since, the gate lane reads the posted result table, checks both SHAs against the forge and records PASS. It reruns only when the table is missing, names another head, or the base moved. Without this rule every PR gets checked twice, once by its lane and once by the gate, and both runs queue behind the same build slots.
- **Run gates in cloud sessions, in parallel.** A gate on one machine behind a shared build lock becomes the bottleneck. [Claude Code cloud sessions](https://code.claude.com/docs/en/claude-code-on-the-web) run side by side and count toward the account's usage limits, which they share with all its other Claude use. The docs give no number for how many may run at once; on one run (Nov 2026) twelve ran together with no concurrency error. Start each from a Herdr shell pane, since `--cloud` needed an interactive terminal on that run: `claude --model <cheap capable model> --permission-mode bypassPermissions --cloud "<task>"`. The flags go before `--cloud`, and the task text follows it directly. Without bypass, every session stops on permission prompts that someone has to answer on claude.ai. Pick the cheapest model that runs a script reliably; judgment stays on the top model. The session clones the current branch from GitHub, so the task text spells out the rest: fetch the PR heads, merge them in order onto the base on a local branch (one batch per session; stop on a conflict), run the project's gate, and report the full result table with stage times. The command prints the session URL and returns; the work goes on in the cloud. For checks on a schedule or on GitHub events instead, see [scheduled tasks](https://code.claude.com/docs/en/routines).
- **How cloud checks report.** The Claude GitHub App has commit statuses read-only and checks read and write; on that run the cloud's GitHub proxy refused the commit statuses API with a 403. So the session posts a PR comment that starts "Cloud check (<what> on <base> <sha>): PASS/FAIL" with the table, and adds a check run where the project allows it. The gate lane accepts that comment as evidence under "Verify, don't rerun": watch for the comment, not a status. Attribute a cloud failure like any other ("Whose failure is it?"): on that run the first batch failed only on a test's own cleanup race, which the owning lane fixed before a rerun.

## Ship

- **Freeze, then check, then one push.** A batch that kept growing went 40 minutes without shipping; main took 136 pushes in 32 hours before batching, each a paid production build. Docs ride the next batch instead of pushing alone: a docs-only lane appends `DOCS-RIDE <branch> <head>` to the run record and the ship lane picks it up.
- **Exact heads only.** Ship the heads the gate tested and read the remote back. For batches, merge `--no-ff` in gate order.
- **Held work.** High-risk PRs sit on a never-batch list and ship only as their own batch after the user's yes. Before freezing, check no candidate contains a held head (`git merge-base --is-ancestor <held> <candidate>`): a UI branch often contains its back-end PR.
- **Urgent fixes** take a faster path only if the run has granted one (the example run did: the lane's own checks, gate afterwards). Otherwise they go first in the normal queue.

## After a ship

Wait for the deploy, then check the shipped pages or endpoints on production and the error tracker for the new release. New issue: a small fix lane (`Fixes <ID>` in the commit). Severe: tell the user at once; roll back only to a version you know works with the current database. Resolve every issue the batch fixed.

## High-risk releases

Each one gets its own reviewed runbook and a packet (`templates/release-packet.md`): exact heads and SQL hash, proof the old app works with the prepared database, every writer and recovery path, the order of stages with a readback for each, and the point after which rollback is unsafe. Don't reuse another release's order: on the example run, the payments release could go "additive migration, then merge with sales closed" because that migration changed nothing the live app used, while the privacy release's preparation migration did.
