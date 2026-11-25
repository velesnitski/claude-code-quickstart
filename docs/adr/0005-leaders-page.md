# ADR 0005 – A page for CTOs and team leads

**Status:** Accepted
**Date:** 2026-11-25

## Context

The guide served people who write content or code. Leaders have a different first use: not producing work, but seeing what needs their attention across chat, email, the tracker and the code host. The same agent does this, and nothing in the guide showed how.

## Decision

- Add `docs/06-for-leaders.md`: three copy-paste prompts (daily pulse, anomaly sweep, blind spots), a way to extract your own rules, an autonomy ladder, and a short safety list for teams.
- Keep it tool-neutral: it names kinds of sources, not products.
- State the limits plainly: it frees the leader's time, it does not by itself improve the team's output.
- Raise the length budget from ADR 0003 to 1,200 lines. The page is optional reading, so the 15-minute path through steps 1 to 5 is unchanged.

## Consequences

- The audience widens, which pulls against ADR 0002. Further role pages should be refused; this is the only one.
- The thresholds in the anomaly sweep are starting values. Readers are expected to change them.
- The safety list simplifies plan differences and links to the pricing page for the facts.
