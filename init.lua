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
  require('vscode-neovim')
end

-- NeoVide only
-- 
-- # https://github.com/neovide/neovide
-- # https://neovide.dev/
--
if vim.g.neovide then
 vim.o.guifont = "Source Code Pro:h13"
 -- vim.o.guifont = "Meslo Nerd Font:h13"
-- vim.opt.guifont = { "FiraCode Nerd Font Mono:h13" }

vim.g.neovide_padding_top = 0.15
vim.g.neovide_padding_bottom = 0.15
vim.g.neovide_padding_right = 0.15
vim.g.neovide_padding_left = 0.15

vim.g.neovide_scale_factor = 0.8
vim.g.neovide_transparency = 1.0
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_theme = 'dark'  --'auto'
vim.g.neovide_confirm_quit = true
-- # Lower refresh rate from 60
-- vim.g.neovide_refresh_rate = 60
-- vim.g.neovide_refresh_rate_idle = 5


vim.g.neovide_cursor_animation_length = 0.15
vim.g.neovide_cursor_trail_size = 0.8
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_smooth_blink = true

  -- # Empty turns off the cursor effects
-- vim.g.neovide_cursor_vfx_mode = ""
  -- # Next 3 for Railgun
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_cursor_vfx_particle_phase = 1.2
vim.g.neovide_cursor_vfx_particle_curl = 1.0
  --
-- vim.g.neovide_cursor_vfx_mode = "torpedo"
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_cursor_vfx_mode = "ripple"
  -- # Particles
vim.g.neovide_cursor_vfx_particle_lifetime = 1.3
vim.g.neovide_cursor_vfx_particle_density = 9.0
vim.g.neovide_cursor_vfx_particle_speed = 10.0
vim.g.neovide_cursor_vfx_opacity = 200.0

-- # Small actions when typing.
-- vim.g.neovide_cursor_vfx_mode = "ripple"
-- vim.g.neovide_cursor_vfx_mode = "sonicboom"
-- vim.g.neovide_cursor_vfx_mode = "wireframe"


end
