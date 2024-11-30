local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "blue-moon"

local M = {
	"kyazdani42/blue-moon",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
}

M.config = function()
	if config.colorscheme ~= "blue-moon" then
		return false
	end

	vim.cmd("colorscheme blue-moon")
end

return M
