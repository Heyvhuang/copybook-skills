# Setup check: OpenAI's 5 cheap-harness rules

Is your setup as cheap as OpenAI's harness: pass or fail on each of its 5 rules, with the file and the one thing to change.

## Steps

1. Copy the prompt.
2. Paste it into whichever agent you use, in your project.
3. You get: Pass or fail for each rule, the exact file or entry, and the one thing to change.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
read through this project's agent config. that includes mcp settings, skills, plugins, hooks and rules files. judge it against these five, one at a time. keep the results separate:

1. how many tools and skills load at the start, and which of those have never been called in this project
2. is there a cap on tool output. which tool has returned the biggest payload, and roughly how many tokens
3. does anything rewrite or inject into context that has already been sent, like stamping the current time every turn, re-reading a rules file mid session, or editing the system prompt on the fly
4. is the tool list in the same order across two starts
5. is any permission or approval policy written into a tool description

trace each one: pass or fail, the exact file or entry, and the one thing to change. if you can't find it, say you can't find it. don't make it up.
```

## Background

OpenAI published the five rules that keep their own agent harness cheap:

- Deferred discovery: MCP tools, skills and plugins don't all load at the start. The model only sees them when they're needed.
- Tool output is capped at 10,000 tokens by default. The model has to ask for a different limit.
- Everything the model can see is append only. New messages, tool results and environment updates go on the end, never back into earlier context.
- Tools are presented in a fixed order.
- Runtime settings like approval policy get applied at execution time instead of being written into the tool definitions.

The last three all keep the prompt prefix byte for byte identical, which is what keeps the cache hitting. They credit Codex and ChatGPT Work's high cache hit rate to that design.

The prompt works in any agent.

## Source

From [Copybook](https://copybook.page/t/check-your-agent-setup-against-openais-five-cache-rules): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2082582856182989263) on 29 Jul 2026, 715 saves as of 26 Aug 2026. For Claude Code and Codex.
