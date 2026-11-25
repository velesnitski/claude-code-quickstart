# ADR 0004 – claude.dev as a second source

**Status:** Accepted
**Date:** 2026-11-25

## Context

[claude.dev](https://claude.dev/) is a blog of tips and playbooks from Anthropic's developers. It covers practice that the reference docs state only briefly: verification, review before pushing, and how to choose a model.

## Decision

- Link claude.dev from the README (both languages), the cheatsheet and steps 4 and 5.
- Take three beginner-level points into `docs/05-best-practices.md`: a `verify` skill, "raise effort before switching model", and "write a rule down after the second correction".
- Do not list model names. The guide states the order of escalation and links to the post, because model line-ups change with every release.
- Advanced material from the posts (`/ship`, PR watching, approvals policies) stays out, per ADR 0002.

## Consequences

- Two sources to re-check on each refresh: the official best-practices page and claude.dev.
- The page footer of claude.dev does not state its operator. The guide describes it by its own tagline.
