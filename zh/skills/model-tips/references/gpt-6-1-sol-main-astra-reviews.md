# Codex：GPT-6.1 Sol 主跑，medium subagent，Astra 终审

Astra 一周吃光额度：6.1 Sol 用 high 调度、medium 跑 subagent，Astra 只审上线前的大改动。

## 步骤

1. 复制提示词。
2. 在项目里发给 Codex。
3. 得到：6.1 Sol 用 high 调度，subagent 都用 medium，Astra 只审大改。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
照这个目录树来设置我的 Codex：
→ 主会话：默认用 `gpt-6.1-sol`，推理强度 high。负责拆任务、派活、整合和验证。简单的活自己做，别派出去。
→ 三个项目级自定义 agent，model 都设成 `gpt-6.1-sol`，model_reasoning_effort 设成 `medium`：explorer 读代码，worker 改代码、跑测试，researcher 查文档。已有合适的就复用，只新建缺的。
→ reviewer：同样是项目级自定义 agent，model 设成 `gpt-6-astra`，model_reasoning_effort 设成 `xhigh`。只在大改动上线前调用。它只报告问题，不改代码。
→ 把派活规则写进 AGENTS.md：派 subagent 时，把 `fork_turns` 设成 `"none"`，或者只传最近几轮。`fork_turns` 不写或设成 `"all"`，subagent 会继承主会话的模型和推理强度，而且改不了，整套分工就失效了。

改之前先检查：
→ 除了 reviewer 以外，还在用 `gpt-6-astra` 或旧版 Sol（比如 `gpt-6-sol`、`gpt-5.6-sol`）的角色，列出来。
→ 要换到 6.1 Sol、但推理强度设成 `none` 或 `minimal` 的角色：改成 `low`（这两个 6.1 Sol 都不支持），再对比结果。
→ 只写在 AGENTS.md 里的模型分工：查最近的 subagent 会话日志，确认每个角色实际跑的是哪个模型。

这里列的模型有选不了的，就停下来问我。先给我看要改什么，等我同意再写。
```

## 背景

OpenAI 发布了 GPT-6.1 Sol，写代码可以直接替掉 Astra，价格只有 1/5。OpenAI 同一天还宣布，20x 的 Pro 要降到 10x。说实话我已经不敢再用 Astra 了。趁 Astra 还没吃掉你一整周的额度，换成 6.1 Sol。

6.1 Sol 已经上了 Codex。照这样配：6.1 Sol 跑总调度和全部三个 subagent，Astra 只在大改动上线前做一次独立审查。推理强度按 OpenAI 的 DeepSWE 图来定：6.1 Sol 在 high 上分数最高，往上开到 xhigh 或 max 分数反而更低，所以总调度用 high。medium 只比 high 低 2 分左右，每个任务的成本却少 30% 以上，所以 subagent 用 medium。

把这段 prompt 发给 Codex。

## 来源

来自 [Copybook](https://copybook.page/zh/t/switch-codex-to-gpt-6-1-sol-with-an-astra-reviewer)：@Voxyz_ai 2026年9月29日[发在 X 上](https://x.com/Voxyz_ai/status/2105012597796057438)，截至 2026年10月27日有 1,061 次收藏。适用于 Codex。
