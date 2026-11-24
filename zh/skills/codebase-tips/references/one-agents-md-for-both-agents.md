# Claude Code 和 Codex 共用的 AGENTS.md

两个 agent 同一套做法：先规划、最小改动、分活、修 bug、做完先验证，每次纠正记进 Lessons。

## 步骤

1. 复制 AGENTS.md，下面那条插件命令给 Claude Code 用户。
2. 存成项目里的 AGENTS.md，已有 CLAUDE.md 就在里面加一行 @AGENTS.md。
3. 得到：Claude Code 和 Codex 都先规划、改动最小、先验证再说做完，并记下每次纠正。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## AGENTS.md

```markdown
# AGENTS.md

Codex 和 Claude Code 共用。这里的每一行都应该改变你的做法。

## 1. 先规划再动手
- 长任务：先用 2-3 句话说说你理解的我想要什么
- 我说可以了再开始
- 把步骤写进 `PLAN.md`，每一步写清你怎么证明它能用
- 同一步失败两次：停下，记下哪里失败了，重新规划
- 中途暂停：留下 `PLAN.md`，让新会话能接着做

## 2. 改动越小越好
- 只做这个任务，能用的别弄坏
- 有取舍时，考虑 UX（用户）、DX（下一个开发者）和 AX（下一个 agent）
- 没人要求的依赖、重命名和重构，一律不做
- 删除或覆盖任何东西之前，先备份

## 3. 用 subagent 分活
- 探索的只读，干活的负责改，审查的只报告、从不动手
- 每个只领一个活、一个完成条件，交一份 5 行的报告
- 可以并行，但两个 agent 不能同时改同一个文件
- 拿某份报告的关键结论往下做之前，先核实一遍

## 4. 自己修 bug
- 先按我的步骤复现。复现不出来，就告诉我你还需要什么
- 修根因，然后把同样的步骤再走一遍
- 别为了让报错消失就把它压掉

## 5. 说做完之前先验证
- 跑测试，自己读输出
- 界面：打开它，试着把它弄坏：空输入、重复提交、刷新
- 没跑的检查就直说。没跑的检查不算通过
- 用 2-3 行汇报：选了什么、放弃了什么、为什么

## 6. 每次纠正都记下来
- 我纠正你的时候，在 Lessons 下面加一行：「遇到 X，就做 Y」
- 同样的错犯了两次，说明那条写得不清楚，重写
- 改 Lessons 以上的内容之前，先问我

## Lessons
<!-- 新的放最上面，不再适用的删掉。 -->
```

## 命令

```text
/plugin install claude-code-setup@claude-plugins-official
```

## Check: Stop hook

```json
{
  "hooks": {
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "grep -q 'stop_hook_active.: *true' && exit 0; npm test >/dev/null 2>&1 && exit 0; echo 'npm test fails. Run it, read the output, then fix it or say it fails before you say done.' >&2; exit 2"
          }
        ]
      }
    ]
  }
}
```

这块检查是 Copybook 为这条技巧写的，2026年11月24日在 Claude Code 2.1.331 上测过。它做什么、加到哪里，按下面这段英文说明：

> When Claude Code stops while `npm test` fails, it is sent back once to run the tests, then fix them or say they fail. Merge it into `.claude/settings.json` and put your test command in place of `npm test`. Copybook wrote and tested it on Claude Code 2.1.331, 24 Nov 2026.

这块检查是 Copybook 写的，不属于这条技巧，加上后会在用户电脑上运行。技巧用上之后再提出来，先给用户看，用户同意才加。

## 背景

Codex 直接读 AGENTS.md，Claude Code 新版在没有 CLAUDE.md 时也会读。已经有 CLAUDE.md 的话，在里面加一行 `@AGENTS.md`。

分六块：

- 先规划再动手
- 改动越小越好
- 用 subagent 分活
- 自己修 bug
- 说做完之前先验证
- 每次纠正都记下来

这份文件越用越好用，你每纠正一次，它就更懂你一点。

原文在图片里，已逐字转录。

Claude Code 用户再装个官方插件。装好以后跟它说：为这个项目推荐自动化。它会扫一遍你的代码库，推荐该加的 hook、skill 和 subagent。

## 来源

来自 [Copybook](https://copybook.page/zh/t/one-agents-md-for-claude-code-and-codex)：@Voxyz_ai 2026年9月30日[发在 X 上](https://x.com/Voxyz_ai/status/2105367927394615364)，截至 2026年10月28日有 1,937 次收藏。适用于 Claude Code 和 Codex。
