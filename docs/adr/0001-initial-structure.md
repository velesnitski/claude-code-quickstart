# ADR 0001 – Initial structure of the quickstart repo

**Status:** Accepted
**Date:** 2026-05-06

## Context

A public marketing-oriented repo to help newcomers get productive with Claude Code in ~5 minutes. The space is crowded (official docs, Cranot/claude-code-guide, FlorianBruniaux/claude-code-ultimate-guide, awesome lists, blog posts), so the repo needs a clear angle to be useful rather than redundant.

## Decisions

1. **Name: `claude-code-quickstart`.** Descriptive and search-friendly; avoids opaque shorthand and keeps the "marketing" framing out of the title (which would erode trust).
2. **Angle: short, visual, copy-pasteable.** Four sections, each ≤5 minutes, with concrete examples instead of flag tables. Differentiator vs. exhaustive guides.
3. **Section order: terminal → install → folders → examples.** Console first because the CLI experience depends on the terminal. Examples last so readers leave with a working setup and a "wow" moment.
4. **PDF generation via pandoc in GitHub Actions.** Markdown stays the source of truth; PDF is auto-built on `v*` tags and attached to the release. No hand-maintained duplicate.
5. **English-only on first release.** Translations deferred to PR contributions (`README.<lang>.md`) to avoid shipping low-quality machine translations.
6. **MIT license, no proprietary references.** Repo must be safe to share publicly.

## Consequences

- Adding new sections requires updating `pdf.yml` to include them in the pandoc invocation.
- The PDF won't render screenshots until images are added under `docs/images/`.
- If the repo grows beyond a quickstart (e.g. into a comprehensive reference), this ADR should be revisited – the "5-minute" framing in the README is load-bearing.
