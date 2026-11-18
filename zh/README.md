# copybook-zh

按情景替你的 coding agent 挑技巧（中文版）：一个会自己加载的 skill 从 142 条提示词、规则和设置里选一条，照着做。来自 @Voxyz_ai 在 X 上被读者收藏最多的帖子。

首个公开版本：[1.0.0](../CHANGELOG.md)，2026年11月14日，134 条技巧。

```text
/plugin install copybook-zh --marketplace Heyvhuang/copybook-skills
```

装好后打开 `/plugin` → **Marketplaces** → **copybook**，选 **Enable auto-update**。只需开一次，以后 Claude Code 启动时会检查更新。

装好后输入 `/copybook-zh:copybook`，说你要做什么，它会从全部 142 条技巧里挑一条直接用上；你做的事对得上某条时，agent 也会自己用上。全部技巧和其他 agent 的装法见[中文说明](https://github.com/Heyvhuang/copybook-skills/blob/main/README.zh-CN.md)。

Copybook 原创的技巧正文、说明和译文采用 [CC BY 4.0](LICENSE-CONTENT)。使用时请注明 Copybook（@Voxyz_ai），附上来源和许可链接，并标明所作修改。第三方引文不在这份授权范围内，详见 [Orwell 引文许可说明](LICENSE-NOTICES.md)。清单、配置和其他原创非文字素材采用 [MIT 许可](LICENSE)，分发副本时请保留版权和许可声明。

## 更新

下面的命令用于 user 范围的安装；其他范围按原安装范围更新。刷新后新开会话，检查已装版本，并把 router 和一条技巧的文件与已发布 tag 中同语言的文件对照。skills.sh 版运行[更新命令](../README.zh-CN.md#cursorcopilotgemini-cli-等)，检查更新后的 commit 和文件。ChatGPT 用 Sync now 并检查导入报告；ZIP 版要重新上传。改了什么见[更新记录](../CHANGELOG.md)。

### Claude Code

```bash
claude plugin marketplace update copybook
claude plugin update copybook-zh@copybook --scope user --json
claude plugin list --json
```

### Codex

```bash
codex plugin marketplace upgrade copybook
codex plugin add copybook-zh@copybook
codex plugin list --json
```

旧安装在首个公开版本发布后无法刷新时，先备份本地改动，记下每个 Copybook 插件及其安装范围。移除 Copybook 插件市场，从同一仓库重新添加，再装回需要的插件。移除插件市场可能会卸载其中的插件。然后新开会话，核对已装版本和文件。

```bash
claude plugin marketplace remove copybook
claude plugin marketplace add Heyvhuang/copybook-skills
claude plugin install copybook-zh@copybook --scope user
```

```bash
codex plugin remove copybook-zh@copybook
codex plugin marketplace remove copybook
codex plugin marketplace add Heyvhuang/copybook-skills
codex plugin add copybook-zh@copybook
```

## English

First public release: [1.0.0](../CHANGELOG.md), 14 Nov 2026, 134 tips.

This is the Chinese edition of Copybook's skills: the same 142 tips as the `copybook` plugin, with their steps and text in Chinese and their commands, paths and numbers checked against the English. Install it in place of `copybook`, then type `/copybook-zh:copybook` and say what you want to do. Every tip and the other ways to install are in the [README](https://github.com/Heyvhuang/copybook-skills/blob/main/README.md).

Copybook’s original skill text, instructions and translations are licensed under [CC BY 4.0](LICENSE-CONTENT). Credit Copybook (@Voxyz_ai), link to the source and license, and indicate any changes. Third-party quotations are excluded from this grant. See the [Orwell quotation notice](LICENSE-NOTICES.md). Manifests, configuration and other original non-text assets use the [MIT License](LICENSE). Keep its copyright and permission notice with copies.
