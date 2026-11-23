# 1:1 on your week from git log and sessions

Moving this week or just busy: 7 days of git log and sessions, every judgment backed by a commit or conversation, 3 commitments.

这条技巧只有英文版。

## 步骤

1. Copy the prompt.
2. Paste it into Claude Code in your repo.
3. 得到：A one-line verdict, what you did well, habits, landmines and 3 commitments you can check in git log.

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## Prompt

```text
Read the last 7 days of git log in this repo (with change stats) and the last 7 days of this project's sessions in ~/.claude/projects/. Then run a 1:1 on me like a sharp-eyed tech lead and evaluate how I'm doing as a developer.

Rules: be direct, don't spare my feelings. Back every judgment with a specific commit or conversation. If the data doesn't show something, skip it, don't make it up. Focus on my commit rhythm, rework, testing habits and where I kept getting stuck. If the sessions are too long, read only my own messages first. Read only, change nothing.

Give it to me in this structure:
1. One-line verdict: was I actually moving this week, or just busy?
2. What I really did well: the most valuable output or calls, with evidence.
3. Habits holding me back: the traps I keep stepping in and the changes I patched over, named directly.
4. Landmines I'm planting: if I keep working like this, where it's most likely to hurt the project within a month.
5. 3 commitments for the next two weeks: concrete changes I can check against git log in two weeks.
```

## 背景

This weekend, have Fable 5.2 dig through your week of sessions and commits and run a 1:1 on you that's harsher than any real boss.

## 来源

来自 [Copybook](https://copybook.page/zh/t/run-a-1-1-on-your-week-from-git-log-and-sessions)：@Voxyz_ai 2026年11月21日[发在 X 上](https://x.com/Voxyz_ai/status/2124125687283958118)，截至 2026年11月22日有 184 次收藏。适用于 Claude Code。
