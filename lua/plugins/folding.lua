if true then
  return {}
end
-- Getting this from the LazyVim github discusion for folds.Not sure about keymaps
-- Author: JJH
-- Date: Feb 21, 2024
-- Edits: This was split up into autocommands and options inside config/
--NOTE: SAVE FOR LATER
--
--

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local save_fold = augroup("Persistent Folds", { clear = true })

return {
  -- These need to be set first in options
  --
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldnestmax = 1
-- I set fondnextmax to 1 so only the top level functions are folded

-- vim.opt.foldlevel = 99

-- local autocmd = vim.api.nvim_create_autocmd
-- local augroup = vim.api.nvim_create_augroup
-- local save_fold = augroup("Persistent Folds", { clear = true })

--
autocmd("BufWinLeave", {
  pattern = "*.*",
  callback = function()
    vim.cmd.mkview()
  end,
  group = save_fold,
}),
autocmd("BufWinEnter", {
  pattern = "*.*",
  callback = function()
    vim.cmd.loadview({ mods = { emsg_silent = true } })
  end,
  group = save_fold,
})

}
