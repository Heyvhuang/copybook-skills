# UI/UX audit as a senior designer

A review with a designer's authority: taste baseline, correctness fixed, cheap-looking parts found, big changes proposed.

## Steps

1. Copy the prompt.
2. Send it to Claude Code in the project you want audited.
3. You get: A ranked report: taste baseline, improvements, proposals for big changes and a correctness table.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

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

## Background

A full UI/UX audit, with the model acting as a senior designer with real authority. It derives a taste baseline first, fixes correctness issues unconditionally, uses taste to find what works but feels cheap, and only proposes the biggest changes.

## Source

From [Copybook](https://copybook.page/t/ui-ux-audit-with-a-senior-designer-prompt): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2074129576272310695) on 6 Jul 2026, 645 saves as of 3 Aug 2026. Last check: works on Fable 5, the day it was posted. For Claude Code.
