# One-way door rules for AGENTS.md: when to ask

Questions you'd only rubber-stamp: work you can undo done and shown after, a stop at anything you can't undo.

## Steps

1. Copy the AGENTS.md rules.
2. Add them to the AGENTS.md in your project.
3. You get: Questions saved for taste and product calls only you can make, one at a time, with a recommendation.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## AGENTS.md rules

```markdown
Walk through two-way doors and show me after. Stop at one-way doors.

Two-way door: anything you can undo. Code, branches, PRs, test data, dev infra.
One-way door: anything you can't. Prod data, deploys to users, force-pushing a shared branch, deleting what you didn't make, a message sent to another person.

If my answer would be a rubber stamp, don't ask. If running something could answer the question, run it instead. Save questions for taste and product calls only I can make. Ask one at a time, with your recommendation, using your built-in question tool.
```

## Check: PreToolUse hook

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "command -v jq >/dev/null || { echo '{\"hookSpecificOutput\":{\"hookEventName\":\"PreToolUse\",\"permissionDecision\":\"ask\",\"permissionDecisionReason\":\"This check needs jq to read the command, so it asks every time.\"}}'; exit 0; }; jq -sc 'if length != 1 then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} else .[0] | if (.tool_name | type) != \"string\" then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} elif .tool_name != \"Bash\" then empty elif (.tool_input.command | type) != \"string\" or (.tool_input.command | test(\"\\\\S\") | not) then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"This check could not read the command, so it asks.\"}} elif (.tool_input.command | test(\"(?:^|[\\\\s;&|(`/])git(?:\\\\s+(?:-[cC]\\\\s+\\\\S+|--?[A-Za-z][\\\\w-]*(?:=\\\\S+)?))*\\\\s+push(?:\\\\s[^;&|\\\\n]*?)?\\\\s[\\\"\\\\x27]?(?:--force(?:-with-lease|-if-includes)?(?:=\\\\S*)?|-[A-Za-z]*f[A-Za-z]*|\\\\+\\\\S+)(?=$|[\\\\s;&|)\\\"\\\\x27])|(?:^|[\\\\s;&|(`/])vercel(?:@\\\\S*)?(?:\\\\s[^;&|\\\\n]*?)?\\\\s[\\\"\\\\x27]?(?:--prod(?:=\\\\S*)?|--target(?:=|\\\\s+)[\\\"\\\\x27]?production|promote)(?=$|[\\\\s;&|)\\\"\\\\x27])\")) then {hookSpecificOutput: {hookEventName: \"PreToolUse\", permissionDecision: \"ask\", permissionDecisionReason: \"One-way door: a force push or a production deploy. Asking first.\"}} else empty end end' || echo '{\"hookSpecificOutput\":{\"hookEventName\":\"PreToolUse\",\"permissionDecision\":\"ask\",\"permissionDecisionReason\":\"This check could not read the command, so it asks.\"}}'"
          }
        ]
      }
    ]
  }
}
```

Claude Code asks you before a Bash command force-pushes (`--force`, `-f`, `--force-with-lease`, `--force-if-includes` or a `+` refspec such as `origin +main`) or deploys to production with Vercel (`--prod`, `--target production` or `vercel promote`), and also when it cannot read the command it is given. It reads only the command Claude Code runs, so a push or deploy inside a script or a git alias goes through, and so does deleting a branch; those still rest on the rules. Needs `jq` (built into macOS 15 and later); without it, it asks before every command. Merge it into `.claude/settings.json`. Copybook wrote and tested it on Claude Code 2.1.331, 24 Nov 2026.

This check is Copybook's, not part of the tip, and runs on the user's machine once added. Offer it once the tip is in place, show it, and add it only if the user says yes.

## Background

Vibecoders, I'm begging you, add this to your AGENTS.md.

## Source

From [Copybook](https://copybook.page/t/walk-through-two-way-doors-stop-at-one-way-doors): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2121672008421568810) on 14 Nov 2026, 257 saves as of 21 Nov 2026. For Claude Code and Codex.
