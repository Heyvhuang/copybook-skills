# Claude Code 和 Codex 的协调者 skill

一个会话做不完的活：不写代码的协调者在 Herdr 里分派 Claude 和 Codex 执行者，按批验收后再推。

## 步骤

1. 复制安装命令和第一句提示词。
2. 在终端里跑安装命令，再在项目里把提示词发给 Claude Code 或 Codex。
3. 得到：不写代码的协调者：Herdr 里的 Claude 和 Codex 执行者，按批验收，一批推一次。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 安装命令

```bash
npx skills@latest add https://copybook.page --skill coordinator --skill parallel-goal-fleet
```

## 第一句提示词

```text
你是这次运行的协调者。目标：<完成是什么样，以及证明它完成的检查>。用 Herdr 开 lane。运行目录：../<project>-fleet
```

## 背景

两个 skill 把一个 Claude Code 或 Codex 会话变成协调者，指挥一组在 [Herdr](https://herdr.dev) 里运行的执行者。协调者自己从不写代码：它把工作拆成 lane（一个执行者、一个分支、一份任务说明），给每条 lane 选模型和推理强度，检查交回来的结果，把准备好的 PR 按批一起测试，每批只推一次，只把该你拍板的事交给你。

它提炼自一次为期三天的真实运行：大约 160 个 PR、107 份 lane 任务说明、118 份交接和 166 次按批测试。需要 Herdr 0.9.5 或更高版本、已登录的 Claude Code 和 Codex CLI，以及带 GitHub CLI 的 git 仓库。源码在 [Heyvhuang/copybook-skills](https://github.com/Heyvhuang/copybook-skills/tree/main/standalone/coordinator)，README 写了每个脚本做什么。

自带的模型选择是那次运行的例子。换成你账号里能用的模型，流程照旧。

执行者以全权限运行：启动时没有权限弹窗，能改你的用户账号能改的任何文件、跑任何命令。只在你接受这一点的机器和仓库上用。

## 来源

来自 [Copybook](https://copybook.page/zh/t/coordinator-skill-for-claude-code-and-codex)：@Voxyz_ai 2026年11月16日[发在 X 上](undefined)。适用于 Claude Code 和 Codex。
