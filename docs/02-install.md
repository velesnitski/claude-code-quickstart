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

**Which option should I pick?**

- **Option A (native, PowerShell)** – simplest, recommended for most. Works in Windows Terminal, PowerShell, Warp.
- **Option B (WSL2)** – best if you already use WSL or work mostly with Linux toolchains.
- **Option C (npm)** – pick this only if you already manage Node.js globally.

---

**Option A – Native installer (recommended, in PowerShell):**

```powershell
irm https://claude.ai/install.ps1 | iex
```

> **If PowerShell blocks the script** (`running scripts is disabled on this system`), run this once:
> ```powershell
> Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
> ```
> Then retry. This is the standard Windows policy for installers.

**Option B – Inside WSL2 / Ubuntu:**

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

**Option C – via npm:** `npm install -g @anthropic-ai/claude-code` (requires Node.js 18+)

Restart your terminal. Verify with:

```powershell
claude --version
```

> **Note:** the first time you run `claude`, it opens your default browser to sign in. If you're on a remote/RDP machine without a browser, copy the URL from the terminal output and open it on your local machine – the auth token will sync back.

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
| `command not found: claude` (Mac/Linux) | Restart your terminal. Check `which claude`. |
| `claude is not recognized` (Windows) | Restart your terminal. Check `where claude`. If empty, the PATH wasn't updated – sign out / sign in. |
| `running scripts is disabled` (Windows) | `Set-ExecutionPolicy -Scope CurrentUser RemoteSigned` once, then retry. |
| Login loop | Try `claude logout`, then `claude` again. |
| Corporate proxy / firewall blocks login | Use `claude --help` to see proxy env vars, or contact your IT admin. |
| Antivirus flags the installer (Windows) | Allow the file in your AV's quarantine. The installer is signed by Anthropic. |

---

**Next:** [Organize your project →](03-folders.md)
