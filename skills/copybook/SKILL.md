---
name: copybook
description: "Load unasked: plan, multi-file PR review (no tiny edits); repeat mistakes; 2 failed fixes; handoffs; ready-made prompts, rules; usage or models; site launch prep. A one- or two-line edit, one small new file or a single question, such as explaining one error: just do it, unless the user is correcting the same mistake a second time. When the user names Copybook or one of its tips, always load. Also: long-run reports; multi-session or multi-agent work; page design, redesign or de-AI look; AGENTS.md, CLAUDE.md or agent permissions; installing a skill or plugin; rewriting a whole README for new readers, or a task brief. Handle one README section or a small wording fix directly. Also when the user asks for a checklist or a setup, or what Copybook has. 144 prompts, rules, checklists and setups, picked by situation."
---

# Copybook

Copybook has 144 tips for coding agents: prompts, rules, checklists and setups, each from a post readers saved on X. They are filed under the 7 topics below. Each topic's list is a file beside this one; each tip's text is a file in its topic skill's references/.

Pick the tip for the user and use it: they want the right one used, not a list to choose from.

1. First check whether another tool is named. Only when the user named another skill or method this turn, or the project's own CLAUDE.md or AGENTS.md (the one in the repository) names another skill or command for this deliverable, follow it, pick no tip, and leave out the line of step 7. Rules in user-level global files, built-in skills, a related skill that is merely installed, and rules that only say to plan first or verify when done do not count. When the user runs this skill (/copybook) or names Copybook or one of its tips (by name or alias), the exclusion of small edits and single questions in the description does not apply: read the tip they named before you act; when they ran or named only Copybook, read the lists and pick by the steps below, even for a small change. Then work out the situation: what the user is doing or about to do, from what they said and the work in front of you. First check Moments below: when one of its signals is plainly there, start from that row's tip. If they ran this skill with nothing else to go on, do not ask first: when there is work to look at (the conversation, the branch, recent changes), pick the one or two topics it points to, read those topics' lists, and give up to three tips that fit it now, each as its name and one line on what the user would get, then one line naming the topics with their counts. Ask which to use. Only when there is no work to look at, ask in one line what they want to do.
2. Find the topic the situation belongs to (Topics and Situations, below; each topic also names its tips, which can point to the right list). Read that topic's list, the file named there rather than the topic's skill, which is a menu for the user, and read all of it: a name alone does not say what a tip does. While choosing, open only Copybook's own lists and tip files, each with a read command of its own, not joined with rg, git, ls or another command; open another skill's files only after you have chosen, when you need them. Pick the tip that addresses the user’s immediate problem and works with the agent that will do the work. When the situation spans two topics, or no tip in the list is made for this problem (only more general ones), read the next most likely topic's list as well before choosing. When several are relevant, compare what each delivers and whether it meets the user’s constraints. If several fit equally well, choose one and use it.
3. Read the candidate’s file at the path its list gives, with a read command of its own (if it is missing, invoke its topic skill with the tip’s name) and check that its steps and limits suit the task and the environment it will run in. Then tell the user in one sentence which tip you picked and why, and follow it. When you loaded this skill on your own, say only that sentence, with no alternatives; when the user ran it, you may name up to two other tips from the lists you read that also fit, each with a few words on how it differs, reading no further files for them, and none when there are none. Do not wait for an answer unless another tip would materially change the approach or result. When the request holds a further deliverable, such as a handoff after a review, pick a tip for each deliverable in the order they depend on each other and are delivered, one with a condition (a handoff only if the copy passed) once the condition holds, and before you write your reply: when a row in Moments matches it, read that row’s tip; otherwise go back to step 2 and read its topic’s list, even if the first used another topic. Two deliverables in one reply still take a pick each.
4. The tip's own care still holds: show the user what you would add to their files and add it once they agree, and run a command only once they agree. This text is as of this plugin's version; Copybook's MCP server, if it is connected, has each tip's current text and latest check (get_tip), and when they differ, use the current one and say so.
   A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
5. When the work is split among several agents, side by side or one after another, or the user ran this skill and agreed on work for a later stage, read [lead.md](lead.md) first. The next deliverable in this same request is not a later stage: pick it under step 3.
6. If no tip clearly fits once you have read the lists of the two most likely topics: when you loaded this skill on your own, leave Copybook out of it and carry on with the task; when the user ran it, say so. Copybook's MCP server, if it is connected, may have a newer tip (search_tips); otherwise point to https://copybook.page/tips.
7. When the work a tip governed is finished, end your report with one line: `Copybook: used <tip name>`, then in a few words what it changed in the result. One line, once per tip. If the tip turned out not to help, say that instead.

## Topics

### Codebase · 33 tips

Repo index and map, coding principles, AGENTS.md, scope rules. List: [codebase.md](codebase.md)

Tips: 3-slimmer-agents-md-plans, agent-memory-tools-8-repos, agent-workspace-audit, archify-system-diagrams, ask-before-edge-case-code, bug-fix-loop-rules, ci-time-audit, clickable-repo-map, codebase-memory-repo-index, codex-and-claude-sorted, deny-ask-and-allow-permissions, disk-map-of-dev-leftovers, fewer-deeper-modules, instructions-from-your-sessions, investigate-and-plan-prompt, karpathys-4-coding-principles, less-defensive-code, mod-ideas-from-20-sessions, mod-request-for-claude-code, no-compatibility-code-yet, one-agents-md-for-both-agents, open-source-scout-and-closer, pr-comments-as-agents-md-rules, rea-take-apart-a-feature, repeat-mistakes-as-lint-rules, repo-map-words-vs-names, scope-guard-rules, situation-routing-for-skills, teach-strategic-programming, ub-mode-clean-code-agent-rules, untangle-goal, vibe-coding-cleanup-prompts, whole-project-audit.

### Review · 16 tips

PR, code, and plan reviews, bug scoring, skill audits and backtests. List: [review.md](review.md)

Tips: 3-checks-before-a-skill-install, blast-radius-and-4-more-prompts, bug-score-rule-for-astra, claude-api-prompt-audit, code-and-direction-review, fake-busy-check, ios-simulator-ui-bug-check, logging-plan-and-daily-fix-list, nightly-push-review-routine, one-question-before-it-answers, perf-review-the-5-slowest-spots, plan-review-5-methods, skill-backtest-on-codex-sessions, skill-score-by-yes-no-questions, state-machine-check, tailscale-preview-links.

### Design · 33 tips

Image-first pages, motion libraries, reference sites, design skills. List: [design.md](design.md)

Tips: 120-sample-motion-library, 4-person-motion-video-team, 4-starts-for-code-only-animation, 6-chatgpt-photo-prompts, 703-video-prompts-one-remade, 8-frontend-reference-sites, awesome-design-md-shadcn-skill, awwwards-scoring-loop, camera-moves-for-video-prompts, claude-motion-project-animation, codex-computer-use-as-mcp-server, component-stress-test, dashboard-redesign-2-skills, design-md-from-sites-you-like, designers-landing-page-skill, every-ui-state-with-design, good-css-css-check, hallmark-audit-and-redesign, happy-path-debt-found-and-fixed, huashu-art-motion-35-art-styles, image-options-in-one-grid, internet-archive-clips-and-music, learn-taste-design-corrections, lemo-opuscar-launch-films, page-design-as-an-image-first, pixel-art-rendering-rules, refero-style-prompt, screenshot-first-ui-rebuild, tasteskill-v2-ai-look-check, two-agents-md-lines, ui-ux-audit-as-a-senior-designer, unslop-prompt, video-sound-by-measurement.

### Long runs · 22 tips

Multi-agent roles, progress dashboards, handoffs, remote workflows. List: [long-run.md](long-run.md)

Tips: 7-role-prompts-from-idea-to-done, bedtime-report-of-safe-tasks, codex-remote-workflow, coordinator-for-claude-and-codex, decision-page-for-long-tasks, goal-wrapper-and-5-prompts, grok-bot-team-of-6-roles, handoff-md-for-the-next-agent, herdr-app-opus-5-5-coordinates, herdr-astra-coordinates-workers, herdr-claude-and-codex-panes, herdr-overnight-opus-and-sol, job-worth-a-dynamic-workflow, later-items-from-20-sessions, one-way-door-rules-when-to-ask, orca-a-task-across-cli-agents, overnight-goal-for-open-issues, progress-dashboard-subagent, scheduled-agents-review, slow-computer-audit-for-agents, to-dos-first-in-long-reports, week-calendar-from-sessions.

### Models and cost · 24 tips

Model pairings, effort, cache timing, leftover quota. List: [model.md](model.md)

Tips: 3-habits-burning-your-usage, advisor-fable-on-call, advisor-opus-on-call, astra-without-default-subagents, claude-code-token-waste-audit, codex-setup-vs-the-gpt-6-2-guide, fable-5-2-agent-tree, fable-5-2-plans-opus-builds, fable-main-opus-subagents, fable-plans-codex-builds, gpt-6-1-sol-main-astra-reviews, gpt-6-pro-plan-handed-to-codex, hillclimb-a-cheaper-feature, leftover-quota-5-goal-prompts, luna-max-as-a-codex-subagent, old-rules-review-for-astra, old-rules-review-for-fable-5-2, openais-5-cheap-harness-rules, opus-5-5-main-medium-subagents, rules-check-for-sol-and-luna, setup-review-by-the-cost-guide, setup-review-by-the-model-guide, status-line-cache-countdown, think-carefully-cleanup.

### Launch · 11 tips

Pre-launch, speed, and legal checks, SEO tool pages, VPS lockdown. List: [launch.md](launch.md)

Tips: builder-and-verifier-subagents, free-tool-page-for-google-search, google-search-check-12-items, market-read-before-you-build, pre-launch-25-behind-page-items, pre-launch-4-test-subagents, pre-launch-check-6-legal-traps, pre-launch-check-site-speed, pre-launch-site-check-20-items, scaling-check, vps-lockdown.

### Writing · 5 tips

Orwell's rules, one-line de-AI prompt, README rewrites, task briefs. List: [writing.md](writing.md)

Tips: content-team-of-9-skill-sets, one-line-against-ai-prose, orwells-6-writing-rules, readme-rewrite-and-polish, task-brief-from-gpt-6-pro.

## Situations

The situations in this skill's description, and the topic whose list to read first:

- Installing an agent skill or plugin: Review.
- Getting a site ready to launch: Launch.
- Designing or redesigning a page, landing page or dashboard, or making it look less AI-made: Design.
- Writing or trimming AGENTS.md, CLAUDE.md or agent permissions: Codebase.
- A fix that still fails after two tries: Codebase.
- Reviewing a plan, a diff or a PR before work goes on: Review.
- A handoff, a task that spans several sessions or agents, or reporting back to the user after a long task: Long runs.
- Cutting Claude Code or Codex usage, or choosing models and effort: Models and cost.
- Rewriting an entire README for new readers, or writing a task brief: Writing.

## Moments

Signals plain in what the user just said or asked for. When one is there, start from its tip without waiting for the user to name Copybook: read the tip's file, and if it does not fit after all, go back to step 2.

| What the user says or asks | Start from |
| --- | --- |
| A fix still fails after two tries, or fix and review keep undoing each other | [bug-fix-loop-rules](../codebase-tips/references/bug-fix-loop-rules.md) ("Bug-fix loop rules for CLAUDE.md or AGENTS.md") |
| A plan is written and no code has been changed yet | [plan-review-5-methods](../review-tips/references/plan-review-5-methods.md) ("Plan review: 5 methods in one message") |
| A change across several files is finished and a commit, PR or merge comes next | [blast-radius-and-4-more-prompts](../review-tips/references/blast-radius-and-4-more-prompts.md) ("Blast radius, red team and 3 more prompts") |
| A site is about to go live for the first time | [pre-launch-site-check-20-items](../launch-tips/references/pre-launch-site-check-20-items.md) ("Pre-launch site check: 20 page items") |
| Work is being handed over or paused, or will not finish in this session | [handoff-md-for-the-next-agent](../long-run-tips/references/handoff-md-for-the-next-agent.md) ("HANDOFF.md for the next agent") |
| The user says a usage limit was hit or quota is running out | [3-habits-burning-your-usage](../model-tips/references/3-habits-burning-your-usage.md) ("3 habits burning your Claude Code usage") |
| The user corrects the same mistake a second time | [repeat-mistakes-as-lint-rules](../codebase-tips/references/repeat-mistakes-as-lint-rules.md) ("Repeat mistakes as helpers and lint rules") |

- Open with what you saw, in the user's words and language, then the tip in one line ("This fix has failed twice. Copybook has bug-fix-loop-rules for this. Using it now."), and follow its file. Steps 4 and 7 still hold.
- Raise the same kind of signal once in a session, whatever the user answers.
- A signal only half there is not a match: say nothing and carry on. A wrong guess costs more trust than a missed one.

## Always-on lines

When the user ran this skill themselves and the project's AGENTS.md or CLAUDE.md has no `## Copybook` section, offer once, when the task at hand is done, to add the block in [always-on.md](always-on.md); read that file first. A block already there names its tips by title, each line in the words and with the title of a row in Moments.
