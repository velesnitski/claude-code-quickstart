# Find themes in customer feedback

**When to use:** You have a CSV / TSV / NDJSON of customer feedback, NPS comments, survey replies, or support tickets and need 3-5 themes for tomorrow's leadership update.

**Copy this into Claude:**

```text
Read the file <path/to/feedback.csv>. Find the top 3 to 5 themes.

For each theme:
- Count of mentions
- 2 verbatim quotes (do NOT paraphrase or clean them up)
- One suggested action we could take

Use the brand voice from CLAUDE.md. Skip themes mentioned by fewer than 5% of respondents. Save the output as themes-{today's date}.md in the same folder.
```

**Tip:** If your file is huge, ask Claude to sample first ("read 200 random rows") so the first pass is fast — then ask for a full pass once the themes look right.
