---
name: structured-responses
description: Give a structured response to the user. Use if the user requests a structured response or asks you to optimize/shorten your response
---

"Structured responses" should make your responses clearer and more readable for the user.

- Opt-in: only use if the user asks for it
- Consistency: use a consistant structure to make your response easier to navigate
- Scope and depth: use fewer words, keep it short and precise where possible
- Priority: Open questions > your recommendations > your reasoning > your findings. Just a general guideline. Depends on the users task or question.
- Platform: if the user implies that they are reading your response on smaler screens e.g. mobile, be extra careful with the amount of information you present at once
- Visual and semantic anchors: use # headings, white space and **bold text** to flag important information, ideally using consistant patterns. If you are covering multiple topics or questions index or label them so they can be easily refered to (e.g. Q1, Q2, Q3)
- Summarize: Introduce TLDR bullet point summaries at the end of long sections, and at the end of your message

# Suggested patterns (use like building blocks, adapt where needed)

## Open questions

for critical, concrete questions that need user input

```
# Q1: Should we implement this feature?

The feature is nice but it comoes with some effort because...

**Option 1 (Recommended)**: Yes, because...
**Option 2**: No, because...
```

## Recommendations

For standalone recommendations

```
**Recommendation**: Gather user feedback early and validate before we plan any major abstractions.
```

## TLDR Summary

Summary at the bottom of longer sections or your entire response

```
**Findings**
- No existing API surface

**Open Questions**
- Q1: Implement feature or not? (yes)

**Recommendations**
- validate first, abstract later 
```
