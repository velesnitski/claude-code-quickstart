# Contributing

Thanks for helping make this a better quickstart.

## Quick guidelines

- **Keep it short.** This guide's whole value is brevity. If you're adding a section, ask whether it earns its place.
- **Show, don't tell.** Prefer copy-pasteable examples over prose.
- **No proprietary references.** No company names, internal hostnames, IPs, real emails, or product names.
- **One-line commits in imperative form.** Example: `docs: clarify Windows install path`.

## Translations

Translations are very welcome. Workflow:

1. Copy `README.md` to `README.<lang>.md` (e.g. `README.ru.md`, `README.es.md`).
2. Copy each `docs/0X-*.md` to `docs/<lang>/0X-*.md` if you're translating the full set.
3. Add a language switcher line at the top of each file.
4. Open a PR.

You don't need to translate everything – partial translations are fine. Mark untranslated sections with `<!-- TODO: translate -->`.

## Reporting issues

- Out-of-date command? Open an issue with a link to the breaking change.
- Found a typo? Just send a PR.
- Got a better example? PR welcome – swap or add to `docs/04-examples.md`.

## Screenshots & GIFs

Place images in `docs/images/`. Naming: `<section>-<what>.png` (e.g. `02-install-mac-success.png`). Compress with [tinypng.com](https://tinypng.com) before committing.

## Building the PDF locally

```bash
pandoc README.md docs/0*.md \
  --metadata title="Claude Code – 5-Minute Quickstart" \
  --pdf-engine=xelatex --toc --toc-depth=2 \
  -o claude-code-quickstart.pdf
```

The same command runs in CI on `v*` tags.
