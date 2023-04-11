-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- if true then
--   return {}
-- end
--return {
--   -- vim.keymap.set("n", "<leader>B", function()
--   --   require("browse").browse({ bookmarks = bookmarks, desc = "Browse Everything" })
--   -- end)
--
--   -- vim.keymap.set("n", "<leader>;","<cmd>Alpha",)
--
vim.keymap.set("n", "<leader>;", "<cmd>Alpha<cr>", { desc = "Home" })

-- vim.api.nvim_set_keymap("n", "<leader>;", "<cmd>:Alpha<cr> ", { desc = "Home" })
-- vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>"),
--}
