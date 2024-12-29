---@diagnostic disable: duplicate-set-field
--[[
-- 1 of 3 files needed for this to work correctly. themer,config,colorscheme.
--Author: Some guy on GitHub - Many thanks!
--Date: Dec 28, 2024
--Edits: USE the favs for selection of themes.
--
-- NOTE: In the favs function base16 is excluded from the results returned.
--  - It shows too many themes in the picker.
--  - But Not excluded from the normal keymap call for the colorschemes.
-- - Base16 will still show up in the main colorschemes picker. uC
--
-- FIXME: This NO work with fzf-lua - This function make a call to telescope
-- I fixed this by getting rid of fzf-lua And back to telescope
--
--]]--
--
--FIX: Don't ruin this file.
--I Should have this under souce controll So that I can easily see the changes made.
--
--
local utils = require("utils")
local config = require("config")
local M = {
	favourites = {
   "tokyonight", "catppuccin", "ayu",
    "neopywal", "github",
  "kanagawa","arctic","iceberg",
    "synthwave84",
  },

}


M.variant = function(context)
	if not utils.contains(context.supported_variants, config.variant) then
		vim.notify("Variant " .. config.variant .. " not supported, defaulting to " .. context.default_variant)
	end

	return (config.variant or context.default_variant)
end

M.lazy_load = function(colorscheme)
	return colorscheme ~= config.colorscheme
end

M.priority_for = function(colorscheme)
	if colorscheme ~= config.colorscheme then
		return 1000
	else
		return 500
	end
end

-- using keys to lazy-load packages. Without this setup, telescope pickers wouldn't include lazy-loaded
-- themes
M.keys = function(colorscheme)
	if colorscheme ~= config.colorscheme then
		return {
			{
				"<leader>ct",
				function()
					require("telescope.builtin").colorscheme({ enable_preview = true })
				end,
				desc = "Colorschemes Preview",
			},
			{
				"<leader>cx",
				function()
					require("themer").favourite_themes_picker()
				end,
				desc = "Fav_Themes_Picker",
			},

		}
	else
		return {}
	end
end

--NOTE: Just Use this for my themes.
--    - NO builtins get called to load.
--
M.favourite_themes_picker = function()
	local target = vim.fn.getcompletion

	vim.fn.getcompletion = function()
		return vim.tbl_filter(function(color)
			return vim.tbl_contains(M.favourites, function(c)
				return string.find(color, c) and not (string.find(color, "base16"))
			end, { predicate = true })
---@diagnostic disable-next-line: redundant-parameter
		end, target("", "color"))
	end

	require("telescope.builtin").colorscheme({ enable_preview = true })
	vim.fn.getcompletion = target
end

return M
