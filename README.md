# Copybook

Copybook picks a tip for your coding agent by the situation it is in. You ask for the work as usual, and a skill that loads by itself picks one of the 142 tips and follows it. You have nothing to remember and nothing to choose. The tips are the prompts, rules and setups readers saved most from [@Voxyz_ai](https://x.com/Voxyz_ai)'s posts on X.

```text
copybook ──────────────────────────

› Is this site ready to launch?
  Launch list · picks 1 of 11
  ·····•·····

› This page looks AI-made, redo it
  Design list · picks 1 of 32
  ············•···················

› Trim our AGENTS.md
  Codebase list · picks 1 of 33
  ·······················•·········

› Review this PR before I merge
  Review list · picks 1 of 16
  ···········•····
───────────────────────────────────
  then names the tip, and why,
  and works through its steps
```

[copybook.page](https://copybook.page) · [New tips by email](https://copybook.page/#email-bottom-title) · [Changelog](CHANGELOG.md) · [中文](README.zh-CN.md)

First public release: [1.0.0](CHANGELOG.md), 14 Nov 2026, 134 tips.

## Table of contents

- [How it works](#how-it-works)
- [Install](#install)
  - [Claude Code](#claude-code)
  - [Codex](#codex)
  - [Cursor, Copilot, Gemini CLI and others](#cursor-copilot-gemini-cli-and-others)
  - [ChatGPT workspace](#chatgpt-workspace)
- [What it picks from](#what-it-picks-from)
- [When something goes wrong](#when-something-goes-wrong)
- [Community](#community)
- [What's inside](#whats-inside)
- [Philosophy](#philosophy)
- [Contributing](#contributing)
- [Updating](#updating)
- [License](#license)

## How it works

It starts when you ask your coding agent for something Copybook has a tip for: review a PR, get a site ready to launch, trim an AGENTS.md. Before it starts on the work, the agent opens the list for that topic and reads all of it, because a tip's name doesn't say what the tip does. Then it picks one.

It tells you in one sentence which tip it picked and why. If a second tip would change the result, it names that one too and says how the two differ.

Then it follows the tip's steps. The prompt or rule inside is the post's own text. Anything a tip adds to your files, the agent shows you first. Any command a tip runs, it asks before running.

When no tip fits, it leaves Copybook out of it and carries on with your task. If you opened Copybook yourself, it tells you that nothing fits.

Because the skill loads by itself when a task fits, you don't need to remember that a tip exists.

## Install

The plugin holds only Markdown, YAML, JSON and PNG files, with no scripts, hooks or MCP server. It adds 8 skills to your agent's list: one that loads by itself and 7 topic menus you open yourself.

Install it one way per agent: the plugin and the skills.sh copy together list every skill twice.

### Claude Code

```text
/plugin install copybook --marketplace Heyvhuang/copybook-skills
```

After installing, open `/plugin` → **Marketplaces** → **copybook** → **Enable auto-update**. Do this once. Claude Code then checks for updates at startup.

<details>
<summary>Claude Code before 2.1.275</summary>

```text
/plugin marketplace add Heyvhuang/copybook-skills
```

```text
/plugin install copybook@copybook
```

</details>

### Codex

```bash
codex plugin marketplace add Heyvhuang/copybook-skills
codex plugin add copybook@copybook
```

To refresh the marketplace and install the updated Copybook plugin, run:

```bash
codex plugin marketplace upgrade copybook
codex plugin add copybook@copybook
codex plugin list --json
```

### Cursor, Copilot, Gemini CLI and others

```bash
npx skills@latest add Heyvhuang/copybook-skills
```

To update the Copybook skills you installed, run this in the same project, or choose the global scope for a global install.

```bash
npx skills@latest update copybook codebase-tips review-tips design-tips long-run-tips model-tips launch-tips writing-tips
```

### ChatGPT workspace

A workspace admin opens **Admin → Plugins → Add → Import marketplace**. Enter `https://github.com/Heyvhuang/copybook-skills` as the source, leave Path empty and use `main` for Branch.

Members install `copybook` once. ChatGPT syncs the marketplace daily. A ZIP uploaded through **Skills** stays at the uploaded version.

## What it picks from

142 prompts, rules, checklists, and setups. Auto-loads one when a task fits, or browse.

These are the situations the skill watches for, each under the shelf whose list it reads first. When that list has no tip made for the job, it reads a second.

1. **codebase-tips** - Writing or trimming AGENTS.md, CLAUDE.md or agent permissions. A fix that still fails after two tries.
2. **review-tips** - Installing an agent skill or plugin. Reviewing a plan, a diff or a PR before work goes on.
3. **design-tips** - Designing or redesigning a page, landing page or dashboard, or making it look less AI-made.
4. **long-run-tips** - A handoff, a task that spans several sessions or agents, or reporting back to you after a long task.
5. **model-tips** - Cutting Claude Code or Codex usage, or choosing models and effort.
6. **launch-tips** - Getting a site ready to launch.
7. **writing-tips** - Rewriting an entire README for new readers, or writing a task brief.

**The agent picks one tip and names it.**

To open Copybook yourself, type `/copybook:copybook` (or `/copybook`). In Codex, type `$copybook`. To browse a topic, use a command such as `/copybook:design-tips`. Add the tip's name to use it.

## When something goes wrong

Sometimes a tip misbehaves: on a new model it no longer does what its steps say, or a line in the Chinese edition reads wrong. [Open an issue](https://github.com/Heyvhuang/copybook-skills/issues/new/choose) and choose "Tip stopped working" or "Translation fix". Say which tip, which agent and model, and what happened.

The tip goes into the weekly check. One that stops working comes off the list.

## Community

Copybook is written by [@Voxyz_ai](https://x.com/Voxyz_ai).

- **X**: [@Voxyz_ai](https://x.com/Voxyz_ai), where each tip was first posted
- **Site**: [copybook.page](https://copybook.page), every tip with copy buttons and its original post
- **Issues**: https://github.com/Heyvhuang/copybook-skills/issues
- **Star**: [Star this repository](https://github.com/Heyvhuang/copybook-skills) to keep it in your stars. To hear when tips are added, changed or retired, choose **Watch** → **Custom** → **Releases**
- **New tips by email**: [Sign up](https://copybook.page/#email-bottom-title)

## What's inside

Grouped by topic, most saved first; saves counted between 22 Jul and 17 Nov 2026, each tip's date in its file.

The words the tips use are in the [glossary](docs/glossary.md); the tips that stay on copybook.page are listed in [scope](docs/scope.md).

### Codebase

`/copybook:codebase-tips` · 33 tips: repo index and map, coding principles, AGENTS.md, scope rules.

| Tip | Saves |
| :-- | :-: |
| **[Open-Source Scout and Closer prompts](./skills/codebase-tips/references/open-source-scout-and-closer.md)** `open-source-scout-and-closer`<br>Unfamiliar features written from scratch, offers to continue: GitHub searched first, then the whole job done and a plain recap. | 12K |
| **[codebase-memory MCP: an index of your repo](./skills/codebase-tips/references/codebase-memory-repo-index.md)** `codebase-memory-repo-index`<br>Dozens of grep and read turns per question: the repo as one graph of functions, files and dependencies; dead code found too. | 8.4K |
| **[Karpathy's 4 coding principles for CLAUDE.md](./skills/codebase-tips/references/karpathys-4-coding-principles.md)** `karpathys-4-coding-principles`<br>The agent over-designs and edits what it wasn't asked to: think before coding, simplicity first, surgical edits, goal-driven work. | 6.7K |
| **[Vibe-coding cleanup: 5 Codex /goal prompts](./skills/codebase-tips/references/vibe-coding-cleanup-prompts.md)** `vibe-coding-cleanup-prompts`<br>Half your quota left at reset: dead code, duplicates and unneeded dependencies cut; scheduled tasks and old worktrees sorted. | 3.9K |
| **[Clickable repo map](./skills/codebase-tips/references/clickable-repo-map.md)** `clickable-repo-map`<br>Before you change a repo: click any module for its callers, dependencies, tests and source evidence; a rule keeps it current. | 2.7K |
| **[Scope Guard: AGENTS.md rules for small tasks](./skills/codebase-tips/references/scope-guard-rules.md)** `scope-guard-rules`<br>Asked to change a config, it builds a framework: minimum sufficient change, reuse first, ask before widening, test narrowly. | 2.1K |
| **[Disk map of dev leftovers](./skills/codebase-tips/references/disk-map-of-dev-leftovers.md)** `disk-map-of-dev-leftovers`<br>Disk almost full: a read-only scan, a treemap of what development left behind, and a cleanup script only for what you tick. | 2K |
| **[One AGENTS.md for Claude Code and Codex](./skills/codebase-tips/references/one-agents-md-for-both-agents.md)** `one-agents-md-for-both-agents`<br>Two agents, one rules file: plan first, smallest change, subagent roles, own the bug, verify before done, Lessons per correction. | 1.9K |
| **[Untangle /goal for spaghetti code](./skills/codebase-tips/references/untangle-goal.md)** `untangle-goal`<br>Months of vibe coding left the code in knots: an HTML wiring diagram, the worst numbered in red, then fixes tested one by one. | 1.7K |
| **[Investigate-and-plan prompt for Codex](./skills/codebase-tips/references/investigate-and-plan-prompt.md)** `investigate-and-plan-prompt`<br>Before it implements on a guess: repo read, goal restated, assumptions and plan listed, then a stop for your approval. | 1.7K |
| **[Repeated PR comments as AGENTS.md rules](./skills/codebase-tips/references/pr-comments-as-agents-md-rules.md)** `pr-comments-as-agents-md-rules`<br>A reviewer keeps flagging the same things: 50 recent PRs scanned, issues ranked by count, your picks written into AGENTS.md. | 1.6K |
| **[Archify: system diagrams from code](./skills/codebase-tips/references/archify-system-diagrams.md)** `archify-system-diagrams`<br>A system you have to explain: an HTML diagram you can search, trace up and downstream, compare across versions, export as PNG. | 1.6K |
| **[REA: take apart another app's feature](./skills/codebase-tips/references/rea-take-apart-a-feature.md)** `rea-take-apart-a-feature`<br>A feature you like and can't see how it's built: taken down layer by layer, each finding with evidence, then a plan for your own. | 1.5K |
| **[Less defensive code: 4 AGENTS.md rules](./skills/codebase-tips/references/less-defensive-code.md)** `less-defensive-code`<br>Even a tiny change gets null checks at every layer: Codex checks data once where it comes in, then just uses it. | 1.4K |
| **[Code cleanup prompt: fewer, deeper modules](./skills/codebase-tips/references/fewer-deeper-modules.md)** `fewer-deeper-modules`<br>A feature works, but the code repeats itself: duplicates wiped out and the core logic in one place. | 1.3K |
| **[CI time audit: 150 runs, 9 checks](./skills/codebase-tips/references/ci-time-audit.md)** `ci-time-audit`<br>Code takes minutes, then each PR waits on CI: the 5 slowest jobs split into queue, setup and run, and the line to change per fix. | 1.2K |
| **[Agent workspace audit](./skills/codebase-tips/references/agent-workspace-audit.md)** `agent-workspace-audit`<br>Your agent feels dumber over time: every instruction, skill, MCP and memory marked KEEP or REMOVE, cleared on your OK. | 887 |
| **[Agent memory tools: 8 repos in 4 kinds](./skills/codebase-tips/references/agent-memory-tools-8-repos.md)** `agent-memory-tools-8-repos`<br>No memory of code, notes, sessions or long tasks: 8 repos in those 4 kinds, one of each installed on your OK. | 869 |
| **[3 slimmer AGENTS.md plans side by side](./skills/codebase-tips/references/3-slimmer-agents-md-plans.md)** `3-slimmer-agents-md-plans`<br>AGENTS.md past 200 lines gets followed less: 3 slimmer versions, each more aggressive, nothing lost, shown before changes. | 781 |
| **[Whole-project audit with ASCII diagrams](./skills/codebase-tips/references/whole-project-audit.md)** `whole-project-audit`<br>Broken, inconsistent or unneeded code: how it connects explained before any change, what it's sure about fixed, the rest listed. | 770 |
| **[No compatibility code yet: AGENTS.md rules](./skills/codebase-tips/references/no-compatibility-code-yet.md)** `no-compatibility-code-yet`<br>No users yet, but the agent adds compatibility code and migrations: skip both, then docs, tests, smallest change and cleanup. | 756 |
| **[Claude Code permissions: deny, ask and allow commands](./skills/codebase-tips/references/deny-ask-and-allow-permissions.md)** `deny-ask-and-allow-permissions`<br>Claude deleted a config that 'looked unused': risky commands blocked, pushes ask first, routine ones run, deny always wins. | 662 |
| **[Ask before edge-case code: one AGENTS.md line](./skills/codebase-tips/references/ask-before-edge-case-code.md)** `ask-before-edge-case-code`<br>The agent codes for races that never happen: one line makes it state the risk and the odds, then wait for your OK. | 601 |
| **[Claude Code project instructions from your sessions](./skills/codebase-tips/references/instructions-from-your-sessions.md)** `instructions-from-your-sessions`<br>Background you re-explain every new session: pulled from your last 20 sessions and written up as project instructions. | 490 |
| **[Mod request for Claude Code itself](./skills/codebase-tips/references/mod-request-for-claude-code.md)** `mod-request-for-claude-code`<br>Something in Claude Code's interface you want changed: a prompt that finds an existing Mod or proposes the smallest one. | 395 |
| **[\~/.codex and \~/.claude sorted before cleanup](./skills/codebase-tips/references/codex-and-claude-sorted.md)** `codex-and-claude-sorted`<br>A cleanup that could delete your chats: items sorted Keep, History, Work, Clearable or Unknown, each command approved by you. | 367 |
| **[Mod ideas from your last 20 sessions](./skills/codebase-tips/references/mod-ideas-from-20-sessions.md)** `mod-ideas-from-20-sessions`<br>Requests you repeat, commands you stop or undo, how you check changes: ranked by how much each would help, your words quoted. | 359 |
| **[/teach: strategic programming on your project](./skills/codebase-tips/references/teach-strategic-programming.md)** `teach-strategic-programming`<br>Spend tokens learning what AI can't replace: 3 questions about your codebase, then MISSION.md, a curriculum and lessons on it. | 326 |
| **[Bug-fix loop rules for CLAUDE.md or AGENTS.md](./skills/codebase-tips/references/bug-fix-loop-rules.md)** `bug-fix-loop-rules`<br>Agents that both fix and review can't stop going back and forth: stop after two failed fixes, review only this round's changes. | 325 |
| **[ub-mode: the Clean Code author's agent rules](./skills/codebase-tips/references/ub-mode-clean-code-agent-rules.md)** `ub-mode-clean-code-agent-rules`<br>Your agent's code hides bugs and its tests fool you: a skill it follows on every change, with crapper, dryer and mutator checks. | 313 |
| **[Clickable repo map with words vs names](./skills/codebase-tips/references/repo-map-words-vs-names.md)** `repo-map-words-vs-names`<br>What you call a module isn't what the code calls it: every mismatch marked in red, those likeliest to cause a wrong edit first. | 303 |
| **[Repeat mistakes as helpers and lint rules](./skills/codebase-tips/references/repeat-mistakes-as-lint-rules.md)** `repeat-mistakes-as-lint-rules`<br>The agent keeps making one mistake: the right way in a helper, the old way banned by lint, an error that names the helper to use. | 184 |
| **[Situation routing rules for skills](./skills/codebase-tips/references/situation-routing-for-skills.md)** `situation-routing-for-skills`<br>Your agent often forgets to use what you install, so you call each by name: the best fit per task, with one line on which and why. | 116 |

### Review

`/copybook:review-tips` · 16 tips: PR, code, and plan reviews, bug scoring, skill audits and backtests.

| Tip | Saves |
| :-- | :-: |
| **[Tailscale preview links on your phone: a rule](./skills/review-tips/references/tailscale-preview-links.md)** `tailscale-preview-links`<br>Agent links that say localhost: Tailscale links to previews, review pages and dashboards that open right on your phone. | 3.8K |
| **[Bug-score rule for Astra's code reviews](./skills/review-tips/references/bug-score-rule-for-astra.md)** `bug-score-rule-for-astra`<br>Astra flags bugs that almost never happen and Opus fixes each one: bugs scored, low scores filed as issues, code left alone. | 3.2K |
| **[Blast radius, red team and 3 more prompts](./skills/review-tips/references/blast-radius-and-4-more-prompts.md)** `blast-radius-and-4-more-prompts`<br>'Fix this bug' hands you defaults: what your diff touches, an end-to-end goal, a red-teamed plan, a user walk, a thinking budget. | 1.4K |
| **[iOS simulator UI bug check with iPhone Duo](./skills/review-tips/references/ios-simulator-ui-bug-check.md)** `ios-simulator-ui-bug-check`<br>UI bugs in your iOS app: main screens tapped through, Duo poses checked if its simulator exists, smallest changes suggested. | 956 |
| **[Perf review: the 5 slowest spots](./skills/review-tips/references/perf-review-the-5-slowest-spots.md)** `perf-review-the-5-slowest-spots`<br>Ask for faster code and you probably get a cache: timings from a profile, one matching fix each, its lines and expected speedup. | 849 |
| **[One question before it answers](./skills/review-tips/references/one-question-before-it-answers.md)** `one-question-before-it-answers`<br>Ten questions at once get ignored: assumptions, missing info, the usual mistake, then the one question that changes its approach. | 631 |
| **[Skill backtest against past Codex sessions](./skills/review-tips/references/skill-backtest-on-codex-sessions.md)** `skill-backtest-on-codex-sessions`<br>A skill written from memory drifts from how you work: compared with your past sessions, a dry-run diff, a recurring review. | 554 |
| **[Code and direction review prompts](./skills/review-tips/references/code-and-direction-review.md)** `code-and-direction-review`<br>Code too complicated, or busy a long time with no clear direction: one finds what needn't exist, one rechecks the direction. | 531 |
| **[/claude-api prompt-audit: skill audit for Fable 5.1](./skills/review-tips/references/claude-api-prompt-audit.md)** `claude-api-prompt-audit`<br>Skills for older models misfire on Fable 5.1: duplicate rules, dead commands and old model names listed, with a diff. | 479 |
| **[Fake busy check from today's git history](./skills/review-tips/references/fake-busy-check.md)** `fake-busy-check`<br>A pile of sessions and nothing done: today's merges told apart from busywork, then one sentence on tomorrow's first task. | 394 |
| **[Nightly routine reviewing the day's pushes](./skills/review-tips/references/nightly-push-review-routine.md)** `nightly-push-review-routine`<br>Today's pushes to main, reviewed while you sleep: a draft PR per bug with a test that fails first, in the cloud, laptop closed. | 387 |
| **[Logging plan and daily fix list](./skills/review-tips/references/logging-plan-and-daily-fix-list.md)** `logging-plan-and-daily-fix-list`<br>Broken features, stuck users, slow steps: ranked by users affected, with log lines; the worst one already has a test. | 366 |
| **[Plan review: 5 methods in one message](./skills/review-tips/references/plan-review-5-methods.md)** `plan-review-5-methods`<br>Plan written, no code yet: one message for first principles, adversarial review, ablation, Occam's razor and loose coupling. | 361 |
| **[Skill score with yes/no questions](./skills/review-tips/references/skill-score-by-yes-no-questions.md)** `skill-score-by-yes-no-questions`<br>Did the skill edit help: 10 real tasks, 8 yes/no questions, a blind judge subagent; keep only a fix that raises the score. | 315 |
| **[3 checks before installing a skill](./skills/review-tips/references/3-checks-before-a-skill-install.md)** `3-checks-before-a-skill-install`<br>Someone put 314 malicious skills on ClawHub: check the source, scan the code, question the permissions, in under five minutes. | 308 |
| **[State machine check: wrong transitions in red](./skills/review-tips/references/state-machine-check.md)** `state-machine-check`<br>Bugs between a feature's states: every state from UI to server on one HTML page, then a numbered list with file, line and why. | 143 |

### Design

`/copybook:design-tips` · 32 tips: image-first pages, motion libraries, reference sites, design skills.

| Tip | Saves |
| :-- | :-: |
| **[Two AGENTS.md lines: less text, UX/DX/AX](./skills/design-tips/references/two-agents-md-lines.md)** `two-agents-md-lines`<br>Clean up decorative page copy such as a redundant tagline or eyebrow. Keep functional labels and instructions. | 15K |
| **[Page design as an image first, in Codex](./skills/design-tips/references/page-design-as-an-image-first.md)** `page-design-as-an-image-first`<br>Pages designed from text come out plain: Codex's image model draws the page first, then the coding model builds it, one line. | 4.2K |
| **[huashu-art-motion: animation in 35 art styles](./skills/design-tips/references/huashu-art-motion-35-art-styles.md)** `huashu-art-motion-35-art-styles`<br>You want Van Gogh, Monet or Bauhaus moving: drawn in code, and a delivery check rejects any film where almost nothing moves. | 3.8K |
| **[8 frontend reference sites for CLAUDE.md](./skills/design-tips/references/8-frontend-reference-sites.md)** `8-frontend-reference-sites`<br>Stuck on style, components, motion, a demo video or polish: 8 sites sorted by that, saved so Claude Code knows which to use. | 1.7K |
| **[Clickable library of 120 motion samples](./skills/design-tips/references/120-sample-motion-library.md)** `120-sample-motion-library`<br>Motion effects you pick by clicking: 120 labelled samples in 5 packs; tick the ones you like and Claude Code builds them in. | 1.7K |
| **[good-css: CSS check for a vibe-coded site](./skills/design-tips/references/good-css-css-check.md)** `good-css-css-check`<br>Hover stuck on phones, forms red before anyone types: 47 modern CSS techniques and a list of what your styles get wrong. | 1.5K |
| **[Video sound by measurement: beats and loudness](./skills/design-tips/references/video-sound-by-measurement.md)** `video-sound-by-measurement`<br>Opus 5.5 can't hear its own soundtrack: beats from librosa, the grid checked below 120 Hz, loudness measured on the MP4. | 1.5K |
| **[4-person motion video team](./skills/design-tips/references/4-person-motion-video-team.md)** `4-person-motion-video-team`<br>A motion video in Claude Code: breakdown, storyboard and review subagents around a main session on HyperFrames; you direct. | 1.4K |
| **[Project animation by the Claude Motion guide](./skills/design-tips/references/claude-motion-project-animation.md)** `claude-motion-project-animation`<br>What in your project is worth animating: storyboards by Anthropic's Motion guide, your pick built in HyperFrames. | 1.4K |
| **[DESIGN.md from sites you like](./skills/design-tips/references/design-md-from-sites-you-like.md)** `design-md-from-sites-you-like`<br>Pages look AI-made since Opus hasn't seen what you like: 3-5 screenshots become a DESIGN.md; add taste-skill and Impeccable. | 1.4K |
| **[TasteSkill v2 AI-look check](./skills/design-tips/references/tasteskill-v2-ai-look-check.md)** `tasteskill-v2-ai-look-check`<br>Pages that look AI-made at a glance: every tell at desktop, tablet and phone widths, FAIL before WARN, code untouched. | 1.3K |
| **[Dashboard redesign: 2 skills, 2 prompts](./skills/design-tips/references/dashboard-redesign-2-skills.md)** `dashboard-redesign-2-skills`<br>Dashboards that look AI-made on sight: ui-ux-pro-max and frontend-design in one redesign prompt, then a four-angle review. | 1.3K |
| **[Screenshot-first UI rebuild prompt](./skills/design-tips/references/screenshot-first-ui-rebuild.md)** `screenshot-first-ui-rebuild`<br>UI hierarchy and density problems: every page screenshotted, then rebuilt on only a spacing scale, type scale and up to 5 colors. | 1.1K |
| **[Codex computer use as a local MCP server](./skills/design-tips/references/codex-computer-use-as-mcp-server.md)** `codex-computer-use-as-mcp-server`<br>A fast browser for Claude Code: ChatGPT's computer use as a local MCP server, clicking pages and comparing live with local. | 1.1K |
| **[UI/UX audit as a senior designer](./skills/design-tips/references/ui-ux-audit-as-a-senior-designer.md)** `ui-ux-audit-as-a-senior-designer`<br>A review with a designer's authority: taste baseline, correctness fixed, cheap-looking parts found, big changes proposed. | 645 |
| **[lemo-opuscar: narrated launch films in code](./skills/design-tips/references/lemo-opuscar-launch-films.md)** `lemo-opuscar-launch-films`<br>No video model on hand: narration by TTS, music from free sample libraries, every frame in one of 43 styles, 30 to 60 minutes. | 634 |
| **[4 starting points for a code-only animation](./skills/design-tips/references/4-starts-for-code-only-animation.md)** `4-starts-for-code-only-animation`<br>An animation you love, a one-line idea, a character image or an art style: a prompt for each, one HTML file rendered, plus sound. | 589 |
| **[awesome-design-md and the shadcn skill](./skills/design-tips/references/awesome-design-md-shadcn-skill.md)** `awesome-design-md-shadcn-skill`<br>Pages still look like default shadcn: a Stripe or Linear style DESIGN.md, every component restyled, a design system page too. | 538 |
| **[Awwwards scoring loop](./skills/design-tips/references/awwwards-scoring-loop.md)** `awwwards-scoring-loop`<br>Only on an explicit request for Awwwards scoring during visual exploration. Scores guide design discussion. | 536 |
| **[Component stress test in every state](./skills/design-tips/references/component-stress-test.md)** `component-stress-test`<br>Sample data proves little: the real component rendered in every state that matters, fixed only where a failure reproduces. | 487 |
| **[6 ChatGPT photo prompts](./skills/design-tips/references/6-chatgpt-photo-prompts.md)** `6-chatgpt-photo-prompts`<br>A finish you'd pay a photographer for: headshot, cinematic still, travel, magazine shoot, old-photo repair, golden hour. | 412 |
| **[Every UI state mocked up with Claude Design](./skills/design-tips/references/every-ui-state-with-design.md)** `every-ui-state-with-design`<br>Before any app code changes: default, loading, empty, error and success on separate artboards, from a design reference repo. | 386 |
| **[Image options in one grid: an AGENTS.md rule](./skills/design-tips/references/image-options-in-one-grid.md)** `image-options-in-one-grid`<br>Image options drawn one at a time burn your limits: a global rule puts them all in one numbered grid, then builds your pick. | 379 |
| **[Camera moves to name in video prompts](./skills/design-tips/references/camera-moves-for-video-prompts.md)** `camera-moves-for-video-prompts`<br>Opus 5.5 videos that look like a slideshow: six camera moves by name with what each one does, plus seconds and speed to add. | 354 |
| **[/learn-taste: design corrections as rules](./skills/design-tips/references/learn-taste-design-corrections.md)** `learn-taste-design-corrections`<br>You keep fixing the same design mistakes: each correction in a session turned into a strict rule with reasoning. | 314 |
| **[Happy-path debt, found and fixed](./skills/design-tips/references/happy-path-debt-found-and-fixed.md)** `happy-path-debt-found-and-fixed`<br>Screens that only work when data loads fast and nothing fails: missing states and layout breaks fixed per component, design kept. | 252 |
| **[Unslop prompt for pages that look AI-made](./skills/design-tips/references/unslop-prompt.md)** `unslop-prompt`<br>Pages that scream AI at first glance: every slop sign listed, a five-line direction for your OK, then fixes pass by pass. | 240 |
| **[703 Opus 5.5 video prompts, one remade for you](./skills/design-tips/references/703-video-prompts-one-remade.md)** `703-video-prompts-one-remade`<br>A product video like the viral ones: the 5 of 703 prompts that fit your product, your pick remade as one HTML file. | 214 |
| **[Hallmark: audit and redesign AI-looking pages](./skills/design-tips/references/hallmark-audit-and-redesign.md)** `hallmark-audit-and-redesign`<br>A tiny label above every heading gives AI away: one command lists what's wrong with a page, another rebuilds it, content kept. | 188 |
| **[Internet Archive public-domain clips and music](./skills/design-tips/references/internet-archive-clips-and-music.md)** `internet-archive-clips-and-music`<br>A shot needing old film or old records: the Internet Archive's free API searched, public-domain items only, each one logged. | 162 |
| **[A designer's landing-page skill](./skills/design-tips/references/designers-landing-page-skill.md)** `designers-landing-page-skill`<br>A landing page that looks designed: layout, copy, fonts and spacing handled after one round of questions. | 159 |
| **[Refero style prompt: design plan before code](./skills/design-tips/references/refero-style-prompt.md)** `refero-style-prompt`<br>Pages that could fit any startup: a Refero style as reference, a design plan you approve, then DESIGN.md and screenshot checks. | 141 |

### Long runs

`/copybook:long-run-tips` · 22 tips: multi-agent roles, progress dashboards, handoffs, remote workflows.

| Tip | Saves |
| :-- | :-: |
| **[Progress dashboard subagent for long tasks](./skills/long-run-tips/references/progress-dashboard-subagent.md)** `progress-dashboard-subagent`<br>Where a long task stands while you wait: an HTML dashboard of progress, blockers and open questions, built by a side subagent. | 9.8K |
| **[Week calendar from Claude Code sessions](./skills/long-run-tips/references/week-calendar-from-sessions.md)** `week-calendar-from-sessions`<br>A week of sessions you can't recall: local logs as an HTML calendar, no-commit sessions flagged, and a 3-line weekly report. | 2K |
| **[Grok Bot team of 6 roles](./skills/long-run-tips/references/grok-bot-team-of-6-roles.md)** `grok-bot-team-of-6-roles`<br>Which work deserves its own Bot: six roles with ownership, handoffs and limits, and what stays a Skill or a routine. | 1.5K |
| **[Later items from your last 20 Claude Code sessions](./skills/long-run-tips/references/later-items-from-20-sessions.md)** `later-items-from-20-sessions`<br>What you said you'd do later and forgot: past sessions searched, items ranked, each one a card that opens its own session. | 1.4K |
| **[Herdr app: Opus 5.5 coordinating workers](./skills/long-run-tips/references/herdr-app-opus-5-5-coordinates.md)** `herdr-app-opus-5-5-coordinates`<br>Running more agents without leaving Claude Code: Opus 5.5 coordinates up to 10 workers through Herdr, and a Codex worker reviews. | 1.2K |
| **[7 role prompts from idea to done](./skills/long-run-tips/references/7-role-prompts-from-idea-to-done.md)** `7-role-prompts-from-idea-to-done`<br>Still walking a senior AI through every step: tech lead, requirements, debugging, performance, frontend, backend, reviewer. | 1.1K |
| **[Herdr: Astra coordinating Claude Code workers](./skills/long-run-tips/references/herdr-astra-coordinates-workers.md)** `herdr-astra-coordinates-workers`<br>Your Claude Code subscription, used from Codex: Astra runs up to 10 Opus workers through Herdr and hands them the heavy work. | 1.1K |
| **[Herdr: one task across Claude and Codex panes](./skills/long-run-tips/references/herdr-claude-and-codex-panes.md)** `herdr-claude-and-codex-panes`<br>Relaying conclusions between windows by hand: the task split, a worktree and outcome per agent, one executes, one reviews. | 884 |
| **[To-dos first in long reports: an AGENTS.md rule](./skills/long-run-tips/references/to-dos-first-in-long-reports.md)** `to-dos-first-in-long-reports`<br>What it needs from you is buried mid-report: one AGENTS.md section puts the to-dos, numbered, at the top of every report. | 782 |
| **[Slow-computer audit when agents run](./skills/long-run-tips/references/slow-computer-audit-for-agents.md)** `slow-computer-audit-for-agents`<br>Many agents open and the Mac bogs down: a dry-run map of processes and startup items, cleaned only where you approve. | 673 |
| **[The job worth a dynamic workflow in Claude Code](./skills/long-run-tips/references/job-worth-a-dynamic-workflow.md)** `job-worth-a-dynamic-workflow`<br>Which job is worth many agents: repo-wide checks, migrations or fix loops, planned on one directory with at most 10 agents. | 670 |
| **[Herdr overnight: Opus 5.5 builds, Sol reviews](./skills/long-run-tips/references/herdr-overnight-opus-and-sol.md)** `herdr-overnight-opus-and-sol`<br>One stuck step eating your whole night: at most 3 attempts per step, then its error recorded and the next independent step begun. | 641 |
| **[Bedtime report of tasks safe to run overnight](./skills/long-run-tips/references/bedtime-report-of-safe-tasks.md)** `bedtime-report-of-safe-tasks`<br>Unused quota overnight: an hour before bed, 3-5 reversible, verifiable tasks from today, prompts ready, nothing changed. | 570 |
| **[Orca: one task split across CLI agents](./skills/long-run-tips/references/orca-a-task-across-cli-agents.md)** `orca-a-task-across-cli-agents`<br>Who finished what across several CLI agents: a goal each, read-only reviewers, worktrees for writers, one owner integrates. | 495 |
| **[HANDOFF.md for the next agent](./skills/long-run-tips/references/handoff-md-for-the-next-agent.md)** `handoff-md-for-the-next-agent`<br>A task longer than one session: progress, decisions, files, checks and next steps kept current for the next agent. | 429 |
| **[Decision page rule for long tasks](./skills/long-run-tips/references/decision-page-for-long-tasks.md)** `decision-page-for-long-tasks`<br>A summary saying all went well hides the agent's choices: one screen of the ones that change the result, those to confirm in red. | 383 |
| **[Codex remote workflow from OpenAI's guide](./skills/long-run-tips/references/codex-remote-workflow.md)** `codex-remote-workflow`<br>Projects that keep moving while you're out: OpenAI's Remote guide applied, what runs alone and what you decide by phone. | 381 |
| **[Scheduled-agents review by Anthropic's guide](./skills/long-run-tips/references/scheduled-agents-review.md)** `scheduled-agents-review`<br>'The last 24 hours' in a scheduled task skips or repeats work: fixed windows, silent read failures and risky posting flagged. | 380 |
| **[Overnight /goal for open issues and TODOs](./skills/long-run-tips/references/overnight-goal-for-open-issues.md)** `overnight-goal-for-open-issues`<br>Before bed: each issue and TODO taken as far as it can go without you, then one HTML board of what's done, stuck or your call. | 315 |
| **[Goal wrapper and 5 prompts built on it](./skills/long-run-tips/references/goal-wrapper-and-5-prompts.md)** `goal-wrapper-and-5-prompts`<br>One preference typed in three places: a goal wrapper, plus prompts for components, parallel runs, review, states and corrections. | 309 |
| **[One-way door rules for AGENTS.md: when to ask](./skills/long-run-tips/references/one-way-door-rules-when-to-ask.md)** `one-way-door-rules-when-to-ask`<br>Questions you'd only rubber-stamp: work you can undo done and shown after, a stop at anything you can't undo. | 247 |
| **[Coordinator skill for Claude Code and Codex](./skills/long-run-tips/references/coordinator-for-claude-and-codex.md)** `coordinator-for-claude-and-codex`<br>Too much for one agent session: a coordinator that never codes runs Claude and Codex workers in Herdr and ships tested batches. |  |

### Models and cost

`/copybook:model-tips` · 23 tips: model pairings, effort, cache timing, leftover quota.

| Tip | Saves |
| :-- | :-: |
| **[Luna Max as a Codex subagent](./skills/model-tips/references/luna-max-as-a-codex-subagent.md)** `luna-max-as-a-codex-subagent`<br>Bounded delegated work at max reasoning: a luna_worker custom agent, checked against your Codex version, diff shown first. | 6.1K |
| **[/advisor: Opus 5.5 works, Fable on call](./skills/model-tips/references/advisor-fable-on-call.md)** `advisor-fable-on-call`<br>Fable quota idle while Opus 5.5 does the work: Fable called in before a plan, when an error repeats and before 'done'. | 5.5K |
| **[Old-rules review for Astra, by OpenAI's guide](./skills/model-tips/references/old-rules-review-for-astra.md)** `old-rules-review-for-astra`<br>Rules from older models make Astra over-read or stop early: the triggers, required reading, checks and stop rules to cut. | 5K |
| **[Setup review by Anthropic's model guide](./skills/model-tips/references/setup-review-by-the-model-guide.md)** `setup-review-by-the-model-guide`<br>Explore burning big-model quota on every file read: wrong-model subagents and ill-fitting effort found, a config fix each. | 3.4K |
| **[5 /goal prompts for leftover Codex quota](./skills/model-tips/references/leftover-quota-5-goal-prompts.md)** `leftover-quota-5-goal-prompts`<br>Quota unused before it resets: a UI/UX audit, a clickable code map, measurable speedups, a workspace and a Codex cleanup. | 2.6K |
| **[Cache countdown in the status line](./skills/model-tips/references/status-line-cache-countdown.md)** `status-line-cache-countdown`<br>The cache expires without warning: the status line shows minutes left, then what the next message re-caches. | 2.5K |
| **[Fable 5 plans, Codex builds the backend](./skills/model-tips/references/fable-plans-codex-builds.md)** `fable-plans-codex-builds`<br>Fable 5 burns tokens fast: planning and frontend stay with it, the backend goes to Codex by /goal; a redesign prompt too. | 2.5K |
| **[Setup review by the Opus 5.5 cost guide](./skills/model-tips/references/setup-review-by-the-cost-guide.md)** `setup-review-by-the-cost-guide`<br>Settings carried over from Opus 5 cost more on 5.5: effort, subagents, MCP servers and CLAUDE.md checked, a small fix each. | 2.2K |
| **[Think-carefully cleanup for Opus 5.5](./skills/model-tips/references/think-carefully-cleanup.md)** `think-carefully-cleanup`<br>Opus 5.5 already thinks before it answers: rules that push extra thinking, dole out steps or stop to confirm, quoted with a fix. | 2.1K |
| **[hillclimb: a cheaper Claude API feature](./skills/model-tips/references/hillclimb-a-cheaper-feature.md)** `hillclimb-a-cheaper-feature`<br>Your costliest Claude API feature: a test set first, then cheaper models and lower effort step by step while accuracy holds. | 1.7K |
| **[Fable 5.2 agent tree with Opus 5.5 and Haiku](./skills/model-tips/references/fable-5-2-agent-tree.md)** `fable-5-2-agent-tree`<br>Picking a model and effort per role: Haiku 5.5 finds files and runs tests, Opus 5.5 edits code, Fable on high only if stuck. | 1.3K |
| **[Codex: GPT-6.1 Sol main, medium subagents, Astra review](./skills/model-tips/references/gpt-6-1-sol-main-astra-reviews.md)** `gpt-6-1-sol-main-astra-reviews`<br>Astra eats a week's quota: 6.1 Sol on high as orchestrator, on medium for 3 subagents, Astra only to review big changes. | 1.1K |
| **[/advisor: Sonnet 5.5 works, Opus on call](./skills/model-tips/references/advisor-opus-on-call.md)** `advisor-opus-on-call`<br>$20 plan on Opus 5.5 by default: Haiku reads code, looks up docs; Opus advises before plans, on repeat errors, before 'done'. | 968 |
| **[Fable 5.2 plans, Opus 5.5 or Codex builds](./skills/model-tips/references/fable-5-2-plans-opus-builds.md)** `fable-5-2-plans-opus-builds`<br>Fable 5.2 burns tokens fast: planning stays with it, the hardest parts may too, the rest goes to an Opus 5.5 subagent or Codex. | 893 |
| **[Old-rules review for Fable 5.2](./skills/model-tips/references/old-rules-review-for-fable-5-2.md)** `old-rules-review-for-fable-5-2`<br>Rules hard-coded for older models work against Fable 5.2: delegation, think-less, style-limit and 'never' lines quoted with a fix. | 843 |
| **[3 habits burning your Claude Code usage](./skills/model-tips/references/3-habits-burning-your-usage.md)** `3-habits-burning-your-usage`<br>Keep hitting the usage limit: 7 days of session logs scanned, the 3 costliest habits and their share, rules to plug them. | 730 |
| **[Fable main, Opus subagents: 3 settings](./skills/model-tips/references/fable-main-opus-subagents.md)** `fable-main-opus-subagents`<br>Fable quota going fast: 3 settings send reading and lookups to half-price Opus subagents; Fable keeps the judgment. | 715 |
| **[Setup check: OpenAI's 5 cheap-harness rules](./skills/model-tips/references/openais-5-cheap-harness-rules.md)** `openais-5-cheap-harness-rules`<br>Is your setup as cheap as OpenAI's harness: pass or fail on each of its 5 rules, with the file and the one thing to change. | 715 |
| **[Codex: Astra without default subagents](./skills/model-tips/references/astra-without-default-subagents.md)** `astra-without-default-subagents`<br>Astra burns quota faster than Sol: default-subagent rules gone, one line so it does the task and the checks itself. | 686 |
| **[Opus 5.5 main model, medium subagents](./skills/model-tips/references/opus-5-5-main-medium-subagents.md)** `opus-5-5-main-medium-subagents`<br>Usage that lasts longer: Opus 5.5 as main model, Opus 5.5 on medium as default subagent; hard-coded model IDs found first. | 437 |
| **[GPT-6 Pro plan in Chat, handed to Codex](./skills/model-tips/references/gpt-6-pro-plan-handed-to-codex.md)** `gpt-6-pro-plan-handed-to-codex`<br>Plans made blind to your code and logs: connected to ChatGPT, GPT-6 Pro plans from real PRs and records, then briefs Codex. | 371 |
| **[Token waste audit for Claude Code on Opus 5.5](./skills/model-tips/references/claude-code-token-waste-audit.md)** `claude-code-token-waste-audit`<br>Where your setup wastes tokens each turn: measured, each instruction line marked Keep, Move or Cut, applied on your OK. | 348 |
| **[Rules check for Sol and Luna after Astra cleanup](./skills/model-tips/references/rules-check-for-sol-and-luna.md)** `rules-check-for-sol-and-luna`<br>Rules trimmed for Astra can drop checks Sol and Luna still need: Astra finds what was lost, each model's rules kept apart. | 318 |

### Launch

`/copybook:launch-tips` · 11 tips: pre-launch, speed, and legal checks, SEO tool pages, VPS lockdown.

| Tip | Saves |
| :-- | :-: |
| **[Pre-launch site check: 20 page items](./skills/launch-tips/references/pre-launch-site-check-20-items.md)** `pre-launch-site-check-20-items`<br>A vibe-coded site about to go live: design, mobile, every state, real-user flows and launch details, fixed in one pass. | 6.9K |
| **[Pre-launch check: 20 things that slow a site](./skills/launch-tips/references/pre-launch-check-site-speed.md)** `pre-launch-check-site-speed`<br>A vibe-coded site that loads slowly: images, fonts, frontend, database, APIs and servers, fixed in one pass and re-measured. | 3.2K |
| **[Pre-launch check: 4 test subagents](./skills/launch-tips/references/pre-launch-4-test-subagents.md)** `pre-launch-4-test-subagents`<br>Try to break it yourself first: 16 questions on security, data, flows and environment, issues ranked by severity, then fixed. | 2.1K |
| **[A free tool page for users from Google search](./skills/launch-tips/references/free-tool-page-for-google-search.md)** `free-tool-page-for-google-search`<br>Users from Google search: 3 free tools people already search for, your pick built as an SEO page with one button to your app. | 1.5K |
| **[Pre-launch check: 25 behind-the-page items](./skills/launch-tips/references/pre-launch-25-behind-page-items.md)** `pre-launch-25-behind-page-items`<br>Trouble behind the page: keys, billing abuse, payments, monitoring and launch day fixed in one pass; what needs you listed last. | 1.4K |
| **[VPS lockdown: Cloudflare only, SSH over Tailscale](./skills/launch-tips/references/vps-lockdown.md)** `vps-lockdown`<br>With Docker, ufw doesn't help: visitors reach your site only through Cloudflare, and only you SSH in, over Tailscale. | 1.2K |
| **[Pre-launch check: 6 legal traps](./skills/launch-tips/references/pre-launch-check-6-legal-traps.md)** `pre-launch-check-6-legal-traps`<br>Review the product’s data collection, fonts, session replay, marketing email, renewals and user uploads against the rules that apply to it. | 1.2K |
| **[Google search check: 12 items for a live site](./skills/launch-tips/references/google-search-check-12-items.md)** `google-search-check-12-items`<br>You can't find your AI-built site by Googling its name: crawling, every page and the whole site, fixed in one pass. | 829 |
| **[Builder on low effort, verifier on high](./skills/launch-tips/references/builder-and-verifier-subagents.md)** `builder-and-verifier-subagents`<br>High effort mostly buys verification: a builder on low, a verifier on high, one CLAUDE.md rule runs each feature through both. | 740 |
| **[Market read before you build](./skills/launch-tips/references/market-read-before-you-build.md)** `market-read-before-you-build`<br>Advice with no research behind it: 25-40 competitors indexed, recurring complaints ranked, then where your direction will die. | 173 |
| **[Scaling check: cache, queue, load balancer](./skills/launch-tips/references/scaling-check.md)** `scaling-check`<br>Whether your app needs them yet: six scaling fixes judged from your code, the file behind each answer, the monthly cost of each. | 79 |

### Writing

`/copybook:writing-tips` · 5 tips: Orwell's rules, one-line de-AI prompt, README rewrites, task briefs.

| Tip | Saves |
| :-- | :-: |
| **[Orwell's 6 writing rules for CLAUDE.md and AGENTS.md](./skills/writing-tips/references/orwells-6-writing-rules.md)** `orwells-6-writing-rules`<br>Banning AI words one by one never ends: 6 rules from 1946 for your global rules file, plus prompts for docs, PRs and reports. | 12K |
| **[Engineer's task brief from GPT-6 Pro](./skills/writing-tips/references/task-brief-from-gpt-6-pro.md)** `task-brief-from-gpt-6-pro`<br>Before a task goes to Codex: GPT-6 Pro finds what you haven't thought through and writes a brief an engineer could take. | 1.5K |
| **[One line against AI prose](./skills/writing-tips/references/one-line-against-ai-prose.md)** `one-line-against-ai-prose`<br>'It's not X, it's Y' is gone and it still reads like AI: Anthropic's Fable 5.1 guide has a more direct one-line prompt. | 558 |
| **[README rewrite prompt and Impeccable polish](./skills/writing-tips/references/readme-rewrite-and-polish.md)** `readme-rewrite-and-polish`<br>Rewrite the whole README for first-time readers when a full rewrite is requested. Single-section edits stay local. | 235 |
| **[Content team of 9 skill sets in Claude Code](./skills/writing-tips/references/content-team-of-9-skill-sets.md)** `content-team-of-9-skill-sets`<br>Making content solo: skills for topics, writing, visuals, video, sound and scheduling, installed and tried on one topic. | 176 |

## Philosophy

- **Picked by saves.** Only posts people saved most on X.
- **Word for word.** The prompts and rules are the post's own text, checked by a script.
- **Re-tested on new models.** A tip that stops working comes off the list.
- **In two languages.** The Chinese version keeps every command, path and number of the English.

## Contributing

Every file here is generated from the tips at copybook.page whenever a tip is added or checked again, so a change made in this repository, by hand or by pull request, is overwritten on the next sync. Open an issue instead ([how](.github/CONTRIBUTING.md)); the fix lands in the next sync, with you credited in the commit.

To suggest a tip, open "Suggest a tip" with a link to the post. Copybook takes tips from the posts readers saved most on X, and [@Voxyz_ai](https://x.com/Voxyz_ai) decides what goes in.

## Updating

Refresh the marketplace and update the plugin using the commands below for a user install; use the recorded scope for another install. Start a new session, check the installed version and compare its router and one reference file with the same language in the published tag. For a skills.sh copy, use [its update command](#cursor-copilot-gemini-cli-and-others) and verify the refreshed commit and files. For ChatGPT, use Sync now and inspect the import report; upload a new ZIP for a ZIP install. What changed is in the [changelog](CHANGELOG.md).

### Claude Code

```bash
claude plugin marketplace update copybook
claude plugin update copybook@copybook --scope user --json
claude plugin list --json
```

### Codex

```bash
codex plugin marketplace upgrade copybook
codex plugin add copybook@copybook
codex plugin list --json
```

If an older install cannot refresh after the first public release, back up local changes and record every Copybook plugin and its scope. Remove the Copybook marketplace, add it again from the same repository and reinstall each intended plugin. Removing a marketplace can remove its plugins. Then start a new session and verify the installed version and files.

```bash
claude plugin marketplace remove copybook
claude plugin marketplace add Heyvhuang/copybook-skills
claude plugin install copybook@copybook --scope user
```

```bash
codex plugin remove copybook@copybook
codex plugin marketplace remove copybook
codex plugin marketplace add Heyvhuang/copybook-skills
codex plugin add copybook@copybook
```

## License

Copybook’s original skill text, instructions and translations are licensed under [CC BY 4.0](LICENSE-CONTENT). Credit Copybook (@Voxyz_ai), link to the source and license, and indicate any changes. Third-party quotations are excluded from this grant. See the [Orwell quotation notice](LICENSE-NOTICES.md). Manifests, configuration and other original non-text assets use the [MIT License](LICENSE). Keep its copyright and permission notice with copies.
