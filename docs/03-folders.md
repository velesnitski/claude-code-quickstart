# 3. Organize Your Project

> **Time:** 3 min · **Goal:** Set up a folder so Claude Code understands your project the moment you open it.

The single biggest productivity boost is a `CLAUDE.md` file. Two minutes of writing saves you from re-explaining context every session.

---

## The two `CLAUDE.md` files

| File | Scope | Purpose |
|---|---|---|
| `~/.claude/CLAUDE.md` | **Global** – every project | Your personal preferences, coding style, tone |
| `<project>/CLAUDE.md` | **Project-specific** | What this codebase is, how it's built, gotchas |

Both are loaded automatically when you run `claude` inside that directory.

---

## Recommended project layout

```
my-project/
├── CLAUDE.md              # context for Claude (commit this)
├── .claude/
│   ├── settings.json      # team-shared settings (commit)
│   ├── settings.local.json # personal overrides (gitignore)
│   ├── commands/          # custom slash commands
│   └── agents/            # project-specific agents
├── src/
└── README.md
```

Add `.claude/settings.local.json` to `.gitignore`.

---

## A good `CLAUDE.md` template

```markdown
# Project: <name>

## What it is
One-paragraph summary of what this project does.

## Tech stack
- Language / framework / key libraries
- Database, message broker, anything non-obvious

## How to run
- `npm run dev` (or whatever)
- `npm test`

## Conventions
- Code style (e.g. "we use functional React, no class components")
- Naming, formatting, commit message style

## Gotchas
- Things a new contributor would hit – auth quirks, env vars, flaky tests
```

Keep it under 150 lines. Long `CLAUDE.md` files dilute attention.

---

## Useful slash commands to know

Once inside `claude`:

| Command | What it does |
|---|---|
| `/help` | List all commands |
| `/init` | Auto-generate a starter `CLAUDE.md` for the current repo |
| `/clear` | Reset the conversation (keeps `CLAUDE.md`) |
| `/plan` | Enter Plan Mode – Claude proposes a plan before editing |
| `/review` | Review the current branch / PR |

Tip: run `/init` in a new repo as your first action. It generates a draft you can polish.

---

**Next:** [Try real examples →](04-examples.md)
