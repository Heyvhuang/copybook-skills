# 设置检查：按 Opus 5.5 成本指南

Opus 5 的老设置在 5.5 上更贵：照 Anthropic 指南查 effort、subagent、MCP、CLAUDE.md，各附改法。

## 步骤

1. 复制提示词。
2. 在 Claude Code 里发给 Opus 5.5。
3. 得到：Opus 5.5 找出设置里费钱的地方，每处给出最小改法。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
读一下这篇指南：https://claude.dev/blog/what-a-task-costs-on-opus-5-5/

然后对照它检查我的 Claude Code 设置：用户和项目的 settings、~/.claude/agents 和 .claude/agents 里的 subagent、CLAUDE.md，以及已连接的 MCP server。找三类问题：
1. 默认 effort 跟活不匹配。按指南的阶梯对照：机械性的改动用 low，范围清楚的日常活用 medium，medium 卡住再上 high，xhigh 和 max 只用于实测有收益的活。默认是 xhigh 或 max，或者沿用了给 Opus 5 选的档位，就标出来。再根据这个项目的代码和最近的提交，告诉我这里哪类活该用哪一档。
2. 只负责搜索、读日志、跑测试的 subagent 没设 model，跟着跑在主模型上。
3. 让每一轮都变贵的配置：用不上的 MCP server，远超 200 行的 CLAUDE.md。

每个问题都引用原设置或原文，说明它多花在哪里，给出最小的改法。再告诉我任务结束时在 /usage 里看哪三样。

先给我看建议，暂时什么都别改。
```

## 背景

Anthropic 完整公开了 Opus 5.5 的成本指南，你可以让 Opus 5.5 用这篇指南查一遍你的 Claude Code 设置。

同样的 effort 下，Opus 5.5 每一轮都比 Opus 5 想得多，xhigh 和 max 尤其明显。思考按输出计费，一个输出 token 的价格是缓存读取的 100 倍。所以别沿用给 Opus 5 设的档位，从 medium 起步，xhigh 和 max 留给量过确实有提升的任务。

把这段 prompt 发给 Opus 5.5。

## 来源

来自 [Copybook](https://copybook.page/zh/t/review-your-setup-with-the-opus-5-5-cost-guide)：@Voxyz_ai 2026年9月25日[发在 X 上](https://x.com/Voxyz_ai/status/2103552376380457454)，截至 2026年10月23日有 2,167 次收藏。适用于 Claude Code。
