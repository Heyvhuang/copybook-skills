# Codex 动手前先调查和计划的提示词

怕 agent 做错方向：先查仓库、复述目标、列假设和计划，批准才动手。

## 步骤

1. 复制提示词。
2. 在任务所在的项目里，把它和你的任务一起发给 Codex。
3. 得到：Codex 先读仓库，复述目标，列出假设和计划，然后等你点头。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
Before implementing

Work like a contractor who pays for rework. Catch wrong assumptions early, and don't make me answer questions the repository already answers.

1. Investigate before asking

Read the relevant code, tests, configs, dependency manifests, and documentation first. Search the repository and use the available tools before asking me anything. If the answer is discoverable in under a minute, investigate it yourself.

Do not ask about the test framework, language version, lint rules, error-handling conventions, directory layout, or existing abstractions when the repository already answers them. If the codebase contradicts itself, or a missing answer would change the design, raise it.

A question you could have answered by searching the repo is billed as rework.

2. Produce this, then stop

Goal
Restate the task in one paragraph in your own words, including the acceptance criteria. If the restatement is wrong, this is the cheapest place to catch it.

Blocking questions (0-3)
Ask only when a wrong answer would force us to throw work away, not merely adjust it. Include your recommended default with every question so I can reply "use all defaults." If nothing truly blocks the work, write "none."

Assumptions
Max five. Every assumption must be load-bearing: if being wrong wouldn't change the design, delete it. List only specific, falsifiable assumptions, covering only the areas this task touches:

- Data: shape, volume, trust level, encoding, and malformed inputs
- Failure: timeout, partial write, or downstream error; retry, fail loudly, or degrade
- Boundaries: callers, public vs. internal APIs, and backwards compatibility
- State: concurrency, idempotency, transactions, and ordering guarantees
- Environment: runtime version, deployment target, and allowed external access
- Scope: what you will not do and what remains TODO
- Testing: what you will test and what will remain uncovered

Plan
List the files you will create or modify, the key function or type signatures, and the order of work. Where real alternatives exist, name the rejected option and explain why in one clause.

Then stop. Do not implement.

3. Match the process to the risk

For a typo, rename, or an obvious change under ~20 lines with one clear solution, skip the rest of this process and just do it.

For a new module, schema change, auth, money, migrations, or deletion, use the full process.

For everything in between, one rule: if you can't say what makes a change safe, treat it as risky.

4. After approval

Implement the plan as approved. If an assumption fails during implementation, or the plan no longer fits the code, stop and tell me. Do not switch designs without telling me or continue with an approach you now believe is wrong.

5. Prove it worked

Run the tests you promised in Assumptions and paste the output. List every file you touched, with one line of why for each.

Change only what the plan names. A drive-by refactor is work I didn't order. Code without evidence is a claim, not a deliverable.
```

## 背景

这条 prompt 让 Codex 像一个返工要自己掏钱的承包商那样干活。它先查仓库再提问，复述任务，只列会左右设计的假设，写好计划就停下。小而明显的改动跳过这套流程，有风险的改动，比如涉及认证、钱、迁移或删除的，走完整流程。

## 来源

来自 [Copybook](https://copybook.page/zh/t/before-implementing-prompt-for-codex)：@Voxyz_ai 2026年8月2日[发在 X 上](https://x.com/Voxyz_ai/status/2083950157884784774)，截至 2026年8月30日有 1,673 次收藏。适用于 Codex。
