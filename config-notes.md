<!-- -- Author: John Hale -->
<!-- -- Date: Dec 2024 -->

# Configuration Notes For My NeoVim

## HelpTags from headings in markdown README's inside "lua/\*\*/"

- Read HelpNotes.md
- :help #'What To Look For'
- I can make my own help notes for whatever I need too

[html,css,js]

---

## " Glow ", " markdown-preview "

- Glow is good - Glow is now in LazyExtras
- markdown preview is cooked in now per LazyExtras - NO need for my own plugin \*

---

### This way of setup fixed my neo-tree configuration as far as I can see

```lua
anyconfigfile.lua

return{
    "johnhale/neo-tree.nvim",
    dependencies = {
        "johnhale/some-dep.nvim",
    },
    cmd = {
        "command#1",
        "sometreecommand",
        "addwhatyawant",

    },
    keys = {
        { "<leader>as", desc = "summerize text" },
    },
    config = function()
        require("neo-tree").setup({
            --options go here
        })
        end,
}
```

```lua

window = {
  mappings = {
    ["L"] = "focus_preview",
    ["v"] = "open_vsplit",
    -- These 2 functions look like the 2 for the filesystem keymaps --
    ["h"] = function(state)
      local node = state.tree:get_node()
        if node.type == 'directory' and node:is_expanded() then
          require'neo-tree.sources.filesystem'.toggle_directory(state, node)
        else
          require'neo-tree.ui.renderer'.focus_node(state, node:get_parent_id())
        end
      end,
    ["l"] = function(state)
      local node = state.tree:get_node()
        if node.type == 'directory' then
          if not node:is_expanded() then
            require'neo-tree.sources.filesystem'.toggle_directory(state, node)
          elseif node:has_children() then
            require'neo-tree.ui.renderer'.focus_node(state, node:get_child_ids()[1])
          end
        end
      end,
  },
},

```

### Macros

--NOTE: macros

'q' starts and stops recording.
Rerun my macro use " 3@w " - number of times to do the macro and what macro to repeat.
<br>
**Recording my commands and reusing them**

# Macros how to use

- Start recording with " q w " q = record- w = the register that I want it saved at.
- Make my edits and move the cursor to the correct position then hit " q " This q = quit.
- Hiting a number then my register will run the command that many times. 3w will run it 3 times.

--
