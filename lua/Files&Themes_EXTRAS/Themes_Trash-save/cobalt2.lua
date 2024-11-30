if true then
  return {}
end

-- Author: JJH
-- Date: March 2, 2024
--
--
return {
{
    "lalitmee/cobalt2.nvim",
    -- event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    init = function()
        require("colorbuddy").colorscheme("cobalt2")
    end,
    -- vim.cmd("colorscheme cobalt2"),

    -- require('colorbuddy').colorscheme('cobalt2')
},
    require('colorbuddy').colorscheme('cobalt2')

    -- I want to get colorbuddy installed
     { "tjdevries/colorbuddy.nvim", },
}
