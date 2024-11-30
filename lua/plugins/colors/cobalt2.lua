-- if true then
--   return {}
-- end
-- I had this installed twice 7-6-2024
--

local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "cobalt2"



local M = {
    "lalitmee/cobalt2.nvim",
    -- event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    name = "cobalt2",
    lazy = themer.lazy_load(colorscheme),
    priority = themer.priority_for(colorscheme),
    keys = themer.keys(colorscheme),
    enabled = false,
}
M.supported_variants = {""}
M.default_variant = ""

M.config = function ()
    if config.colorscheme ~= "cobalt2" then
        return false
    end
    -- vim.o.cursorline = true
    -- vim.o.cursorlineopt = "number"
    init = function ()
        require("colorbuddy").colorscheme("cobalt2")

    end

    require("colorbuddy").colorscheme("cobalt2").setup({
    -- require("cobalt2").setup({
        flavor = themer.variant(M), -- don't think them has any
        transparent_background = config.transparent,
        -- show_end_of_buffer = false,
        term_colors = true,
        -- background = {-- :h background
        --     light = "",
        --     dark = "",
        -- },

    })
    -- NOT needed with all themes
    	-- setup must be called before loading
-- --[[ 	vim.cmd([[
--   try
--     augroup CustomHighlight
--       autocmd!
--       autocmd ColorScheme catppuccin highlight clear CursorLineNr
--       autocmd ColorScheme catppuccin highlight link CursorLineNr String
--       autocmd ColorScheme catppuccin highlight clear VertSplit
--       autocmd ColorScheme catppuccin highlight link VertSplit String
--     augroup END

    -- colorscheme cobalt2
--     syntax on
--   catch /^Vim\%((\a\+)\)\=:E185/
--     colorscheme default
--     set background=dark
--   endtry
--   ]])

-- --]]
end
-- vim.cmd("colorscheme cobalt2")

-- This is what is stock ???
    -- init = function()
    --     require("colorbuddy").colorscheme("cobalt2")
    -- end,
    -- vim.cmd("colorscheme cobalt2"),


return M
