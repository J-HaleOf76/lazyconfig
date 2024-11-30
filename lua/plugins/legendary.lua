
return {
    {
      -- 'mrjones2014/legendary.nvim',
        "J-HaleOf76/legendary.nvim",

      -- since legendary.nvim handles all your keymaps/commands,
      -- its recommended to load legendary.nvim before other plugins
      priority = 10000,
      lazy = false,
      -- sqlite is only needed if you want to use frecency sorting
      dependencies = { 'kkharji/sqlite.lua' },
      dev = true,
      dir = "~/Dev_NeoVim/legendary.nvim",

      -- 'config.extensions.lazy_nvim = true',
      config = function()
      require('legendary').setup({ lazy_nvim = { auto_register = true } })
      end,
      -- config = true,
      -- 'config.extensions.lazy_nvim = true',
    },
}
