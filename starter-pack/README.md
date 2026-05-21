# Marketing Starter Pack for Claude Code

> Drop this folder into your project. Tweak the brand voice. Start shipping.

What's inside:

```
starter-pack/
  CLAUDE.md.example       # filled-in brand-voice file – copy to repo root as CLAUDE.md
  prompts/
    find-themes.md        # turn feedback / NPS / tickets into 3 themes
    blog-to-social.md     # one blog post → LinkedIn + Twitter + newsletter
    headline-variants.md  # 3 on-brand headline options for a launch
    tone-check.md         # flag banned phrases, suggest tighter replacements
    localize.md           # translate a campaign, voice preserved
```

## How to use

1. **Adapt the brand voice.** Open `CLAUDE.md.example`, replace the Brightpath placeholders with your own brand, audience, voice rules, banned phrases. Save as `CLAUDE.md` at your project root.

2. **Use the prompts.** Open `prompts/<name>.md` and copy the prompt block into your Claude session. Tweak the file paths, run it. Each prompt is built to work alongside the `CLAUDE.md` voice rules above.

3. **Graduate to skills.** Once a prompt is reliable, save it as a Claude Code **skill** so it triggers automatically. See the [Agent Skills course](https://anthropic.skilljar.com/) and [docs](https://docs.claude.com/en/docs/claude-code/skills) for the format.

## License

These templates are MIT-licensed (same as the parent repo). Copy them, modify them, ship work.
