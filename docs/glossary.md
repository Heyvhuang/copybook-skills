# Glossary

The terms these tips use, in plain words, each with an example.

[copybook.page/glossary](https://copybook.page/glossary) · [中文](glossary.zh-CN.md)

[A](#agent) · [B](#backend) · [C](#cache) · [D](#diff) · [E](#effort) · [F](#frontend) · [G](#git) · [L](#lint-rule) · [M](#mcp) · [P](#plugin) · [Q](#quota) · [R](#repo) · [S](#seo) · [T](#terminal) · [V](#vibe-coding)

## Agent

An AI that does a job for you on its own: it reads files, runs commands and makes changes, then reports back.

For example: Claude Code and Codex are agents. You describe the task, and they work through it in your project.

## AGENTS.md

A text file at the top of your project with standing instructions that Codex and other agents read before they start any task there.

For example: Add a Scope Guard to AGENTS.md and the agent keeps small tasks small in every session in that repo.

## API

A way for one program to use another over the internet. The Claude API lets your own app send requests to Claude, paid per token.

For example: One tip has Claude Code step your costliest Claude API call down to cheaper models while accuracy holds.

## Backend

The part of an app that runs on a server, out of sight: the data, the accounts, the payments and the logic behind each button.

For example: One tip keeps Fable on planning and frontend work and sends the backend to Codex.

## Cache

A short-term memory of the conversation so far, so the model skips reading it all again: replies come back faster and count less against your limits.

For example: On a subscription, the main conversation's cache lasts 1 hour, while subagents get 5 minutes.

## Claude Code

Anthropic's coding agent. It runs in a terminal, a desktop app or your code editor, and works on the files in your project.

For example: Most tips on copybook.page are a prompt you paste into Claude Code or Codex, in the folder of the project you want changed.

## CLAUDE.md

The rules file Claude Code reads before it starts work. The global one in ~/.claude applies to every project; one in a project applies only there.

For example: Paste Orwell's six writing rules into your global CLAUDE.md and every session writes in plain words.

## Codex

OpenAI's coding agent. It works on your project from a terminal, your code editor or the Codex app, and follows the rules in AGENTS.md.

For example: Add a Scope Guard to AGENTS.md and Codex keeps small tasks small.

## Command

A line of text that tells a program to do one thing. Some run in a terminal; others start with a slash inside an agent, such as /goal or /plugin.

For example: npx skills add installs a skill from a terminal, while /advisor fable is typed inside Claude Code.

## Commit

A saved snapshot of changes to a repo, with a short message that says what changed and why.

For example: The code map rule tells the agent to update the map in the same commit as the code.

## Config

Short for configuration: the settings a tool reads when it starts, such as which model it uses. On copybook.page, these tips are under Settings.

For example: The line model: opus in a subagent's definition is config that decides which model that helper runs on.

## Context

Everything the model can see at once while it works: your messages, the files it has read and its own notes. It has a size limit.

For example: Every rule file, skill and message an agent reads takes up room in its context.

## Diff

A view of exactly what changed: the lines taken out and the lines added.

For example: Many prompts here ask the agent to show you the diff and wait before it writes anything.

## Dry run

A practice pass that shows what would change, without changing anything.

For example: The computer clean-up prompt lists what slows your machine as a dry run, and removes nothing until you approve each item.

## Effort

How hard a model thinks before it answers, from low to max. More effort takes longer and uses more of your quota.

For example: One tip runs subagents on Opus 5.5 at medium effort: reading code and running tests don't need more.

## Frontend

The part of an app people see and use: the pages, buttons and forms, and how they look and move.

For example: Give Opus 5.5 eight frontend reference sites and it knows where to look before it designs.

## Git

The tool that records every change to a repo, so you can see who changed what, compare versions and go back.

For example: The code map's lock file records the Git commit it was built from, so the agent can tell when the map is out of date.

## /goal

A command that gives an agent one long objective to work through until it is done.

For example: Five /goal prompts spend leftover Codex quota on a full audit, a code map or a cleanup before the quota resets.

## Lint rule

An automatic check that flags a known mistake in code as soon as it is written.

For example: Turn the mistakes an agent keeps repeating into lint rules, and it fixes its own code from the error message.

## Localhost

Your own computer, used as a web address. A page at localhost runs on your machine, and only you can open it.

For example: codebase-memory shows its map of your repo at localhost:9749.

## MCP

Model Context Protocol: a standard plug that connects an agent to an outside tool or service. On copybook.page, these tips are Connectors.

For example: codebase-memory is an MCP server. Once it is set up, the agent asks it about your repo instead of opening files one by one.

## Model

The AI itself, the part that reads and writes, such as Opus 5.5, Fable 5.1 or GPT-6.1 Sol. An agent like Claude Code runs on the model you pick.

For example: One tip makes Opus 5.5 do the work and calls Fable in before a plan, on a repeat error and before it says done.

## Plugin

A bundle you add to Claude Code or Codex in one step. It can bring skills, commands, helper agents and connectors together.

For example: One /plugin install command adds Epic's Unreal Engine plugin, and Claude Code can then edit Blueprints in your open editor.

## PR

Pull request: a set of proposed changes that someone reviews before they join the main code.

For example: Turn the comments a reviewer keeps leaving on your PRs into AGENTS.md rules.

## Prompt

The message you send an AI to tell it what to do. On copybook.page, a prompt is text you copy and paste into the chat as it is.

For example: Paste the "before implementing" prompt into Codex and it reads the repo and writes a plan before it changes anything.

## Quota

How much your plan lets you use an agent before the limit resets, usually every few hours or every week.

For example: Switching Claude Code's main model to Opus 5.5 makes your quota last longer: its listed price is 40% of Fable 5.1's.

## Repo

Short for repository: a project's folder of files, together with the full history of its changes, kept by Git.

For example: Have Codex build a clickable map of your repo before you change anything.

## Rules

Standing instructions an agent reads at the start of every session, kept in a file such as AGENTS.md or CLAUDE.md, so you never repeat them.

For example: A Scope Guard in AGENTS.md is a set of rules: from then on the agent keeps small tasks small.

## SEO

Search engine optimisation: making pages that Google can find and rank, so people arrive from a search.

For example: Build a free tool on its own page and let it bring users to your product from Google.

## Session

One conversation with an agent, from your first message until you close it or start fresh. Rules files are read again at the start of each one.

For example: Claude Code keeps a log of every session, and one tip turns a week of them into a calendar.

## Skill

A folder of instructions (and sometimes scripts) that an agent loads when a task calls for it, so it knows how to do that kind of job well.

For example: Install a design skill once, and the agent follows it whenever you ask for a page, without you pasting the instructions again.

## Status line

The line along the bottom of Claude Code that shows the model and other live details. You choose what it shows.

For example: Add a cache countdown to the status line to see how many minutes the cache has left.

## Subagent

A helper the main agent sends off with its own fresh context to do one part of the job, reporting back when done. On copybook.page, these tips are Helper agents.

For example: Before shipping, four subagents can each try to break a different part of your app while the main agent waits for their reports.

## Terminal

The text window where you type commands to your computer: Terminal on a Mac, PowerShell on Windows.

For example: Install commands such as npx skills add run once, in a terminal.

## Token

The small unit AI models read and bill in, about a word or part of one. Prices and usage limits are counted in tokens.

For example: codebase-memory answers structural questions about your repo with 10x fewer tokens than reading file by file.

## Vibe coding

Building software by describing what you want to an AI and keeping what it writes, without reading the code closely.

For example: Before you ship a vibe-coded site, have five subagents check it for 20 things.
