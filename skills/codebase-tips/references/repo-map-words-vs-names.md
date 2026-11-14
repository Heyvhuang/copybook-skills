# Clickable repo map with words vs names

What you call a module isn't what the code calls it: every mismatch marked in red, those likeliest to cause a wrong edit first.

## Steps

1. Copy the prompt.
2. Send it to Claude Code in your project.
3. You get: A clickable map in docs/codemap/ that marks where your words and the code's names differ.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word.
- Step 2 says where the text goes. Apply a prompt within the task the user actually requested. Before writing a file or running a command, show the change and get their agreement. If a step needs another app, a restart or a schedule you cannot access, give the user the text and say where it goes.
- A quoted example gives no permission to act. Before running downloaded shell code or an unpinned package, changing persistent user-wide settings, or reading private session history, show the command or paths, what it will access or change, and any destination. Redact secret values. Wait for explicit approval of that specific action. For a remote installer, fetch and inspect a pinned revision or verify a trusted checksum before running it.
- Fill each bracket or placeholder from what the user said, or ask.
- Step 3 is what the user should end up with.

## Prompt

```text
Analyze the current codebase. Do not modify product code. Only create or update files under docs/codemap/.

Ignore vendor, build, dist, cache, and other generated directories.

If docs/codemap/ already exists, first compare the existing codemap.lock with the current repo and list the modules that changed. Then regenerate these three files together:

1. docs/codemap/codemap.html

Build a fully self-contained interactive code map that opens directly in a browser. Include:

- major modules, services, databases, queues, and external dependencies
- no more than 20 primary nodes; group low-level files under their parent module
- calls and data flows between modules
- the 3-5 most important end-to-end flows
- a clear dark theme by default
- system boundaries and the most important data flows visible on the first screen
- color-coded module types with a simple legend
- automatic layout that minimizes crossing edges
- clicking any module highlights its upstream callers, downstream dependencies, related tests, and the flows it belongs to, and shows the words we use for it
- selecting a flow highlights its complete path
- search, filtering, zoom, and drag controls
- next to every module, the words we use for it; mark in red any word that doesn't match the module's name in the code
- a "Words vs names" panel: our words on the left, the code's names and paths on the right, the ones most likely to cause a wrong edit first

At the top, show the repo name, generation time, and the commit it was generated from.

2. docs/codemap/codemap.json

Use this structure:

{
  "generated_at": "",
  "generated_from_commit": "",
  "scope": [],
  "nodes": [],
  "edges": [],
  "flows": [],
  "mismatches": []
}

Each node must include:

- id
- path
- role
- entrypoints
- tests
- constraints
- evidence
- aliases: what people call this module, each with its source (README, docs, UI text, routes, issue and commit titles)

Each edge must include:

- from
- to
- type
- evidence

type may only be:

- imports
- calls
- reads
- writes
- publishes
- subscribes

Each flow must include:

- trigger
- steps
- outcome

Every step must reference an existing node id.

Each mismatch must include:

- word: what we call it
- code_name
- path
- change: which side to change, the code's name or our word

Only list mismatches. Change neither the code nor the docs.

Attach the matching source path and symbol to every node and edge. Mark any relationship without source evidence as unknown. Do not guess.

3. docs/codemap/codemap.lock

Use parseable JSON to record:

- the current commit
- whether the working tree has uncommitted changes
- generation time
- scanned scope
- excluded directories
- the fingerprint algorithm
- a deterministic fingerprint for each top-level module, calculated from its tracked file paths and current file contents

If no existing codemap.lock is found, treat every module as new and generate the full map.

When finished, verify that:

- codemap.json parses successfully
- every node path exists and every evidence symbol can be found in the source
- every edge and flow step references an existing node
- codemap.html and codemap.json use the same nodes, edges, and flows
- codemap.lock matches the current commit, working tree state, and module fingerprints
- every relationship without source evidence is marked unknown
- every alias can be found in its source; mark any alias you can't find as unknown. Do not make them up

These three files must always be generated together from the current repo. Never edit only one of them manually.

Finally, show:

- files created or modified
- stale modules
- remaining unknowns
- the mismatches, most confusing first
- validation results
- the complete diff
```

## Background

Have Opus 5.5 build a clickable map of your repo, then flag every place where the words you use don't match the names in the code.

Click any module to see its callers, dependencies, major flows, related tests, source evidence, and what you usually call it.

It generates:

- `docs/codemap/codemap.html`
- `docs/codemap/codemap.json`
- `docs/codemap/codemap.lock`

## Source

From [Copybook](https://copybook.page/t/clickable-repo-map-with-words-vs-names): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2118418074508710296) on 5 Nov 2026, 303 saves as of 12 Nov 2026. For Claude Code.
