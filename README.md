# Claude Code – 5-Minute Quickstart

A short, practical guide to going from zero to productive with **Claude Code** – Anthropic's terminal-based AI coding assistant.

> Built for sharing. Four short sections, copy-pasteable examples, optional PDF.

---

## Why this guide?

The [official docs](https://docs.claude.com/en/docs/claude-code) are excellent but exhaustive. This is the **5-minute version** – just enough to get you working, with real examples instead of flag tables.

**[Download PDF](claude-code-quickstart.pdf)** (built from these docs on each release)

---

## Contents

| # | Section | Time |
|---|---|---|
| 1 | **[Pick a terminal](docs/01-terminal.md)** – Warp on Mac/Win, fallbacks | 2 min |
| 2 | **[Install Claude Code](docs/02-install.md)** – Mac & Windows | 2 min |
| 3 | **[Organize your project](docs/03-folders.md)** – `CLAUDE.md`, `.claude/` | 3 min |
| 4 | **[Try real examples](docs/04-examples.md)** – Analyze, refactor, debug | 5 min |

---

## 30-second demo

After installing, the very first thing worth trying:

```bash
mkdir my-first-claude && cd my-first-claude
# drop any file in this folder – CSV, PDF, log, source code
claude
```

Then ask:

> what's in this folder? give me a one-paragraph summary.

Claude reads the file, summarizes it, and waits for the next instruction. That's the whole loop.

---

## Who is this for?

- Developers who heard "Claude Code is great" and want a fast on-ramp.
- Team leads onboarding new engineers to AI-assisted workflows.
- Anyone who prefers a one-pager over a 30-page guide.

If you want depth – plugins, hooks, MCP, agents – follow the links at the bottom of each section.

---

## Contributing

Translations and corrections welcome. Open a PR with `README.<lang>.md` (e.g. `README.ru.md`, `README.es.md`) or fix a section directly.

## License

[MIT](LICENSE)
