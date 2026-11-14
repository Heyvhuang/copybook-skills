# Fable 做主、Opus 做 subagent 的 3 个设置

Fable 额度不够用：3 行设置，读代码、查文档交给半价的 Opus subagent，判断留给 Fable。

## 步骤

1. 复制 3 行设置，再复制请求。
2. 给 Claude Code 设好这些设置，再把请求加到下一条消息里。
3. 得到：Fable 负责判断，Opus subagent 负责调研、范围明确的改动和测试。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 设置

```bash
CLAUDE_CODE_SUBAGENT_MODEL=opus
CLAUDE_CODE_MAX_CONCURRENT_SUBAGENTS=2
CLAUDE_CODE_MAX_SUBAGENT_SPAWN_DEPTH=1
```

## 提示词

```text
把独立的调研、范围明确的改动和相关测试交给 Opus subagent。调用时明确把 model 设为 opus，并定义范围和验收标准。让它们完成分配的工作，返回改动的文件、测试命令、实际退出状态和未解决的问题。完整日志保留下来，给出路径，不要把所有内容都贴回来。

避免你和 subagent 同时编辑同一批文件。subagent 完成后，审查它的 diff 和测试结果，需要时再跑额外的检查。不明确的做法由你自己决定。小任务直接处理，不要额外开 subagent。
```

## 背景

如果你想让 Claude 额度更耐用，可以试试把 Fable 留作主模型，按需把辅助工作交给 Opus subagent。

Opus 5 的标价，输入和输出都只有 Fable 5.1 的一半。需要判断力的地方留给 Fable，读代码、查文档这类工作交出去。subagent 的文档在 <https://code.claude.com/docs/en/sub-agents>。

第一行把 Opus 设为 subagent 的默认模型，不会覆盖已有的模型设置，也不会改变内置 Explore 和 Plan 用的模型。第二行把并发 subagent 上限设为 2。第三行把委派限制在一层，助手不能再叫自己的助手。

改设置的同时，也改一下你分配工作的方式。在下一条请求里加上这段：

让 subagent 返回你能直接用的结果，这样两个模型就不会重复同一番调查。运行 `/tasks` 查看每个 subagent 实际用的是哪个模型。

## 来源

来自 [Copybook](https://copybook.page/zh/t/keep-fable-as-main-and-delegate-to-opus-subagents)：@Voxyz_ai 2026年9月13日[发在 X 上](https://x.com/Voxyz_ai/status/2099242720732512603)，截至 2026年10月11日有 715 次收藏。适用于 Claude Code。
