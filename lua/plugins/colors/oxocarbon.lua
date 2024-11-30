-- if true then
--   return{}
-- end
-- JJH
local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "oxocarbon"

local M = {
	"nyoom-engineering/oxocarbon.nvim",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
  enabled = true,
}

M.config = function()
	if config.colorscheme ~= "oxocarbon" then
		return false
	end

	local setup = [[
    colorscheme oxocarbon
	 ]]

	vim.cmd(setup)
end

return M
