# 2. Install Claude Code

> **Time:** 2 min · **Goal:** Run `claude` from anywhere on your machine.

---

## Prerequisites

- A terminal (see [section 1](01-terminal.md))
- An [Anthropic account](https://console.anthropic.com/) or a Claude subscription (Pro / Max / Team)

---

## Mac

The native installer is the recommended path – no Node.js, no `npm`, auto-updates in the background:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Then restart your terminal. Verify:

```bash
claude --version
```

> **Alternative (if you prefer npm):** `npm install -g @anthropic-ai/claude-code`. Requires Node.js 18+.

---

## Windows

**Option A – Native installer (recommended, in PowerShell):**

```powershell
irm https://claude.ai/install.ps1 | iex
```

**Option B – Inside WSL2 / Ubuntu:**

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**Option C – via npm:** `npm install -g @anthropic-ai/claude-code`

Restart your terminal, then `claude --version`.

---

## First run – sign in

In any folder, type:

```bash
claude
```

The first launch opens your browser to sign in. Once authenticated, the token is stored locally – you won't be asked again on this machine.

You'll see a prompt like:

```
> 
```

Type a question or instruction in plain English. Press Ctrl+C to exit.

---

## Updating

Native install updates itself in the background. To force-update:

```bash
claude doctor   # check status
claude update   # if available
```

For npm: `npm update -g @anthropic-ai/claude-code`.

---

## Troubleshooting

| Symptom | Fix |
|---|---|
| `command not found: claude` | Restart your terminal. Check `which claude`. |
| Login loop | Try `claude logout`, then `claude` again. |
| Corporate proxy / firewall blocks login | Use `claude --help` to see proxy env vars, or contact your IT admin. |

---

**Next:** [Organize your project →](03-folders.md)
