# 代码库 · 32 条

Copybook 的 32 条「代码库」技巧。顺序按收藏数，不按合不合适：读完整个列表再选，合适的那条常常在后面。每条的文件是 `../codebase-tips/references/<名字>.md`，在它所属话题的技能里。

| 技巧 | 做什么 |
| --- | --- |
| codebase-memory-repo-index | 每个问题几十轮 grep 和读文件：仓库连成一张函数、文件和依赖的图，顺手找出能安全删的死函数。 |
| karpathys-4-coding-principles | 过度设计、顺手改旁边的代码：先想再写、简单优先、改动要准、目标驱动，4 行写进 CLAUDE.md。 |
| vibe-coding-cleanup-prompts | 额度重置时还剩一半：清掉死代码、重复实现和用不上的依赖，给定时任务和旧 worktree 分好类。 |
| clickable-repo-map | 改一个仓库前先看清它：点任一模块，看到调用方、依赖、相关测试和源码证据，地图随代码更新。 |
| scope-guard-rules | 改个配置就搭框架、修个 bug 就加一层：够用的最小改动，复用现有代码，扩大范围先问你。 |
| disk-map-of-dev-leftovers | 硬盘快满时先别乱删：只读扫一遍，树状图标出开发留下的大文件夹，清理脚本只删你勾选的。 |
| one-agents-md-for-both-agents | 两个 agent 同一套做法：先规划、最小改动、分活、修 bug、做完先验证，每次纠正记进 Lessons。 |
| untangle-goal | 几个月 vibe coding 让代码缠成一团：一页 HTML 接线图，最严重的结标红编号，再逐个修、逐个跑测试。 |
| investigate-and-plan-prompt | 怕 agent 做错方向：先查仓库、复述目标、列假设和计划，批准才动手。 |
| pr-comments-as-agents-md-rules | 同一个 reviewer 反复提的问题：gh 扫最近 50 个 PR 排出来，选中的写成全局规则，不用再靠人提醒。 |
| archify-system-diagrams | 要给人讲清系统结构：从代码生成一张能搜索、能追踪上下游、能对比版本的 HTML 图，可导出 PNG。 |
| rea-take-apart-a-feature | 看中别家 app 的功能却不知道怎么做的：一层层拆开，每个结论标出证据，最后拿到自己实现的计划。 |
| less-defensive-code | 改一点点也要层层判空：Codex 只在数据进来的地方检查一次，之后直接用。 |
| fewer-deeper-modules | 功能跑通了，代码却到处重复：重复的删光，核心逻辑归到一处。 |
| ci-time-audit | 代码几分钟写完，每个 PR 却在等 CI：最慢的 5 个任务拆成排队、准备和运行，每处改动指到哪一行。 |
| agent-workspace-audit | agent 越用越笨先别怪模型：说明、skill、MCP 和记忆列成「保留 / 删除」清单，你批准后再清。 |
| agent-memory-tools-8-repos | agent 记不住代码、资料、对话和长任务：8 个仓库分 4 类，每类挑一个装，装前先给你看命令。 |
| 3-slimmer-agents-md-plans | AGENTS.md 超过 200 行就不照做了：3 版更精简的并排，一版比一版激进，不丢规则，改前先给你看。 |
| whole-project-audit | 坏的、不一致或用不上的代码：改动前先讲清它怎么连起来，有把握的修掉，其余列出来。 |
| no-compatibility-code-yet | 项目还没人用，agent 却在写兼容代码：跳过兼容和迁移，每次改动走文档、测试、最小实现、清理。 |
| deny-ask-and-allow-permissions | 顺手删过「看起来没用」的配置：危险命令直接拦，push 和发布前先问，日常放行，deny 永远优先。 |
| ask-before-edge-case-code | agent 总为几乎不会发生的边界情况加代码：一行规则让它先说会出什么问题、概率多大，等你点头。 |
| instructions-from-your-sessions | 每开新会话都要重讲一遍背景：从最近 20 个会话里捞出来，写成一份项目说明，以后不用再说。 |
| mod-request-for-claude-code | 想改 Claude Code 自己的界面或行为：这段提示词先找现成的 Mod，没有就提一个最小的方案。 |
| codex-and-claude-sorted | 怕清理时把聊天记录也删了：每项分到 Keep、History、Work、Clearable 或 Unknown，命令逐条批准。 |
| mod-ideas-from-20-sessions | 反复提的要求、中途叫停或撤销的命令、检查改动的方式：按帮助大小排好，引用你的原话。 |
| teach-strategic-programming | 贵的 token 花在 AI 替代不了的事上：先问你代码库的 3 个问题，写出 MISSION.md 和课程，拿项目教你。 |
| bug-fix-loop-rules | agent 既修又审，就会一直来回拉扯：修两次不好就停，只审这一轮的改动。 |
| ub-mode-clean-code-agent-rules | agent 的代码藏着 bug，测试骗你：每次改动都照这个 skill 来，自带 crapper、dryer、mutator 检查。 |
| repo-map-words-vs-names | 你怎么叫一个模块，和代码里怎么叫它对不上：每一处都标红，最容易导致改错的排在最前。 |
| repeat-mistakes-as-lint-rules | 老犯同一个错：正确写法封装成 helper，lint 禁掉旧写法，报错写明该用哪个，它跑检查时自己改。 |
| situation-routing-for-skills | agent 常常忘了用装好的，你只好一个个点名：每个任务挑最合适的，一句话说明哪个、为什么。 |
