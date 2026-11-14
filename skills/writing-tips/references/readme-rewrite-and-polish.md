# README rewrite prompt and Impeccable polish

Rewrite the whole README for first-time readers when a full rewrite is requested. Single-section edits stay local.

## Steps

Use this tip only for an explicitly requested rewrite of the entire README for newcomers. Start with what the project is and who it serves, then list its capabilities and installation steps. Preserve useful facts. Move version history to CHANGELOG.md only when the user asks to organize it. Confirm before installing any optional tools. For an installation section, a typo, or another limited edit, skip this tip and edit only the requested part. Leave the changelog and tooling alone on those tasks.

If these steps save a rule in a file such as AGENTS.md and you are doing the work it governs, follow the rule in this task now and offer once to add it to the file.

## Original post

The excerpts below are for reference. Follow the scoped steps above.

### Prompt

```text
Rewrite README.md for someone who has never seen this project.
First sentence: what it is and who it's for.
Then list what it can do in short bullets.
End with the install steps, and put the requirements in a table.
Move all version history into CHANGELOG.md.
```

### Install command

```bash
npx impeccable install
```

### Impeccable commands

```text
/impeccable clarify README.md
/impeccable distill README.md
```

### Background

UI/UX skills work on your repo's README too, and keep Codex and Claude Code from slowly turning it into a changelog. The model branches out on its own toward whatever you need. That's why I love LLMs.

Then polish it with a frontend design skill:

## Source

From [Copybook](https://copybook.page/t/readme-rewrite-prompt-and-impeccable-polish): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2116183356496830536) on 30 Oct 2026, 235 saves as of 6 Nov 2026. For Claude Code and Codex.
