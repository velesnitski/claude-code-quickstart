# ADR 0002 – Positioning vs. existing guides

**Status:** Accepted
**Date:** 2026-05-06

## Context

The space has two dominant guides:

- **[Cranot/claude-code-guide](https://github.com/Cranot/claude-code-guide)** – 2.6k stars, "auto-updated every 2 days," exhaustive reference (~10k+ lines). Bloated; quick answers buried.
- **[FlorianBruniaux/claude-code-ultimate-guide](https://github.com/FlorianBruniaux/claude-code-ultimate-guide)** – 4.2k stars, 24k+ lines, 48 Mermaid diagrams, 271-question quiz. Educational depth; high barrier to entry.

Plus [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) (42k stars) which dominates the curated-list category.

## Decision

Position this repo as the **on-ramp**, not the reference:

- Length budget: < 1,000 lines total across all docs.
- Time-to-read budget: ≤ 15 minutes for the full guide.
- Content rule: every section earns its place by passing the test "would a beginner be blocked without this?"
- Linking strategy: link *out* to the long guides instead of duplicating their depth. They're better at depth; we're better at first 12 minutes.

The README explicitly cites and links to competitors – complement, don't compete.

## Consequences

- Resist scope creep. PRs that add depth get rejected with a pointer to the long guides.
- The cheatsheet (`CHEATSHEET.md`) absorbs requests for "more reference info" without bloating the guide.
- If the long guides ever shrink to a comparable size, our differentiator weakens – revisit positioning then.
