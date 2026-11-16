# /advisor：Sonnet 5.5 主跑，Opus 待命

$20 套餐默认跑 Opus 5.5：Haiku 读代码、查文档，定方案前、错误反复时、说做完前叫 Opus 出主意。

## 步骤

1. 复制提示词和 Agent 树。
2. 提示词和 Agent 树都发给 Claude Code。
3. 得到：先看改动再动文件，之后 Sonnet 5.5 干活，Opus 待命。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
照这棵树配置我的 Claude Code：
1. 树里这三个 subagent，先查 ~/.claude/agents 和 .claude/agents。有合适的就复用，缺的角色再提议新建。读代码和查文档的设成 model: haiku，改代码跑测试的设成 model: sonnet。已经指定了别的模型的 subagent 别动，列出来就行。
2. 在 ~/.claude/settings.json 里，把 model 设成 sonnet，advisorModel 设成 opus。
3. 检查这些环境变量，只报告，什么都别改：CLAUDE_CODE_DISABLE_ADVISOR_TOOL 会关掉 advisor，DISABLE_TELEMETRY 或其他关掉 flag 拉取的设置也一样。CLAUDE_CODE_SUBAGENT_MODEL_FORCE 会把每个 subagent 强制成同一个模型。然后查版本：Claude Code 低于 2.1.293 就告诉我（更早的版本里，haiku 还是指 Haiku 4.5）。别自己升级。
4. 在 ~/.claude/CLAUDE.md 里加一条：定大方案前、同一个错误出现第二次、长任务说做完之前，先问 advisor。

先给我看要改什么，别直接动文件。
```

## Agent 树

```text
         CLAUDE CODE AGENT TREE
        SONNET 5.5 + OPUS ON CALL

               Sonnet 5.5 ─ ─ Opus 5.5
              main session    /advisor opus
    ┌───────────────┼───────────────┐
explorer         worker        researcher
Haiku 5.5      Sonnet 5.5       Haiku 5.5
read code     edits + tests   look up docs
    └───────────────┼───────────────┘
 back to main session · review + verify

    Sonnet calls Opus in:
    · before it picks a plan
    · when the same error comes back
    · before it says "done"

    Code on Sonnet. Search on Haiku.
           Keep Opus on call.
```

## 背景

$20 套餐现在默认整场会话都跑 Opus 5.5。想让额度撑久一点，就把主会话换成 Sonnet 5.5，用 `/advisor` 让 Opus 待命。

用 `claude --model sonnet --advisor opus` 启动，让 Opus 当场外军师。Sonnet 5.5 照常干活，会在这三个时刻把 Opus 叫过来：

- 定方案前：这个方案行不行？
- 同一个错误反复出现：是不是方向错了？
- 说「做完了」之前：还有没有漏的？

Opus 读完整段对话给意见，代码还是 Sonnet 来写。

advisor 文档：https://code.claude.com/docs/en/advisor

原文在图片里，已逐字转录。

## 来源

来自 [Copybook](https://copybook.page/zh/t/switch-to-sonnet-5-5-with-opus-on-call)：@Voxyz_ai 2026年11月7日[发在 X 上](https://x.com/Voxyz_ai/status/2119082454120337491)，截至 2026年11月14日有 968 次收藏。适用于 Claude Code。
