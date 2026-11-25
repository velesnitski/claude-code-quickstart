# 5. Best Practices

> **Time:** 3 min · **Goal:** Six habits that decide whether Claude gets it right the first time.
>
> **Checked against the official docs on 25 November 2026.** Claude Code changes fast. If something here looks off, trust the [official best practices](https://code.claude.com/docs/en/best-practices).

---

## The big idea

Out of the box, a plain prompt in a fresh session usually does the right thing. When it doesn't, the cause is almost always one of four:

| What went wrong | Why | Fix |
|---|---|---|
| Claude built something different from what you meant | It's missing information that isn't in your files | Habit 1 and 2 |
| Claude said "done" and it wasn't | It had no way to check its own work | Habit 3 |
| Claude did something that must never happen | A prompt is a request, not a guarantee | Habit 6 |
| It worked, but took too long or cost too much | The session carried too much history | Habit 4 |

---

## Habit 1 – Tell Claude what it can't see

Claude reads your folder. It can't read your head.

- **Say who it's for and what you'll do with the result.** "Summary for the leadership update tomorrow, three themes, one slide" beats "summarize this".
- **Name the files.** Type `@` and the file name to point Claude at it.
- **Not sure what you want?** Ask Claude to interview you first: *"Ask me questions until you can write a brief, then write it."*

## Habit 2 – Keep `CLAUDE.md` short

`CLAUDE.md` is loaded into every session, so every line costs a little attention on every task.

- **Write only what Claude can't work out from the files:** voice rules, banned phrases, who approves what, how to check the work.
- **Add anything you've had to correct twice.**
- **Stay under 200 lines.** Run `/doctor` and Claude suggests what to cut.
- **Personal preferences go in `CLAUDE.local.md`** (add it to `.gitignore`), not in the shared file.

## Habit 3 – Give Claude a check to run

Claude stops when the work *looks* done. Give it something that comes back pass or fail, and it will fix its own mistakes before you ever see them.

- **For content:** *"After writing, re-read against the banned list in CLAUDE.md and fix every hit. Show me the list of what you changed."*
- **For code:** *"Run the tests after, and keep going until they pass."*
- **Always ask for evidence:** the command it ran and the output, not just "all good".
- **Want a second opinion?** `/code-review` reviews the changes with a fresh pair of eyes that never saw your conversation.

## Habit 4 – One task, one session

- **`/clear` between unrelated tasks.** A focused session gives better answers and costs less.
- **Coming back later?** `/rename launch-emails` names the session; `claude --resume launch-emails` picks it up.
- **Quick side question?** `/btw what does this flag do` answers without cluttering the session.
- **Check what you're spending:** `/usage`.

## Habit 5 – Steer early

Watch the first minute. That's when a wrong direction is cheapest to fix.

| Key | What it does |
|---|---|
| `Esc` | Stops Claude mid-action. Nothing is lost, you redirect. |
| `Esc` `Esc` or `/rewind` | Rolls the files, the conversation, or both back to an earlier point. |
| `/clear` | Starts over. After two failed corrections, do this and write one better prompt. |
| `Shift+Tab` | Switches mode: auto, Manual (asks before every change), Plan (plan first). |

> `/rewind` only restores files Claude edited itself. For real safety, keep your project in git.

## Habit 6 – Repeat it? Make it a skill. Must never happen? Make it a rule.

- **A prompt you reuse** becomes a **skill**: a small file at `.claude/skills/<name>/SKILL.md`. You call it with `/<name>`, and Claude can pick it up by itself when the task fits.
- **A rule with no exceptions** ("never edit `/assets`") does not belong in a prompt or in `CLAUDE.md`. Use a **deny rule** in `/permissions` or a **hook**. Those are enforced every time, whatever Claude decides.
- **Rule of thumb:** if you keep adding "IMPORTANT" to a line and Claude still misses it, it should be a rule, not a line.

---

## Old advice you can drop

| The old advice | Why it's gone |
|---|---|
| "Approve every single edit" | Auto mode handles routine work and blocks the risky actions. Use Manual mode when you want to see everything. |
| "Write IMPORTANT in capitals" | Current models follow a plainly worded line. Emphasis makes them over-apply it. |
| "Add *think hard* to the prompt" | Thinking depth is a setting now: change it in `/model`. |
| "Tell Claude to keep going and not be lazy" | It carries on by itself. Give it a check to pass instead. |
| "Describe your whole folder layout in `CLAUDE.md`" | Claude reads the folder. Write only what isn't in there. |
| "Guard the context window at all costs" | Windows are large and long sessions are compacted automatically. `/clear` between tasks is still worth it. |

---

## Before you leave Claude running alone

Five questions for any long task you won't be watching:

1. **Does it know what done looks like?**
2. **Can it check its own work?**
3. **What is it allowed to touch?**
4. **What stops it?** A limit on time or spend.
5. **Who signs off?** A person approves anything you can't take back.

---

**Back to:** [README](../README.md) · **Print:** [Cheatsheet](../CHEATSHEET.md)
