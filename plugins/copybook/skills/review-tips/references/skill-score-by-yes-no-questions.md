# Skill score with yes/no questions

Did the skill edit help: 10 real tasks, 8 yes/no questions, a blind judge subagent; keep only a fix that raises the score.

## Steps

1. Copy the prompt and put the skill you want to test in the brackets.
2. Send it to Opus 5.5 in Claude Code.
3. You get: Before-and-after scores for the skill, a new version saved as a new file and the lines it changed.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Run an eval on [skill name], then improve it:
1. Pick 10 real tasks that used it from the session history in ~/.claude/projects, and save the inputs as-is in evals/. If you can't find enough, ask me for more.
2. Write 8 yes/no questions, each checking one thing: 1 if it's done, 0 if it isn't. Show them to me first, and only start after I've edited them.
3. Give each task a fresh subagent with only the skill and that one input. For steps that would post or spend money, write down what they'd do without running them.
4. Use a separate subagent as the judge. It sees only the input and the output, and isn't told which version it's grading. I'll grade all 10 outputs first, and you continue only once the judge agrees with me 90% of the time.
5. Take the question with the lowest pass rate, write two fixes and run each. Keep the higher-scoring one only if that question passes on at least 2 more tasks and no other question drops.
6. Save the new version as a new file. At the end, give me the before-and-after scores and the lines you changed.
```

## Background

Mike Taylor, head of evals at Every and author of O'Reilly's book on prompt engineering, says that if you can use scores to improve your own prompts and skills, you're already in the top 5% of AI users.

Mike only grades with yes/no questions. Say you have a skill that writes tweets. Check what it writes, one item at a time: 1 point for each one it gets right, 0 for each miss. Have another AI answer those questions, but grade a batch yourself first and compare answers with it. If it agrees with you on 9 out of 10, hand the rest over. Then every time you change the skill, rerun the same tasks and compare the scores.

Send this to Opus 5.5 in Claude Code, with the skill you want to test in the brackets.

## Source

From [Copybook](https://copybook.page/t/score-a-skill-with-yes-no-questions-and-improve-it): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2110354944482046278) on 14 Oct 2026, 315 saves as of 11 Nov 2026. For Claude Code.
