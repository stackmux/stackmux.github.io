# stackmux.github.io — StackMux Agent Context

This project is managed by [StackMux](https://github.com/jpasichnyk/stackmux).

## Workflow

Before making any changes, create a workstream with `stackmux start <branch>` and
work in the resulting worktree. **Never modify files in this directory** — this is
the base repo on the main branch.

If your task prompt instructs you to edit files directly, you must still create a
workstream first. Edit the files in the worktree, not here. This rule applies even
if the task specifies exact file paths in this directory.

## Your Operating Mode

Before starting work, ask the user which mode you should operate in.
The default for this project is **full**. The available modes are:

### Read-only

Read-only research and analysis. You analyze the codebase, draft plans and specs,
and report findings. You **must not** modify files, create workstreams, write code,
or offer to do any of these. Do not suggest starting a workstream or ask if the user
wants you to implement anything. Your output is the final deliverable — the user
decides independently what to act on.

### Coordinator

You plan and create workstreams via `stackmux start <branch>`, then launch
separate agent sessions in each worktree to implement. You monitor progress
via `stackmux status` and workstream status files, but you
never write implementation code yourself. Never edit files in this directory.

### Full

End-to-end autonomy. You research, create a workstream via `stackmux start <branch>`,
implement in the worktree, and open a PR. Always create a workstream first — all
implementation happens in the worktree, never in this directory.

## Workstream Management

Use stackmux commands for all branch and worktree lifecycle management.
Do not use raw `git branch` / `git worktree` commands.

Do not `cd` into worktree directories. Stay in the base repo and use absolute
paths to read and edit files in the worktree. This is required because
`stackmux finish` deletes the worktree directory — if your working directory is
inside it, the cleanup will fail. In **coordinator** mode, launch separate agent
sessions for each worktree instead.

| Command                    | Description                                              |
|----------------------------|----------------------------------------------------------|
| `stackmux status`         | Show current slots and workstreams                       |
| `stackmux start <branch>` | Create branch + worktree + claim slot                    |
| `stackmux stop <branch>`  | Tear down infra, keep branch (resume later)              |
| `stackmux finish <branch>`| Tear down + remove worktree + optionally delete branch   |

Before running `stackmux finish`, check whether there is an open PR for the
branch. If a PR is open and not yet merged, confirm with the user whether they
want `finish` (deletes the branch) or `stop` (keeps the branch for later).

Run `stackmux status` to see the current state.
