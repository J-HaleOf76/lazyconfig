-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.laststatus = 3

-- opt.scrollloff = 8

-- --[[ From the LunarVim Docs Configuration page. ]]
-- vim.opt.backup = false -- creates a backup file
-- vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
-- vim.opt.colorcolumn = "99999" -- fixes indentline for now
-- vim.opt.completeopt = { "menuone", "noselect" }
-- vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
-- vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
-- vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.guifont = "monospace:h10" -- the font used in graphical neovim applications
-- vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
-- vim.opt.hlsearch = true -- highlight all matches on previous search pattern
-- vim.opt.ignorecase = true -- ignore case in search patterns
-- vim.opt.mouse = "a" -- allow the mouse to be used in neovim
-- vim.opt.pumheight = 10 -- pop up menu height
-- vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.showtabline = 2 -- always show tabs
-- vim.opt.smartcase = true -- smart case
-- vim.opt.smartindent = true -- make indenting smarter again
-- vim.opt.splitbelow = true -- force all horizontal splits to go below current window
-- vim.opt.splitright = true -- force all vertical splits to go to the right of current window
-- vim.opt.swapfile = false -- creates a swapfile
-- vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
-- vim.opt.timeoutlen = 100 -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.title = true -- set the title of window to the value of the titlestring
-- vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
-- vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
-- vim.opt.undofile = true -- enable persistent undo
-- vim.opt.updatetime = 300 -- faster completion
-- vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
-- vim.opt.expandtab = true -- convert tabs to spaces
-- vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
-- vim.opt.tabstop = 4 -- insert 2 spaces for a tab
-- vim.opt.cursorline = true -- highlight the current line
-- vim.opt.number = true -- set numbered lines
-- vim.opt.relativenumber = true -- set relative numbered lines
-- vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
-- vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
-- vim.opt.wrap = false -- display lines as one long line
-- vim.opt.spell = false
-- vim.opt.spelllang = "en"
vim.opt.scrolloff = 8 -- Keep the cursor on the page.
vim.opt.sidescrolloff = 8

-- NeoVide Options
if vim.g.neovide then
  vim.opt.guifont = { "FiraCode Nerd Font Mono", "h9" }
  vim.g.neovide_scale_factor = 0.3
end
