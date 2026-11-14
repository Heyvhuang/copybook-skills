# low effort 写、high effort 验的两个 subagent

high 多花的 token 主要买到验证：builder 用 low、verifier 用 high，一条规则让新功能都走一遍。

## 步骤

1. 复制提示词。
2. 连同原帖里的流程图，发给 Claude Code。
3. 得到：~/.claude/agents 里多出 builder 和 verifier，写入前先给你看。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
把这张图里的流程在我的 Claude Code 里搭起来：

1. 在 ~/.claude/agents 里建两个 subagent：
- builder：写代码。model: opus，effort: low。它实现我批准过的需求，做完就停。
- verifier：检查成果。model: opus，effort: high。它先把功能跑起来，看实际做了什么，再补测试，重点放在边界情况。发现问题报告给我，自己不改代码。

2. 在 ~/.claude/CLAUDE.md 里加一条规则：我要做新功能时，先问我需求缺了什么；我确认后交给 builder；我看过结果后交给 verifier。

3. 检查环境变量 CLAUDE_CODE_EFFORT_LEVEL 有没有设置。如果设了，两个 subagent 上的 effort 设置都不会生效。告诉我就行，不要改它。

先给我看你要新建或修改的文件内容，再用 10 岁小孩能跟上的话讲一遍整个流程。我确认之前什么都不要写。
```

## 背景

Anthropic Claude Code 团队的 [Thariq](https://x.com/trq212/status/2103576349499855160) 公布了他对 effort 的测试：调高 effort，换来的主要是更多验证和边界情况测试。你可以把他的做法变成两个 subagent，让 Claude Code 照着走。

做新功能时，他分四步：

1. 先让 Claude 问你问题，把需求缺的部分补上。
2. 用 low 写。速度快，你随时可以插手。
3. 看一遍，要改的话继续用 low。
4. 最后切到 high 做验证和测试。

## 来源

来自 [Copybook](https://copybook.page/zh/t/build-on-low-effort-and-verify-on-high-effort)：@Voxyz_ai 2026年9月25日[发在 X 上](https://x.com/Voxyz_ai/status/2103586663393853636)，截至 2026年10月23日有 740 次收藏。适用于 Claude Code。
