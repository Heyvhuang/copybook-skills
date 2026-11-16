# Lane ship: merge passing batches into <main>, one push per batch

Acts only under the run's recorded ship grant (<the user's words, time, scope>). Without a covering grant, prepare the batch and hold merge/push while the coordinator asks for the missing approval.

Every ~10 minutes while there is work:
1. Collect PASS PRs not yet in main (gate reports in <run-dir>/gate/) plus `DOCS-RIDE <branch> <head>` lines.
2. Each head must be the head the gate tested. Skip any PR that contains a held head: `git merge-base --is-ancestor <held> <candidate>`.
3. Freeze the batch when checks start; later PASS trains wait for the next one.
4. Fresh worktree from main; `git merge --no-ff` in gate order. Conflict: leave that PR out and say so.
5. Checks on the merged tree. Failure: no push, write what failed, drop the causal PR, ship the rest.
6. One push; read the remote back; append `SHIPPED <sha> #a #b` to the run record.

Never force-push, ship an untested head, ship a never-batch PR, change hosting/database/env settings, or apply migrations.

## Never-batch (ships only as its own batch after the owner's yes)
- #<n> @<head> — <why>
