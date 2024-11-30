-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Disable autoformat for lua files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    -- let treesitter use bash highlight for zsh files as well
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})

--FIX:Add a description. desc = "ColorScheme Picker"
--  I still need the keymap set - Legendary might be a good fit for this.
--
-- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- Make the autocommand for the User Event 'ColorSchemeLoad'
vim.api.nvim_create_autocmd("User", {
  pattern = "ColorSchemeLoad",
  callback = function()
    require("telescope.builtin").colorscheme()
  end,
})

-- colorscheme picker with Telescope
-- {
--     "<Leader>cs",
--     function()
--         vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
--         require("telescope.builtin").colorscheme()
--     end,
--     noremap = true,
-- }

 -- {
 --      "<Leader>uu",
 --      function()
 --          vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
 --          require("telescope.builtin").colorscheme()
 --      end,
 --      noremap = true,
 --  }

--
-- This goes at the bottom of the Alpha config
-- Every new tab opened show Alpha
--
-- local alpha_start_group = vim.api.nvim_create_augroup("AlphaStart", { clear = true })
-- vim.api.nvim_create_autocmd("TabNewEntered", {
--   callback = function()
--     require("alpha").start()
--   end,
--   group = alpha_start_group,
-- })
--
-- Change the color of Alpha logo each start up
-- vim.api.nvim_create_autocmd("VimEnter", {
--   once = true,
--   callback = function()
--     math.randomseed(os.time())
--     local fg_color = tostring(math.random(0, 12))
--     local hi_setter = "hi AlphaHeader ctermfg="
--     vim.cmd(hi_setter .. fg_color)
--   end
-- })
--
