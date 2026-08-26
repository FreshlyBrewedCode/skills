---
name: code-reference
description: Use existing code as a reference. Use if the user wants to build or plan something based on existing code or repos.
---

The user has provided one or more references. Use them to understand and extract concepts, patterns, or solutions for the current task. 

# Access the reference

First, you need to make the reference easily accessible:
- for individual files: read/fetch them directly
- for more files or an entire codebase:
  - clone/copy/checkout to a gitignored `.references` directory
  - if the reference comes from another branch of the same repo, checkout a worktree to `.references`
  - use one sub dir per reference so you can have multiple references under `.references`

# Use the reference

A reference can contain a lot of information. It is important to identify which parts of the reference material are relevant. 
We can group the available information into categories to make them easier to describe:

- Concepts: high level solutions or approaches to solving a problem. Concrete technologies or patterns can be substituted while the concept remains the same.  
- Technologies: libraries, frameworks, programming languages, tools, etc.
- Patterns: how technologies are used or structured, file and code structures and conventions, etc.

Before you go back to the user, try to scan the reference for these (trying to pick up the ones most relevant for the task). If needed, dispatch subagents for certain parts of the codebase or certain concepts/technologies/patterns. Note that you don't need to find every little detail. You can always deep dive later if needed.

All or only parts of these categories can be relevant. Maybe the user only want to focus on one specific concept, a broad range of patterns, or a combination of both. If its not clear from the users request, clarify it using a grilling session or an interactive reference picker.
