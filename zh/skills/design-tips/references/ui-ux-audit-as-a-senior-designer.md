# 资深设计师视角的 UI/UX 审查

有实权的设计审查：先定审美基线，正确性直接修，能用但显廉价的地方找出来，大改动只提建议。

## 步骤

1. 复制提示词。
2. 在要审查的项目里发给 Claude Code。
3. 得到：一份按影响排序的报告：审美基线、改了哪些地方、大改动的建议和一张正确性表。

用户选了这条技巧。上面的步骤是写给人看的，请替用户做。

- 第 1 步说用哪段文字，它就在下面同名的标题下，一字不改地用。
- 第 2 步说明文字放在哪里。按用户实际要求的范围使用提示词。写文件或运行命令前，先展示改动，等用户同意。这里做不到的步骤（另一个应用、重启、定时任务），把文字交给用户，说明放到哪里。
- 引用示例本身不代表用户同意执行。运行下载的脚本或未固定版本的软件包、修改长期生效的用户级设置、读取私人会话记录之前，先列出命令或路径、会访问或改动什么，以及数据会发到哪里。隐藏密钥值，等用户明确同意这项操作。远程安装脚本应先下载并检查固定版本，或核对可信来源提供的校验值，再执行。
- 方括号或占位符，从用户说的话里填，没有就问。
- 第 3 步是用户最后应该得到的。

## 提示词

```text
act as a senior product designer with real authority over this codebase: you can redesign and restructure, not just patch. your own design judgment is the primary tool.

derive a taste baseline before touching anything:
1. infer product intent in 3 lines: who uses this, for what, what character (tool? editorial? playful? premium?)
2. read the existing design docs, tokens and components as hypotheses to test, not law
3. from 1+2, derive what this product should feel like at its best. judge everything against that, not against trends. gradients, glassmorphism, emoji, decorative motion only if the product's character earns them

walk the core user paths in a real browser at desktop, tablet and phone widths. evaluate on two levels:

A. correctness floor, fix unconditionally: overlap, overflow, clipping, horizontal scroll, contrast, 200% text zoom, keyboard nav, visible focus, modal focus trap and return, labels and roles, touch target size, missing loading/empty/error/disabled states, layout shift

B. design ceiling, use taste to find what works but feels cheap: no focal point, elements fighting for the same weight, copy that explains the system instead of helping the user act, border+shadow+background stacked on one element, drifting type scale, broken spacing rhythm, inconsistent radii, lifeless interactions

three levels of authority:
L1 just do: spacing, type, color token fixes, copy trims, micro-interactions, deleting redundancy
L2 do but isolate: section-level restructures, component merges, one revertible commit each with before/after screenshots
L3 propose only: navigation model changes, removing features, changing the design language itself

if the audit shows the documented design system is itself the problem, revise the docs too, citing the specific page that triggered each change.

deliver a report ranked by impact: the taste baseline you derived, what you improved and why, L2 evidence, L3 proposals, and a correctness table (page, viewport, issue, severity, status).
```

## 背景

一次完整的 UI/UX 审查，让模型当一个有实权的资深设计师。它先推导出一条审美基线，正确性问题无条件修，再用审美找出能用但显得廉价的地方，最大的改动只提建议。

## 来源

来自 [Copybook](https://copybook.page/zh/t/ui-ux-audit-with-a-senior-designer-prompt)：@Voxyz_ai 2026年7月6日[发在 X 上](https://x.com/Voxyz_ai/status/2074129576272310695)，截至 2026年8月3日有 645 次收藏。最近一次检查：发帖当天，Fable 5，可用。适用于 Claude Code。
