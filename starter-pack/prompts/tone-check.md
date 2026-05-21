# Tone-check and tighten existing copy

**When to use:** A draft uses "leverage", "ecosystem", or other words your CLAUDE.md bans. You want a clean edit, not a rewrite.

**Copy this into Claude:**

```text
Read <path/to/draft.md>. Find every banned phrase from CLAUDE.md.

For each:
- Quote the original line.
- Propose a one-line replacement that keeps the same meaning.
- Don't change voice, structure, or the writer's argument.

Show me the list. Apply nothing yet — I'll say yes or no per line.
```

**Tip:** Add `Also flag anything that reads as filler (e.g. "in today's fast-paced world").` to widen the net beyond the banned list.
