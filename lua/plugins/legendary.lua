-- Author: JJH
-- Date: Nov 27,2024
-- Edits: Not sure this is working.
-- I need a glow keymap and a few more.
--

return {
    {
      'mrjones2014/legendary.nvim',
        -- "J-HaleOf76/legendary.nvim",

      -- since legendary.nvim handles all your keymaps/commands,
      -- its recommended to load legendary.nvim before other plugins
      priority = 10000,
      lazy = false,
      -- sqlite is only needed if you want to use frecency sorting
      dependencies = { 'kkharji/sqlite.lua' },
      -- dev = true,
      -- dir = "~/Dev_NeoVim/legendary.nvim",

      -- 'config.extensions.lazy_nvim = true',
      -- config = function()
      -- require('legendary').setup({ lazy_nvim = { auto_register = true } })
      -- end,
      config = function ()
        require("legendary").setup({
          keymaps = {
        {
          -- groups with same itemgroup will be merged
          itemgroup = 'Quickies',
          description = 'Quickly Get It...',
          icon = '',
          keymaps = {
            -- more keymaps here

        -- { '<leader>M', description = 'Preview markdown', filters = { ft = 'markdown' } },
          -- { "<leader>C", "<cmd>ClipIt<CR>", { desc = "Copy file pathe to clipboard" } },
          -- { "<leader>D", "<cmd>DiffIt<CR>", { desc = "Copy git diff to clipboard" } },
          },
        },
        -- in-place filters, see :h legendary-tables or ./doc/table_structures/README.md
        -- { '<leader>M', description = 'Preview markdown', filters = { ft = 'markdown' } },
        --   { "<leader>C", "<cmd>ClipIt<CR>", { desc = "Copy file pathe to clipboard" } },
        --   { "<leader>D", "<cmd>DiffIt<CR>", { desc = "Copy git diff to clipboard" } },
          }, -- End keymaps

          commands = {
          -- { ':Glow', description = 'Preview markdown', filters = { ft = 'markdown' } },
          }, --End Commands
          autocommands = {
            { vim.api.nvim_create_user_command(
              "ClipIt",
              "!echo % | xclip -sel clip",
              { desc = "Copy file path to clipboard" }
            ) },

            { vim.api.nvim_create_user_command(
              "DiffIt",
              "!git diff % | xclip -sel clip",
              { desc = "Copy git diff to clipboard" }
            ) },

        }, -- End AutoCommands
          functions = {},
          extensions = {
            lazy_nvim = true,
            -- smart_splits = {
            --   directions = { 'h', 'j', 'k', 'l' },
            --   mods = {
            --     move = '<C>',
            --     resize = '<M>',
            --   },
            -- },
          },
          scratchpad = {
              -- How to open the scratchpad buffer,
              -- 'current' for current window, 'float'
              -- for floating window
              view = 'float',
              -- How to show the results of evaluated Lua code.
              -- 'print' for `print(result)`, 'float' for a floating window.
              results_view = 'float',
              -- Border style for floating windows related to the scratchpad
              float_border = 'rounded',
              -- Whether to restore scratchpad contents from a cache file
              keep_contents = true,
            },
            -- Directory used for caches
            cache_path = string.format('%s/legendary/', vim.fn.stdpath('cache')),
            -- Log level, one of 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
            log_level = 'info',
                  })
      end
      -- config = true,
      -- 'config.extensions.lazy_nvim = true',
    },
}
