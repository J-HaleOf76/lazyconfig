
-- if true then
--   return{}
-- end
-- JJH Synthwave84
--
local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "synthwave84"

local M = {
	"lunarvim/synthwave84.nvim",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
  -- enabled = false,
}

M.config = function()
	if config.colorscheme ~= "synthwave84" then
		return false
	end

	local setup = [[
    colorscheme synthwave84
	 ]]

	vim.cmd(setup)
end

return M
