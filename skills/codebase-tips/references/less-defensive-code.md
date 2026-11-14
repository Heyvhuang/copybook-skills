# Less defensive code: 4 AGENTS.md rules

Even a tiny change gets null checks at every layer: Codex checks data once where it comes in, then just uses it.

## Steps

1. Copy the AGENTS.md rules.
2. Add them to the AGENTS.md in your project.
3. You get: Codex checks data once where it comes in, inlines one-off logic and skips try/catch wherever it can.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md rules

```markdown
- Validate unknown values once at the boundary that owns them. Pass typed values inward instead of repeating `typeof value === "object"` and property-existence checks.
- Do not defensively revalidate values already guaranteed by a schema, constructor, or internal type.
- Do not extract single-use helpers preemptively. Inline the logic at the call site unless the helper is reused, hides a genuinely complex boundary, or has a clear independent name that improves the caller.
- Avoid `try`/`catch` where possible
```

## Background

Codex writes code way too defensively. Even a tiny change gets null checks at every layer.

Spell it out for Codex: check data once where it comes in, then just use it. Write one-off logic right where it's used instead of splitting it into a function ahead of time. Skip try/catch wherever you can.

The team behind a 220K-star open-source coding agent on GitHub wrote these rules into their own AGENTS.md.

## Source

From [Copybook](https://copybook.page/t/stop-codex-writing-code-too-defensively): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2115198100465697038) on 27 Oct 2026, 1.4K saves as of 3 Nov 2026. For Codex.
