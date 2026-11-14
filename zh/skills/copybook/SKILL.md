---
name: copybook
description: "134 条提示词、规则、检查清单和设置，按场景自动选用。开始做下面任何一件事之前，先加载这个技能，用户没提 Copybook 也一样：装技能包或插件；网站上线前的准备；设计或重做页面、落地页、仪表盘，或去掉 AI 味；写或精简 AGENTS.md、CLAUDE.md、agent 权限；往下做之前审一遍计划、diff 或 PR；同一个 bug 修了两次还没好；跨好几个会话或多个 agent 的任务；省 Claude Code 或 Codex 的额度，选模型和推理强度；为新读者重写整份 README、写任务说明，或长任务做完给用户写报告。仅改单个 README 章节、补安装说明或修错字时直接处理。用户要现成的提示词、规则、检查清单或设置，或问 Copybook 有什么时，也加载。这些技巧都是 X 上读者收藏最多的。"
---

# Copybook

Copybook 有 134 条写给 coding agent 的技巧：提示词、规则、检查清单和设置，每条都来自一条读者在 X 上收藏过的帖子。它们分在下面 7 个话题里。每个话题的列表是这个文件旁边的一个文件；每条的文字是它所在话题技能里的一个文件。

替用户挑一条直接用：用户要的是用上对的那条，不是一张自己去选的清单。

1. 弄清现在的情景：用户正在做或准备做什么，看用户说的话和手上的工作。先对一下后面的「时刻」：哪一行的信号明摆着，就从那一行的技巧开始。用户主动运行这个技能却没说别的时，先不要问：看手上的工作（前面的对话、分支、最近的改动），给出最多三条现在用得上的技巧，每条写名字和一句用户能得到什么，再用一行列出各话题和条数。问用哪条。实在没有工作可看时，才用一句话问要做什么。
2. 找出情景所属的话题（见下面的「话题」和「情景」；每个话题下也列了它的技巧名，可以帮你找到对的列表）。读这个话题的列表，也就是那里写的文件，不要运行话题技能，那是给用户用的菜单；列表要读完，光看名字看不出技巧做什么。从中选能解决用户眼前问题、也适用于实际执行这项工作的 agent 的技巧。情景横跨两个话题，或这个列表里没有专为这个问题写的技巧、只有更泛的，先再读下一个最可能的话题的列表，再做选择。几条都相关时，比较它们能交付什么，以及是否符合用户的限制。若几条同样合适，选一条直接用。
3. 用一句话告诉用户选了哪条、为什么。下面再点出最多两条最接近的其他技巧，每条用几个字说区别，让用户看到还有什么；没有接近的，也用几个字说明。不用等用户回答，除非换用另一条会明显改变做法或结果。读所选技巧的文件并照着做。文件找不到，就运行它所属的话题技能，并点名这条技巧。请求里还有下一项交付（比如审完计划再写交接）时，确定要做之后、动笔写回复之前，也为它选一条：回到第 2 步，读它所属话题的列表，前一项用过别的话题也一样。两项在同一条回复里交付，也要各选一次。
4. 技巧本身的规矩照旧：要加进用户文件的内容先给用户看，用户同意再加；命令用户同意再运行。
   引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
5. 工作要分给几个 agent 或分路并行，或用户主动运行这个技能、约好了后面还要做的事时，先读 [lead.md](lead.md)。
6. 读完两个最可能的话题的列表，仍没有明显合适的：你自己加载这个技能时，不提 Copybook，接着做用户的事；用户主动运行时，直说没有合适的。连着 Copybook 的 MCP 服务时，可以用 search_tips 找更新的技巧；没有的话指向 https://copybook.page/zh/tips。
7. 一条技巧管的工作做完时，在报告末尾加一行：`Copybook: 用了 <技巧名>`，再用几个字说它让结果有什么不同。每条技巧只占一行、只说一次。技巧没帮上忙，就照实说。

## 话题

### 代码库 · 32 条

仓库索引和地图、写代码原则、AGENTS.md、改动范围规则。列表：[codebase.md](codebase.md)

技巧：3-slimmer-agents-md-plans、agent-memory-tools-8-repos、agent-workspace-audit、archify-system-diagrams、ask-before-edge-case-code、bug-fix-loop-rules、ci-time-audit、clickable-repo-map、codebase-memory-repo-index、codex-and-claude-sorted、deny-ask-and-allow-permissions、disk-map-of-dev-leftovers、fewer-deeper-modules、instructions-from-your-sessions、investigate-and-plan-prompt、karpathys-4-coding-principles、less-defensive-code、mod-ideas-from-20-sessions、mod-request-for-claude-code、no-compatibility-code-yet、one-agents-md-for-both-agents、pr-comments-as-agents-md-rules、rea-take-apart-a-feature、repeat-mistakes-as-lint-rules、repo-map-words-vs-names、scope-guard-rules、situation-routing-for-skills、teach-strategic-programming、ub-mode-clean-code-agent-rules、untangle-goal、vibe-coding-cleanup-prompts、whole-project-audit。

### 验收 · 14 条

bug 打分、红队提示词、代码和计划复查、skill 回测。列表：[review.md](review.md)

技巧：3-checks-before-a-skill-install、blast-radius-and-4-more-prompts、bug-score-rule-for-astra、claude-api-prompt-audit、code-and-direction-review、fake-busy-check、logging-plan-and-daily-fix-list、nightly-push-review-routine、one-question-before-it-answers、perf-review-the-5-slowest-spots、plan-review-5-methods、skill-backtest-on-codex-sessions、skill-score-by-yes-no-questions、state-machine-check。

### 设计 · 30 条

先出图再写页面、动效库、参考网站、设计 skill。列表：[design.md](design.md)

技巧：120-sample-motion-library、4-person-motion-video-team、4-starts-for-code-only-animation、6-chatgpt-photo-prompts、703-video-prompts-one-remade、8-frontend-reference-sites、awesome-design-md-shadcn-skill、awwwards-scoring-loop、camera-moves-for-video-prompts、claude-motion-project-animation、codex-computer-use-as-mcp-server、component-stress-test、dashboard-redesign-2-skills、design-md-from-sites-you-like、designers-landing-page-skill、every-ui-state-with-design、good-css-css-check、hallmark-audit-and-redesign、happy-path-debt-found-and-fixed、huashu-art-motion-35-art-styles、image-options-in-one-grid、internet-archive-clips-and-music、lemo-opuscar-launch-films、page-design-as-an-image-first、refero-style-prompt、tasteskill-v2-ai-look-check、two-agents-md-lines、ui-ux-audit-as-a-senior-designer、unslop-prompt、video-sound-by-measurement。

### 长任务 · 19 条

进度看板、多 agent 分工、会话周历、遗留待办。列表：[long-run.md](long-run.md)

技巧：7-role-prompts-from-idea-to-done、bedtime-report-of-safe-tasks、codex-remote-workflow、decision-page-for-long-tasks、goal-wrapper-and-5-prompts、grok-bot-team-of-6-roles、handoff-md-for-the-next-agent、herdr-app-opus-5-5-coordinates、herdr-astra-coordinates-workers、herdr-claude-and-codex-panes、job-worth-a-dynamic-workflow、later-items-from-20-sessions、orca-a-task-across-cli-agents、overnight-goal-for-open-issues、progress-dashboard-subagent、scheduled-agents-review、slow-computer-audit-for-agents、to-dos-first-in-long-reports、week-calendar-from-sessions。

### 模型和额度 · 23 条

模型搭配、推理强度、缓存倒计时、剩余额度。列表：[model.md](model.md)

技巧：3-habits-burning-your-usage、advisor-fable-on-call、advisor-opus-on-call、astra-without-default-subagents、claude-code-token-waste-audit、fable-5-2-agent-tree、fable-5-2-plans-opus-builds、fable-main-opus-subagents、fable-plans-codex-builds、gpt-6-1-sol-main-astra-reviews、gpt-6-pro-plan-handed-to-codex、hillclimb-a-cheaper-feature、leftover-quota-5-goal-prompts、luna-max-as-a-codex-subagent、old-rules-review-for-astra、old-rules-review-for-fable-5-2、openais-5-cheap-harness-rules、opus-5-5-main-medium-subagents、rules-check-for-sol-and-luna、setup-review-by-the-cost-guide、setup-review-by-the-model-guide、status-line-cache-countdown、think-carefully-cleanup。

### 上线推广 · 11 条

上线前检查清单、搜索引流小工具、VPS 加固。列表：[launch.md](launch.md)

技巧：builder-and-verifier-subagents、free-tool-page-for-google-search、google-search-check-12-items、market-read-before-you-build、pre-launch-25-behind-page-items、pre-launch-4-test-subagents、pre-launch-check-6-legal-traps、pre-launch-check-site-speed、pre-launch-site-check-20-items、scaling-check、vps-lockdown。

### 写作 · 5 条

Orwell 写作规则、去 AI 腔、README 改写、任务说明。列表：[writing.md](writing.md)

技巧：content-team-of-9-skill-sets、one-line-against-ai-prose、orwells-6-writing-rules、readme-rewrite-and-polish、task-brief-from-gpt-6-pro。

## 情景

这个技能描述里的情景，以及先读哪个话题的列表：

- 装技能包或插件：验收。
- 网站上线前的准备：上线推广。
- 设计或重做页面、落地页、仪表盘，或去掉 AI 味：设计。
- 写或精简 AGENTS.md、CLAUDE.md、agent 权限：代码库。
- 同一个 bug 修了两次还没好：代码库。
- 往下做之前审一遍计划、diff 或 PR：验收。
- 跨好几个会话或多个 agent 的任务，或长任务做完给用户写报告：长任务。
- 省 Claude Code 或 Codex 的额度，选模型和推理强度：模型和额度。
- 为新读者重写整份 README，或写任务说明：写作。

## 时刻

用户刚说的话或刚提的要求里明摆着的信号。有哪一条，不用等用户开口，就从它的技巧开始：先读这条技巧的文件，读完发现不合适，回到第 2 步。

| 用户说了什么、要什么 | 从哪条开始 |
| --- | --- |
| 同一个 bug 修了两次还没好，或修复和审查来回推翻 | [bug-fix-loop-rules](../codebase-tips/references/bug-fix-loop-rules.md) |
| 计划写好了，还没动代码 | [plan-review-5-methods](../review-tips/references/plan-review-5-methods.md) |
| 跨好几个文件的改动做完了，下一步是提交、开 PR 或合并 | [blast-radius-and-4-more-prompts](../review-tips/references/blast-radius-and-4-more-prompts.md) |
| 网站第一次要上线 | [pre-launch-site-check-20-items](../launch-tips/references/pre-launch-site-check-20-items.md) |
| 工作要交接或暂停，或这个会话里做不完 | [handoff-md-for-the-next-agent](../long-run-tips/references/handoff-md-for-the-next-agent.md) |
| 用户说额度用完了或快用完了 | [3-habits-burning-your-usage](../model-tips/references/3-habits-burning-your-usage.md) |
| 用户第二次纠正同一个错 | [repeat-mistakes-as-lint-rules](../codebase-tips/references/repeat-mistakes-as-lint-rules.md) |

- 先说你看到了什么，用用户自己的话和语言，再用一句话说技巧（「这个修复已经失败两次了。Copybook 有 bug-fix-loop-rules 管这种情况，现在就用。」），然后照它的文件做。第 4 步和第 7 步照旧。
- 一个时刻在一个会话里只提一次，不管用户怎么答。
- 信号只有一半，不算时刻：什么都不说，接着做。猜错比错过更伤信任。

## 常驻的几行

用户主动运行了这个技能，而项目的 AGENTS.md 或 CLAUDE.md 里没有 `## Copybook` 这一节时，等手上的事做完，提一次要不要加上 [always-on.md](always-on.md) 里的那一段；先读那个文件。已有的那一段按标题点名技巧：每条都是「时刻」表里的一行。
