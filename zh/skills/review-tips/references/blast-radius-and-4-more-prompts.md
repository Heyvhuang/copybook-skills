# 影响范围、红队等 5 条让模型判断的提示词

只说「修这个 bug」只拿到默认答案：影响范围、并行目标、红队计划、真实用户走查、思考预算。

## 步骤

1. 复制 5 条提示词里合你任务的那一条。
2. 填好方括号，在项目里发给 Codex 或 Claude Code。
3. 得到：模型自己做判断，不再只给你默认答案。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。有几段时，用第 2 步点名的那几段，按它的顺序；看不出来就问用户。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词：影响范围

```text
i'm about to change [file/module]. don't write any code yet.
use codebase memory to map the repo into one graph, read my uncommitted diff, map every change to the functions it touches, and return: each function, its downstream blast radius, and a risk level.
once it's ranked by risk, act at three levels of authority:
L1 low risk, just do it: local, covered by tests.
L2 medium risk, isolate it: one revertible commit per change, with before/after.
L3 high risk, propose only: anything touching an interface, data, or a shared dependency, give me the plan, don't touch it.
then tell me where it's most likely to break before i merge.
```

## 提示词：并行目标

```text
i have a few independent tasks to push at once: [task A], [task B], [task C].
for these, set yourself an end-to-end goal: take the whole plan to done, until architecture, implementation, tests, review and the final result all clear the bar. split the goal into independent parts, spawn as many parallel agents as it takes to finish faster, and give each agent its own goal with its expected deliverable, verification and done criteria. schedule them in parallel, keep tracking progress, synthesize what comes back, resolve conflicts, keep implementing, verify live after every important step, review when it matters, commit when it's ready, and give a final summary. verification has to cover the real end-to-end path, including browser/computer use, clicks, keyboard, and whatever else it takes. don't stop after partial progress unless you're blocked by missing credentials, destructive ambiguity, or conflicting requirements.
```

## 提示词：给你的计划做红队

```text
before you write the first line of this plan, be my red team. your judgment is the primary weapon. treat my plan as a hypothesis to attack.
first play my plan back in full to confirm you got it right, then open fire.
assume it already failed six months from now and work backward to the three most likely reasons: which assumption i took as true without checking, which failure case i never considered, where i got optimistic to save effort, and whether there's a simpler way to the same goal.
for each, give the trigger, the cost, and one minimal experiment that could falsify it early.
end with a verdict: ship it / run which experiment first then ship / tear it down.
```

## 提示词：真实用户走查

```text
open [url] with browser/computer control and actually walk each of these real user paths end to end, no reading the code and guessing: [sign up], [checkout], [change settings].
at every step really click, type, wait, screenshot, and log anything that would trip up someone opening it for the first time: slow loads, errors, copy that makes no sense, buttons you can't find, unclear state, data lost on back.
output a report ranked by severity, each with repro steps + the root cause you judge + a suggested fix, then fix it yourself and walk it again to confirm no regression.
treat me as someone opening it for the first time who's never read the code.
```

## 提示词：思考预算

```text
don't rush to solve. first set the budget: is this a quick lookup, medium reasoning, or deep thinking that may need an experiment to verify, and say why you judged it that way.
before you start, lay it out: what information you're missing, where i wasn't clear, and the single most fragile hidden assumption here.
once i confirm, solve at the level you set; on the deep ones, give intermediate results step by step so i can stop you anytime.
don't paper over a two-hour problem with a two-second answer, and don't write an essay for a one-lookup question.
```

## 背景

别一上来就说「做这个功能」「修这个 bug」「重构一下」。天天这么喂，它就天天给你默认答案，你再一行行挑毛病。它会判断，你却只让它打字。

「你是专家」「一步一步想」「不要编造」这类老句子也删掉。新模型自己会规划、自查、回头重读，这些句子只会把它拉回老做法。

## 来源

来自 [Copybook](https://copybook.page/zh/t/five-prompts-that-let-the-model-judge)：@Voxyz_ai 2026年7月8日[发在 X 上](https://x.com/Voxyz_ai/status/2074894179000311845)，截至 2026年8月5日有 1,411 次收藏。适用于 Claude Code 和 Codex。
