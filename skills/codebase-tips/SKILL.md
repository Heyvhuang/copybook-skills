---
name: codebase-tips
description: "Codebase · 33 tips: repo index and map, coding principles, AGENTS.md, scope rules."
disable-model-invocation: true
---

# Codebase · 33 tips

Copybook's 33 tips on codebase, most saved first. Each tip's text, where it goes and what the user should get are in its file in references/.

- If the user names a tip, use that tip. If they describe a task, choose the tip that best meets their goal and constraints from those that work with the agent doing the work. If several fit equally well, choose one. Tell the user in one sentence which tip you picked and why, then read its file and follow it. If another tip also fits and would materially change the approach or result, name it and say how it differs.
- If the user said nothing, show them the list below (each tip's name and what it does) and ask which to use.
- If none fits, say so and suggest copybook, which looks through all 141 tips.

| Tip | What it does |
| --- | --- |
| [Open-Source Scout and Closer prompts](references/open-source-scout-and-closer.md) `open-source-scout-and-closer` | Unfamiliar features written from scratch, offers to continue: GitHub searched first, then the whole job done and a plain recap. |
| [codebase-memory MCP: an index of your repo](references/codebase-memory-repo-index.md) `codebase-memory-repo-index` | Dozens of grep and read turns per question: the repo as one graph of functions, files and dependencies; dead code found too. |
| [Karpathy's 4 coding principles for CLAUDE.md](references/karpathys-4-coding-principles.md) `karpathys-4-coding-principles` | The agent over-designs and edits what it wasn't asked to: think before coding, simplicity first, surgical edits, goal-driven work. |
| [Vibe-coding cleanup: 5 Codex /goal prompts](references/vibe-coding-cleanup-prompts.md) `vibe-coding-cleanup-prompts` | Half your quota left at reset: dead code, duplicates and unneeded dependencies cut; scheduled tasks and old worktrees sorted. |
| [Clickable repo map](references/clickable-repo-map.md) `clickable-repo-map` | Before you change a repo: click any module for its callers, dependencies, tests and source evidence; a rule keeps it current. |
| [Scope Guard: AGENTS.md rules for small tasks](references/scope-guard-rules.md) `scope-guard-rules` | Asked to change a config, it builds a framework: minimum sufficient change, reuse first, ask before widening, test narrowly. |
| [Disk map of dev leftovers](references/disk-map-of-dev-leftovers.md) `disk-map-of-dev-leftovers` | Disk almost full: a read-only scan, a treemap of what development left behind, and a cleanup script only for what you tick. |
| [One AGENTS.md for Claude Code and Codex](references/one-agents-md-for-both-agents.md) `one-agents-md-for-both-agents` | Two agents, one rules file: plan first, smallest change, subagent roles, own the bug, verify before done, Lessons per correction. |
| [Untangle /goal for spaghetti code](references/untangle-goal.md) `untangle-goal` | Months of vibe coding left the code in knots: an HTML wiring diagram, the worst numbered in red, then fixes tested one by one. |
| [Investigate-and-plan prompt for Codex](references/investigate-and-plan-prompt.md) `investigate-and-plan-prompt` | Before it implements on a guess: repo read, goal restated, assumptions and plan listed, then a stop for your approval. |
| [Repeated PR comments as AGENTS.md rules](references/pr-comments-as-agents-md-rules.md) `pr-comments-as-agents-md-rules` | A reviewer keeps flagging the same things: 50 recent PRs scanned, issues ranked by count, your picks written into AGENTS.md. |
| [Archify: system diagrams from code](references/archify-system-diagrams.md) `archify-system-diagrams` | A system you have to explain: an HTML diagram you can search, trace up and downstream, compare across versions, export as PNG. |
| [REA: take apart another app's feature](references/rea-take-apart-a-feature.md) `rea-take-apart-a-feature` | A feature you like and can't see how it's built: taken down layer by layer, each finding with evidence, then a plan for your own. |
| [Less defensive code: 4 AGENTS.md rules](references/less-defensive-code.md) `less-defensive-code` | Even a tiny change gets null checks at every layer: Codex checks data once where it comes in, then just uses it. |
| [Code cleanup prompt: fewer, deeper modules](references/fewer-deeper-modules.md) `fewer-deeper-modules` | A feature works, but the code repeats itself: duplicates wiped out and the core logic in one place. |
| [CI time audit: 150 runs, 9 checks](references/ci-time-audit.md) `ci-time-audit` | Code takes minutes, then each PR waits on CI: the 5 slowest jobs split into queue, setup and run, and the line to change per fix. |
| [Agent workspace audit](references/agent-workspace-audit.md) `agent-workspace-audit` | Your agent feels dumber over time: every instruction, skill, MCP and memory marked KEEP or REMOVE, cleared on your OK. |
| [Agent memory tools: 8 repos in 4 kinds](references/agent-memory-tools-8-repos.md) `agent-memory-tools-8-repos` | No memory of code, notes, sessions or long tasks: 8 repos in those 4 kinds, one of each installed on your OK. |
| [3 slimmer AGENTS.md plans side by side](references/3-slimmer-agents-md-plans.md) `3-slimmer-agents-md-plans` | AGENTS.md past 200 lines gets followed less: 3 slimmer versions, each more aggressive, nothing lost, shown before changes. |
| [Whole-project audit with ASCII diagrams](references/whole-project-audit.md) `whole-project-audit` | Broken, inconsistent or unneeded code: how it connects explained before any change, what it's sure about fixed, the rest listed. |
| [No compatibility code yet: AGENTS.md rules](references/no-compatibility-code-yet.md) `no-compatibility-code-yet` | No users yet, but the agent adds compatibility code and migrations: skip both, then docs, tests, smallest change and cleanup. |
| [Claude Code permissions: deny, ask and allow commands](references/deny-ask-and-allow-permissions.md) `deny-ask-and-allow-permissions` | Claude deleted a config that 'looked unused': risky commands blocked, pushes ask first, routine ones run, deny always wins. |
| [Ask before edge-case code: one AGENTS.md line](references/ask-before-edge-case-code.md) `ask-before-edge-case-code` | The agent codes for races that never happen: one line makes it state the risk and the odds, then wait for your OK. |
| [Claude Code project instructions from your sessions](references/instructions-from-your-sessions.md) `instructions-from-your-sessions` | Background you re-explain every new session: pulled from your last 20 sessions and written up as project instructions. |
| [Mod request for Claude Code itself](references/mod-request-for-claude-code.md) `mod-request-for-claude-code` | Something in Claude Code's interface you want changed: a prompt that finds an existing Mod or proposes the smallest one. |
| [\~/.codex and \~/.claude sorted before cleanup](references/codex-and-claude-sorted.md) `codex-and-claude-sorted` | A cleanup that could delete your chats: items sorted Keep, History, Work, Clearable or Unknown, each command approved by you. |
| [Mod ideas from your last 20 sessions](references/mod-ideas-from-20-sessions.md) `mod-ideas-from-20-sessions` | Requests you repeat, commands you stop or undo, how you check changes: ranked by how much each would help, your words quoted. |
| [/teach: strategic programming on your project](references/teach-strategic-programming.md) `teach-strategic-programming` | Spend tokens learning what AI can't replace: 3 questions about your codebase, then MISSION.md, a curriculum and lessons on it. |
| [Bug-fix loop rules for CLAUDE.md or AGENTS.md](references/bug-fix-loop-rules.md) `bug-fix-loop-rules` | Agents that both fix and review can't stop going back and forth: stop after two failed fixes, review only this round's changes. |
| [ub-mode: the Clean Code author's agent rules](references/ub-mode-clean-code-agent-rules.md) `ub-mode-clean-code-agent-rules` | Your agent's code hides bugs and its tests fool you: a skill it follows on every change, with crapper, dryer and mutator checks. |
| [Clickable repo map with words vs names](references/repo-map-words-vs-names.md) `repo-map-words-vs-names` | What you call a module isn't what the code calls it: every mismatch marked in red, those likeliest to cause a wrong edit first. |
| [Repeat mistakes as helpers and lint rules](references/repeat-mistakes-as-lint-rules.md) `repeat-mistakes-as-lint-rules` | The agent keeps making one mistake: the right way in a helper, the old way banned by lint, an error that names the helper to use. |
| [Situation routing rules for skills](references/situation-routing-for-skills.md) `situation-routing-for-skills` | Your agent often forgets to use what you install, so you call each by name: the best fit per task, with one line on which and why. |
