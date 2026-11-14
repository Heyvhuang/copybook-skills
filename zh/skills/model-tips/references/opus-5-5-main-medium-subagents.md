# Opus 5.5 主模型配 medium subagent

想让额度撑久一点：主模型换成 Opus 5.5，默认 subagent 用 medium，改前先找出写死的模型 ID。

## 步骤

1. 复制环境变量和 subagent 设置，再复制提示词。
2. 设好环境变量，两行写进每个 subagent 定义，提示词发给 Claude Code。
3. 得到：subagent 换成 Opus 5.5 medium，改之前先列出写死的模型 ID。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 环境变量

```bash
CLAUDE_CODE_SUBAGENT_MODEL=opus
```

## 每个 subagent 定义里

```yaml
model: opus
effort: medium
```

## 提示词

```text
检查这个项目，以及 ~/.claude 下的 settings、agents 和 skills：

1. 所有 subagent 定义，把 model 改成别名 opus，effort 设成 medium。需要更高档位的 subagent 单独列出来，写明理由。
2. AGENTS.md、CLAUDE.md、skill 和脚本里写死的模型 ID，比如 claude-opus-5、claude-fable-5-1，能换成别名 opus 的换掉；写死 Fable 的逐个判断，拿不准的标出来让我决定。
3. 看有没有设置 CLAUDE_CODE_EFFORT_LEVEL 这类环境变量，它会盖过 subagent 自己的 effort。

先给我看清单和改法，我确认后再动文件。最后在 AGENTS.md 里加一条：同一个问题连续两次没解决，就停下来告诉我试过什么、为什么失败，由我决定要不要切到 Fable。
```

## 背景

想让额度撑久一点，主模型可以直接换成 Opus 5.5。它的标价只有 Fable 5.1 的 40%，跑分还反超了：Artificial Analysis 综合指数 58 比 53。

subagent 也该一起换。我建议默认 subagent 用 Opus 5.5 medium：官方编程测试里，medium 的分数不输 max，成本不到 max 的五分之一。读代码、查文档、跑测试这类活，用不上更高的档位。

用别名 opus 的地方会自动跟着升级，写死模型 ID 的不会。把下面这段丢给 Claude Code，让它先审一遍再改：

改完用 `/tasks` 看一下，每个 subagent 实际跑的是哪个模型。

## 来源

来自 [Copybook](https://copybook.page/zh/t/switch-claude-code-to-opus-5-5-with-medium-subagents)：@Voxyz_ai 2026年9月23日[发在 X 上](https://x.com/Voxyz_ai/status/2102775004723351811)，截至 2026年10月21日有 437 次收藏。最近一次检查：发帖当天，Opus 5.5，可用。适用于 Claude Code。
