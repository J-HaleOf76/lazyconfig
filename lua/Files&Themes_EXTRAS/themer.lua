---@diagnostic disable: redundant-parameter

-- NOTE: --[[ THIS IS A COPY - Original in the lua/ folder ]]

--TODO: make a copy of this and add in the 'local builtins = {"torta","etc","theme"}'
--Then in the functs add the line to NOT return the builtins.
--Then TEST
--FIX: Don't ruin this file.
--
--
--NOTE: Pay attention to the requires paths
--All of the themes have the same requires as config and utils, themer
--
local utils = require("utils")
local config = require("config")
local M = {
	favourites = { "tokyonight-night", "catppuccin-mocha", "rose-pine-main", "ayu-dark", "cobalt2", "oak", "github-nvim", "boo", "blue-moon" },
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
				desc = "Colorscheme with preview",
			},
			{
				"<leader>cx",
				function()
					require("themer").favourite_themes_picker()
				end,
				desc = "Fave themes picker",
			},
		}
	else
		return {}
	end
end

--NOTE: This can be added to So that some of the builtin themes do not showup
--Keep looking. This only loads the favourites from up top. NO builtins
--
M.favourite_themes_picker = function()
	local target = vim.fn.getcompletion

	vim.fn.getcompletion = function()
		return vim.tbl_filter(function(color)
			return vim.tbl_contains(M.favourites, function(c)
				return string.find(color, c) and not (string.find(color, "base16"))
			end, { predicate = true })
		end, target("", "color"))
	end

	require("telescope.builtin").colorscheme({ enable_preview = true })
	vim.fn.getcompletion = target
end

return M
