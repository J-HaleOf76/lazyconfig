--if true then
--  return {}
--end

return {

  -- {
 -- FIX: I don't think that I need this install.
  --
  -- --   "tzachar/cmp-tabnine",
  --   build = "./install.sh",
  --   dependencies = "hrsh7th/nvim-cmp",
  --   event = "nvim-cmp",
  --   -- event = "VeryLazy",
  --   -- event = "InsertEnter", -- From LunarVim
  -- },

  -- override nvim-cmp and add cmp-tabnine
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "tzachar/cmp-tabnine" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "TN" } }))
    end,
  },

  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    end,
  },


   {
     "hrsh7th/nvim-cmp",
    dependencies = { "chrisgrieser/cmp-nerdfont" },
    --  dependencies = { "cmp-nerdfont",
    -- dir = "~/Dev_NeoVim/cmp-nerdfont",
    -- dev = true,
    -- event = "nvim-cmp",
    -- },
     ---@param opts cmp.ConfigSchema
     opts = function(_, opts)
       local cmp = require("cmp")
       opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "NF" } }))
     end,
   },
}
