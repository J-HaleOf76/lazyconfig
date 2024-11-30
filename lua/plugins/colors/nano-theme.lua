-- Added opts enabled false instead of it getting removed from the system
--It wont install
local config = require("config")
local themer = require("themer")

local colorscheme = "nano-theme"

local M = {
	"ronisbr/nano-theme.nvim",
	init = function()
		-- vim.o.background = "light" -- or "dark".
	end,
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
  -- enabled = false,
}

function M.config()
	if config.colorscheme ~= "nano-theme" then
		return false
	end

	vim.cmd("colorscheme " .. config.colorscheme)
end

return M
