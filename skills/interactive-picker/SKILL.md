---
name: interactive-picker
description: Present an interactive picker to the user. Only use if the user or another instruction explicitly mentions using an interactive picker.
---

Generate a single html file that presents a list/tree and allows the user to pick/select nodes and add comments. Only use this if the user or another instruction explicitly mentioned to use an interactive picker. If unsure, ask the user for confirmation if they want to use an interactive picker before proceeding.

The picker can be used to present choices with many (nested) aspects in a more visual and interactive way.

# Structure and concept

At its core the picker is a nested list/tree:

- [ ] Node
- [ ] Another Node
  - [ ] Child Node
     
- Nodes can be checked, checking a parent checks all children
- Each node has a name, description and color
- The user can leave an optional comment on each node

At the bottom of the page is a "Copy Selection" button that converts the selection (selected node titles + comments) to text and copies it to the clipboard. 
User can use this option after making there selection to past it back to you. 

The users edits (checks, comments) are automatically stored in local storage

# HTML

- Generate a single, self contained html file for the picker
- use the content of `template.html` as a base (it contains all the base HTML/JS/CSS for an interactive picker)
- You can inject the html content and custom css by replacing `<!-- content -->` and `<!-- custom css -->` using `sed` or `awk`.

## Content

- If needed, you can organize multiple lists/trees into `<section>` tags.
- Build the tree using a `ul` nodes using nested `li`

```html
<ul data-picker>
  <li data-name="node name" data-checked>
    Description goes here
    <ul>
      <li data-name="child node">Child description</li>
    </ul>
  </li>
</ul>
```

- use one or more `<details>` in the description of nodes if you want to include more text/content without blowing up the size of the node

# Presenting to the user

Write the html file to `.scratch/pickers/<picker name>.html`, present a `file://` url to it and ask the user to fill it out and paste the selection back to you.
