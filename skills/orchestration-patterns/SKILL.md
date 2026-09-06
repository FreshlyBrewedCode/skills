---
name: orchestration-patterns
description: Subagent orchestration patterns. Use if the user wants to do more complex subagent orchestration or mentions specific patterns
---

This is a list of useful subagent orchestration patterns. Only use them if explicitly asked to, or your task matches the pattern perfectly.

# General orchestration

If you take the role as the orchestrator, you do not perform tasks yourself. Instead you delegate work to subagents. Often it makes sense to think about this work in steps or tasks: one subagent per step/task in a workflow. You manage and coordinate this workflow.

## Handoff

When handing off to subagents remember:
- Subagents have no knowledge of the current task/workflow or what happend before
- You need to provide clear and detailed instructions
- If you need to handoff the same information or context multiple times it makes sense to create a temp handoff file and point the subagent to that file (with possibly additional adhoc info/context).

# Patterns

## "Wise Orchestrator"

Orchestrate the task with the following assumption:
- in general, you are smarter then the subagents
- subagents are still capable and they are really good at following instructions
- your output and input is expensive
  - let subagents make big code changes or explorations
  - use your attention where it really matters
    - where high inteligence is required
    - where important decissions take place
- keep the high level picture and context

## "Review and Fix"

Orchestrate the workflow:
1. A subagent reviews work (e.g. code) and highlights issues and their severity.
2. Another subagent fixes the found issues

You can run this flow in a loop for several iterrations
- Note: subagents will often keep finding smaller and smaller issues in subsequent iterrations
- Consider only requesting reports for medium/higher severity issues in later review iterrations
- Consider limiting the number of iterrations (2-3 is usually a good. It depends on the scope. Use your best judgement here)

## "Red, Green"

Orchestrate TDD style implementation where one agent handles the red phase and another agent handles the green phase. Pairs well with a follup up review and fix cycle.
