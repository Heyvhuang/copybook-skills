# GPT-6 Pro plan in Chat, handed to Codex

Plans made blind to your code and logs: connected to ChatGPT, GPT-6 Pro plans from real PRs and records, then briefs Codex.

## Steps

1. Copy the prompt and fill in the brackets.
2. Connect GitHub, and a read-only MCP if needed, then send it to GPT-6 Pro in regular Chat.
3. You get: A plan tied to specific files or records, then a task brief for Codex with acceptance criteria.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
I want to solve [specific problem]. Use the connected [GitHub repository and branch / logs / database] to read the relevant code, recent PRs, and records. Start your response with a brief list of the files and sources you actually read. If you can’t access or verify the requested branch, say so. Analyze the problem against [my goals and constraints], propose a plan, and tie your conclusions to specific files or records. Flag missing information rather than filling the gaps with guesses.

List decisions that need my input separately. Once we agree on the plan, turn it into a task brief for Codex with the scope of changes, supporting evidence, and acceptance criteria. Don’t modify code or data yet.
```

## Background

GPT-6 Pro in regular Chat doesn't use the shared Work and Codex allowance. But it has its own limits: currently, $100 Pro gets 50 messages per week shared with GPT-5.6 Sol Pro, while $200 Pro gets 200 GPT-6 Pro messages per week. OpenAI's notes are at https://help.openai.com/en/articles/20001354-gpt-5-6.

If I just ask “How can I improve my project?”, it doesn't know what I recently changed, where users get stuck, or what errors the server is logging. If I want Pro to help with planning and solution design, I need to give it the information those decisions depend on. For a slow feature, that means the relevant code, recent PRs and actual logs.

Connect those sources directly to ChatGPT: use the existing GitHub connector for your repository, and a read-only MCP for your own logs or database where needed. That's the division of work I want to try: let Pro work through the plan in Chat using real project data, agree on what needs doing, then hand it to Codex to implement and verify.

Once your sources are connected, try it with a real problem.

Plus users can also discuss a plan with a model available in regular Chat before handing it to Codex. Chat has a separate allowance; switching to Work puts you back on the allowance shared with Codex.

## Source

From [Copybook](https://copybook.page/t/plan-with-gpt-6-pro-in-chat-then-hand-off-to-codex): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2099982409701753229) on 15 Sep 2026, 371 saves as of 13 Oct 2026. For Codex.
