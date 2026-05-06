# Claude Code – 5-Minute Quickstart

> The shortest path from "what is Claude Code?" to "I'm using it productively."

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![PDF](https://img.shields.io/badge/PDF-download-blue.svg)](../../releases/latest)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

A short, practical guide to **[Claude Code](https://docs.claude.com/en/docs/claude-code)** – Anthropic's terminal-based AI coding assistant. Four sections, ~12 minutes total, copy-pasteable examples, downloadable PDF.

---

## Why this guide?

The space already has [excellent](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) [comprehensive](https://github.com/Cranot/claude-code-guide) guides. They're 10,000+ lines each. Great as references, overwhelming as on-ramps.

**This is the on-ramp.** Read it in 12 minutes. Hand it to a colleague. Print the [cheatsheet](CHEATSHEET.md). Then graduate to the long guides if you want depth.

| | This guide | Other guides |
|---|---|---|
| Length | ~600 lines | 10,000–24,000 lines |
| Time to read | 12 min | hours |
| Format | MD + 1-page PDF | MD + wikis |
| Goal | Get you working | Become an expert |

---

## Contents

| # | Section | Time |
|---|---|---|
| 1 | **[Pick a terminal](docs/01-terminal.md)** – Warp on Mac/Win, fallbacks | 2 min |
| 2 | **[Install Claude Code](docs/02-install.md)** – Mac & Windows | 2 min |
| 3 | **[Organize your project](docs/03-folders.md)** – `CLAUDE.md`, `.claude/` | 3 min |
| 4 | **[Try real examples](docs/04-examples.md)** – Analyze, refactor, debug | 5 min |

Bonus: **[One-page cheatsheet](CHEATSHEET.md)** · **[PDF download](../../releases/latest)**

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

---

## Where to go next

Once you're comfortable with the basics in this guide:

- **Depth & reference** – [Florian Bruniaux's Ultimate Guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide) (4k stars, deep)
- **Living reference** – [Cranot's Claude Code Guide](https://github.com/Cranot/claude-code-guide) (auto-updated every 2 days)
- **Tools & extensions** – [awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) (curated list)
- **Official docs** – [docs.claude.com/en/docs/claude-code](https://docs.claude.com/en/docs/claude-code)

---

## Contributing

- **Translations** – open a PR with `README.<lang>.md` (e.g. `README.ru.md`, `README.es.md`)
- **Corrections** – fix a section directly, send a PR
- **Screenshots** – images in `docs/images/` are very welcome
- See [CONTRIBUTING.md](CONTRIBUTING.md) for details

## License

[MIT](LICENSE) – use freely, including in commercial training material.
