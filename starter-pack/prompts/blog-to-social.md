# Turn one blog post into social posts

**When to use:** You wrote a 1,000-2,000 word article. You need LinkedIn + Twitter + a newsletter blurb, all in your brand voice, in 30 seconds.

**Copy this into Claude:**

```text
Read blog/<filename>.md. Use the CLAUDE.md voice rules.

Generate:
- 1 LinkedIn post (under 200 words, 1 emoji max, ends with a question)
- 5 tweets (each under 250 chars, no emojis, no hashtags, can be a thread if helpful)
- 1 newsletter blurb (3 sentences, no CTA, hook + payoff)

Save them under social/<post-name>.md. Don't change the source article.
```

**Tip:** Run a `/review` after Claude generates to spot any banned phrases that slipped through. Most reliable when CLAUDE.md has a strong "Don't say" list.
