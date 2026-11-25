# ADR 0003 – November 2026 refresh and a best-practices page

**Status:** Accepted
**Date:** 2026-11-25

## Context

The guide was last updated in May 2026. Claude Code has changed since then, and several statements became wrong for a beginner:

- New sessions start in auto mode, so "nothing changes without your yes" no longer holds.
- `/review` is gone in favour of `/code-review`; `/cost` is an alias of `/usage`.
- Skills live at `.claude/skills/<name>/SKILL.md`, not as a single file.
- Undo is `/rewind`, not a manual git checkout.
- The official docs moved to `code.claude.com/docs`.
- The official best-practices page now lists advice that current models made unnecessary.

## Decision

- Correct every page against the official docs as of 2026-11-25 and stamp the date on the cheatsheet and the new page.
- Add `docs/05-best-practices.md`: six habits and a short "old advice you can drop" table. It links out to the official page for depth.
- Raise the length budget from ADR 0002 from 1,000 to 1,100 lines. The time budget stays at 15 minutes.
- `README.ru.md` mirrors the README changes; the step pages stay English-only as before.

## Consequences

- The dated stamp makes staleness visible. Re-check the guide when the official best-practices page changes.
- The hero image is a drawn terminal, not a real capture, and needed no change. The examples in step 4 still show `[y/N]` questions; those are Claude asking in conversation, not permission prompts.
- The PDF workflow now includes the new page.
