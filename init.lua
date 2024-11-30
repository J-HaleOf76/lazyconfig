-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--   _       _ _     _
--  (_)_ __ (_) |_  | |_   _  __ _
--  | | '_ \| | __| | | | | |/ _` |
--  | | | | | | |_ _| | |_| | (_| |
--  |_|_| |_|_|\__(_)_|\__,_|\__,_|

-- require('core')
-- require('lsp')

-- VSCode only settings
if vim.g.vscode then
  require('vscode')
end

-- NeoVide only
if vim.g.neovide then
 vim.o.guifont = "Source Code Pro:h12"
 -- vim.o.guifont = "Meslo Nerd Font:h14"

vim.g.neovide_padding_top = 0.25
vim.g.neovide_padding_bottom = 0.25
vim.g.neovide_padding_right = 0.25
vim.g.neovide_padding_left = 0.25

vim.g.neovide_scale_factor = 0.8
vim.g.neovide_transparency = 1.0
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = 'auto'
vim.g.neovide_confirm_quit = true

vim.g.neovide_cursor_animation_length = 0.13
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_smooth_blink = true

-- vim.g.neovide_cursor_vfx_mode = ""
vim.g.neovide_cursor_vfx_mode = "railgun"
-- vim.g.neovide_cursor_vfx_particle_phase = 1.5
-- vim.g.neovide_cursor_vfx_particle_curl = 1.0
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_cursor_vfx_mode = "ripple"
-- vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
-- vim.g.neovide_cursor_vfx_particle_density = 7.0
-- vim.g.neovide_cursor_vfx_particle_speed = 10.0
-- vim.g.neovide_cursor_vfx_opacity = 200.0

end
