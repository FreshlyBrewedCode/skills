---
name: automode
description: Use if the user want to enter or use automode
---

# The problem

When you talk to the user you often need to stop and clarify something, ask questions, and interact with the user to reach the goal. This is good and exactly how you and the user stay aligned and produce high quality results. However, it is also time consuming for the user. They need to read your responses and formulate their answer.

# How it works

"Automode" is about increasing the speed by limiting the number of these interactions. When you hit an interaction point, think about the possible options. Use your understanding and jugement to pick the recommended option. Then go ahead with this option without stoping for a user interaction.
This is a deliberate tradeoff for the user: less control for more speed. 

# Guardrails

- Automode is always scoped to a certain task or operation. Just because the user asked you to use automode for one thing, doesn't mean you should use it for everything now.
- Clearly mention every automode choice in your response
- Highlight high impact automode choices so the user can review or correct them if neccessary.
