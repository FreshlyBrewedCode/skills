---
name: copycat
description: Copy/reuse code from another source. Use only if the user mentions "copycat"
---

The user has provided one or more references. They explicitly want to copy a portion of the reference and do (minimal) adjustments to integrate/fit it to the project.

1. Access the reference

First, you need to make the reference easily accessible:
- for more files or an entire codebase:
  - clone/copy/checkout to a gitignored `.references` directory
  - if the reference comes from another branch of the same repo, checkout a worktree to `.references`
  - use one sub dir per reference so you can have multiple references under `.references`
- for individual files: download/copy them directly to the `.reference`

2. Understand the reference

- Get a high level overview of the reference
  - If the reference is an entire codebase, you do not need to dig deep into every file.
- Identify areas that need adjustment to fit the current project or task

3. Decision point: copy or rebuild?

- If the needed adjustments would mean major refactoring ask the user to consider either:
  - a full rebuild (better then major refactor)
  - a partial copy + partial rebuild

- Give a recommendation to the user
  - Make explicit what will be copied using a (partial) file tree
  - Flag needed adjustments
  - If you recommend a (partial) rebuild, briefly describe what and why. Do not go into full detail yet.
- Wait for explicit user approval. If approved: continue with the copy

4. Copy from reference

- Do a literal copy with `cp` from the reference to the target
- Copy entire directories or individual files as needed

5. Adjust

- Make the neccessary adjustments to the copied files
