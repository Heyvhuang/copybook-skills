# Cleanup when needed

Keep the host/session, IDs, and paths of resources created for this task. A short note is enough.

- An ongoing quick-review discussion is not finished merely because one answer arrived. Retain the model conversation ID, working directory, routing note, and round outputs for follow-up; stopping an idle runtime is separate from deleting its history. Apply final cleanup when the topic ends or the user requests it.

- Read complete worker results and preserve deliverables before closing their workspaces. If terminal output is incomplete, have that worker write the full result to a file and retrieve it from its host first.
- Remove a task-created worktree once its work is integrated and the checkout is clean. Keep undelivered or modified work and report its path.
- Stop task-created child processes by their recorded identity; do not kill processes by a shared name or port alone.
- Close only task-created browser tabs/task spaces. Preserve user tabs and shared browser services.
- Close owned workspaces and then stop/delete the task-owned Herdr session on its host. In 0.9.0, `workspace_group_close_required` means a primary workspace still has linked worktree workspaces. Close owned children individually; use `workspace close <id> --group` only when every affected workspace belongs to this task and its results are preserved.
- Removing or disabling a saved machine only disconnects the client; remote agents continue running. Do remote cleanup before removing a task-created connection profile, and preserve pre-existing profiles. See [machines.md](machines.md) for host/session routing.
- If cleanup fails or ownership is uncertain, leave that resource in place and mention the specific leftover. Other completed work can still be delivered.

Close browser sessions your workers opened for this task; keep one open when the user needs the live page.
