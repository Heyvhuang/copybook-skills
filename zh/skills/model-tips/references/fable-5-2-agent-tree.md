# Fable 5.2 agent 树：Opus 5.5 和 Haiku

每个角色选哪个模型和 effort：Haiku 5.5 找文件、跑测试，Opus 5.5 改代码，Fable 卡住才上 high。

## 步骤

1. 复制 Agent 树。
2. 发给 Claude Code，让它配置好。
3. 得到：树里每个角色一个 subagent，由 Fable 5.2 以 medium 带队。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## Agent 树

```text
   COST-EFFICIENT CLAUDE CODE AGENT TREE

                 Fable 5.2
                  medium
            root / orchestrator
                     |
            delegate on demand
                     |
     +---------------+---------------+
     |               |               |
 explorer         worker          tester
     |               |               |
 Haiku 5.5   Opus 5.5 · medium   Haiku 5.5
     |               |               |
finds files     edits code      runs tests
     |               |               |
     +---------------+---------------+
                     |
                 Fable 5.2
                  medium
            integrate + verify
                     |
                     + - - - - - - - +
                                     |
                            only if it's stuck
                                     |
                                 Fable 5.2
                                   high

Split useful work. Don't spawn every role.
```

## 背景

一棵省钱的 Opus 5.5 + Haiku agent 树，由 Fable 5.2 统筹。

模型和 effort 档位都按 Anthropic 昨天发布的选模型指南来定。把它交给 Claude Code，让它配置好。

原文在图片里，已逐字转录。

## 来源

来自 [Copybook](https://copybook.page/zh/t/orchestrate-opus-and-haiku-subagents-with-fable-5-2)：@Voxyz_ai 2026年11月10日[发在 X 上](https://x.com/Voxyz_ai/status/2120199820887593304)，截至 2026年11月11日有 1,267 次收藏。适用于 Claude Code。
