# 3. Set Up a Project

> **Time:** 3 min · **Goal:** Make Claude understand your project the moment you open it.

---

## The big idea

Claude reads the folder you're in. The more it knows about your project, the better it helps. The trick: **leave a note for Claude** in a file called `CLAUDE.md`.

```mermaid
flowchart LR
    You([You open a folder]) --> Folder[my-project/]
    Folder --> CL[CLAUDE.md<br/>= 'how this project works']
    Folder --> Files[your code, docs, data]
    CL -.reads on startup.-> Claude
    Files -.reads on demand.-> Claude
```

`CLAUDE.md` is just a plain text file you write once. Claude reads it automatically every time you start a session in that folder.

---

## What a project folder looks like

```
my-project/
  CLAUDE.md             # the note for Claude (you create this)
  .claude/              # settings folder (optional)
    settings.json       # team-shared settings
    commands/           # your custom shortcuts
  src/                  # your code or content
  README.md             # your project's own readme
```

Don't worry about `.claude/` yet – we'll get to that. For now, just `CLAUDE.md`.

---

## Two flavors of `CLAUDE.md`

| File | Where | What it does |
|---|---|---|
| `~/.claude/CLAUDE.md` | Your home folder | Personal preferences – loaded **everywhere** |
| `<project>/CLAUDE.md` | Inside a project | Project context – loaded **only there** |

Both load automatically.

---

## The fastest way to make a `CLAUDE.md`

Open a project folder, run `claude`, and type:

```
/init
```

Claude looks at the folder and writes a draft `CLAUDE.md` for you. You can edit it after.

---

## A good `CLAUDE.md` template

Think of it as a **brief you'd give a freelancer on day one** – who you are, who you write for, what to say, what *never* to say. Specific beats generic. Below is a marketing-flavored template; if you're working on code, see [the code variant](#working-on-code-instead) at the end.

### Marketing edition – copy & fill in

```markdown
# Project: <brand or campaign name>

## Who we are
One paragraph. What we do, who it's for, why it matters.

## Audience
- Primary: <persona, role, pain points>
- Secondary: <persona>
- Reading level: <e.g. "8th grade — keep it simple">

## Brand voice
Three adjectives + a do / don't list.
- Voice: clear, warm, slightly cheeky.
- We say: "you", "let's", short sentences, concrete verbs.
- We don't say: leverage, synergy, ecosystem, game-changer, world-class.

## Style rules
- Headlines: 6 to 10 words, sentence case (not Title Case).
- CTAs verb-first: "Start free", "See pricing".
- Oxford comma: yes. Em-dash: yes. Semicolons: avoid.
- Emojis: in social posts only, never in blog headers.

## What's in this folder
- /blog          drafts in markdown
- /social        LinkedIn / Twitter / Threads drafts
- /campaigns     email sequences
- /analytics     CSVs from GA4 / HubSpot
- /assets        logos & images — read-only, never edit

## Banned (legal + brand)
- No name-by-name comparisons to <competitor>.
- No revenue / ROI claims unless sourced in /sources.
- Never use "guarantee" — legal risk.
- Pricing details only in /pricing — sales owns those.

## Approval workflow
- Drafts → /drafts. PMM reviews before publish.
- Anything mentioning legal, pricing, or customer names → manager sign-off.
```

Keep it short – under 150 lines. Long files dilute attention.

### What "good" looks like (filled-in example)

Here's the same template filled in for a fictional brand. Notice how specific everything gets:

```markdown
# Project: Brightpath – content marketing

## Who we are
A focus-and-productivity app for knowledge workers. ~80% of users
are solo creators or small-team operators who value calm tools
over feature bloat.

## Audience
- Primary: creators / operators aged 28 to 45, multitaskers, skim-readers.
- Reading level: 8th grade. Hemingway score 5 or below.

## Brand voice
Calm, candid, slightly playful.
- Say: "you", "let's", short sentences, concrete verbs.
- Don't say: leverage, synergy, game-changer, ecosystem, world-class.

## Style rules
- Headlines: 6 to 10 words, sentence case.
- CTAs verb-first: "Start free trial", "See pricing".
- Oxford comma: yes. Em-dash: yes. Semicolons: avoid.
- Emojis: in social only, never in blog headers.

## What's in this folder
- /blog          drafts (publish via Webflow)
- /social        LinkedIn-first, Twitter cross-post
- /newsletter    weekly Friday digest
- /analytics     GA4 + email exports
- /assets        logos — read-only

## Banned
- No name-by-name comparison to other productivity apps.
- No "10x your output" / "guaranteed" / "world-class".
- Pricing claims only with a /sources citation.
- Never quote a customer without written approval.
```

With a `CLAUDE.md` like that, a single prompt – *"draft a LinkedIn post about our new focus-mode feature"* – produces copy that already sounds like you, in your voice, avoiding your banned phrases.

### Working on code instead?

If your project is a codebase rather than content, the same idea applies with different fields:

```markdown
# Project: <name>

## What it is
What this codebase does, in one paragraph.

## Tech stack
Language, framework, key libraries, database.

## How to run
- `npm run dev`
- `npm test`

## Conventions
Code style, naming, commit message style.

## Gotchas
Auth quirks, env vars, flaky tests.
```

---

## Useful slash commands inside Claude

Once `claude` is running, type these:

| Type this | What it does |
|---|---|
| `/help` | Lists every command |
| `/init` | Auto-writes a `CLAUDE.md` for the current folder |
| `/clear` | Forgets the conversation, keeps the `CLAUDE.md` |
| `/plan` | Plan Mode – Claude proposes steps, waits for your "yes" before changing files |
| `/review` | Reviews your latest changes |
| `/cost` | Shows tokens and cost so far |

---

**Next:** [Try real examples →](04-examples.md)
