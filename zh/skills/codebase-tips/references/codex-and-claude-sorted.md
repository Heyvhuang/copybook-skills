# 清理前的 ~/.codex 和 ~/.claude 分类

怕清理时把聊天记录也删了：每项分到 Keep、History、Work、Clearable 或 Unknown，命令逐条批准。

## 步骤

1. 复制提示词。
2. 发给 Codex。
3. 得到：一份带大小的 ~/.codex 和 ~/.claude 报告，和等你批准的编号清理命令。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
磁盘审计：~/.codex 和 ~/.claude

先出报告。在我批准前什么都不要改。

1. 测量：两个文件夹各跑 du -sh，各自最大的 20 项，以及按月统计的 Codex sessions/ + archived_sessions/。只看大小、数量和日期。绝不打开 auth、config 或聊天文件。

2. 把每一项分到一个类别：
- Keep：auth、config、rules、skills、memories、所有数据库文件
- History：聊天、提示词历史、生成的图片。删了就永久没了
- Work：Codex worktree。有改动或未推送提交的移到 Keep
- Clearable：cache、tmp、debug、trash 文件夹
- Unknown：按 Keep 处理

3. 给出编号命令，每条注明类别和能腾出的 GB。默认只处理 Clearable，跳过最近 24 小时内动过的东西。对 History，提议移到我指定的文件夹或硬盘，或者 gzip 压缩，并说明移走的 Codex 聊天在移回来之前无法重新打开。绝不 rm 历史，绝不 rm -rf worktree，绝不碰数据库。如果有设置能限制增长，指出来：Codex history.max_bytes、Claude Code cleanupPeriodDays。

4. 停下。只运行我批准的编号，然后展示前后对比。
```

## 背景

清理 ~/.codex 之前，先让 Codex 分清哪些可以安全删除，哪些删了会连带你的聊天记录。

我的磁盘满了 96%，于是查了一下：光 ~/.codex 就有 82 GB。

- 54 GB 是归档的聊天，共 3,900 个，最早到去年十一月
- 最大的单个聊天有 2 GB，超过 500 MB 的有 21 个
- 可以安全删除的缓存加起来不到 0.2 GB

要腾出空间，就把这些旧聊天移到外接硬盘，需要时再移回来。

## 来源

来自 [Copybook](https://copybook.page/zh/t/sort-codex-and-claude-folders-before-a-cleanup)：@Voxyz_ai 2026年9月25日[发在 X 上](https://x.com/Voxyz_ai/status/2103529972128211234)，截至 2026年10月23日有 367 次收藏。适用于 Codex。
