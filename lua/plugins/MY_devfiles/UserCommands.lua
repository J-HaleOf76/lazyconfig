if true then
  return{}
end
-- Author: JJH
-- Date: Mar 29, 2024
-- NOTE: Copied to Legendary/Keep these somewhere.
--
-- Copy file path and Copy git diff to clipboard
-- User Commands for use in vim & nvim.

vim.api.nvim_create_user_command(
  "ClipIt",
  "!echo % | xclip -sel clip",
  { desc = "Copy file path to clipboard" }
)

vim.api.nvim_create_user_command(
  "DiffIt",
  "!git diff % | xclip -sel clip",
  { desc = "Copy git diff to clipboard" }
)

-- Keymaps to go with commands 
--
-- Commands
Map("<leader>C", "<cmd>Clip<CR>", { desc = "Copy file path to clipboard" })
Map("<leader>D", "<cmd>Diff<CR>", { desc = "Copy git diff to clipboard" })
