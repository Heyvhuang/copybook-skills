# Clickable repo map

Before you change a repo: click any module for its callers, dependencies, tests and source evidence; a rule keeps it current.

## Steps

1. Copy the prompt, then the AGENTS.md rule under it.
2. Send the prompt to Codex in your project, and paste the rule into the project's AGENTS.md.
3. You get: A clickable map of your repo in docs/codemap/ that stays in step with the code.

The user chose this tip. The steps above are written for a person; do them for the user.

- Step 1 names the text to use: it is under the heading of that name below. Use it word for word. When there are several, use the ones step 2 names, in its order; if that is not clear, ask.
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
- clicking any module highlights its upstream callers, downstream dependencies, related tests, and the flows it belongs to
- selecting a flow highlights its complete path
- search, filtering, zoom, and drag controls

At the top, show the repo name, generation time, and the commit it was generated from.

2. docs/codemap/codemap.json

Use this structure:

{
  "generated_at": "",
  "generated_from_commit": "",
  "scope": [],
  "nodes": [],
  "edges": [],
  "flows": []
}

Each node must include:

- id
- path
- role
- entrypoints
- tests
- constraints
- evidence

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

These three files must always be generated together from the current repo. Never edit only one of them manually.

Finally, show:

- files created or modified
- stale modules
- remaining unknowns
- validation results
- the complete diff
```

## AGENTS.md rule

```markdown
At the start of every code-changing task, compare the current repo with docs/codemap/codemap.lock.

Before modifying a module, use docs/codemap/codemap.json to answer three questions:

1. What calls it?
2. What does it affect?
3. Which tests cover it?

If the map is stale or cannot answer those questions, regenerate codemap.html, codemap.json, and codemap.lock before changing the code.

Whenever module boundaries, dependencies, routes, databases, queues, or major data flows change, update the code map in the same commit as the code.
```

## Background

Have Codex build a clickable map of your repo, then flag which modules have changed since the map was generated. Click any module to see its callers, dependencies, major flows, related tests and source evidence.

It generates three files that are always regenerated together:

- `docs/codemap/codemap.html`
- `docs/codemap/codemap.json`
- `docs/codemap/codemap.lock`

Then keep the code map in sync with the repo.

## Source

From [Copybook](https://copybook.page/t/have-codex-build-a-clickable-map-of-your-repo): [posted on X by @Voxyz_ai](https://x.com/Voxyz_ai/status/2084645222672154675) on 4 Aug 2026, 2.7K saves as of 1 Sep 2026. Last check: works on Fable 5.1, 28 Oct 2026. For Codex.
