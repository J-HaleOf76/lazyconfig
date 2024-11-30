-- if true then
--   return{}
-- end

--[[
--Author: JJH
--Date: Nov 7,2024
--Edits: Change the time to the local time format.
--
--]]

-- But if I change the theme will lualine also change
-- I shouldn't have to do this
-- Getting rid of this as a test
--
-- Working Good
--
-- local lualine = require("lualine")
--
-- lualine.setup {
--     options = {
--         theme = "neopywal",
--     },
-- }

-- local neopywal = require("neopywal")
-- neopywal.setup()
-- vim.cmd.colorscheme("neopywal")
-- [[ This should make the time 12 hr at the bottom. ]]
return {
{ "nvim-lualine/lualine.nvim", opts = { sections = { lualine_z = { function() return "  " .. os.date("%r") end, }, }, }, }
}
