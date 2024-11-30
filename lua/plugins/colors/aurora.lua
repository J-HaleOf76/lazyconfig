
-- if true then
--   return{}
-- end
-- JJH Aurora
local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "aurora"

local M = {
	"ray-x/aurora",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
  -- enabled = false,
}

M.config = function()
	if config.colorscheme ~= "aurora" then
		return false
	end

	local setup = [[
    colorscheme aurora
	 ]]

	vim.cmd(setup)
end

return M
