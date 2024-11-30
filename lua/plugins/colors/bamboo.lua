local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "bamboo"

local M = {
	"ribru17/bamboo.nvim",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
}

M.config = function()
	if config.colorscheme ~= "bamboo" then
		return false
	end

	require("bamboo").setup({})
	require("bamboo").load()
end

return M
