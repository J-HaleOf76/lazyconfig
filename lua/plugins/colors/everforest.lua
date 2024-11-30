local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "everforest"

local M = {
	"neanias/everforest-nvim",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
}

function M.config()
	if config.colorscheme ~= "everforest" then
		return false
	end

	require("everforest").setup({
		transparent_background_level = 0,
	})

	vim.cmd("colorscheme " .. config.colorscheme)
	vim.api.nvim_command("hi clear GitSignsCurrentLineBlame")
	vim.api.nvim_command("hi link GitSignsCurrentLineBlame NonText")
end

return M
