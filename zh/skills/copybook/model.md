# 模型和额度 · 25 条

Copybook 的 25 条「模型和额度」技巧，按收藏数排序，与合不合适无关：读完整个列表再选，合适的那条常常在后面。每条的文件是 `../model-tips/references/<名字>.md`。

| 技巧 | 做什么 |
| --- | --- |
| luna-max-as-a-codex-subagent | 边界清楚的活交给 Luna Max：建一个 max 推理的 luna_worker，按你装的 Codex 版本校验，先看 diff。 |
| advisor-fable-on-call | Opus 5.5 主跑后 Fable 闲着：定方案前、错误反复时、说做完前叫 Fable 出主意，代码仍归 Opus。 |
| old-rules-review-for-astra | 旧规则让 Astra 多干活或提前停：按 OpenAI 指南找出该删的 skill 触发、必读文档、检查和确认规则。 |
| setup-review-by-the-model-guide | Explore 每次读文件都在烧大模型额度：查出用错模型的 subagent 和不合适的 effort，各附配置改法。 |
| leftover-quota-5-goal-prompts | 额度重置前还剩一半：完整 UI/UX 审查、能点的代码地图、量得出的提速、清理工作区、清理 Codex。 |
| status-line-cache-countdown | 缓存什么时候过期平时看不到：状态栏常显还剩几分钟，过期后告诉你下一句要重算多少 token。 |
| fable-plans-codex-builds | Fable 5 烧 token 太快：规划和前端留给它，后端用 /goal 派给 Codex；另附一条前端改版提示词。 |
| setup-review-by-the-cost-guide | Opus 5 的老设置在 5.5 上更贵：照 Anthropic 指南查 effort、subagent、MCP、CLAUDE.md，各附改法。 |
| think-carefully-cleanup | 换了 Opus 5.5，CLAUDE.md 里催它多想、一步步派活、无谓确认的老规则：逐条找出，引原文给改法。 |
| codex-setup-vs-the-gpt-6-2-guide | Sol 够用却把 Astra 开满：查出模型、effort、subagent 和 AGENTS.md 的问题，各附能粘贴的配置。 |
| hillclimb-a-cheaper-feature | 最花钱的 Claude API 调用：先搭测试集，再一档档换便宜模型、降 effort，准确率不掉才算数。 |
| fable-5-2-agent-tree | 每个角色选哪个模型和 effort：Haiku 5.5 找文件、跑测试，Opus 5.5 改代码，Fable 卡住才上 high。 |
| gpt-6-1-sol-main-astra-reviews | Astra 一周吃光额度：6.1 Sol 用 high 调度、medium 跑 subagent，Astra 只审上线前的大改动。 |
| advisor-opus-on-call | $20 套餐默认跑 Opus 5.5：Haiku 读代码、查文档，定方案前、错误反复时、说做完前叫 Opus 出主意。 |
| fable-5-2-plans-opus-builds | Fable 5.2 烧 token 太快：规划留在主会话，最难的部分也可留下，其余交给 Opus 5.5 subagent 或 Codex。 |
| old-rules-review-for-fable-5-2 | 给老模型写死的规则拖累 Fable 5.2：派活、少想、文风限制和「never」的句子，引原文给改法。 |
| 3-habits-burning-your-usage | 总撞额度上限：扫最近 7 天的会话日志，算出每个习惯各占多少额度，再写规则把它们堵上。 |
| fable-main-opus-subagents | Fable 额度不够用：3 行设置，读代码、查文档交给半价的 Opus subagent，判断留给 Fable。 |
| openais-5-cheap-harness-rules | agent 配置省不省钱：对照 OpenAI 自己用的 5 条规则逐条判过不过，给出文件和要改的那一件事。 |
| state-md-and-new-session-rules | Using up your Claude Code limit: a STATE.md per task, a summary to switch chats at each approved milestone or 200 thousand tokens. |
| astra-without-default-subagents | Astra 烧额度比 Sol 还快：删掉默认开 subagent 的规则，AGENTS.md 加一句，让它自己做、自己验。 |
| opus-5-5-main-medium-subagents | 想让额度撑久一点：主模型换成 Opus 5.5，默认 subagent 用 medium，改前先找出写死的模型 ID。 |
| gpt-6-pro-plan-handed-to-codex | 不看真实数据的计划是空的：仓库和日志接进 ChatGPT，GPT-6 Pro 照真实代码做计划，再交给 Codex。 |
| claude-code-token-waste-audit | 配置里还有什么在每一轮浪费 token：先测量，每行指令标成 Keep、Move 或 Cut，你批准才改。 |
| rules-check-for-sol-and-luna | 为 Astra 精简规则可能删掉 Sol、Luna 还要用的测试命令：让 Astra 查漏，各模型规则分开放。 |
