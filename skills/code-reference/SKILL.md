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
- if the user referenced an existing idea (e.g. in `docs/references/<idea>.md`), read the file and make any referenced sources accessible if necessary 

# Extract ideas from the reference

A reference can contain a lot of information. It is important to identify which parts of the reference material are relevant. 
We can group the available information into categories of **ideas** to make them easier to describe:

- Concepts: high level solutions or approaches to solving a problem. Concrete technologies or patterns can be substituted while the concept remains the same.  
- Technologies: libraries, frameworks, programming languages, tools, etc.
- Patterns: how technologies are used or structured, file and code structures and conventions, etc.

Before you go back to the user, try to scan the reference for these (trying to pick up the ones most relevant for the task). If needed, dispatch subagents for certain parts of the codebase or certain concepts/technologies/patterns. Note that you don't need to find every little detail. You can always deep dive later if needed.

All or only parts of these catagories can be relevant. Maybe the user only wants to focus on one specific concept, a broad range of patterns, or a combination of both. If its not clear from the users request, clarify it using a grilling session or an interactive picker.

# Using an interactive picker

If the codebase is large or there are many ideas you can present the discovered information in an interactive picker to the user. Before you do this, ask them if they want to proceed this way. The main idea is:
- Break down the ideas in a tree structure 
  - use top level nodes to group by domain
  - create individual nodes for each idea
  - mark the idea catagory in the title (e.g. "Concept:")
  - use consistent color coding for each catagory (concept: orange, technology: blue, pattern: green)
  - add a `<details>` at the bottom of each idea that contains the paths to relevant source files
- More nested tree structure can be used to increase clarity/structure, use as you see fit

use the interactive picker skill to learn how to create and present one to the user.

# Use the referenced ideas

Depending on the task, you may want to:
- directly apply the referenced ideas by implementing it/writing code
- document the relevant ideas
  - on the current spec/plan/issue for the given task
  - in a separate file at `docs/references/<name of idea>.md` file
    - mention the original sources
    - describe the idea
    - does not have to capture every detail of the idea but serve as the main entry point for referencing this idea in the future

If it is not clear which of these options to chose, clarify it with the user.
