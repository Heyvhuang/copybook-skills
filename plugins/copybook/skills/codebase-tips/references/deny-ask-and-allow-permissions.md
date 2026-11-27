# Claude Code permissions: deny, ask and allow commands

Claude deleted a config that 'looked unused': risky commands blocked, pushes ask first, routine ones run, deny always wins.

## Steps

1. Copy the permissions config.
2. Put it in .claude/settings.json in your project, then edit the lists to fit it.
3. You get: Claude Code can't run what you deny, asks before what you list under ask, and runs what you allow.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## .claude/settings.json

```json
{
  "permissions": {
    "deny": [
      "Bash(rm -rf*)",
      "Bash(*--force*)",
      "Edit(.env*)",
      "Edit(*.pem)"
    ],
    "ask": [
      "Bash(git push*)",
      "Bash(npm publish*)",
      "Edit(src/config/*)"
    ],
    "allow": [
      "Bash(npm run*)",
      "Bash(git commit*)",
      "Bash(git add*)",
      "Read(**)"
    ]
  }
}
```

## Background

One day, Claude was fixing a bug and casually deleted a config file that "looked unused." That file was the secret key reference entry for the production environment.

I spent half an hour configuring .claude/settings.json after that.

Priority: deny > ask > allow. Deny is highest. If a command matches deny, it won't execute even if allow also matches.

Array-valued settings like permission lists merge across scopes rather than replacing each other. So a deny rule at the user level (~/.claude/settings.json) and another at the project level (.claude/settings.json) both apply.

I deny business risks at the project level, like deleting migrations. I deny safety baselines at the global level, like executing rm -rf. Two layers, maintained independently.

## Source

From [Copybook](https://copybook.page/t/tighten-claude-code-permissions-with-deny-ask-allow): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2036863425905586265) on 25 Mar 2026, 662 saves as of 24 Oct 2026. For Claude Code.
