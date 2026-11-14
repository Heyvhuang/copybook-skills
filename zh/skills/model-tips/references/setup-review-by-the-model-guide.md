# 设置检查：按 Anthropic 选模型指南

Explore 每次读文件都在烧大模型额度：查出用错模型的 subagent 和不合适的 effort，各附配置改法。

## 步骤

1. 复制提示词。
2. 在 Claude Code 里发给 Fable 5.2。
3. 得到：每个问题附上你的设置和能直接粘贴的配置，再列出哪类活该用哪个模型、哪档 effort。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
读一下这篇指南：https://claude.dev/blog/which-claude-model-should-you-build-with

然后对照它检查我的 Claude Code 设置：用户和项目的 settings、~/.claude/agents 和 .claude/agents 里的 subagent，以及 CLAUDE.md。找三类问题：
1. subagent 用错了模型。只负责搜文件、读日志或跑测试的 subagent 没设 model，跟着跑在我的主模型上。如果我还没自己定义一个名叫 Explore、设了 model: haiku 的 subagent，也算一条。反过来，改代码或要做判断的 subagent 应该留在主模型上，所以也查一下 CLAUDE_CODE_SUBAGENT_MODEL 有没有把它们压到小模型上（只查这一个变量，看我 settings 里的 env 块和我的 shell）。
2. 模型或 effort 档位跟活不匹配。按指南里的表对照：日常开发和调试用 Opus 5.5 配 medium，范围清楚的活（比如修一个 bug，或者照着 spec 做一个功能）用 Sonnet 5.5，大型重构、迁移和带很多 subagent 的活用 Fable 5.2。默认 effort 高于 high 的标出来，并建议先试试更高一档的模型配更低的 effort。opusplan 是我的默认设置的话也标出来，因为它会把改代码的活交给 Sonnet。
3. 你没法在这个项目里验证自己的工作：CLAUDE.md 没写怎么跑测试或构建，或者根本没有能跑的检查。指南的顺序是先确保你能验证自己的工作，再把 effort 提一档，最后才换更高一档的模型。

每个问题都引用我的设置和指南里对应的那句话，说明它多花在哪里、会在哪里出错，再给出最小的改法，写成我能直接粘贴的配置。

然后看看这个项目的代码和最近的提交，给我一张表：这里哪类活适合哪个模型、哪档 effort。

最后告诉我怎么用 /model 和 /usage，把我待办里的一个任务分别用两个模型跑一遍，比较花费。

先给我看建议，暂时什么都别改。
```

## 背景

Anthropic 刚发布了一份完整指南，讲怎么在 Fable 5.2、Opus 5.5、Sonnet 和 Haiku 之间选。你可以让 Fable 5.2 用这份指南检查一遍你的 Claude Code 设置。

Claude Code 内置的 Explore subagent 以前一直跑在 Haiku 上，现在改成跑在你的主模型上。如果主模型是 Opus 5.5，或者你刚换到 Fable 5.2，Explore 每次读文件、搜代码，都在白白烧大模型的额度。所以自己定义一个名叫 Explore 的 subagent，设成 model: haiku。

把这段 prompt 发给 Fable 5.2。

## 来源

来自 [Copybook](https://copybook.page/zh/t/review-your-setup-with-anthropics-model-guide)：@Voxyz_ai 2026年11月10日[发在 X 上](https://x.com/Voxyz_ai/status/2119943123250078141)，截至 2026年11月11日有 3,339 次收藏。适用于 Claude Code。
