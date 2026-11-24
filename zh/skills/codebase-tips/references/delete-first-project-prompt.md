# Delete-first prompt for your messiest project

Broken or unneeded code, pages with hierarchy problems: deleting preferred, what it's sure about fixed, the rest listed.

这条技巧只有英文版。

## 步骤

1. Copy the prompt.
2. Paste it into Claude Code or Codex in your messiest project.
3. 得到：Screenshots of every page, the 5 biggest hierarchy and density problems first, a list to review.

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## Prompt

```text
Read this entire project and find everything that's broken, inconsistent, inefficient, or no longer needed. Prefer deleting over simplifying, simplifying over optimizing, and optimizing over automating. Run my app, open every page in Chrome yourself and screenshot it. List the 5 biggest hierarchy and density problems first. Fix what you're sure about and list the rest for me to review.
```

## 背景

Vibecoders, I'm begging you, every time a new model drops, whether it's Fable 5.2, GPT-6.2 Astra or whatever Google ships next, open your messiest project and paste this into Claude Code or Codex.

## 来源

来自 [Copybook](https://copybook.page/zh/t/run-a-delete-first-pass-when-a-new-model-drops)：@Voxyz_ai 2026年11月22日[发在 X 上](https://x.com/Voxyz_ai/status/2124548469540974596)，截至 2026年11月23日有 7,308 次收藏。适用于 Claude Code 和 Codex。
