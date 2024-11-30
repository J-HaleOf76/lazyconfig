-- if true then
--   return{}
--   end
-- This was installed twice
-- July 6,2024
--
--[[
--Author: JJH
--Date: Mar 2, 2024
--Edits: LazyVim can't seem to find cobalt2 or colorbuddy
--so maybe making them Dev or local might help.
--
--]]--

return {

-- {
--     "lalitmee/cobalt2.nvim",
--     -- event = { "ColorSchemePre" }, -- if you want to lazy load
--     dependencies = { "tjdevries/colorbuddy.nvim" },
--     init = function()
--         require("colorbuddy").colorscheme("cobalt2")
--     end,
--     -- vim.cmd("colorscheme cobalt2"),
--
--     -- require('colorbuddy').colorscheme('cobalt2')
-- },
     { "tjdevries/colorbuddy.nvim", },
}
