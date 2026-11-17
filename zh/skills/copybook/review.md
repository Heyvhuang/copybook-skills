# 验收 · 15 条

Copybook 的 15 条「验收」技巧，按收藏数排序，与合不合适无关：读完整个列表再选，合适的那条常常在后面。每条的文件是 `../review-tips/references/<名字>.md`。

| 技巧 | 做什么 |
| --- | --- |
| tailscale-preview-links | agent 给的链接是 localhost：预览、审查页面、看板都换成 Tailscale 链接，手机上直接打开。 |
| bug-score-rule-for-astra | Astra 总挑几乎不会发生的 bug，Opus 一条条去修：给 bug 打分，分低的记成 issue，代码不动。 |
| blast-radius-and-4-more-prompts | 只说「修这个 bug」只拿到默认答案：影响范围、并行目标、红队计划、真实用户走查、思考预算。 |
| perf-review-the-5-slowest-spots | 想让代码变快，多半换来一层缓存：profile 测出的耗时，每处对上的改法，要改的行和预计提速。 |
| one-question-before-it-answers | 一次问 10 个你就不想答：先摆出没说的假设、缺的信息和常见错误，再只问最可能改变做法的那个。 |
| skill-backtest-on-codex-sessions | 凭记忆写的 skill 和实际做法对不上：拿过去的 Codex 会话回测，先出 dry run 的 diff，再定期复查。 |
| code-and-direction-review | 代码越来越复杂，或忙了很久不知道通向哪里：一条找出不必存在的代码，一条重新审视方向。 |
| claude-api-prompt-audit | skill 里还留着旧模型名和失效命令：官方 skill 审一遍，列出重复约束和过度强调，附 diff。 |
| fake-busy-check | 开了一堆会话，回头看什么都没做成：分清今天真合并的和来回改的，一句话定下明天第一件事。 |
| nightly-push-review-routine | 今天推到 main 的代码，睡觉时再看一遍：每个 bug 开 draft PR 附先失败的测试，笔记本合上也跑。 |
| logging-plan-and-daily-fix-list | 坏掉的功能、卡住的用户、太慢的步骤：按影响人数排序，附日志原文，最严重的一条已有测试。 |
| plan-review-5-methods | 计划写完代码还没动：一条消息要第一性原理、对抗性审查、消融测试、奥卡姆剃刀和高内聚低耦合。 |
| skill-score-by-yes-no-questions | skill 改了一版有没有变好：10 个真实任务、8 道是非题、不知情的评分 subagent，只留提分的那版。 |
| 3-checks-before-a-skill-install | 有人在 ClawHub 上放了 314 个恶意 skill：装之前查来源、扫代码、问清权限，不到 5 分钟。 |
| state-machine-check | 功能状态间的 bug：从 UI 到服务端的每个状态画在一页 HTML 上，附编号清单，写明文件、行号和原因。 |
