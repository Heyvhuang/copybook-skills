# Scope Guard：不让小任务越做越大的规则

改个配置就搭框架、修个 bug 就加一层：够用的最小改动，复用现有代码，扩大范围先问你。

## 步骤

1. 复制 Scope Guard 规则。
2. 贴进项目最上层的 AGENTS.md。
3. 得到：agent 用最小的改动做完小任务，要扩大范围先问你。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## AGENTS.md 规则

```markdown
# Scope Guard

Complete the current task with the minimum sufficient change.

## Before editing

- Read the relevant code, tests, and configuration directly. Do not work from search snippets or guesses.
- If the requirement is ambiguous or the premise is unverified, resolve that before building on it.
- State a minimal plan:
  - **Outcome** — the exact behavior requested
  - **Non-goals** — what this task will not do
  - **Files** — the smallest set expected to change
  - **Proof** — the check that will prove the change works
- Start with one implementation path. Split work only when the task has genuinely independent parts.

## While editing

- Reuse existing code, helpers, patterns, and test setup before adding anything new.
- Fix bugs at the root cause. Do not stack patches around a wrong premise.
- Add an abstraction, adapter, or config layer only for a second real caller
  in this task or a stated requirement.
- Preserve behavior outside the requested change.
- Do not design for rare or future cases nobody asked about.
- Remove code you replace. Keep an old path only when compatibility is an explicit requirement.

## Pause and confirm

Read-only discovery is always allowed. If the task has not already authorized it, get approval before:

- Materially expanding the scope or touching unrelated files
- Adding a dependency, framework, service, or new test infrastructure
- Changing a public API, schema, storage format, or wire format
- Deleting or overwriting user data, discarding uncommitted work, rewriting history, or dropping data
- Keeping two implementations of the same behavior alive

## Testing

- Run the narrowest existing tests that exercise the changed behavior.
- Extend the most relevant existing test before creating a new test file.
- Add a test only when changed user-observable behavior is not covered, or when the user asks for one.
- Each new test must protect a clear acceptance criterion or regression risk.
- Do not backfill unrelated coverage or introduce test infrastructure for this task alone.
- Do not use passing tests as justification for extra abstractions or scope.

## If the plan grows

Stop when the work starts adding future-use layers, workaround stacks,
unrelated cleanup, or tests for unstated behavior. Rewrite a smaller plan
and confirm the new scope.

## Done means

- The requested behavior works and the acceptance criteria are met
- Relevant checks pass, with the exact commands and results reported
- Every touched file is necessary and the diff contains nothing unrelated
- No debug code, backup copies, dead paths, or scratch files remain
- Assumptions, limitations, and unverified runtime behavior are stated plainly
```

## 背景

Codex Sol 有个坏习惯：把小任务做成大系统。让它改个配置，它搭了一个框架。让它修个 bug，它又加了一层 adapter。

把这些规则加进你的 AGENTS.md。

## 来源

来自 [Copybook](https://copybook.page/zh/t/scope-guard-rules-for-agents-md)：@Voxyz_ai 2026年8月30日[发在 X 上](https://x.com/Voxyz_ai/status/2094039936475484393)，截至 2026年9月27日有 2,058 次收藏。适用于 Claude Code 和 Codex。
