-- if true then
--   return {}
-- end
return {
  {
    "goolord/alpha-nvim",
    opts = function()
      local dashboard = require("alpha.themes.dashboard")
      local logo = [[
  ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
  ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z
  ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z
  ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z
  ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝
  ]]

      dashboard.section.header.val = vim.split(logo, "\n")
      dashboard.section.buttons.val = {
        dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
        dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
        dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
        dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
        dashboard.button("s", "勒" .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
        dashboard.button("l", "鈴" .. " Lazy", ":Lazy<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
        dashboard.button("R", " " .. " Ranger", ":terminal ranger<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
      end
      dashboard.section.footer.opts.hl = "Type"
      dashboard.section.header.opts.hl = "AlphaHeader"
      dashboard.section.buttons.opts.hl = "AlphaButtons"
      dashboard.opts.layout[1].val = 8
      return dashboard
    end,
  },
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   --   require("neo-tree").setup({
  --   opts = {
  --     filesystem = {
  --       follow_current_file = true,
  --       filtered_items = {
  --         visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
  --         hide_dotfiles = false,
  --         hide_gitignored = false,
  --         hide_by_name = {
  --           "node_modules",
  --           "go",
  --           ".cache",
  --           ".quokka",
  --           ".node",
  --           ".npm",
  --           ".nvm",
  --           ".js-repl",
  --           ".pki",
  --           ".pnpm-store",
  --         },
  --         hide_by_pattern = { -- uses glob style patterns
  --           --"*.meta",
  --           --"*/src/*/tsconfig.json",
  --         },
  --         always_show = { -- remains visible even if other settings would normally hide it
  --           --".gitignored",
  --         },
  --         never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
  --           --".DS_Store",
  --           --"thumbs.db"
  --         },
  --         never_show_by_pattern = { -- uses glob style patterns
  --           --".null-ls_*",
  --         },
  --       },
  --     },
  --     source_selector = {
  --       winbar = true,
  --       statusline = true,
  --     },
  --     --   }),
  --     keys = {
  --       -- Move left and right through the tree [ This was the second answer given.Move through all the nodes. ]
  --       {
  --         h = function(state)
  --           local node = state.tree:get_node()
  --           if (node.type == "directory" or node:has_children()) and node:is_expanded() then
  --             state.commands.toggle_node(state)
  --           else
  --             require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
  --           end
  --         end,
  --       },
  --       {
  --         l = function(state)
  --           local node = state.tree:get_node()
  --           if node.type == "directory" or node:has_children() then
  --             if not node:is_expanded() then
  --               state.commands.toggle_node(state)
  --             else
  --               require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
  --             end
  --           end
  --         end,
  --       },
  --     },
  --   },
  -- },
  -- [ This is the first answer given. ]
  --   ["h"] = function(state)
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

  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*", "!lazy" },
      buftype = { "*", "!prompt", "!nofile" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = false, -- "Name" codes like Blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes: foreground, background
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        virtualtext = "■",
      },
    },
  },
  {
    "folke/drop.nvim",
    event = "VeryLazy",
    enabled = true,
    -- config = function()
    -- math.randomseed(os.time())
    -- local theme = ({ "stars", "snow" })[math.random(1, 3)]
    -- require("drop").setup({ theme = theme })

    opts = {
      theme = "stars", --"snow",--"xmas", --"leaves", -- can be one of rhe default themes, or a custom theme
      max = 40, -- maximum number of drops on the screen
      interval = 150, -- every 150ms we update the drops
      screensaver = 1000 * 60 * 5, -- show after 5 minutes. Set to false, to disable
      filetypes = { "dashboard", "alpha", "starter" }, -- will enable/disable automatically for the following filetypes
    },
    -- end,
  },
}
