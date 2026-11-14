# Codex computer use 当本地 MCP server

Claude Code 缺个好浏览器：ChatGPT 的 computer use 当本地 MCP，点页面、截图，对比线上和本地。

## 步骤

1. 复制提示词，填上线上网址和本地网址。
2. 在 Mac 上发给 Claude Code，它让你重开会话后再发一次。
3. 得到：Claude Code 里的 Opus 5.5 能点页面、截图，对比线上和本地。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
在我的 Mac 上把 Codex 的 computer use 接成你的 MCP server：
1. 如果已经有叫 codex-cu 的 MCP server 而且能用，直接做第 3 步。
2. 否则打开 ~/.codex/plugins/cache/openai-bundled/unified-computer-use/ 里最新版本的 .mcp.json（找不到就在 ~/.codex 下搜含 cua_repl 的 .mcp.json），把 cua_repl 的 command、args、env 原样照抄，用 claude mcp add-json --scope user 注册成 codex-cu。注册完就停下，告诉我重开一个会话，我再把这段发一次。
3. 它只能操作我在 Codex 里授权过的 app。遇到 not approved，告诉我该去 Codex 里授权哪个 app，别换别的 app 绕过去。别用 chrome、in-app browser 这类浏览器后端，把浏览器当普通 app 来操作。
4. 测试：在我授权过的浏览器里新开一个标签页，依次打开 [线上网址] 和 [本地网址，比如 http://localhost:3000]，各截一张图，列出两边哪里不一样。网址没填或本地服务没起来，先问我。不输入密码和 token，不点提交、付款、发送这类按钮，不动我已经打开的其他标签，测完关掉你开的标签。
5. 我确认这些差异后，你去改本地代码，改完再截图对比一次。
```

## 背景

说个暴论，Opus 5.5 最好用的浏览器，是 Codex 的 computer use。我一直以为它只能在 Codex 里用，结果它就是 ChatGPT Mac 版里的一个本地 MCP server，Claude Code 就能接上：Opus 5.5 写代码，顺手用它点页面、截图。

Codex 的 computer use 是我现在最常用的东西之一，速度非常快。我经常拿它做浏览器测试：线上和本地各开一遍，对比哪里不一样，再让它去修。Claude 自带的浏览器我一直用得不顺，现在 Claude Code 里也能用它了。

只能操作在 Codex 里授权过的 app，Terminal 会被直接拦掉。非官方用法，ChatGPT 哪次更新可能就失效了，但现在是真的好用极了。把这段发给 Claude Code。

## 来源

来自 [Copybook](https://copybook.page/zh/t/use-codex-computer-use-in-claude-code)：@Voxyz_ai 2026年10月4日[发在 X 上](https://x.com/Voxyz_ai/status/2106866954908635425)，截至 2026年11月1日有 1,059 次收藏。适用于 Claude Code 和 Codex。
