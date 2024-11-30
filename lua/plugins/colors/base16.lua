--[[ 
--Author: JJH
--Date: Oct 7, 2024
--Edits:
--
--FIX: This has too many themes in the picker.
--Make a custom keymap for this theme.
--
--NOTE: I think theses are just JSON files which might be compatable with Wallust.
--
--
--]]--

local config = require("config")
local utils = require("utils")
local themer = require("themer")

local colorscheme = "base16"

local M = {
	"RRethy/nvim-base16",
	lazy = themer.lazy_load(colorscheme),
	priority = themer.priority_for(colorscheme),
	keys = themer.keys(colorscheme),
}

M.config = function()
	if config.colorscheme ~= colorscheme then
		return false
	end


	vim.cmd("colorscheme base16-" .. themer.variant(M))
end

--FIX: They all show up in both pickers.
--

M.supported_variants = {
	-- "black-metal",
	-- "black-metal-bathory",
	-- "black-metal-burzum",
	"black-metal-dark-funeral",
	"black-metal-gorgoroth",
	-- "black-metal-immortal",
	-- "black-metal-khold",
	-- "black-metal-marduk",
	-- "black-metal-mayhem",
	-- "black-metal-nile",
	-- "black-metal-venom",
}
M.default_variant = "black-metal"

return M
