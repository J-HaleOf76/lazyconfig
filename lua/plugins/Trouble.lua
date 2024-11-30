--[[ 
 Author: John Hale
 Date: November 30, 2023
 - LazyExtras will control some of these installs now.
 Whats inside:
 -- SymbolsOutline,
 Prettierd,
 -- Trouble,
 Projects, -LazyExtra

Name change to Prettierd - from extras 

-- Null-ls was renamed to none-ls

My LazyVim configurations
 - Pre Nov 30, 2023
Added imports to /config/lazy
Extras that I added in from the main LazyVim Website.
- Some of these files might already be in ' local/share/nvim '
 -- If so they will be merged together
 --
]]

return {

  --[[ The only 1 left in here ]]
  -- Trouble
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- Let Xtras control this
  -- Symbols-Outline
  -- {
  --   "simrat39/symbols-outline.nvim",
  --   cmd = "SymbolsOutline",
  --   keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
  --   config = true,
  -- },
  -- Prettierd
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.ensure_installed, "prettierd" )
  --   end,
  -- },
  -- -- {
  -- --   "jose-elias-alvarez/null-ls.nvim",
  -- --
  -- --   opts = function(_, opts)
  -- --     local nls = require("null-ls")
  -- --     table.insert(opts.sources, nls.builtins.formatting.prettierd)
  -- --   end,
  -- -- },
  --
  -- {
  --   "nvimtools/none-ls.nvim",
  --   opts = function(_, opts)
  --     local nls = require("none-ls")
  --     table.insert(opts.sources, nls.builtins.formatting.prettierd)
  --   end,
  -- },
  -- Projects
  -- {
  --   "ahmedkhalf/project.nvim",
  --   opts = {},
  --   event = "VeryLazy",
  --   config = function(_, opts)
  --     require("project_nvim").setup(opts)
  --     require("telescope").load_extension("projects")
  --   end,
  --   keys = {
  --     { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
  --   },
  -- },
  -- alpha has been replaced with dashboard
  -- Projects might be able to install another way
  -- {
  --   "goolord/alpha-nvim",
  --   opts = function(_, dashboard)
  --     local button = dashboard.button("p", " " .. " Projects", ":Telescope projects <CR>")
  --     button.opts.hl = "AlphaButtons"
  --     button.opts.hl_shortcut = "AlphaShortcut"
  --     table.insert(dashboard.section.buttons.val, 4, button)
  --   end,
  -- },


}
