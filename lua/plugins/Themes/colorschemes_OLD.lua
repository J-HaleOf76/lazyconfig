-- Author:JJH
-- Date:Feb 3, 2024
-- Feb 2 2024
--
-- NOTE:
-- Edits: Put the options in opts fixed most of the issues.
-- I have everything from here exept tokyonight
--
--
--
--
 --   event = "User ColorSchemeLoad", --This will make the colorscheme configs to showup
--
    -- keys = {
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
--
--   FIX: This has a keymap that calls an autocomand to be executed
--
--For the comand at the bottom
-- local Util = require("lazyvim.util")
--
--
return {
  --
  { "lunarvim/synthwave84.nvim",
    event = "ColorSchemePre",
  --   opts = {
  --
  --   keys = {
  --     { "<leader>uu", util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
  --   },
  --
  --   vim.cmd.colorscheme('synthwave84'),
  --   },
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "synthwave84",
  --   }
  -- },

  -- add gruvbox
  { "ellisonleao/gruvbox.nvim",
    event = "ColorSchemePre",
    keys = {
      { "<leader>uC", util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
    -- opts = {
    --   -- event = {"User ColorSchemeLoad"},
    --   vim.cmd.colorscheme("gruvbox"),
    -- },
  },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },
  --
  -- [[ Aurora ]]
  { "ray-x/aurora",
    keys = {
      { "<leader>uC", util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
    opts = {
      event = "ColorSchemePre",
      vim.cmd.colorscheme("aurora"),
    }
  },
  -- Configure LazyVim to load Aurora colorscheme
  --
  -- { "LazyVim/LazyVim", opts = { colorscheme = "aurora" } },
  --
  -- TEST:
  -- extend_background_behind_borders is infecting the other themes that don't change those settings.
  {
    "rose-pine/neovim",
    name = "rose-pine",
    -- lazy = false,
    -- priority = 1000,
    event = "User ColorSchemePre",
    -- keys = {
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
    opts = {
    config = function()
      require("rose-pine").setup({
      variant = "main",
      dark_variant = "main",
      extend_background_behind_borders = false,
      dim_inactive_windows = false,
    })
      -- vim.cmd("colorscheme rose-pine")
      --
    -- variant = "auto", -- auto, main, moon, or dawn
    -- dark_variant = "main", -- main, moon, or dawn
    end,
  },
    vim.cmd.colorscheme('rose-pine')
  },

  -- { "LazyVim/LazyVim", opts = { colorscheme = "rose-pine" }, },


  -- Catppuccin has it's own file now. Jan 23, 2024
  --
  -- This is installed but I don't see it in the options for the colorscheme
  --
  -- I found this next line in the README and added it here.
    { "catppuccin/nvim",
    name = "catppuccin",
    opts = {
    event = "ColorSchemePre",
    },
    -- keys = {
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
    vim.cmd.colorscheme('catppuccin-mocha'),
    },
 -- vim.cmd.colorscheme('catppuccin'),
 -- -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "catppuccin",
  --   },
  -- },
    -- Ayu Theme
  {
    -- "J-HaleOf76/neovim-ayu",
    "Shatur/neovim-ayu",
    -- lazy = true,
    -- event = lazy,
    event = "ColorSchemePre",
    -- config = function()
    --   require("ayu").setup({
    --     mirage = false,
    --   })
    -- end,
    --    keys = {
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
    vim.cmd.colorscheme("ayu-dark"),
  },
    -- vim.cmd("colorscheme ayu-dark"),

  -- { "LazyVim/LazyVim", opts = {
  --   colorscheme = "ayu",
  --   -- colorscheme = "neovim-ayu",
  -- }, },
  --
  --[ GitHub nvim Theme ]
  {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.7",
    -- or                            branch = '0.0.x'
    branch = '0.0.x',
    -- event = "VeryLazy",
    event = "User ColorSchemeLoad",
    -- lazy = true,
    -- enabled = false,
    -- dev = true,
    opts = {
      --Use the config functs if you want to change the default styles OR config of a plugin.-NOT always needed-
    -- config = function()
      require("github-theme").setup({
        dark_float = true,
        dark_sidebar = true,
    --     hide_inactive_statusline = false,
        sidebars = { "help", "lazy", "qf", "vista_kind", "terminal", "packer" },
        theme_style = "dark_default",
    --     function_style = 'italic',
    --     dev = false,
    --     transparent = false,
    --     comment_style = 'inverse',
    --     variable_style = italic,
    --     keyword_style = 'bold',
    --     msg_area_style = 'stanout',
    --     hide_end_of_buffer = false,
    --     -- colors = {},
    --     -- overrides = {},
      })
    -- end,
  },

    --    keys = {
    --   { "<leader>uC", telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
  vim.cmd('colorscheme github'),
  },

  -- { "LazyVim/LazyVim", opts = { colorscheme = "github" },},


  --NOTE: Keep this here for now.
  --
  -- This is installed by default with LazyVim
  --
  -- Folke's theme from GitHub
  {"folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- dev = false,
    event = "User ColorSchemeLoad",
    opts = { style = "night",},
  --   config = function ()
  --     require("tokyonight").setup({
  --       style = "night",
  --       terminal_colors = true,
  --       styles = {
  --         sidebars = dark,
  --         floats = dark,
  --         },
  --       sidebars = {"edgy", "qf", "help", "edgy","terminal", "ui", "neo-tree","neotree",},
  --     })
  --   end,

    --    keys = {
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    -- },
  vim.cmd.colorscheme("tokyonight-night"),
  },

  -- I should only call 1 colorscheme at a time like this.
  -- I shouldn't have to call this to get it to show up in the picker.
  -- { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight-night"}, },

  -- kanagawa
  {
  "rebelot/kanagawa.nvim",
  -- lazy = true,
    name = "kanagawa",
    event = "User ColorSchemeLoad",
  opts = { theme = "darker" },
    vim.cmd.colorscheme("kanagawa"),

    -- lazyvim.util.telescope
       keys = {
      { "<leader>uC", lazyvim.util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    },
  },
  --

    -- This might need moved to config/keymaps
  --[[FIX: Not sure how to configure this as a keymap and an autocomand ]]--
  keys = {
      "<Leader>uu",
      function()
          vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
          require("telescope.builtin").colorscheme()
      end,
      noremap = true,
  },
}
