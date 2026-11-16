# Situations

First moves, from the example run.

**Screenshot or design feedback** ("this looks cheap"). Send the user's words verbatim and the image to the lane that owns the surface; don't fix it yourself and don't give front-end edits to Codex. For a new or disliked surface the lane makes a benchmark board first and follows the best competitor closely in structure and interaction, never their assets. Every reference the user gave goes into the brief; they notice when references are ignored.

**A bug reported twice.** Stop guessing. Get evidence (logs, events, a reproduction) before a third fix, and reply with what was tried and what the evidence says.

**Error-tracker issue.** One issue, one small PR: front end to Opus, back end to Codex. Noise gets a reporting fix, not an app fix. Resolve it when the fix ships.

**High-risk release** (money, privacy, migrations, deletion). Plan and runbook reviewed by Astra before building; build in test mode; gate; Astra again on the exact heads; packet; the user's yes; ship alone. Pricing, subscriptions, refunds and tax are the user's calls; bring them with a recommendation.

**Gate failure.** Work out whose failure it is (pipeline.md) and send the owning lane the file, the assertion and your reading. Ship the PRs that passed.

**Merge conflict.** Gates and the ship lane don't resolve conflicts; the owning lane merges main and is re-gated. Lanes sharing a rule file (DESIGN.md, tokens) conflict often: merge one, then have the other merge main.

**Stalled lane.** Read the pane: usually it is text left in the input (send Enter), a dialog (Codex's hook review swallows the first prompt if `~/.codex/hooks.json` changed since it was trusted), or a monitor that stopped on a failure and sat idle. If it is idle with no READY, nudge it with the brief path. A T3 fallback lane: read its activity (`t3_thread_read`, `view: "activity"`) and steer it with `t3_thread_send`.

**Machine overload** (load 300–900 on 10 cores). Heavy checks through `scripts/heavy.sh`, one full suite per machine, close finished lanes. Waiting for the load to drop doesn't work; a lane once waited 2 h 45 m that way.

**Overnight.** The user hands over with a grant before sleeping. Write a checklist file with their words, the finish line and their usage threshold (40% of the weekly quota on the example run). Decide routine design and product choices yourself, judging from the pattern of their earlier messages, with a second reader when it helps, and log each with its reason. Spending, production data and live charging still wait. Morning list: their yeses first, then inputs only they can give, then decisions to confirm.

**The user adds items mid-run.** Route each item to its lane in the same tick; new items go in the next batch, never the frozen one. When asked how it's going, answer with what shipped, what's in the gate and when the next ship lands.

**A lane asks a question.** Answer from the user's decisions and the project's docs; otherwise decide and log it. Only the permission list in SKILL.md goes to the user.

**A release blocked on the user's input.** One numbered item per input: what, where, what to send back. Never ask for a secret in chat; the user writes credential files themselves.
