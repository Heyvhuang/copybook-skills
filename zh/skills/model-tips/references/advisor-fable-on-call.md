# /advisor：Opus 5.5 主跑，Fable 待命

Opus 5.5 主跑后 Fable 闲着：定方案前、错误反复时、说做完前叫 Fable 出主意，代码仍归 Opus。

## 步骤

1. 复制提示词和这棵树。
2. 提示词和 Agent 树都发给 Claude Code，再输入 /advisor fable。
3. 得到：Opus 5.5 照常干活，定方案前、错误反复时和说做完前叫 Fable 来看。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
照这棵树配置我的 Claude Code：
1. 这三个 subagent，~/.claude/agents 和 .claude/agents 里有合适的就复用，缺的再提议新建，都设成 model: opus、effort: medium。已经指定了别的模型的 subagent 别动，列出来就行。
2. 在 ~/.claude/settings.json 里用 effortLevel 把主会话默认 effort 设成 high。
3. 查一下有没有会让 advisor 失效的环境变量（CLAUDE_CODE_DISABLE_ADVISOR_TOOL，或 DISABLE_TELEMETRY 这类关掉 flag 拉取的），以及会盖掉 subagent effort 的 CLAUDE_CODE_EFFORT_LEVEL。只报告，别改。
4. 在 ~/.claude/CLAUDE.md 里加一条：定大方案前、同一个错误出现第二次、长任务说做完之前，先问 advisor。

先给我看要改什么，别直接动文件。
```

## Agent 树

```text
        CLAUDE CODE AGENT TREE · OPUS 5.5 + FABLE ON CALL


                         Opus 5.5 · high - - - -  Fable · on call
                          main session            /advisor fable
                                |
                                |                 Opus usually calls it:
                                |                 · before picking a plan
                                |                 · when an error repeats
                                |                 · before calling it done
                  delegate to custom subagents
                            on medium
                                |
        +-----------------------+-----------------------+
        |                       |                       |
    explorer                 worker                researcher
        |                       |                       |
Opus 5.5 · medium       Opus 5.5 · medium       Opus 5.5 · medium
        |                       |                       |
    read code             edits + tests           look up docs
        |                       |                       |
        +-----------------------+-----------------------+
                                |
                   back to main session · high
                         review + verify


      Plan on high. Delegate on medium. Keep Fable on call.
```

## 背景

主模型换成 Opus 5.5 以后，Fable 的额度别闲着，挂到 /advisor 上。输入 `/advisor fable`，就是给 Claude Code 配了个场外军师。Opus 5.5 照常干活，一般会在这三个时刻把 Fable 叫过来：

- 定方案前：这个方案行不行？
- 同一个错误反复出现：是不是方向错了？
- 说「做完了」之前：还有没有漏的？

Fable 读完整段对话给意见，代码还是 Opus 来写。整套分工是：Opus 5.5 用 high 当主力，三个 medium 的 subagent 一个读代码、一个改代码跑测试、一个查文档，Fable 在场外待命。

advisor 文档：https://code.claude.com/docs/en/advisor

原文在图片里，已逐字转录。

## 来源

来自 [Copybook](https://copybook.page/zh/t/put-fable-on-call-with-advisor)：@Voxyz_ai 2026年9月24日[发在 X 上](https://x.com/Voxyz_ai/status/2103232997461786803)，截至 2026年10月22日有 5,478 次收藏。适用于 Claude Code。
