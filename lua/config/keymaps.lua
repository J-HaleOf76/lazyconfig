-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
-- vim.keymap.set("n", "<leader>B", function()
--   require("browse").browse({ bookmarks = bookmarks, desc = "Browse Everything" })
-- end)
--
--
-- This is the 1 that worked first
-- vim.keymap.set("n", "<leader>;", "<cmd>Alpha<cr>", { desc = "Home" })

-- vim.keymap.set("n", "<leader>;", "<cmd>Dashboard<cr>", { desc = "GoTo Home" })

-- This also works fine
 vim.api.nvim_set_keymap("n", "<leader>;", "<cmd>:Alpha<cr> ", { desc = "Alpha_Home" })
--
-- vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>"),
--
-- playin with Neotree to get images to show in a window
-- TODO: Edgy popup window for images
--
    -- nnoremap <leader>| :Neotree toggle show image_wezterm right<cr>
  -- This also looks like LocalLeader
vim.keymap.set("n", "<leader>\\", "<cmd>Neotree toggle show image_wezterm right<cr>", { desc = "Image_Wezterm" })

-- This is an autocomand to load the colorshemes - keys = {} -
-- {
--     "<Leader>cs",
--     function()
--         vim.api.nvim_exec_autocmds("User", { pattern = "ColorSchemeLoad" })
--         require("telescope.builtin").colorscheme()
--     end,
--     noremap = true,
-- }
--
-- Found these on github
-- Move lines
vim.keymap.set('n', '<A-j>', '<Cmd>move+1<CR>==', { noremap = true, desc = 'Move line down' })
vim.keymap.set('n', '<A-k>', '<Cmd>move-2<CR>==', { noremap = true, desc = 'Move line up' })
vim.keymap.set('i', '<A-j>', '<Esc><Cmd>move+1<CR>==gi', { noremap = true, desc = 'Move line down' })
vim.keymap.set('i', '<A-k>', '<Esc><Cmd>move-2<CR>==gi', { noremap = true, desc = 'Move line up' })
vim.keymap.set('v', '<A-j>', "<Esc><Cmd>'<,'>move'>+1<CR>gv=gv", { noremap = true, desc = 'Move lines down' })
vim.keymap.set('v', '<A-k>', "<Esc><Cmd>'<,'>move'<-2<CR>gv=gv", { noremap = true, desc = 'Move lines up' })

--Common editor commands
vim.keymap.set({ 'v', 'i' }, '<C-a>', '<Esc>gg0vG$', { noremap = true, desc = 'Select all' })
vim.keymap.set({ '', 'i' }, '<C-s>', vim.cmd.write, { noremap = true, desc = 'Save' })
vim.keymap.set('i', '<C-z>', '<C-o>u', { noremap = true, desc = 'Undo' })
-- Paste
vim.keymap.set('i', '<C-v>', '<C-g>u<Cmd>set paste<CR><C-r>+<Cmd>set nopaste<CR>', { noremap = true, desc = 'Paste' })
vim.keymap.set('c', '<C-v>', '<C-r>+', { noremap = true, desc = 'Paste' })
vim.keymap.set('t', '<C-v>', '<C-\\><C-N>pi', { noremap = true, desc = 'Paste' })

-- Tab Control keys
vim.keymap.set('', '<A-q>', vim.cmd.tabclose, { noremap = true, desc = 'Close current tab' })
vim.keymap.set({ 'i', 't' }, '<A-q>', '<Esc><Cmd>tabclose<CR>', { noremap = true, desc = 'Close current tab' })
--
