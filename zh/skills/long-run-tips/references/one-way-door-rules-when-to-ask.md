# AGENTS.md 单向门规则：什么时候该问

只需要你走个过场的提问：撤得回的先做完再给你看，撤不回的先停下。

## 步骤

1. 复制 AGENTS.md 规则。
2. 加进项目里的 AGENTS.md。
3. 得到：问题留给只有你能拍板的品味和产品决定，一次一个，附上建议。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## AGENTS.md 规则

```markdown
双向门走过去，事后给我看。单向门前停下。

双向门：任何能撤回的事。代码、分支、PR、测试数据、开发环境的基础设施。
单向门：任何撤不回的事。生产数据、面向用户的部署、强推共享分支、删除不是你创建的东西、发给别人的消息。

如果我的回答只会是走个过场的同意，就别问。如果跑一下就能回答这个问题，就去跑，别问。把问题留给只有我能拍板的品味和产品决定。一次只问一个，带上你的建议，用你内置的提问工具问。
```

## Check: PreToolUse hook

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "command -v jq >/dev/null || { echo '{\"hookSpecificOutput\":{\"hookEventName\":\"PreToolUse\",\"permissionDecision\":\"ask\",\"permissionDecisionReason\":\"This check needs jq to read the command, so it asks every time.\"}}'; exit 0; }; jq -sc 'if length != 1 then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} else .[0] | if (.tool_name | type) != \"string\" then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} elif .tool_name != \"Bash\" then empty elif (.tool_input.command | type) != \"string\" or (.tool_input.command | test(\"\\\\S\") | not) then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} elif (.tool_input.command | test(\"(?:^|[\\\\s;&|(`/])git(?:\\\\s+(?:-[cC]\\\\s+\\\\S+|--?[A-Za-z][\\\\w-]*(?:=\\\\S+)?))*\\\\s+push(?:\\\\s[^;&|\\\\n]*?)?\\\\s[\\\"\\\\x27]?(?:--force(?:-with-lease|-if-includes)?(?:=\\\\S*)?|-[A-Za-z]*f[A-Za-z]*|\\\\+\\\\S+)(?=$|[\\\\s;&|)\\\"\\\\x27])|(?:^|[\\\\s;&|(`/])vercel(?:@\\\\S*)?(?:\\\\s[^;&|\\\\n]*?)?\\\\s[\\\"\\\\x27]?(?:--prod(?:=\\\\S*)?|--target(?:=|\\\\s+)[\\\"\\\\x27]?production|promote)(?=$|[\\\\s;&|)\\\"\\\\x27])\")) then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"One-way door: a force push or a production deploy. Asking first.\"}} else empty end end' || echo '{\"hookSpecificOutput\":{\"hookEventName\":\"PreToolUse\",\"permissionDecision\":\"ask\",\"permissionDecisionReason\":\"This check could not read the command, so it asks.\"}}'"
          }
        ]
      }
    ]
  }
}
```

这块检查是 Copybook 为这条技巧写的，2026年11月24日在 Claude Code 2.1.331 上测过。它做什么、加到哪里，按下面这段英文说明：

> Claude Code asks you before a Bash command force-pushes (`--force`, `-f`, `--force-with-lease`, `--force-if-includes` or a `+` refspec such as `origin +main`) or deploys to production with Vercel (`--prod`, `--target production` or `vercel promote`), and also when it cannot read the command it is given. It reads only the command Claude Code runs, so a push or deploy inside a script or a git alias goes through, and so does deleting a branch; those still rest on the rules. Needs `jq` (built into macOS 15 and later); without it, it asks before every command. Merge it into `.claude/settings.json`. Copybook wrote and tested it on Claude Code 2.1.331, 24 Nov 2026.

这块检查是 Copybook 写的，不属于这条技巧，加上后会在用户电脑上运行。技巧用上之后再提出来，先给用户看，用户同意才加。

## 背景

做 vibe coding 的朋友，求你们了，把这段加进 AGENTS.md。

## 来源

来自 [Copybook](https://copybook.page/zh/t/walk-through-two-way-doors-stop-at-one-way-doors)：@Voxyz_ai 2026年11月14日[发在 X 上](https://x.com/Voxyz_ai/status/2121672008421568810)，截至 2026年11月21日有 257 次收藏。适用于 Claude Code 和 Codex。
