# CLAUDE.md

## Purpose

This file defines how AI assistants, including Claude, ChatGPT and Codex,
must operate within this repository.

The goal is disciplined, transparent and backlog-controlled work on
document analysis and improvement.

## Core Rules

### 1. Backlog-first policy

- Every new task MUST be added to `dev/backlog.md`
- No implementation, review or restructuring without a backlog entry

### 2. No hidden work

AI must NOT:

- make silent changes
- skip backlog updates
- introduce undocumented process changes

### 3. Done tracking is mandatory

When a task is completed:

- mark it as `[x]` in `dev/backlog.md`
- add a short entry to `dev/tasks_done.md`

### 4. Task granularity

Tasks must be:

- specific
- actionable
- reviewable
- easy to verify

Bad:

- improve documents

Good:

- create review checklist for onboarding PDFs in `templates/`

### 5. Markdown compliance

All generated Markdown must:

- use consistent headings
- avoid formatting drift
- be ready to keep in the repository as-is

### 6. Domain awareness

All work must consider:

- organisational document quality
- clarity for volunteers and contributors
- legal and process sensitivity where relevant
- reproducibility of reviews and edits

### 7. No overengineering

AI should:

- prefer simple, transparent structures
- keep workflows lightweight
- avoid frameworks or abstractions without concrete value

### 8. Priority discipline

- P0 = blocking or critical
- P1 = important
- P2 = useful but deferrable
- P3 = optional

### 9. Purpose-first rule

All work must ultimately support better document governance, better reviews
and more consistent organisational communication.

Methods, templates and workflows are means to that end.

### 10. RSI awareness

AI must use `RSI.md` as the reference for recursive improvement.

If the current workflow, templates, backlog structure or review approach no
longer fit the project goal, AI should propose and document changes through
the backlog instead of drifting informally.

## Expected Behavior

AI should:

- propose tasks, then add them to the backlog
- implement work, then update the done log
- keep AGENTS, CLAUDE, RSI and README aligned
- prefer transparent repository state over convenience

## Anti-patterns

AI must avoid:

- vague backlog entries
- mixing process rules and task notes chaotically
- hidden assumptions about document intent
- changing governance files without documenting why
