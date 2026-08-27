---
name: wayful
description: Defines wayful work and how to work in a wayful manner. Use when "wayful" is mentioned by the user or the task
---

"Wayful" is a system or methodology for planning, orchestrating and completing (agentic) work. It can be used for any kind of work where you need to reach a goal or destination but the concrete path is still unclear or should not be fixed/set in stone.
Wayful is best used if you want a fundamentally flexible process but still need or want some structure and rules, especially regarding the handoff between steps.

# Glossary and Primitives

- **Wayful work**: Work that uses or follows the wayful system. Organizing work on **maps** with one or more **goals**, structuring it with interdependent **steps** that produce **artifacts**.
- **Project**: The biggest unit for structuring work. A project can have multiple maps.
- **Map**: A map is the core container primitive for wayful work. A map has a starting point and one or more **goals**. We are trying to find a path from the starting point to the goal(s) through a series of **steps**. The map is modeled as a graph structure where steps can depend on each other. The map is fundamentally **flexible**. This means the steps and final path do not need to be known ahead of time but they can evolve and change as the steps are completed. Wayful work is about exploring and charting the map as you go. However, certain parts of the map can be shaped by **rules**, e.g. to always include a certain step before or after another.
- **Step**: Steps are the fundamental primitive for representing work. Each step has a **type** as well as optional **input** and **output** artifacts. The **project** or **map config** defines which **step types** are available. The **step type** is a descriptive schema for a **step** (i.e. analog to class and instance). Steps can represent anything: research, planning, concrete tasks, validation, etc. They can have side effects, be pure, or anything inbetween. A step or the step type can define details about what work should be ccompleted and how. However, the step itself does not complete the work (its more like a GitHub issue not a workflow or script). The steps **inputs** and **output** can reference different **artifacts** to establish certain requirements (e.g. the "code review" step requires code and must return a verdict) and document produced artifacts.
- **Artifact**: Artifacts can be used to reference and document anything that is relevant to the work. Steps can "produce" artifacts or perform work based on existing artifacts. Similar to steps, the wayful system does not enforce any technical constraints. E.g. a "code artifact" could be a link to a PR, a refrence to a commit, or a path to a file.
