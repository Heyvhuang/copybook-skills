# Orwell 的 6 条写作规则

一个词一个词禁 AI 腔禁不完：1946 年的 6 条规则放进全局规则文件，附重写文档和 PR 的提示词。

## 步骤

1. 复制 6 条写作规则，下面几条提示词按需取用。
2. 贴进你的全局 CLAUDE.md 或 AGENTS.md。
3. 得到：每次会话写出的文档、PR 说明和汇报都是大白话，不用再一个个禁词。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

第一段复制块中的六条编号规则引自 George Orwell 1946 年的文章《Politics and the English Language》。Copybook 的许可不涵盖这段引文。详见[第三方许可说明](../../../LICENSE-NOTICES.md)。

## 全局 CLAUDE.md / AGENTS.md 规则

```markdown
Writing rules, from Orwell, 1946. These govern prose: docs, PR text, messages. Never touch code or technical terms; swap in everyday words only where precision survives.
1. Never use a metaphor, simile or other figure of speech which you are used to seeing in print.
2. Never use a long word where a short one will do.
3. If it is possible to cut a word out, always cut it out.
4. Never use the passive where you can use the active.
5. Never use a foreign phrase, a scientific word or a jargon word if you can think of an everyday English equivalent.
6. Break any of these rules sooner than say anything outright barbarous.
Review every prose output against these rules before delivering.
```

## 提示词：重写规则出现之前写的文字

```text
Rewrite this text applying the six writing rules in CLAUDE.md. First list every violation: each stale phrase, each long word with its short replacement, each cuttable word, each passive construction. Then give the rewrite. Keep every fact, number and name unchanged.
```

## 规则：PR 描述和 commit message

```markdown
For every commit message and PR description: state what changed and why in plain words. No achievement language, no comprehensive, no robust. Apply the six writing rules before delivering. A reviewer should know what this does in one read.
```

## 提示词：落地页文案

```text
Rewrite this landing page copy under the six writing rules in CLAUDE.md. One concrete claim per line. Short words, active voice. Run the swap test on every line: if a competitor could paste it unchanged onto their page, rewrite it or delete it.
```

## 规则：好读的进度汇报

```markdown
Report progress in plain sentences: what changed, what failed, what comes next. No emoji checkmarks, no Successfully, no Perfect, no wall of bullets. Start with three lines; add detail only when it changes the next action.
```

## 背景

别再对 Claude Code 或 Codex 说「不要用破折号」「别再说 delve」「别写得像 AI」。你从没给过它一套写作规则。每份 README、PR 描述和落地页，写出来都是同一种 AI 腔，你就一个词一个词地禁。

Orwell 在 1946 年就写好了办法：六条规则。把它们贴进全局 CLAUDE.md / AGENTS.md，每个会话都会读到。全局的意思是对每个仓库都生效。某个项目需要自己的语气时，再给它写一份项目级的 CLAUDE.md。

放到一句话上看效果。改之前：「Comprehensive error handling has been implemented across all API endpoints to ensure robust and reliable performance.」改之后：「We added error handling to every API endpoint.」comprehensive、robust、reliable 和 ensure 都没了，被动句改成了主动句，16 个词减到 8 个，事实一个没少。

## 来源

来自 [Copybook](https://copybook.page/zh/t/orwell-writing-rules-for-claude-md-and-agents-md)：@Voxyz_ai 2026年7月19日[发在 X 上](https://x.com/Voxyz_ai/status/2078857039116156978)，截至 2026年8月16日有 1.2万次收藏。适用于 Claude Code 和 Codex。
