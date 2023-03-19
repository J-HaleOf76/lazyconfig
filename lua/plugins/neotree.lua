return {

  -- Trying to get h and l to move through the file tree and open a file when needed.

  {
    "nvim-neo-tree/neo-tree.nvim",
    -- require("neo-tree").setup({
    -- keys = {
    --   -- Not sure if this will work but this is what I want to do while in neo-tree.
    -- { 'h' = "navigate_up" },
    -- { 'l' = "open" },
    -- Move left and right through the tree
    -- {
    --   h = function(state)
    --     local node = state.tree:get_node()
    --     if (node.type == "directory" or node:has_children()) and node:is_expanded() then
    --       state.commands.toggle_node(state)
    --     else
    --       require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
    --     end
    --   end,
    -- },
    -- {
    --   l = function(state)
    --     local node = state.tree:get_node()
    --     if node.type == "directory" or node:has_children() then
    --       if not node:is_expanded() then
    --         state.commands.toggle_node(state)
    --       else
    --         require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
    --       end
    --     end
    --   end,
    -- },
    -- },
    opts = {
      window = {
        mappings = {
          ["l"] = "open",
          ["L"] = "focus_preview",
          ["h"] = "navigate_up",
        },
      },
      filesystem = {
        follow_current_file = true,
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
            "go",
            ".cache",
            ".quokka",
            ".node",
            ".npm",
            ".nvm",
            ".js-repl",
            ".pki",
            ".pnpm-store",
          },
          hide_by_pattern = { -- uses glob style patterns
            --"*.meta",
            --"*/src/*/tsconfig.json",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            --".gitignored",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
            --".DS_Store",
            --"thumbs.db"
          },
          never_show_by_pattern = { -- uses glob style patterns
            --".null-ls_*",
          },
        },

        window = {
          mappings = {
            ["l"] = "open",
            -- ["L"] = "focus_preview",
            ["h"] = "navigate_up",
          },
        },
      },
      source_selector = {
        winbar = true,
        statusline = true,
      },

      -- buffers({
      --   window({
      --     mappings({
      --       ["h"] = "navigate_up",
      --     }),
      --   }),
      -- }),
      -- keys = {
      --   -- Move left and right through the tree
      --   {
      --     ["h"] = function(state)
      --       local node = state.tree:get_node()
      --       if (node.type == "directory" or node:has_children()) and node:is_expanded() then
      --         state.commands.toggle_node(state)
      --       else
      --         require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
      --       end
      --     end,
      --   },
      --   {
      --     ["l"] = function(state)
      --       local node = state.tree:get_node()
      --       if node.type == "directory" or node:has_children() then
      --         if not node:is_expanded() then
      --           state.commands.toggle_node(state)
      --         else
      --           require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
      --         end
      --       end
      --     end,
      --   },
      -- },
    },
    -- }),
  },
  -- config = function()
  --   require("neotree").setup()
  -- end,
}
