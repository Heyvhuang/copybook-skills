# Archify: system diagrams from code

A system you have to explain: an HTML diagram you can search, trace up and downstream, compare across versions, export as PNG.

## Steps

1. Copy the install command, then the template or the full system diagram prompt.
2. Run the command in a terminal, then give Codex or Grok Bot the template or prompt in your repo.
3. You get: A searchable HTML diagram of your system that traces paths up and downstream, exported as PNG.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Install Archify globally

```bash
npx skills add tt-a1i/archify -g
```

## Template

```text
Turn [CODEBASE / FEATURE / WORKFLOW] into a [DIAGRAM TYPE] diagram. Choose from Architecture, Workflow, Sequence, Data Flow, or Lifecycle.
```

## Prompt: full system diagram

```text
Then read this repo and use Archify to generate a system diagram.

Choose the diagram type that best fits what I need to understand: Architecture, Workflow, Sequence, Data Flow, or Lifecycle.

Keep the 8-12 most important components and one primary path. Label external services, databases, and component connections clearly. Put supporting details in cards instead of adding more edges to the main diagram.

Generate and verify a standalone HTML file. Confirm that component search and upstream/downstream tracing work, then export a high-resolution 2400 × 1260 PNG.
```

## Background

If I could give Codex or Grok Bot just one skill for drawing system diagrams, I'd pick Archify. It already has 29K+ stars on GitHub, and I now use it by default whenever I need to map a system.

Once installed, your agent can:

- Create one self-contained HTML file and export it as PNG, SVG or video
- Search for any component and trace its upstream and downstream paths
- Compare before and after versions side by side to see what was added, removed or rearranged

## Source

From [Copybook](https://copybook.page/t/draw-system-diagrams-with-the-archify-skill): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2093677504179400946) on 29 Aug 2026, 1.6K saves as of 26 Sep 2026. For Codex and Grok.
