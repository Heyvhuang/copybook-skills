# Models and cost · 25 tips

Copybook's 25 tips on models and cost. The order is by saves, not by fit: read the whole list before choosing, since the tip that fits is often further down. Each tip's file is `../model-tips/references/<name>.md`.

| Tip | What it does |
| --- | --- |
| luna-max-as-a-codex-subagent | Bounded delegated work at max reasoning: a luna_worker custom agent, checked against your Codex version, diff shown first. |
| advisor-fable-on-call | Fable quota idle while Opus 5.5 does the work: Fable called in before a plan, when an error repeats and before 'done'. |
| old-rules-review-for-astra | Rules from older models make Astra over-read or stop early: the triggers, required reading, checks and stop rules to cut. |
| setup-review-by-the-model-guide | Explore burning big-model quota on every file read: wrong-model subagents and ill-fitting effort found, a config fix each. |
| leftover-quota-5-goal-prompts | Quota unused before it resets: a UI/UX audit, a clickable code map, measurable speedups, a workspace and a Codex cleanup. |
| status-line-cache-countdown | The cache expires without warning: the status line shows minutes left, then what the next message re-caches. |
| fable-plans-codex-builds | Fable 5 burns tokens fast: planning and frontend stay with it, the backend goes to Codex by /goal; a redesign prompt too. |
| setup-review-by-the-cost-guide | Settings carried over from Opus 5 cost more on 5.5: effort, subagents, MCP servers and CLAUDE.md checked, a small fix each. |
| think-carefully-cleanup | Opus 5.5 already thinks before it answers: rules that push extra thinking, dole out steps or stop to confirm, quoted with a fix. |
| codex-setup-vs-the-gpt-6-2-guide | Maxing out Astra when Sol would do: model, effort, subagent and AGENTS.md problems found, each with a config fix to paste. |
| hillclimb-a-cheaper-feature | Your costliest Claude API feature: a test set first, then cheaper models and lower effort step by step while accuracy holds. |
| fable-5-2-agent-tree | Picking a model and effort per role: Haiku 5.5 finds files and runs tests, Opus 5.5 edits code, Fable on high only if stuck. |
| gpt-6-1-sol-main-astra-reviews | Astra eats a week's quota: 6.1 Sol on high as orchestrator, on medium for 3 subagents, Astra only to review big changes. |
| advisor-opus-on-call | $20 plan on Opus 5.5 by default: Haiku reads code, looks up docs; Opus advises before plans, on repeat errors, before 'done'. |
| fable-5-2-plans-opus-builds | Fable 5.2 burns tokens fast: planning stays with it, the hardest parts may too, the rest goes to an Opus 5.5 subagent or Codex. |
| old-rules-review-for-fable-5-2 | Rules hard-coded for older models work against Fable 5.2: delegation, think-less, style-limit and 'never' lines quoted with a fix. |
| 3-habits-burning-your-usage | Keep hitting the usage limit: 7 days of session logs scanned, the 3 costliest habits and their share, rules to plug them. |
| fable-main-opus-subagents | Fable quota going fast: 3 settings send reading and lookups to half-price Opus subagents; Fable keeps the judgment. |
| openais-5-cheap-harness-rules | Is your setup as cheap as OpenAI's harness: pass or fail on each of its 5 rules, with the file and the one thing to change. |
| state-md-and-new-session-rules | Using up your Claude Code limit: a STATE.md per task, a summary to switch chats at each approved milestone or 200 thousand tokens. |
| astra-without-default-subagents | Astra burns quota faster than Sol: default-subagent rules gone, one line so it does the task and the checks itself. |
| opus-5-5-main-medium-subagents | Usage that lasts longer: Opus 5.5 as main model, Opus 5.5 on medium as default subagent; hard-coded model IDs found first. |
| gpt-6-pro-plan-handed-to-codex | Plans made blind to your code and logs: connected to ChatGPT, GPT-6 Pro plans from real PRs and records, then briefs Codex. |
| claude-code-token-waste-audit | Where your setup wastes tokens each turn: measured, each instruction line marked Keep, Move or Cut, applied on your OK. |
| rules-check-for-sol-and-luna | Rules trimmed for Astra can drop checks Sol and Luna still need: Astra finds what was lost, each model's rules kept apart. |
