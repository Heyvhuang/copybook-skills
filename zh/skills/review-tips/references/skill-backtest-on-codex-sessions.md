# skill 回测：过去的 Codex 会话

凭记忆写的 skill 和实际做法对不上：拿过去的 Codex 会话回测，先出 dry run 的 diff，再定期复查。

## 步骤

1. 复制提示词，填上 skill 名或路径。
2. 把它发给 Codex，它会读你过去的 Codex 会话。
3. 得到：一份有会话证据的 dry run diff，你确认后再定期复查。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
read [skill name, workflow file, or folder path] and run a backtest against my past sessions related to it.

prefer sessions from the same project and same task type. first list the samples you plan to use and why you picked them. if you can't access enough sessions, say so directly instead of guessing.

compare what the skill assumes vs how i actually work. focus on:

- steps i often skip, rewrite, or run more than once
- work i still do manually that the skill never covers
- the order i actually do things in
- spots that keep causing rework, getting stuck, or needing extra clarification

separate stable patterns from one-off exceptions. never rewrite a rule over a single anomaly.

output a dry run first, nothing else:

- keep / modify / add / remove
- session evidence for each item
- proposed diff and reasoning

do not modify any files until i confirm.

after i confirm, update the skill, run existing checks, and summarize before / after. if there's no existing way to verify, say so.

finally, based on how fast new sessions accumulate, suggest a weekly or biweekly review. show me the schedule, scope, and trigger conditions first, then create the recurring task after i confirm.

every scheduled review outputs a dry run only. no auto-modifying the skill without confirmation.
```

## 背景

拿一个你已经写好的 skill 或自动化流程，丢回给 Codex，让它拿你过去的会话做一次回测。它会把 skill 改成你实际干活的样子。

- skill 写好后，让 Codex 对照相关的会话评估它
- 它会找出你总是跳过的步骤、一直手动补的活，以及你实际做事的顺序
- 每隔几周重跑一次，skill 就能跟上你工作方式的变化

凭记忆写下的是流程图。会话记录的是你实际怎么做的，以及在哪里返了工。会话日志现在也能当 skill 的评测集用。

## 来源

来自 [Copybook](https://copybook.page/zh/t/backtest-a-skill-against-your-past-sessions)：@Voxyz_ai 2026年7月17日[发在 X 上](https://x.com/Voxyz_ai/status/2078175217839403150)，截至 2026年8月14日有 554 次收藏。适用于 Codex。
