# STATE.md and new-session rules for CLAUDE.md

Using up your Claude Code limit: a STATE.md per task, a summary to switch chats at each approved milestone or 200 thousand tokens.

这条技巧只有英文版。

## 步骤

1. Copy the CLAUDE.md rules.
2. Paste them into your CLAUDE.md.
3. 得到：A STATE.md for each task, and new sessions that start from it instead of a fork.

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## CLAUDE.md rules

```markdown
from now on, in this project:
- keep a STATE.md of at most 40 lines per task, with what has already been approved, what's left and the decisions. update it at every milestone.
- when a milestone is approved or the context passes 200 thousand tokens, tell me it's time to switch chats and hand me the summary to paste into the new session.
- every image analysis runs in a subagent, which gives me back only text.
- no forking to continue. a new session starts from zero, reading the STATE.md.
```

## 背景

If you're using Claude Code, paste this into your CLAUDE.md and your usage will drop significantly.

## 来源

来自 [Copybook](https://copybook.page/zh/t/keep-a-state-md-and-start-new-sessions-to-cut-usage)：@Voxyz_ai 2026年11月21日[发在 X 上](https://x.com/Voxyz_ai/status/2124246472883601720)，截至 2026年11月22日有 697 次收藏。适用于 Claude Code。
