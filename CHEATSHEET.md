# Claude Code Cheatsheet

> One page. Print it. Stick it next to your monitor.

---

## Install (one-liner)

| OS | Command |
|---|---|
| Mac / Linux | `curl -fsSL https://claude.ai/install.sh \| bash` |
| Windows (PowerShell) | `irm https://claude.ai/install.ps1 \| iex` |
| Any (npm) | `npm install -g @anthropic-ai/claude-code` |

Verify: `claude --version` · Update: `claude update` · Diagnose: `claude doctor`

---

## Daily commands

| Command | What it does |
|---|---|
| `claude` | Start a session in the current folder |
| `claude "fix the failing test"` | One-shot prompt, then exit |
| `claude -c` | Continue the most recent session |
| `claude --resume` | Pick a past session to resume |
| Ctrl+C | Cancel current step / exit |
| Esc | Interrupt Claude mid-response |

---

## Slash commands (most useful)

| Command | Purpose |
|---|---|
| `/init` | Generate a `CLAUDE.md` for the current repo |
| `/help` | List all commands |
| `/plan` | Plan Mode – propose steps, wait for approval |
| `/clear` | Reset conversation (keeps `CLAUDE.md`) |
| `/review` | Review the current branch / PR |
| `/compact` | Compress long conversation to free context |
| `/cost` | Show token usage and cost so far |
| `/model` | Switch model (Opus / Sonnet / Haiku) |

---

## `CLAUDE.md` skeleton

```markdown
# Project: <name>

## What it is
One paragraph.

## Tech stack
- Language, framework, key libraries

## How to run
- `npm run dev`
- `npm test`

## Conventions
- Code style, naming, commit messages

## Gotchas
- Auth quirks, env vars, flaky tests
```

Keep under 150 lines. Place at repo root. Commit it.

---

## Folder layout

```
project/
├── CLAUDE.md                    # context (commit)
└── .claude/
    ├── settings.json            # team settings (commit)
    ├── settings.local.json      # personal overrides (gitignore)
    ├── commands/                # custom slash commands
    └── agents/                  # project-specific agents
```

---

## Five killer patterns

1. **Drop & analyze** – put a file in a folder, ask "summarize this in three bullets."
2. **Plan before code** – `/plan` for any change touching more than one file.
3. **Test generation** – "write Jest tests for `src/utils/parseDate.ts` covering edge cases."
4. **Stack-trace triage** – paste an error, ask for plain-English diagnosis + fix.
5. **Pre-push review** – `/review` before every `git push`.

---

## When stuck

| Symptom | Try |
|---|---|
| `command not found: claude` | Restart terminal · `which claude` |
| Login loop | `claude logout` then `claude` |
| Conversation feels off | `/clear` or `/compact` |
| Wrong model | `/model` |
| Want to undo Claude's edit | Git: `git diff` then `git checkout -- <file>` |

---

**Full guide:** [README.md](README.md) · **Official docs:** [docs.claude.com](https://docs.claude.com/en/docs/claude-code)
