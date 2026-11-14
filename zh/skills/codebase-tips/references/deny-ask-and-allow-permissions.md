# deny、ask、allow 权限规则

顺手删过「看起来没用」的配置：危险命令直接拦，push 和发布前先问，日常放行，deny 永远优先。

## 步骤

1. 复制这份权限配置。
2. 放进项目的 .claude/settings.json，再按项目改这几个列表。
3. 得到：deny 里的操作 Claude Code 做不了，ask 里的先问你，allow 里的直接跑。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## .claude/settings.json

```json
{
  "permissions": {
    "deny": [
      "Bash(rm -rf*)",
      "Bash(*--force*)",
      "Edit(.env*)",
      "Edit(*.pem)"
    ],
    "ask": [
      "Bash(git push*)",
      "Bash(npm publish*)",
      "Edit(src/config/*)"
    ],
    "allow": [
      "Bash(npm run*)",
      "Bash(git commit*)",
      "Bash(git add*)",
      "Read(**)"
    ]
  }
}
```

## 背景

有一天，Claude 在修 bug，顺手删了一个「看起来没用」的配置文件。那个文件是生产环境密钥的引用入口。

之后我花了半小时配好 .claude/settings.json。

优先级：deny > ask > allow。deny 最高。一条命令只要匹配 deny，就算也匹配 allow，也不会执行。

权限列表这类数组设置会跨层级合并，而不是互相覆盖。所以用户级（~/.claude/settings.json）的一条 deny 和项目级（.claude/settings.json）的另一条 deny 都会生效。

业务风险我在项目级 deny，比如删 migrations。安全底线我在全局 deny，比如执行 rm -rf。两层，各自维护。

## 来源

来自 [Copybook](https://copybook.page/zh/t/tighten-claude-code-permissions-with-deny-ask-allow)：@Voxyz_ai 2026年3月25日[发在 X 上](https://x.com/Voxyz_ai/status/2036863425905586265)，截至 2026年10月24日有 662 次收藏。适用于 Claude Code。
