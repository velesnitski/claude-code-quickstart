# Translate a campaign without losing brand voice

**When to use:** You have an email sequence / landing page / social campaign and need it in another language without sounding like Google Translate.

**Copy this into Claude:**

```text
Translate <path/to/source.md> into <target language>.

Rules:
- Tone: keep the CLAUDE.md voice rules. Playful stays playful.
- Don't translate brand name, product feature names, or proper nouns.
- For French use formal "vous"; for Spanish use neutral (no vos / no overly-formal).
- Keep formatting and line breaks identical.

Save as <source-basename>.<lang>.md next to the source. Also create a glossary.md listing every preserved term (brand, feature, technical word) for translator reference.
```

**Tip:** After the first translation, ask Claude to "back-translate" to English. If the back-translation drifts from the original meaning, refine the prompt with the specific phrase that drifted.
