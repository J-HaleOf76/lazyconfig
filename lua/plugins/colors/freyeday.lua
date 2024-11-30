-- if true then
--   return{}
-- end
-- Trying enabled false instead of it getting removed

local config = require("config")

local utils = require("utils")
local themer = require("themer")

local colorscheme = "freyeday"

local M = {
	"habamax/vim-freyeday",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
  enabled = false,
  -- dev = true,
}

function M.config()
	if config.colorscheme ~= "freyeday" then
		return false
	end

	vim.cmd("colorscheme freyeday")
end

return M
