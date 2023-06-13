--[[ --[[ cmp-Tabnine setup ]]
--if true then
--  return {}
--end

return {

  -- return require("lazy").setup({
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
  },
  -- }),

  -- override nvim-cmp and add cmp-tabnine
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "tzachar/cmp-tabnine" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "tabnine" } }))
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
}
