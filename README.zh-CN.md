# Copybook

Copybook 是给用 Claude Code 或 Codex 写代码的人准备的一套 skill。你照常说要做什么，它从 146 条技巧里挑出合适的提示词、规则或检查清单，照着做。你不用记，也不用选。

这些技巧来自 [@Voxyz_ai](https://x.com/Voxyz_ai) 在 X 上被读者收藏最多的帖子，合计 21.9万次收藏，统计于 2026年7月22日到 11月22日。

[copybook.page](https://copybook.page/zh/) · [用邮件收新技巧（英文）](https://copybook.page/zh/about#email-about-title) · [更新记录](CHANGELOG.md) · [English](README.md)

```text
copybook ──────────────────────────

› 这个网站能上线了吗
  上线推广 · 12 条里选 1 条
  ·····•······

› 这个页面一股 AI 味，重做
  设计 · 33 条里选 1 条
  ············•····················

› AGENTS.md 太长了，精简一下
  代码库 · 33 条里选 1 条
  ·······················•·········
───────────────────────────────────
  然后说出选了哪条、为什么，
  照它的步骤把事做完
```

## 安装

插件里只有 Markdown、YAML、JSON 和 PNG 文件，没有脚本、hook 或 MCP server。装好后 agent 的 skill 列表里多 8 个 skill：1 个会自己加载，7 个话题菜单由你自己打开。

### Claude Code

```text
/plugin install copybook-zh --marketplace Heyvhuang/copybook-skills
```

装好后打开 `/plugin` → **Marketplaces** → **copybook**，选 **Enable auto-update**。只需开一次，以后 Claude Code 启动时会检查更新。

<details>
<summary>Claude Code 2.1.275 之前的版本</summary>

```text
/plugin marketplace add Heyvhuang/copybook-skills
```

```text
/plugin install copybook-zh@copybook
```

</details>

### Codex

```bash
codex plugin marketplace add Heyvhuang/copybook-skills
codex plugin add copybook-zh@copybook
```

### Cursor、Copilot、Gemini CLI 等

```bash
npx skills@latest add https://github.com/Heyvhuang/copybook-skills/tree/main/zh
```

每个 agent 只选一种装法：插件和 skills.sh 版都装上，每个 skill 会出现两次。

### ChatGPT 工作区

工作区管理员打开 **Admin → Plugins → Add → Import marketplace**，在 Source 填 `https://github.com/Heyvhuang/copybook-skills`，Path 留空，Branch 填 `main`。

成员装一次 `copybook-zh`，之后 ChatGPT 每天同步。通过 **Skills** 上传的 ZIP 只保留上传时的版本。

## 工作方式

你让 coding agent 审一个 PR、检查网站能否上线，或者精简 AGENTS.md，这些事 Copybook 都有对应的技巧。动手之前，agent 先打开这个话题的列表，从头读到尾，因为光看名字看不出一条技巧做什么。然后它选一条。

它用一句话告诉你选了哪条、为什么。另一条也合适、换用它会改变结果时，它会点出那条的名字和两者的区别。

接着它照这条技巧的步骤做。里面的提示词和规则是原帖原文。技巧要往你的文件里加内容，agent 先给你看；技巧要运行命令，它先问你。

没有合适的技巧时，它不提 Copybook，接着做你的事。你自己打开 Copybook 时，它会直说没有合适的。

## 理念

- **按收藏量挑**：只选读者收藏多的 X 帖子。
- **一字不差**：提示词和规则就是原帖原文，脚本逐字对过。
- **会重测**：新模型出来会重跑，失效的撤下。
- **中英两版**：中文版的命令、路径和数字都对过英文版。

## 里面有什么

- **[代码库](#代码库)** · 33 条：仓库索引和地图、写代码原则、AGENTS.md、改动范围规则。
- **[验收](#验收)** · 17 条：PR、代码和计划复查、bug 打分、红队提示词、skill 回测。
- **[设计](#设计)** · 33 条：先出图再写页面、动效库、参考网站、设计 skill。
- **[长任务](#长任务)** · 22 条：多 agent 分工、交接、进度看板、会话周历、遗留待办。
- **[模型和额度](#模型和额度)** · 24 条：模型搭配、推理强度、缓存倒计时、剩余额度。
- **[上线推广](#上线推广)** · 12 条：上线前检查清单、搜索引流小工具、VPS 加固。
- **[写作](#写作)** · 5 条：Orwell 写作规则、去 AI 腔、README 改写、任务说明。

要自己打开 Copybook，输入 `/copybook-zh:copybook` 或 `/copybook`，在 Codex 里输入 `$copybook`。输入 `/copybook-zh:design-tips` 可以浏览设计技巧，命令后加上技巧名即可使用。

按话题分，收藏多的在前；收藏数统计于 2026年7月22日到 11月22日，每条的日期在它的文件里。

技巧里用到的词在[词汇表](docs/glossary.zh-CN.md)，只留在 copybook.page 上的技巧在[范围](docs/scope.md#范围)。

### 代码库

`/copybook-zh:codebase-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[开源侦察员和收尾者提示词](./zh/skills/codebase-tips/references/open-source-scout-and-closer.md)** `open-source-scout-and-closer`<br>不熟的功能从零写、问要不要继续：先搜 GitHub，再把整个活干完，附一份大白话总结。 | 1.5万 |
| **[codebase-memory 仓库索引](./zh/skills/codebase-tips/references/codebase-memory-repo-index.md)** `codebase-memory-repo-index`<br>每个问题几十轮 grep 和读文件：仓库连成一张函数、文件和依赖的图，顺手找出能安全删的死函数。 | 8,358 |
| **[Karpathy 的 4 条写代码原则](./zh/skills/codebase-tips/references/karpathys-4-coding-principles.md)** `karpathys-4-coding-principles`<br>过度设计、顺手改旁边的代码：先想再写、简单优先、改动要准、目标驱动，4 行写进 CLAUDE.md。 | 6,741 |
| **[vibe coding 后的清理：5 条 Codex /goal 提示词](./zh/skills/codebase-tips/references/vibe-coding-cleanup-prompts.md)** `vibe-coding-cleanup-prompts`<br>额度重置时还剩一半：清掉死代码、重复实现和用不上的依赖，给定时任务和旧 worktree 分好类。 | 3,883 |
| **[能点的仓库地图](./zh/skills/codebase-tips/references/clickable-repo-map.md)** `clickable-repo-map`<br>改一个仓库前先看清它：点任一模块，看到调用方、依赖、相关测试和源码证据，地图随代码更新。 | 2,670 |
| **[Scope Guard：不让小任务越做越大的规则](./zh/skills/codebase-tips/references/scope-guard-rules.md)** `scope-guard-rules`<br>改个配置就搭框架、修个 bug 就加一层：够用的最小改动，复用现有代码，扩大范围先问你。 | 2,058 |
| **[开发遗留文件的磁盘地图](./zh/skills/codebase-tips/references/disk-map-of-dev-leftovers.md)** `disk-map-of-dev-leftovers`<br>硬盘快满时先别乱删：只读扫一遍，树状图标出开发留下的大文件夹，清理脚本只删你勾选的。 | 1,998 |
| **[Claude Code 和 Codex 共用的 AGENTS.md](./zh/skills/codebase-tips/references/one-agents-md-for-both-agents.md)** `one-agents-md-for-both-agents`<br>两个 agent 同一套做法：先规划、最小改动、分活、修 bug、做完先验证，每次纠正记进 Lessons。 | 1,937 |
| **[理清面条代码的 /goal](./zh/skills/codebase-tips/references/untangle-goal.md)** `untangle-goal`<br>几个月 vibe coding 让代码缠成一团：一页 HTML 接线图，最严重的结标红编号，再逐个修、逐个跑测试。 | 1,741 |
| **[Codex 动手前先调查和计划的提示词](./zh/skills/codebase-tips/references/investigate-and-plan-prompt.md)** `investigate-and-plan-prompt`<br>怕 agent 做错方向：先查仓库、复述目标、列假设和计划，批准才动手。 | 1,673 |
| **[反复的 PR 意见写成 AGENTS.md 规则](./zh/skills/codebase-tips/references/pr-comments-as-agents-md-rules.md)** `pr-comments-as-agents-md-rules`<br>同一个 reviewer 反复提的问题：gh 扫最近 50 个 PR 排出来，选中的写成全局规则，不用再靠人提醒。 | 1,596 |
| **[Archify：从代码画系统图](./zh/skills/codebase-tips/references/archify-system-diagrams.md)** `archify-system-diagrams`<br>要给人讲清系统结构：从代码生成一张能搜索、能追踪上下游、能对比版本的 HTML 图，可导出 PNG。 | 1,560 |
| **[REA：拆开别家 app 的功能](./zh/skills/codebase-tips/references/rea-take-apart-a-feature.md)** `rea-take-apart-a-feature`<br>看中别家 app 的功能却不知道怎么做的：一层层拆开，每个结论标出证据，最后拿到自己实现的计划。 | 1,520 |
| **[少写防御式代码：4 条 AGENTS.md 规则](./zh/skills/codebase-tips/references/less-defensive-code.md)** `less-defensive-code`<br>改一点点也要层层判空：Codex 只在数据进来的地方检查一次，之后直接用。 | 1,409 |
| **[代码清理提示词：模块更少、更深](./zh/skills/codebase-tips/references/fewer-deeper-modules.md)** `fewer-deeper-modules`<br>功能跑通了，代码却到处重复：重复的删光，核心逻辑归到一处。 | 1,263 |
| **[CI 耗时审计：150 次运行，9 项检查](./zh/skills/codebase-tips/references/ci-time-audit.md)** `ci-time-audit`<br>代码几分钟写完，每个 PR 却在等 CI：最慢的 5 个任务拆成排队、准备和运行，每处改动指到哪一行。 | 1,228 |
| **[agent 工作区清点](./zh/skills/codebase-tips/references/agent-workspace-audit.md)** `agent-workspace-audit`<br>agent 越用越笨先别怪模型：说明、skill、MCP 和记忆列成「保留 / 删除」清单，你批准后再清。 | 887 |
| **[agent 记忆工具：8 个仓库分 4 类](./zh/skills/codebase-tips/references/agent-memory-tools-8-repos.md)** `agent-memory-tools-8-repos`<br>agent 记不住代码、资料、对话和长任务：8 个仓库分 4 类，每类挑一个装，装前先给你看命令。 | 869 |
| **[带 ASCII 图的全项目审查](./zh/skills/codebase-tips/references/whole-project-audit.md)** `whole-project-audit`<br>坏的、不一致或用不上的代码：改动前先讲清它怎么连起来，有把握的修掉，其余列出来。 | 785 |
| **[AGENTS.md 瘦身：3 套方案并排](./zh/skills/codebase-tips/references/3-slimmer-agents-md-plans.md)** `3-slimmer-agents-md-plans`<br>AGENTS.md 超过 200 行就不照做了：3 版更精简的并排，一版比一版激进，不丢规则，改前先给你看。 | 781 |
| **[还没用户就不写兼容代码：AGENTS.md 规则](./zh/skills/codebase-tips/references/no-compatibility-code-yet.md)** `no-compatibility-code-yet`<br>项目还没人用，agent 却在写兼容代码：跳过兼容和迁移，每次改动走文档、测试、最小实现、清理。 | 756 |
| **[deny、ask、allow 权限规则](./zh/skills/codebase-tips/references/deny-ask-and-allow-permissions.md)** `deny-ask-and-allow-permissions`<br>顺手删过「看起来没用」的配置：危险命令直接拦，push 和发布前先问，日常放行，deny 永远优先。 | 662 |
| **[加边界代码前先问：AGENTS.md 一行](./zh/skills/codebase-tips/references/ask-before-edge-case-code.md)** `ask-before-edge-case-code`<br>agent 总为几乎不会发生的边界情况加代码：一行规则让它先说会出什么问题、概率多大，等你点头。 | 598 |
| **[从会话里写出的项目说明](./zh/skills/codebase-tips/references/instructions-from-your-sessions.md)** `instructions-from-your-sessions`<br>每开新会话都要重讲一遍背景：从最近 20 个会话里捞出来，写成一份项目说明，以后不用再说。 | 490 |
| **[让 Claude Code 给自己做 Mod 的提示词](./zh/skills/codebase-tips/references/mod-request-for-claude-code.md)** `mod-request-for-claude-code`<br>想改 Claude Code 自己的界面或行为：这段提示词先找现成的 Mod，没有就提一个最小的方案。 | 395 |
| **[清理前的 \~/.codex 和 \~/.claude 分类](./zh/skills/codebase-tips/references/codex-and-claude-sorted.md)** `codex-and-claude-sorted`<br>怕清理时把聊天记录也删了：每项分到 Keep、History、Work、Clearable 或 Unknown，命令逐条批准。 | 367 |
| **[最近 20 个会话里的 mod 点子](./zh/skills/codebase-tips/references/mod-ideas-from-20-sessions.md)** `mod-ideas-from-20-sessions`<br>反复提的要求、中途叫停或撤销的命令、检查改动的方式：按帮助大小排好，引用你的原话。 | 359 |
| **[/teach：拿自己的项目学战略型编程](./zh/skills/codebase-tips/references/teach-strategic-programming.md)** `teach-strategic-programming`<br>贵的 token 花在 AI 替代不了的事上：先问你代码库的 3 个问题，写出 MISSION.md 和课程，拿项目教你。 | 326 |
| **[写进 CLAUDE.md 或 AGENTS.md 里的修 bug 循环规则](./zh/skills/codebase-tips/references/bug-fix-loop-rules.md)** `bug-fix-loop-rules`<br>agent 既修又审，就会一直来回拉扯：修两次不好就停，只审这一轮的改动。 | 325 |
| **[ub-mode：Clean Code 作者的 agent 规则](./zh/skills/codebase-tips/references/ub-mode-clean-code-agent-rules.md)** `ub-mode-clean-code-agent-rules`<br>agent 的代码藏着 bug，测试骗你：每次改动都照这个 skill 来，自带 crapper、dryer、mutator 检查。 | 313 |
| **[能点的仓库地图：叫法 vs 代码名](./zh/skills/codebase-tips/references/repo-map-words-vs-names.md)** `repo-map-words-vs-names`<br>你怎么叫一个模块，和代码里怎么叫它对不上：每一处都标红，最容易导致改错的排在最前。 | 303 |
| **[反复犯的错变成 helper 函数和 lint 规则](./zh/skills/codebase-tips/references/repeat-mistakes-as-lint-rules.md)** `repeat-mistakes-as-lint-rules`<br>老犯同一个错：正确写法封装成 helper，lint 禁掉旧写法，报错写明该用哪个，它跑检查时自己改。 | 184 |
| **[skill 按场景路由的规则](./zh/skills/codebase-tips/references/situation-routing-for-skills.md)** `situation-routing-for-skills`<br>agent 常常忘了用装好的，你只好一个个点名：每个任务挑最合适的，一句话说明哪个、为什么。 | 116 |

### 验收

`/copybook-zh:review-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[手机上的 Tailscale 预览链接规则](./zh/skills/review-tips/references/tailscale-preview-links.md)** `tailscale-preview-links`<br>agent 给的链接是 localhost：预览、审查页面、看板都换成 Tailscale 链接，手机上直接打开。 | 4,182 |
| **[Astra 审查的 bug 打分规则](./zh/skills/review-tips/references/bug-score-rule-for-astra.md)** `bug-score-rule-for-astra`<br>Astra 总挑几乎不会发生的 bug，Opus 一条条去修：给 bug 打分，分低的记成 issue，代码不动。 | 3,241 |
| **[影响范围、红队等 5 条让模型判断的提示词](./zh/skills/review-tips/references/blast-radius-and-4-more-prompts.md)** `blast-radius-and-4-more-prompts`<br>只说「修这个 bug」只拿到默认答案：影响范围、并行目标、红队计划、真实用户走查、思考预算。 | 1,411 |
| **[iOS 模拟器 UI bug 检查，含 iPhone Duo](./zh/skills/review-tips/references/ios-simulator-ui-bug-check.md)** `ios-simulator-ui-bug-check`<br>iOS app 里的 UI 问题：主要页面都点一遍，有 Duo 模拟器就查各形态，建议最小改法。 | 956 |
| **[性能审查：最慢的 5 处](./zh/skills/review-tips/references/perf-review-the-5-slowest-spots.md)** `perf-review-the-5-slowest-spots`<br>想让代码变快，多半换来一层缓存：profile 测出的耗时，每处对上的改法，要改的行和预计提速。 | 849 |
| **[回答前先问一个问题](./zh/skills/review-tips/references/one-question-before-it-answers.md)** `one-question-before-it-answers`<br>一次问 10 个你就不想答：先摆出没说的假设、缺的信息和常见错误，再只问最可能改变做法的那个。 | 631 |
| **[skill 回测：过去的 Codex 会话](./zh/skills/review-tips/references/skill-backtest-on-codex-sessions.md)** `skill-backtest-on-codex-sessions`<br>凭记忆写的 skill 和实际做法对不上：拿过去的 Codex 会话回测，先出 dry run 的 diff，再定期复查。 | 554 |
| **[代码和方向复查提示词](./zh/skills/review-tips/references/code-and-direction-review.md)** `code-and-direction-review`<br>代码越来越复杂，或忙了很久不知道通向哪里：一条找出不必存在的代码，一条重新审视方向。 | 531 |
| **[/claude-api prompt-audit：换 Fable 5.1 后的 skill 审查](./zh/skills/review-tips/references/claude-api-prompt-audit.md)** `claude-api-prompt-audit`<br>skill 里还留着旧模型名和失效命令：官方 skill 审一遍，列出重复约束和过度强调，附 diff。 | 479 |
| **[瞎忙检查：今天的 git 历史](./zh/skills/review-tips/references/fake-busy-check.md)** `fake-busy-check`<br>开了一堆会话，回头看什么都没做成：分清今天真合并的和来回改的，一句话定下明天第一件事。 | 394 |
| **[每晚审查当天推送的 routine](./zh/skills/review-tips/references/nightly-push-review-routine.md)** `nightly-push-review-routine`<br>今天推到 main 的代码，睡觉时再看一遍：每个 bug 开 draft PR 附先失败的测试，笔记本合上也跑。 | 387 |
| **[日志方案和每天的待修清单](./zh/skills/review-tips/references/logging-plan-and-daily-fix-list.md)** `logging-plan-and-daily-fix-list`<br>坏掉的功能、卡住的用户、太慢的步骤：按影响人数排序，附日志原文，最严重的一条已有测试。 | 366 |
| **[一条消息里的 5 种计划复查方法](./zh/skills/review-tips/references/plan-review-5-methods.md)** `plan-review-5-methods`<br>计划写完代码还没动：一条消息要第一性原理、对抗性审查、消融测试、奥卡姆剃刀和高内聚低耦合。 | 361 |
| **[skill 的是非题评分](./zh/skills/review-tips/references/skill-score-by-yes-no-questions.md)** `skill-score-by-yes-no-questions`<br>skill 改了一版有没有变好：10 个真实任务、8 道是非题、不知情的评分 subagent，只留提分的那版。 | 315 |
| **[装 skill 前的 3 项检查](./zh/skills/review-tips/references/3-checks-before-a-skill-install.md)** `3-checks-before-a-skill-install`<br>有人在 ClawHub 上放了 314 个恶意 skill：装之前查来源、扫代码、问清权限，不到 5 分钟。 | 308 |
| **[1:1 on your week from git log and sessions](./zh/skills/review-tips/references/1-1-on-your-week-from-git-log.md)** `1-1-on-your-week-from-git-log`<br>Moving this week or just busy: 7 days of git log and sessions, every judgment backed by a commit or conversation, 3 commitments. | 184 |
| **[状态机检查：错误的转换标红](./zh/skills/review-tips/references/state-machine-check.md)** `state-machine-check`<br>功能状态间的 bug：从 UI 到服务端的每个状态画在一页 HTML 上，附编号清单，写明文件、行号和原因。 | 143 |

### 设计

`/copybook-zh:design-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[AGENTS.md 两行：删多余文字，兼顾 UX、DX、AX](./zh/skills/design-tips/references/two-agents-md-lines.md)** `two-agents-md-lines`<br>清理页面上重复的标语、眉题等装饰文案，保留功能标签和操作说明。 | 1.5万 |
| **[Codex 页面设计：先画成一张图，再照着做](./zh/skills/design-tips/references/page-design-as-an-image-first.md)** `page-design-as-an-image-first`<br>直接让 Codex 写页面，设计总很烂：一句话让内置图像模型先画出页面，再交给写代码的模型照着做。 | 4,196 |
| **[huashu-art-motion：35 种画风动画](./zh/skills/design-tips/references/huashu-art-motion-35-art-styles.md)** `huashu-art-motion-35-art-styles`<br>想要梵高、莫奈或包豪斯风格的动画：用代码画出来，几乎不动的片子交付前会被打回。 | 3,790 |
| **[写进 CLAUDE.md 的 8 个前端参考网站](./zh/skills/design-tips/references/8-frontend-reference-sites.md)** `8-frontend-reference-sites`<br>卡在风格、组件、动效、演示视频或收尾：8 个网站按卡点分好，存进 CLAUDE.md，该用哪个它知道。 | 1,693 |
| **[120 个可点选的动效样例库](./zh/skills/design-tips/references/120-sample-motion-library.md)** `120-sample-motion-library`<br>动效靠点选：120 个带标注的样例分 5 组，勾选喜欢的，Claude Code 就把它们做进你的视频或网站。 | 1,667 |
| **[good-css：vibe coding 网站的 CSS 检查](./zh/skills/design-tips/references/good-css-css-check.md)** `good-css-css-check`<br>手机上 hover 卡住、表单一打开全红框：47 条现代 CSS 写法，先列出网站样式的毛病，不改代码。 | 1,547 |
| **[视频配声音：测节拍和响度](./zh/skills/design-tips/references/video-sound-by-measurement.md)** `video-sound-by-measurement`<br>Opus 5.5 听不见自己配的声音：librosa 找节拍，120 Hz 以下波形核对，导出的 MP4 上测响度。 | 1,499 |
| **[做动效视频的 4 人小组](./zh/skills/design-tips/references/4-person-motion-video-team.md)** `4-person-motion-video-team`<br>Claude Code 里做动效视频：拆片、分镜、审片 3 个 subagent 配合主会话做片，你只管像导演一样拍板。 | 1,441 |
| **[项目动画：Claude Motion 指南](./zh/skills/design-tips/references/claude-motion-project-animation.md)** `claude-motion-project-animation`<br>哪部分值得做成动画：按 Anthropic 指南挑出候选、写好分镜，你选的那个用 HyperFrames 做出来。 | 1,412 |
| **[按你喜欢的网站写的 DESIGN.md](./zh/skills/design-tips/references/design-md-from-sites-you-like.md)** `design-md-from-sites-you-like`<br>页面一眼 AI 味，是它没见过你喜欢的样子：3 到 5 张截图写成 DESIGN.md，再装两个设计 skill。 | 1,404 |
| **[TasteSkill v2：AI 痕迹检查](./zh/skills/design-tips/references/tasteskill-v2-ai-look-check.md)** `tasteskill-v2-ai-look-check`<br>页面一眼就像 AI 做的：按桌面、平板、手机宽度列出每一处痕迹，FAIL 排在 WARN 前，不改代码。 | 1,297 |
| **[仪表盘改版：两个 skill 加两条提示词](./zh/skills/design-tips/references/dashboard-redesign-2-skills.md)** `dashboard-redesign-2-skills`<br>仪表盘一眼 AI 做的：ui-ux-pro-max 加 frontend-design，改版提示词里点名它们，再从 4 个角度审查。 | 1,295 |
| **[先截图再重做的 UI 提示词](./zh/skills/design-tips/references/screenshot-first-ui-rebuild.md)** `screenshot-first-ui-rebuild`<br>UI 层级和密度有问题：每个页面先截图，再只用一套间距、字号和最多 5 种颜色重做。 | 1,103 |
| **[Codex computer use 当本地 MCP server](./zh/skills/design-tips/references/codex-computer-use-as-mcp-server.md)** `codex-computer-use-as-mcp-server`<br>Claude Code 缺个好浏览器：ChatGPT 的 computer use 当本地 MCP，点页面、截图，对比线上和本地。 | 1,059 |
| **[资深设计师视角的 UI/UX 审查](./zh/skills/design-tips/references/ui-ux-audit-as-a-senior-designer.md)** `ui-ux-audit-as-a-senior-designer`<br>有实权的设计审查：先定审美基线，正确性直接修，能用但显廉价的地方找出来，大改动只提建议。 | 645 |
| **[lemo-opuscar：代码做带旁白的发布短片](./zh/skills/design-tips/references/lemo-opuscar-launch-films.md)** `lemo-opuscar-launch-films`<br>没有视频模型：TTS 旁白、免费采样库配乐，每一帧按 43 种风格之一用代码渲染，30 到 60 分钟。 | 634 |
| **[纯代码动画的 4 个起点](./zh/skills/design-tips/references/4-starts-for-code-only-animation.md)** `4-starts-for-code-only-animation`<br>喜欢的动画、一句想法、一张角色图、想要的画风：各一条提示词，渲染成一个 HTML 文件，加配乐。 | 589 |
| **[awesome-design-md 和 shadcn skill](./zh/skills/design-tips/references/awesome-design-md-shadcn-skill.md)** `awesome-design-md-shadcn-skill`<br>页面总是默认 shadcn 味：Stripe 或 Linear 风格的 DESIGN.md，整套组件照着改，附一页设计系统。 | 538 |
| **[Awwwards 评分表自评循环](./zh/skills/design-tips/references/awwwards-scoring-loop.md)** `awwwards-scoring-loop`<br>只在用户明确想用 Awwwards 评分探索视觉方向时使用，分数用于讨论设计。 | 536 |
| **[组件每种状态的压力测试](./zh/skills/design-tips/references/component-stress-test.md)** `component-stress-test`<br>示例数据下能用说明不了什么：真实组件放到临时页面，每种要紧的状态都渲染一遍，只修能复现的。 | 487 |
| **[6 条 ChatGPT 改照片提示词](./zh/skills/design-tips/references/6-chatgpt-photo-prompts.md)** `6-chatgpt-photo-prompts`<br>不请摄影师也有专业质感：职业头像、电影剧照、旅行照、杂志大片、老照片修复、黄金时刻补光。 | 412 |
| **[/design 画出的每个界面状态](./zh/skills/design-tips/references/every-ui-state-with-design.md)** `every-ui-state-with-design`<br>功能做之前先看到每个状态：/design 配一个设计参考仓库，默认、加载、空、出错、成功都画成稿。 | 386 |
| **[图片方案并成一张网格图：AGENTS.md 规则](./zh/skills/design-tips/references/image-options-in-one-grid.md)** `image-options-in-one-grid`<br>图片方案一张张生成太烧额度：一条全局规则让所有方案进同一张带编号的网格图，再做你挑中的。 | 379 |
| **[视频提示词里的运镜名称](./zh/skills/design-tips/references/camera-moves-for-video-prompts.md)** `camera-moves-for-video-prompts`<br>Opus 5.5 做的视频像幻灯片：6 种运镜的名字和各自效果，外加要写的秒数和速度。 | 354 |
| **[/learn-taste：设计修正变成规则](./zh/skills/design-tips/references/learn-taste-design-corrections.md)** `learn-taste-design-corrections`<br>你总在改同样的设计错误：一次会话里的每个修正，都变成一条带理由的严格规则。 | 340 |
| **[CLAUDE.md 像素画渲染规则](./zh/skills/design-tips/references/pixel-art-rendering-rules.md)** `pixel-art-rendering-rules`<br>精灵图里清晰的像素到屏幕上变糊：纹理用 Nearest，整数倍缩放，镜头和精灵按同一方式取整。 | 306 |
| **[happy-path 债务排查和修复](./zh/skills/design-tips/references/happy-path-debt-found-and-fixed.md)** `happy-path-debt-found-and-fixed`<br>界面只在数据加载快、什么都不出错时才正常：缺的状态和布局错乱逐个组件修好，设计不变。 | 260 |
| **[Unslop 提示词：去掉页面 AI 味](./zh/skills/design-tips/references/unslop-prompt.md)** `unslop-prompt`<br>页面第一眼就像 AI 做的：列出每处 AI 味的痕迹，先写 5 行方向等你点头，再一轮一轮改。 | 240 |
| **[703 条 Opus 5.5 视频提示词，重做一条](./zh/skills/design-tips/references/703-video-prompts-one-remade.md)** `703-video-prompts-one-remade`<br>给产品做一支爆款那样的视频：703 条提示词里最适合你的 5 条，你选的那条重做成一个 HTML 文件。 | 212 |
| **[Hallmark：审查和重做 AI 味页面](./zh/skills/design-tips/references/hallmark-audit-and-redesign.md)** `hallmark-audit-and-redesign`<br>标题上方的小标签一眼暴露是 AI 做的：一条命令列出页面的问题，另一条整页重做，内容和表单保留。 | 185 |
| **[设计师开源的落地页 skill](./zh/skills/design-tips/references/designers-landing-page-skill.md)** `designers-landing-page-skill`<br>想要有设计感的落地页：一轮问题问完，布局、文案、字体和间距都替你定。 | 161 |
| **[Internet Archive 的公有领域素材](./zh/skills/design-tips/references/internet-archive-clips-and-music.md)** `internet-archive-clips-and-music`<br>镜头需要老电影或老唱片：自动搜 Internet Archive 的免费 API，只用公有领域条目，每条记下来源。 | 160 |
| **[Refero 风格提示词：先出设计方案](./zh/skills/design-tips/references/refero-style-prompt.md)** `refero-style-prompt`<br>页面换哪家创业公司都一样：以 Refero 风格为参考，先批方案，再写进 DESIGN.md，截图对照它检查。 | 141 |

### 长任务

`/copybook-zh:long-run-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[Claude Code 会话做的周日历](./zh/skills/long-run-tips/references/week-calendar-from-sessions.md)** `week-calendar-from-sessions`<br>一周的会话多到记不清：本机记录做成 HTML 周日历，标出没提交就停的会话，顺手写好 3 行周报。 | 2,014 |
| **[6 个角色的 Grok Bot 团队](./zh/skills/long-run-tips/references/grok-bot-team-of-6-roles.md)** `grok-bot-team-of-6-roles`<br>哪些活该有自己的 Bot：6 个角色各有职责、交接和边界，其余留作 Skill 或 routine。 | 1,542 |
| **[最近 20 个会话里的「以后再弄」](./zh/skills/long-run-tips/references/later-items-from-20-sessions.md)** `later-items-from-20-sessions`<br>说过「以后再弄」就忘了的事：从过去的会话翻出来，排好优先级，每件变成能直接开新会话的卡片。 | 1,422 |
| **[Herdr 桌面版：Opus 5.5 协调执行者](./zh/skills/long-run-tips/references/herdr-app-opus-5-5-coordinates.md)** `herdr-app-opus-5-5-coordinates`<br>不离开 Claude Code 也能多开 agent：Opus 5.5 通过 Herdr 协调最多 10 个执行者，Codex 负责审查。 | 1,200 |
| **[从想法到成品的 7 个角色提示词](./zh/skills/long-run-tips/references/7-role-prompts-from-idea-to-done.md)** `7-role-prompts-from-idea-to-done`<br>还把资深 AI 当实习生带：技术负责人、需求负责人、调试、性能、前端、后端、reviewer，各一条。 | 1,103 |
| **[Herdr：Astra 协调 Claude Code 执行者](./zh/skills/long-run-tips/references/herdr-astra-coordinates-workers.md)** `herdr-astra-coordinates-workers`<br>Codex 里也能用你的 Claude Code 订阅：Astra 通过 Herdr 协调最多 10 个 Opus 执行者，重活交给它们。 | 1,065 |
| **[长任务的进度看板 subagent](./zh/skills/long-run-tips/references/progress-dashboard-subagent.md)** `progress-dashboard-subagent`<br>长任务跑着不知道进展：后台搭一个 HTML 看板，显示进度、卡点和等你拍板的问题，主会话不停。 | 887 |
| **[Herdr：Claude 和 Codex 同跑一个任务](./zh/skills/long-run-tips/references/herdr-claude-and-codex-panes.md)** `herdr-claude-and-codex-panes`<br>结论靠你在窗口间搬来搬去：拆任务，每个 agent 自己的 worktree 和目标，一个执行、一个审查。 | 884 |
| **[长报告先列待办：AGENTS.md 规则](./zh/skills/long-run-tips/references/to-dos-first-in-long-reports.md)** `to-dos-first-in-long-reports`<br>要你做的事埋在长报告中间：AGENTS.md 加一节，每份长报告最上面先列编号待办。 | 782 |
| **[多 agent 时电脑变慢的排查](./zh/skills/long-run-tips/references/slow-computer-audit-for-agents.md)** `slow-computer-audit-for-agents`<br>开着很多 agent 电脑就卡：先 dry run 理清进程树和开机启动项，再只清理你批准的那些。 | 673 |
| **[最该用动态工作流跑的活](./zh/skills/long-run-tips/references/job-worth-a-dynamic-workflow.md)** `job-worth-a-dynamic-workflow`<br>哪件活值得交给一批 agent：全仓库检查、迁移或修复循环，先在一个目录、10 个 agent 以内排好计划。 | 670 |
| **[Herdr 通宵：Opus 5.5 写，Sol 审](./zh/skills/long-run-tips/references/herdr-overnight-opus-and-sol.md)** `herdr-overnight-opus-and-sol`<br>一个卡住的步骤吃掉整晚：每步最多 3 次尝试，还不行就记下错误，转去下一个独立步骤。 | 661 |
| **[睡前报告：今晚能放心跑的任务](./zh/skills/long-run-tips/references/bedtime-report-of-safe-tasks.md)** `bedtime-report-of-safe-tasks`<br>额度每晚用不完：睡前一小时从今天的活里挑 3-5 个可撤回、能验证的，写好提示词，什么都不改。 | 570 |
| **[Orca：一个任务分给多个 CLI agent](./zh/skills/long-run-tips/references/orca-a-task-across-cli-agents.md)** `orca-a-task-across-cli-agents`<br>几个 CLI agent 同跑没人盯进度：各有目标，reviewer 只读，写代码的各用 worktree，一人整合。 | 495 |
| **[边做边写给下一个 agent 的 HANDOFF.md](./zh/skills/long-run-tips/references/handoff-md-for-the-next-agent.md)** `handoff-md-for-the-next-agent`<br>任务一个会话做不完：进度、决定、相关文件、验证结果和下一步边做边记，下一个 agent 接得上。 | 429 |
| **[长任务的决策页规则](./zh/skills/long-run-tips/references/decision-page-for-long-tasks.md)** `decision-page-for-long-tasks`<br>总结只说一切顺利，藏起了 agent 替你拿的主意：改变结果的列在一屏里，要你确认的标红。 | 383 |
| **[按 OpenAI 指南设计的 Codex 远程工作流](./zh/skills/long-run-tips/references/codex-remote-workflow.md)** `codex-remote-workflow`<br>离开电脑时项目还能推进：按 OpenAI 的 Remote 指南排出哪些任务自己跑、哪些决定在手机上做。 | 381 |
| **[定时 agent 检查：按 Anthropic 指南](./zh/skills/long-run-tips/references/scheduled-agents-review.md)** `scheduled-agents-review`<br>定时任务写「最近 24 小时」会漏会重：固定时间窗口、读取失败不报和发帖风险，各附最小改法。 | 380 |
| **[通宵 /goal：未关闭的 issue 和 TODO](./zh/skills/long-run-tips/references/overnight-goal-for-open-issues.md)** `overnight-goal-for-open-issues`<br>睡前：每个 issue 和 TODO 不靠你推进到最远，最后一张 HTML 看板列出完成、卡住和等你拍板的。 | 315 |
| **[目标外壳和 5 条配套提示词](./zh/skills/long-run-tips/references/goal-wrapper-and-5-prompts.md)** `goal-wrapper-and-5-prompts`<br>一个偏好写了 3 处还要说第四遍：一个目标外壳，加组件库、并行、互审、交互状态、纠正清单 5 条。 | 309 |
| **[AGENTS.md 单向门规则：什么时候该问](./zh/skills/long-run-tips/references/one-way-door-rules-when-to-ask.md)** `one-way-door-rules-when-to-ask`<br>只需要你走个过场的提问：撤得回的先做完再给你看，撤不回的先停下。 | 257 |
| **[Claude Code 和 Codex 的协调者 skill](./zh/skills/long-run-tips/references/coordinator-for-claude-and-codex.md)** `coordinator-for-claude-and-codex`<br>一个会话做不完的活：每条 lane 一份带边界和完成检查的任务说明，再在 Herdr 里跑 Claude 和 Codex。 |  |

### 模型和额度

`/copybook-zh:model-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[Luna Max 做 Codex 的 subagent](./zh/skills/model-tips/references/luna-max-as-a-codex-subagent.md)** `luna-max-as-a-codex-subagent`<br>边界清楚的活交给 Luna Max：建一个 max 推理的 luna_worker，按你装的 Codex 版本校验，先看 diff。 | 6,052 |
| **[/advisor：Opus 5.5 主跑，Fable 待命](./zh/skills/model-tips/references/advisor-fable-on-call.md)** `advisor-fable-on-call`<br>Opus 5.5 主跑后 Fable 闲着：定方案前、错误反复时、说做完前叫 Fable 出主意，代码仍归 Opus。 | 5,478 |
| **[Astra 旧规则审查：按 OpenAI 指南](./zh/skills/model-tips/references/old-rules-review-for-astra.md)** `old-rules-review-for-astra`<br>旧规则让 Astra 多干活或提前停：按 OpenAI 指南找出该删的 skill 触发、必读文档、检查和确认规则。 | 4,980 |
| **[设置检查：按 Anthropic 选模型指南](./zh/skills/model-tips/references/setup-review-by-the-model-guide.md)** `setup-review-by-the-model-guide`<br>Explore 每次读文件都在烧大模型额度：查出用错模型的 subagent 和不合适的 effort，各附配置改法。 | 3,350 |
| **[用完 Codex 剩余额度的 5 条 /goal](./zh/skills/model-tips/references/leftover-quota-5-goal-prompts.md)** `leftover-quota-5-goal-prompts`<br>额度重置前还剩一半：完整 UI/UX 审查、能点的代码地图、量得出的提速、清理工作区、清理 Codex。 | 2,633 |
| **[状态栏缓存倒计时](./zh/skills/model-tips/references/status-line-cache-countdown.md)** `status-line-cache-countdown`<br>缓存什么时候过期平时看不到：状态栏常显还剩几分钟，过期后告诉你下一句要重算多少 token。 | 2,547 |
| **[Fable 5 管规划，后端给 Codex](./zh/skills/model-tips/references/fable-plans-codex-builds.md)** `fable-plans-codex-builds`<br>Fable 5 烧 token 太快：规划和前端留给它，后端用 /goal 派给 Codex；另附一条前端改版提示词。 | 2,520 |
| **[设置检查：按 Opus 5.5 成本指南](./zh/skills/model-tips/references/setup-review-by-the-cost-guide.md)** `setup-review-by-the-cost-guide`<br>Opus 5 的老设置在 5.5 上更贵：照 Anthropic 指南查 effort、subagent、MCP、CLAUDE.md，各附改法。 | 2,167 |
| **[换 Opus 5.5 后的「think carefully」清理](./zh/skills/model-tips/references/think-carefully-cleanup.md)** `think-carefully-cleanup`<br>换了 Opus 5.5，CLAUDE.md 里催它多想、一步步派活、无谓确认的老规则：逐条找出，引原文给改法。 | 2,130 |
| **[Codex 设置检查：按 GPT-6.2 指南](./zh/skills/model-tips/references/codex-setup-vs-the-gpt-6-2-guide.md)** `codex-setup-vs-the-gpt-6-2-guide`<br>Sol 够用却把 Astra 开满：查出模型、effort、subagent 和 AGENTS.md 的问题，各附能粘贴的配置。 | 1,929 |
| **[hillclimb：Claude API 功能降本](./zh/skills/model-tips/references/hillclimb-a-cheaper-feature.md)** `hillclimb-a-cheaper-feature`<br>最花钱的 Claude API 调用：先搭测试集，再一档档换便宜模型、降 effort，准确率不掉才算数。 | 1,710 |
| **[Fable 5.2 agent 树：Opus 5.5 和 Haiku](./zh/skills/model-tips/references/fable-5-2-agent-tree.md)** `fable-5-2-agent-tree`<br>每个角色选哪个模型和 effort：Haiku 5.5 找文件、跑测试，Opus 5.5 改代码，Fable 卡住才上 high。 | 1,338 |
| **[Codex：GPT-6.1 Sol 主跑，medium subagent，Astra 终审](./zh/skills/model-tips/references/gpt-6-1-sol-main-astra-reviews.md)** `gpt-6-1-sol-main-astra-reviews`<br>Astra 一周吃光额度：6.1 Sol 用 high 调度、medium 跑 subagent，Astra 只审上线前的大改动。 | 1,061 |
| **[/advisor：Sonnet 5.5 主跑，Opus 待命](./zh/skills/model-tips/references/advisor-opus-on-call.md)** `advisor-opus-on-call`<br>$20 套餐默认跑 Opus 5.5：Haiku 读代码、查文档，定方案前、错误反复时、说做完前叫 Opus 出主意。 | 968 |
| **[Fable 5.2 管规划，实现给 Opus 5.5 或 Codex](./zh/skills/model-tips/references/fable-5-2-plans-opus-builds.md)** `fable-5-2-plans-opus-builds`<br>Fable 5.2 烧 token 太快：规划留在主会话，最难的部分也可留下，其余交给 Opus 5.5 subagent 或 Codex。 | 893 |
| **[Fable 5.2 旧规则审查](./zh/skills/model-tips/references/old-rules-review-for-fable-5-2.md)** `old-rules-review-for-fable-5-2`<br>给老模型写死的规则拖累 Fable 5.2：派活、少想、文风限制和「never」的句子，引原文给改法。 | 863 |
| **[Claude Code 里最耗额度的 3 个习惯](./zh/skills/model-tips/references/3-habits-burning-your-usage.md)** `3-habits-burning-your-usage`<br>总撞额度上限：扫最近 7 天的会话日志，算出每个习惯各占多少额度，再写规则把它们堵上。 | 722 |
| **[Fable 做主、Opus 做 subagent 的 3 个设置](./zh/skills/model-tips/references/fable-main-opus-subagents.md)** `fable-main-opus-subagents`<br>Fable 额度不够用：3 行设置，读代码、查文档交给半价的 Opus subagent，判断留给 Fable。 | 715 |
| **[设置检查：OpenAI 的 5 条 harness 省钱规则](./zh/skills/model-tips/references/openais-5-cheap-harness-rules.md)** `openais-5-cheap-harness-rules`<br>agent 配置省不省钱：对照 OpenAI 自己用的 5 条规则逐条判过不过，给出文件和要改的那一件事。 | 715 |
| **[Astra 默认不开 subagent](./zh/skills/model-tips/references/astra-without-default-subagents.md)** `astra-without-default-subagents`<br>Astra 烧额度比 Sol 还快：删掉默认开 subagent 的规则，AGENTS.md 加一句，让它自己做、自己验。 | 686 |
| **[Opus 5.5 主模型配 medium subagent](./zh/skills/model-tips/references/opus-5-5-main-medium-subagents.md)** `opus-5-5-main-medium-subagents`<br>想让额度撑久一点：主模型换成 Opus 5.5，默认 subagent 用 medium，改前先找出写死的模型 ID。 | 437 |
| **[Chat 里 GPT-6 Pro 做计划，交给 Codex](./zh/skills/model-tips/references/gpt-6-pro-plan-handed-to-codex.md)** `gpt-6-pro-plan-handed-to-codex`<br>不看真实数据的计划是空的：仓库和日志接进 ChatGPT，GPT-6 Pro 照真实代码做计划，再交给 Codex。 | 371 |
| **[Opus 5.5 上的 Claude Code token 审计](./zh/skills/model-tips/references/claude-code-token-waste-audit.md)** `claude-code-token-waste-audit`<br>配置里还有什么在每一轮浪费 token：先测量，每行指令标成 Keep、Move 或 Cut，你批准才改。 | 348 |
| **[精简规则后的 Sol、Luna 检查](./zh/skills/model-tips/references/rules-check-for-sol-and-luna.md)** `rules-check-for-sol-and-luna`<br>为 Astra 精简规则可能删掉 Sol、Luna 还要用的测试命令：让 Astra 查漏，各模型规则分开放。 | 318 |

### 上线推广

`/copybook-zh:launch-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[上线前网站检查：20 项页面](./zh/skills/launch-tips/references/pre-launch-site-check-20-items.md)** `pre-launch-site-check-20-items`<br>vibe coding 做的网站要上线：设计、手机、各种状态、真实流程和上线细节，查完一次修好。 | 6,939 |
| **[上线前检查：20 项网站速度](./zh/skills/launch-tips/references/pre-launch-check-site-speed.md)** `pre-launch-check-site-speed`<br>vibe coding 做的网站打开慢：图片字体、前端、数据库接口和服务器各查一遍，一次修好，重新测速。 | 3,202 |
| **[上线前检查：4 个测试 subagent](./zh/skills/launch-tips/references/pre-launch-4-test-subagents.md)** `pre-launch-4-test-subagents`<br>自己先往坏里试：4 个只测不改的 subagent 用 16 个问题查安全、数据、操作、环境，按轻重修。 | 2,132 |
| **[拉 Google 搜索用户的免费小工具](./zh/skills/launch-tips/references/free-tool-page-for-google-search.md)** `free-tool-page-for-google-search`<br>想从 Google 搜索拉用户：3 个有人搜的免费小工具，你挑的做成独立 SEO 页，结果下面只放你的按钮。 | 1,487 |
| **[上线前检查：25 项页面背后](./zh/skills/launch-tips/references/pre-launch-25-behind-page-items.md)** `pre-launch-25-behind-page-items`<br>页面背后也会出事：密钥、账单、收钱、监控和上线当天查完一次修好，要你做的列在最后。 | 1,415 |
| **[VPS 加固：只走 Cloudflare，SSH 走 Tailscale](./zh/skills/launch-tips/references/vps-lockdown.md)** `vps-lockdown`<br>用了 Docker，ufw 拦不住：访客只能经 Cloudflare 进来，SSH 只有你能经 Tailscale 登录。 | 1,213 |
| **[上线前检查：6 个法律坑](./zh/skills/launch-tips/references/pre-launch-check-6-legal-traps.md)** `pre-launch-check-6-legal-traps`<br>按产品实际业务和适用法规，核查数据收集、字体、会话录屏、营销邮件、续费和用户上传。 | 1,184 |
| **[Google 搜索检查：已上线网站 12 项](./zh/skills/launch-tips/references/google-search-check-12-items.md)** `google-search-check-12-items`<br>拿名字在 Google 上搜不到你用 AI 做的网站：抓取、每个页面和全站，一次修好。 | 829 |
| **[low effort 写、high effort 验的两个 subagent](./zh/skills/launch-tips/references/builder-and-verifier-subagents.md)** `builder-and-verifier-subagents`<br>high 多花的 token 主要买到验证：builder 用 low、verifier 用 high，一条规则让新功能都走一遍。 | 740 |
| **[Overnight market research for startup ideas](./zh/skills/launch-tips/references/overnight-startup-idea-research.md)** `overnight-startup-idea-research`<br>Looking for a startup idea people would pay for: a night of quoted, linked complaints, then 3 scored ideas nobody covers yet. | 191 |
| **[动手前的市场判断](./zh/skills/launch-tips/references/market-read-before-you-build.md)** `market-read-before-you-build`<br>还没调研就给建议：25-40 家竞争对手逐家记下，反复出现的抱怨排好序，再看你的方向会死在哪。 | 173 |
| **[扩容检查：缓存、队列、负载均衡](./zh/skills/launch-tips/references/scaling-check.md)** `scaling-check`<br>应用现在真需要扩容吗：6 种方案对照你的代码逐一判断，每条附文件证据和每月大概多花多少钱。 | 79 |

### 写作

`/copybook-zh:writing-tips`

| 技巧 | 收藏 |
| :-- | :-: |
| **[Orwell 的 6 条写作规则](./zh/skills/writing-tips/references/orwells-6-writing-rules.md)** `orwells-6-writing-rules`<br>一个词一个词禁 AI 腔禁不完：1946 年的 6 条规则放进全局规则文件，附重写文档和 PR 的提示词。 | 1.2万 |
| **[GPT-6 Pro 写的给工程师的任务说明](./zh/skills/writing-tips/references/task-brief-from-gpt-6-pro.md)** `task-brief-from-gpt-6-pro`<br>任务没想透就派给 Codex：GPT-6 Pro 先挑出没想清楚的地方，写成工程师能直接接手的说明。 | 1,496 |
| **[去 AI 腔的一句话](./zh/skills/writing-tips/references/one-line-against-ai-prose.md)** `one-line-against-ai-prose`<br>删掉「不是 X，而是 Y」还是像 AI：Anthropic 的 Fable 5.1 指南给了一句更直接的提示词。 | 558 |
| **[README 改写提示词和 Impeccable 打磨](./zh/skills/writing-tips/references/readme-rewrite-and-polish.md)** `readme-rewrite-and-polish`<br>用户明确要为新读者重写整份 README 时使用。只补安装步骤或改单段时，直接做局部修改。 | 235 |
| **[内容团队：9 套 skill](./zh/skills/writing-tips/references/content-team-of-9-skill-sets.md)** `content-team-of-9-skill-sets`<br>一个人做内容：装好选题、写作、配图、视频、声音和排期的 skill，再拿一个选题试跑。 | 176 |

## 出问题时

技巧有时会失灵：换了新模型，照着步骤做结果不对；或者中文版里有一句读着不对。请[开 issue](https://github.com/Heyvhuang/copybook-skills/issues/new/choose)，选「Tip stopped working · 技巧不灵了」或「Translation fix · 译文修正」，写清哪条技巧、哪个 agent 和模型、发生了什么。

这条技巧会排进每周的检查，失效的会撤下。

## 社区

Copybook 由 [@Voxyz_ai](https://x.com/Voxyz_ai) 撰写。

- **X**：[@Voxyz_ai](https://x.com/Voxyz_ai)，每条技巧最早发在这里
- **网站**：[copybook.page](https://copybook.page/zh/)，每条技巧都有复制按钮和原帖
- **Issues**：https://github.com/Heyvhuang/copybook-skills/issues
- **Star**：[给这个仓库点 Star](https://github.com/Heyvhuang/copybook-skills)，收进你的 Star 列表。想在技巧新增、改动或撤下时收到通知，选 **Watch** → **Custom** → **Releases**
- **用邮件收新技巧（英文）**：[订阅](https://copybook.page/zh/about#email-about-title)

## 参与贡献

这里的文件都由 copybook.page 上的技巧生成，每加一条或重测一次就更新，在本仓库里手改或提 PR，下次同步时都会被覆盖。请开 issue（[怎么开](.github/CONTRIBUTING.md#参与贡献)），修复会在下次同步时更新进来，提交里会署上你的名字。

推荐新技巧，选「Suggest a tip · 推荐新技巧」并附上帖子链接。Copybook 收的是 X 上读者收藏最多的帖子，收不收由 [@Voxyz_ai](https://x.com/Voxyz_ai) 决定。

## 更新

首个公开版本：[1.0.0](CHANGELOG.md)，2026年11月14日，134 条技巧。

下面的命令用于 user 范围的安装；其他范围按原安装范围更新。刷新后新开会话，检查已装版本，并把 router 和一条技巧的文件与已发布 tag 中同语言的文件对照。skills.sh 版运行[更新命令](#skillssh)，检查更新后的 commit 和文件。ChatGPT 用 Sync now 并检查导入报告；ZIP 版要重新上传。改了什么见[更新记录](CHANGELOG.md)。

### Claude Code

```bash
claude plugin marketplace update copybook
claude plugin update copybook-zh@copybook --scope user --json
claude plugin list --json
```

### Codex

```bash
codex plugin marketplace upgrade copybook
codex plugin add copybook-zh@copybook
codex plugin list --json
```

### skills.sh

更新已装的 Copybook 技巧时，在原项目里运行下面的命令。装在全局的，选 global。

```bash
npx skills@latest update copybook codebase-tips review-tips design-tips long-run-tips model-tips launch-tips writing-tips
```

旧安装在首个公开版本发布后无法刷新时，先备份本地改动，记下每个 Copybook 插件及其安装范围。移除 Copybook 插件市场，从同一仓库重新添加，再装回需要的插件。移除插件市场可能会卸载其中的插件。然后新开会话，核对已装版本和文件。

```bash
claude plugin marketplace remove copybook
claude plugin marketplace add Heyvhuang/copybook-skills
claude plugin install copybook-zh@copybook --scope user
```

```bash
codex plugin remove copybook-zh@copybook
codex plugin marketplace remove copybook
codex plugin marketplace add Heyvhuang/copybook-skills
codex plugin add copybook-zh@copybook
```

## 许可

Copybook 原创的技巧正文、说明和译文采用 [CC BY 4.0](LICENSE-CONTENT)。使用时请注明 Copybook（@Voxyz_ai），附上来源和许可链接，并标明所作修改。注明来源时，最好链接到这条技巧在 copybook.page 上的页面，每条技巧文件的「来源」一行里有。第三方引文不在这份授权范围内，[第三方许可说明](LICENSE-NOTICES.md)列出了它们。清单、配置和其他原创非文字素材采用 [MIT 许可](LICENSE)，分发副本时请保留版权和许可声明。Copybook 的名称和标志不在这两份许可之内。
