---
name: review-tips
description: "Review · 16 tips: PR, code, and plan reviews, bug scoring, skill audits and backtests."
disable-model-invocation: true
---

# Review · 16 tips

Copybook's 16 tips on review, most saved first. Each tip's text, where it goes and what the user should get are in its file in references/.

- If the user names a tip, use that tip. If they describe a task, choose the tip that best meets their goal and constraints from those that work with the agent doing the work. If several fit equally well, choose one. Tell the user in one sentence which tip you picked and why, then read its file and follow it. If another tip also fits and would materially change the approach or result, name it and say how it differs.
- If the user said nothing, show them the list below (each tip's name and what it does) and ask which to use.
- If none fits, say so and suggest copybook, which looks through all 142 tips.

| Tip | What it does |
| --- | --- |
| [Tailscale preview links on your phone: a rule](references/tailscale-preview-links.md) `tailscale-preview-links` | Agent links that say localhost: Tailscale links to previews, review pages and dashboards that open right on your phone. |
| [Bug-score rule for Astra's code reviews](references/bug-score-rule-for-astra.md) `bug-score-rule-for-astra` | Astra flags bugs that almost never happen and Opus fixes each one: bugs scored, low scores filed as issues, code left alone. |
| [Blast radius, red team and 3 more prompts](references/blast-radius-and-4-more-prompts.md) `blast-radius-and-4-more-prompts` | 'Fix this bug' hands you defaults: what your diff touches, an end-to-end goal, a red-teamed plan, a user walk, a thinking budget. |
| [iOS simulator UI bug check with iPhone Duo](references/ios-simulator-ui-bug-check.md) `ios-simulator-ui-bug-check` | UI bugs in your iOS app: main screens tapped through, Duo poses checked if its simulator exists, smallest changes suggested. |
| [Perf review: the 5 slowest spots](references/perf-review-the-5-slowest-spots.md) `perf-review-the-5-slowest-spots` | Ask for faster code and you probably get a cache: timings from a profile, one matching fix each, its lines and expected speedup. |
| [One question before it answers](references/one-question-before-it-answers.md) `one-question-before-it-answers` | Ten questions at once get ignored: assumptions, missing info, the usual mistake, then the one question that changes its approach. |
| [Skill backtest against past Codex sessions](references/skill-backtest-on-codex-sessions.md) `skill-backtest-on-codex-sessions` | A skill written from memory drifts from how you work: compared with your past sessions, a dry-run diff, a recurring review. |
| [Code and direction review prompts](references/code-and-direction-review.md) `code-and-direction-review` | Code too complicated, or busy a long time with no clear direction: one finds what needn't exist, one rechecks the direction. |
| [/claude-api prompt-audit: skill audit for Fable 5.1](references/claude-api-prompt-audit.md) `claude-api-prompt-audit` | Skills for older models misfire on Fable 5.1: duplicate rules, dead commands and old model names listed, with a diff. |
| [Fake busy check from today's git history](references/fake-busy-check.md) `fake-busy-check` | A pile of sessions and nothing done: today's merges told apart from busywork, then one sentence on tomorrow's first task. |
| [Nightly routine reviewing the day's pushes](references/nightly-push-review-routine.md) `nightly-push-review-routine` | Today's pushes to main, reviewed while you sleep: a draft PR per bug with a test that fails first, in the cloud, laptop closed. |
| [Logging plan and daily fix list](references/logging-plan-and-daily-fix-list.md) `logging-plan-and-daily-fix-list` | Broken features, stuck users, slow steps: ranked by users affected, with log lines; the worst one already has a test. |
| [Plan review: 5 methods in one message](references/plan-review-5-methods.md) `plan-review-5-methods` | Plan written, no code yet: one message for first principles, adversarial review, ablation, Occam's razor and loose coupling. |
| [Skill score with yes/no questions](references/skill-score-by-yes-no-questions.md) `skill-score-by-yes-no-questions` | Did the skill edit help: 10 real tasks, 8 yes/no questions, a blind judge subagent; keep only a fix that raises the score. |
| [3 checks before installing a skill](references/3-checks-before-a-skill-install.md) `3-checks-before-a-skill-install` | Someone put 314 malicious skills on ClawHub: check the source, scan the code, question the permissions, in under five minutes. |
| [State machine check: wrong transitions in red](references/state-machine-check.md) `state-machine-check` | Bugs between a feature's states: every state from UI to server on one HTML page, then a numbered list with file, line and why. |
