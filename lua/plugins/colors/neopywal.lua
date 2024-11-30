--[[ A Pywal,Wallust theme for neovim
-- Author: JJH
-- Date: Oct 7,2024
-- Edits:
-- - Sept 18, 2024 : Added more options to the setup.
-- Custom theme file.
-- Find a good theme - Match it up with the other themeable apps. Alacritty - Wezterm
-- - Wallust might do all of this at run time.
--
  ]]--

local config = require("config")
local themer = require("themer")
local colorscheme = "neopywal"

local M = {
"RedsXDD/neopywal.nvim",
  init = function()

  end,
  lazy = themer.lazy_load(colorscheme),
  priority = themer.priority_for(colorscheme),
  keys = themer.keys(colorscheme),
  name = "neopywal",
  -- priority = 1000,
}
function M.config()
if config.colorscheme ~= "neopywal" then
  return false
end

require("neopywal").setup({
    -- use_wallust = true,

        -- This option allows to specify where Neopywal should look for a ".vim" template file
        -- (e.g.: os.getenv("HOME") .. "/.cache/wal/custom_neopywal_template.vim").
        colorscheme_file = "",

      -- This option allows to use a custom built-in theme palettes like "catppuccin-mocha" or "tokyonight".
      -- To get the list of available themes take a look at `https://github.com/RedsXDD/neopywal.nvim#Alternative-Palettes`.
      -- Take note that this option takes precedence over `use_wallust` and `colorscheme_file`.
      -- use_palette = "onedark-vivid",
      -- use_palette = "tomorrow-night",
      -- use_palette = "doomone",
      -- use_palette = "catppuccin-mocha",
    -- use_palette = "everforest-hard",
    -- use_palette = "gruvbox-hard",
    -- use_palette = "monokaipro",
    -- use_palette = "oceanic-next",
    -- use_palette = "palenight",
    -- use_palette = "material-darker",
      -- use_palette = "material-palenight",
    use_palette = "material-ocean",
    -- use_palette = "material",
    -- use_palette = "sonokai",


-- - `catppuccin-{frappe,macchiato,mocha}`
-- - `doomone`
-- - `everforest-{soft,medium,hard}`
-- - `gruvbox-{soft,dark,hard}`
-- - `material and material-{darker,ocean,palenight}`
-- - `monokaipro`
-- - `nord`
-- - `oceanic-next`
-- - `onedark and onedark-{darker,vivid}`
-- - `palenight`
-- - `solarized`
-- - `sonokai`
-- - `tokyonight and tokyonight-storm`
-- - `tommorow-night`
    -- 'tomorrow-night'
    --

        -- Sets the background color of certain highlight groups to be transparent.
        -- Use this when your terminal opacity is < 1.
    -- 
        transparent_background = false,

        -- With this option you can overwrite all the base colors the colorscheme uses.
        -- For more information take a look at `https://github.com/RedsXDD/neopywal.nvim#Customizing-Colors`
    --
        -- custom_colors = {},

        -- With this option you can overwrite any highlight groups set by the colorscheme.
        -- For more information take a look at `https://github.com/RedsXDD/neopywal.nvim#Customizing-Highlights`
        -- custom_highlights = {},

        -- Dims the background when another window is focused.
        dim_inactive = true,

        -- Apply colorscheme for Neovim's terminal (e.g. `g:terminal_color_0`).
        terminal_colors = true,

        -- Shows the '~' characters after the end of buffers.
        show_end_of_buffer = false,

        -- Shows the '|' split separator characters.
        -- It's worth noting that this options works better in conjunction with `dim_inactive`.
        show_split_lines = true,

        no_italic = false, -- Force no italic.
        no_bold = false, -- Force no bold.
        no_underline = false, -- Force no underline.
        no_undercurl = false, -- Force no undercurl.
        no_strikethrough = false, -- Force no strikethrough.

        -- Handles the styling of certain highlight groups (see `:h highlight-args`).
        styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            includes = { "italic" },
            strings = {},
            variables = { "italic" },
            numbers = {},
            booleans = {},
            types = { "italic" },
            operators = {},
        },
  })


  vim.cmd("colorscheme " .. config.colorscheme)
end

return M

-- require("lazy").setup({
    -- {
    --     "RedsXDD/neopywal.nvim",
    --     name = "neopywal",
    --     lazy = false,
    --     priority = 1000,
    --     opts = {},
    -- },
-- })
-- local neopywal = require("neopywal")
-- neopywal.setup()
-- vim.cmd.colorscheme("neopywal")
