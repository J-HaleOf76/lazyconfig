-- if true then
--     return {}
-- end
--
-- Name: John Hale
-- Date: Jan 24, 2024
-- Edits:Got rid of some extra comments
--
--

--[[ Check the help files for this Alot can be done
--Use these as defaults
    nnoremap / :Neotree toggle current reveal_force_cwd<cr>
    nnoremap | :Neotree reveal<cr>
    nnoremap gd :Neotree float reveal_file=<cfile> reveal_force_cwd<cr>
    nnoremap <leader>b :Neotree toggle show buffers right<cr>
    nnoremap <leader>s :Neotree float git_status<cr>

    - Just an example
    :Neotree action=show source=filesystem position=right toggle=true
    nnoremap <leader>| :Neotree toggle show image_wezterm right<cr>

--]]
----[[  -- prevent neo-tree from opening files in edgy windows
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   optional = true,
  --   opts = {
  --     open_files_do_not_replace_types = { "terminal", "Trouble", "qf", "edgy" },
  --   },
  -- },  ]]
--
--
-- -- :lua require("neo-tree").paste_default_config()
--
return {
  "nvim-neo-tree/neo-tree.nvim",

    opts = {
      source_selector = {
        winbar = true,
        statusline = true,
        show_scrolled_off_parent_node = false,

    sources = {
      { source = "filesystem" },
      { source = "buffers" },
      { source = "git_status" },
      { source = "document_symbols" },
    },
      --  FIX: Icons
      --
      --  Get the other 3 icons for these files
      --  without this loaded it's showing the icons
        -- sources = {
        --   {
        --     source = "filesystem", display_name = " 󰉓 Files ",
        --   },
        --   {
        --     source = "buffers", display_name = " Buffers ",
        --   },
          -- {
          --   source = "git_status", display_name = " Git ",
          -- },
          -- {
          --   source = "document_symbols", display_name = " Symbols ",
          -- },
        -- },
      }, --endS_S

      -- Global commands
      commands = {

        image_wezterm = function(state)
          local node = state.tree:get_node()
          if node.type == "file" then
            require("image_preview").PreviewImage(node.path)
          end
        end,

        h = function(state)
          local node = state.tree:get_node()
          if (node.type == "directory" or node:has_children()) and node:is_expanded() then
            state.commands.toggle_node(state)
          else
            require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          end
        end,
        l = function(state)
          local node = state.tree:get_node()
          if node.type == "directory" or node:has_children() then
            if not node:is_expanded() then
              state.commands.toggle_node(state)
            else
              require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
            end
          end
        end,
      }, --Global-commands

      window = {
        mappings = {

          ["<leader>P"] = "image_wezterm", -- Might need renamed
          ["L"] = "focus_preview",

					["<space>"] = "none",
          ["v"] = "open_vsplit",
          ["h"] = "h",
          ["l"] = "l",
          -- ["h"] = function(state)
          --     local node = state.tree:get_node()
          --     if (node.type == "directory" or node:has_children()) and node:is_expanded() then
          --         state.commands.toggle_node(state)
          --     else
          --         require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          --     end
          -- end,
          -- ["l"] = function(state)
          --     local node = state.tree:get_node()
          --     if node.type == "directory" or node:has_children() then
          --         if not node:is_expanded() then
          --             state.commands.toggle_node(state)
          --         else
          --             require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
          --         end
          --     end
          -- end,
          -- ["h"] = function(state)
          --   local node = state.tree:get_node()
          --     if node.type == 'directory' and node:is_expanded() then
          --       require'neo-tree.sources.filesystem'.toggle_directory(state, node)
          --     else
          --       require'neo-tree.ui.renderer'.focus_node(state, node:get_parent_id())
          --     end
          --   end,
          -- ["l"] = function(state)
          --   local node = state.tree:get_node()
          --     if node.type == 'directory' then
          --       if not node:is_expanded() then
          --         require'neo-tree.sources.filesystem'.toggle_directory(state, node)
          --       elseif node:has_children() then
          --         require'neo-tree.ui.renderer'.focus_node(state, node:get_child_ids()[1])
          --       end
          --     end
          --   end,
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          force_visible_in_empty_folder = true,
          show_hidden_count = true,
          visable = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
          hide_by_name = {
            ".DS_Store",
           "thumbs.db",
            "node_modules",
            "go",
            ".cache",
            ".quokka",
            ".node",
            ".nvm",
            ".npm",
            ".js-repl",
            ".pki",
            ".pnpm-store",
          },
          hide_by_pattern = { -- uses glob style patterns
            -- "*.meta",
            -- "*/src/*/tsconfig.json",
          },
          always_show = { -- remains visible even if other settings would normally hide it
            -- ".gitignored",
           -- ".*",
          },
          never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          -- I toggled this to test out hide by name
          --
            -- ".DS_Store",
            -- "thumbs.db",
            -- "node_modules",
            -- "go",
            -- ".cache",
            -- ".quokka",
            -- ".node",
            -- ".nvm",
            -- ".npm",
            -- ".js-repl",
            -- ".pki",
            -- ".pnpm-store",
          },
          never_show_by_pattern = { -- uses glob style patterns
            -- ".null-ls_*",
          },
        },
         -- The never-show command above is working well for neotree.
      --
  --[[
      --NOTE: find, fd, search
      --
      --This is for the system Not the filesystem only
      --
      --TODO: Toggle the never-show list to add and remove the strings
      --FZF for a better looking window
      --Edgy for a search window
      --
          find_command = "fd", -- this is determined automatically

          find_args = {  -- you can specify extra args to pass to the find command.
           fd = {
             "--exclude", ".git",
             "--exclude",  "node_modules"
           }
          },

          ---- or use a function instead of list of strings

          find_args = function(cmd, path, search_term, args)
          if cmd ~= "fd" then
            return args
          end
          --maybe you want to force the filter to always include hidden files:
          table.insert(args, "--hidden")
          -- but no one ever wants to see .git files
          table.insert(args, "--exclude")
          table.insert(args, ".git")
          -- or node_modules
          table.insert(args, "--exclude")
          table.insert(args, "node_modules")
          --
          --here is where it pays to use the function, you can exclude more for
          --short search terms, or vary based on the directory
          
          if string.len(search_term) < 4 and path == "/home/john" then
            table.insert(args, "--exclude")
            table.insert(args, "Pictures")
          end
          return args
          end,
        --
  --]] -- End of find block comments
      --
        -- File SYS Commands
        -- If you have problems you can rename a set of functions to some names - moveL & moveR.
        commands = {
          image_wezterm = function(state)
            local node = state.tree:get_node()
            if node.type == "file" then
              require("image_preview").PreviewImage(node.path)
            end
          end,

          -- ["h"] = function(state)
          --   local node = state.tree:get_node()
          --   if node.type == "directory" and node:is_expanded() then
          --     require("neo-tree.sources.filesystem").toggle_directory(state, node)
          --   else
          --     require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          --   end
          -- end,
          -- ["l"] = function(state)
          --   local node = state.tree:get_node()
          --   if node.type == "directory" then
          --     if not node:is_expanded() then
          --       require("neo-tree.sources.filesystem").toggle_directory(state, node)
          --     elseif node:has_children() then
          --       require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
          --     end
          --   end
          -- end,
        },
        window = {
          mappings = {
            ["L"] = "focus_preview",

					["<space>"] = "none",
            ["v"] = "open_vsplit",
            ["h"] = "h",
            ["l"] = "l",
            ["<leader>P"] = "image_wezterm", -- image_preview is the function that gets called for this.
            -- I want find to work like it does everywhere else.
            -- ["/"] = "fuzzy_finder", -- Searches root
              -- ["D"] = "fuzzy_finder_directory", --This only searches for directories
            --["/"] = "filter_as_you_type", -- this was the default until v1.28
            -- ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
              -- ["D"] = "fuzzy_sorter_directory",-- Only finds directories
          },
        },
      -- commands = {}, -- try adding the functions as commands and calling them.wez = "open_image_in_wezterm"

      }, -- end-filesystem
      config = function(_, opts)
        require("neotree").setup(opts)
      end,
    }, --end opts
} -- end-return
