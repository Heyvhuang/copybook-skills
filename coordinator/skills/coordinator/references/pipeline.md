# Gate and ship

How the example run did it, with the reason behind each habit. Adapt freely.

## Gate

- **Batches, not single PRs.** One train per PR was too slow. Merge the ready PRs in order onto current main in a local branch, test once, verdict per PR. A conflict drops only that PR from the train; the owning lane merges main and comes back.
- **Narrow scope.** Changed tests plus tests beside changed source, typecheck, and the project's design/migration checks when those areas change. A 639-file run for an 11-file change took 12 minutes for nothing.
- **Callers of shared gates.** If a PR changes a function many routes depend on (admission, credits, auth), test its callers too (`rg` the function). One train missed those suites and 27 failures surfaced only at ship time.
- **Check the checks ran.** A "check changed files" script that reads uncommitted files checks nothing on a committed merge and passes; name filters once skipped every control assertion and still exited 0. Look at what executed, not the exit code.
- **Whose failure is it?** Rerun the file alone: timeouts that pass alone are load. Run it on main: if main fails too, it is a baseline problem; decide whether the test is out of date (an intended change) or the product is wrong, and fix the right one. Otherwise it is the batch's: attribute by files touched, or leave one PR out at a time, and ship the rest.
- **Moved heads.** A head that changed after its PASS gets re-gated; if the change is only a main merge, a quick check of that delta is enough.

## Ship

- **Freeze, then check, then one push.** A batch that kept growing went 40 minutes without shipping; main took 136 pushes in 32 hours before batching, each a paid production build. Docs ride the next batch instead of pushing alone: a docs-only lane appends `DOCS-RIDE <branch> <head>` to the run record and the ship lane picks it up.
- **Exact heads only.** Ship the head the gate tested, merged `--no-ff` in gate order; read the remote back after the push.
- **Held work.** High-risk PRs sit on a never-batch list and ship only as their own batch after the user's yes. Before freezing, check no candidate contains a held head (`git merge-base --is-ancestor <held> <candidate>`): a UI branch often contains its back-end PR.
- **Urgent fixes** take a faster path only if the run has granted one (the example run did: the lane's own checks, gate afterwards). Otherwise they go first in the normal queue.

## After a ship

Wait for the deploy, then check the shipped pages or endpoints on production and the error tracker for the new release. New issue: a small fix lane (`Fixes <ID>` in the commit). Severe: tell the user at once; roll back only to a version you know works with the current database. Resolve every issue the batch fixed.

## High-risk releases

Each one gets its own reviewed runbook and a packet (`templates/release-packet.md`): exact heads and SQL hash, proof the old app works with the prepared database, every writer and recovery path, the order of stages with a readback for each, and the point after which rollback is unsafe. Don't reuse another release's order: on the example run, the payments release could go "additive migration, then merge with sales closed" because that migration changed nothing the live app used, while the privacy release's preparation migration did.
