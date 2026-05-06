# 4. Real Examples

> **Time:** 5 min · **Goal:** See Claude Code do something useful in your own terminal.

Each example is copy-pasteable. Run them in order, or jump to the one you need.

---

## Example 1 – Analyze a file

**Use case:** You have a CSV, log, PDF, or spreadsheet and want a quick summary.

```bash
mkdir analyze && cd analyze
# drop your file here (e.g. report.csv, error.log, contract.pdf)
claude
```

Then ask:

> Read the file in this folder and give me:
> 1. A one-paragraph summary.
> 2. Three bullet points of the most important findings.
> 3. Any anomalies or things worth investigating.

Claude reads, analyzes, and answers in 5–15 seconds. Follow up in plain English: *"Show me row 47 in detail"* or *"Plot a histogram of column B."*

---

## Example 2 – Generate tests for a function

**Use case:** You wrote a function and want unit tests without writing them yourself.

```bash
cd your-project
claude
```

> Look at `src/utils/parseDate.ts`. Write Jest tests covering:
> - Valid ISO strings
> - Invalid input
> - Timezone edge cases
> Save them next to the source file.

Claude proposes the new test file, shows a diff, and waits for your approval before writing.

---

## Example 3 – Explain a stack trace

**Use case:** You hit an error and want a fast diagnosis.

```bash
claude
```

Paste the stack trace, then:

> Explain this error in plain English. What likely caused it, and what's the fix?

Claude reads relevant files, traces the call path, and proposes a fix. If you say *"apply it"*, it edits the file.

---

## Example 4 – Refactor with Plan Mode

**Use case:** A bigger change you want Claude to think through before touching code.

```bash
claude
```

> /plan
> Refactor the auth module to use the new session API. Don't change the public interface.

Plan Mode shows step-by-step what Claude will do, lets you edit the plan, and only then executes.

---

## Example 5 – Review your last commit

**Use case:** A second pair of eyes before you push.

```bash
cd your-repo
claude
```

> Review my last commit. What might break? Suggest improvements, but don't change the code.

Or use the built-in slash command: `/review`.

---

## What's next?

You now know the loop: open a folder, run `claude`, ask in plain English. From here:

- **[Skills](https://docs.claude.com/en/docs/claude-code/skills)** – package reusable instructions Claude can invoke automatically
- **[Hooks](https://docs.claude.com/en/docs/claude-code/hooks)** – run shell commands on tool events (e.g. auto-format on save)
- **[MCP servers](https://docs.claude.com/en/docs/claude-code/mcp)** – give Claude access to your databases, APIs, internal tools
- **[Subagents](https://docs.claude.com/en/docs/claude-code/sub-agents)** – delegate isolated tasks in parallel

The official docs are at [docs.claude.com/en/docs/claude-code](https://docs.claude.com/en/docs/claude-code).
